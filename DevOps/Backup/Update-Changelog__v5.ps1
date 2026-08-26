<#
.SYNOPSIS
    Gera a entrada do CHANGELOG.md a partir dos planejamentos de deploy e revert.

.DESCRIPTION
    Executado pelo analista na branch local, a partir de DevOps\Scripts\.

    Modelo de planejamento:

        raiz
            autor      : analista responsavel pela tag
            data       : data do planejamento, AAAA-MM-DD
            tarefa     : descricao da tarefa a ser realizada nos objetos
            tag        : no formato vAAAA.MM.DD.SQ é a posição estática do repositório
            objetivo   : se informado é o objetivo do desenvolvimento, valendo para TODOS os
                        objetos. Se não informado, cada objeto declara o seu
            resultado  : se informado é a ação resultante do processamento, valendo para TODOS os
                        objetos. Se não informado, cada objeto declara o seu
            acoes      : ações a serem executadas durante a compilação, de acordo com a parametrização

        objetos[]
            nome       : caminho relativo dentro do Deploy ou Revert indica o script a ser compilado
            atividade  : descricao do que será executado no objeto
            objetivo   : usado apenas quando a raiz estiver vazia, indica o desenvolvimento do objeto
            resultado  : usado apenas quando a raiz estiver vazia. indica o resultado da operação no objeto

    Valores aceitos em "objetivo": feature, release, bugfix, hotfix.

    Valores aceitos em "resultado": Adicionado, Alterado, Descontinuado, Removido, Corrigido,
                                    Seguranca (maiusculas e minusculas indiferentes).


.EXAMPLE
    .\Update-Changelog.ps1 -Preview
    .\Update-Changelog.ps1
    .\Update-Changelog.ps1 -Revert
#>

[CmdletBinding()]
param(
    # Vazios por padrao: resolvidos a partir da pasta do proprio script,
    # que se assume estar em DevOps\Scripts\.
    [string] $Planning,
    [string] $Changelog,

    # Registra a reversao de uma tag ja publicada, em vez de criar entrada nova.
    [switch] $Revert,

    # Data do deploy em PRD. Se omitido, usa a data do planejamento.
    [string] $DataDeploy,

    # Data da reversao. Se omitido, usa a data do planejamento de revert.
    [string] $DataRevert,

    # Apenas exibe o bloco, sem gravar no arquivo.
    [switch] $Preview
)

$ErrorActionPreference = "Stop"

# ---------------------------------------------------------------------------
# Configuracao
# ---------------------------------------------------------------------------

# Quebra de linha dentro do bloco de metadados.
# Vazio: a maioria dos visualizadores ja quebra na linha simples, e um "<br>"
# aqui produziria uma segunda quebra, com espacamento duplo.
# Se o seu renderizador juntar os campos numa linha so, use "<br>".
$QUEBRA_LINHA = ""

# Texto usado para marcar e detectar uma tag revertida.
$MARCA_REVERT = "Revertido"

# Rotulos do bloco gerado.
# Sem acentos: o PowerShell 5.1 le .ps1 como ANSI quando o arquivo nao tem BOM,
# e literais acentuados sairiam corrompidos. Para acentuar os rotulos, salve
# este .ps1 como UTF-8 com BOM.
$ROTULO_ANALISTA  = "Analista"
$ROTULO_DEPLOY    = "Deploy"
$ROTULO_TAREFA    = "Tarefa"
$COLUNA_OBJETO    = "Objeto"
$COLUNA_OBJETIVO  = "Objetivo"
$COLUNA_ATIVIDADE = "Atividade"

# Ordem das secoes dentro de cada versao.
$ORDEM_SECOES = @("Adicionado","Alterado","Descontinuado","Removido","Corrigido","Seguranca")

# Valores aceitos em "resultado". Chave em minusculas, sem acento.
$MAPA_RESULTADO = @{
    "adicionado"    = "Adicionado"
    "alterado"      = "Alterado"
    "descontinuado" = "Descontinuado"
    "removido"      = "Removido"
    "corrigido"     = "Corrigido"
    "seguranca"     = "Seguranca"
}

# Valores aceitos em "objetivo".
$OBJETIVOS_VALIDOS = @("feature","release","bugfix","hotfix")

# ---------------------------------------------------------------------------
# Funcoes auxiliares
# ---------------------------------------------------------------------------

function Get-RaizRepo {
    # Este script vive em DevOps\Scripts\, entao a raiz esta dois niveis acima.
    if ($PSScriptRoot) {
        $tentativa = Join-Path $PSScriptRoot '..\..'
        if (Test-Path $tentativa) { return (Resolve-Path $tentativa).Path }
    }
    # Ultimo recurso, caso o script seja movido de lugar.
    try {
        $raiz = (git rev-parse --show-toplevel 2>$null)
        if (-not [string]::IsNullOrWhiteSpace($raiz)) {
            return "$raiz".Trim().Replace('/', [System.IO.Path]::DirectorySeparatorChar)
        }
    } catch { }
    return $null
}

function Resolve-CaminhoRepo {
    # Caminho relativo resolvido contra a raiz do repositorio; nao achando ali,
    # tenta o diretorio atual.
    param([string] $caminho)

    if ([System.IO.Path]::IsPathRooted($caminho)) { return $caminho }

    $raiz = Get-RaizRepo
    if ($raiz) {
        $tentativa = Join-Path $raiz $caminho
        if (Test-Path $tentativa) { return (Resolve-Path $tentativa).Path }
    }
    if (Test-Path $caminho) { return (Resolve-Path $caminho).Path }

    if ($raiz) { return (Join-Path $raiz $caminho) }
    return $caminho
}

function Get-Campo {
    # Le uma propriedade que pode nao existir ou vir vazia.
    # String vazia e ausencia sao tratadas do mesmo jeito, por decisao do modelo.
    param($obj, [string] $nome)
    if ($null -eq $obj) { return $null }
    if ($obj.PSObject.Properties.Name -notcontains $nome) { return $null }
    $v = $obj.$nome
    if ($null -eq $v) { return $null }
    $v = "$v".Trim()
    if ([string]::IsNullOrWhiteSpace($v)) { return $null }
    return $v
}

function Get-ObjetivoDaBranch {
    # Ultimo recurso: deduz do prefixo da branch atual.
    try {
        $branch = (git rev-parse --abbrev-ref HEAD 2>$null)
    } catch {
        return $null
    }
    if ([string]::IsNullOrWhiteSpace($branch)) { return $null }
    $branch = "$branch".Trim()
    if ($branch -notmatch '/') { return $null }

    $prefixo = $branch.Split('/')[0].ToLower()
    if ($OBJETIVOS_VALIDOS -contains $prefixo) { return $prefixo }
    return $null
}

function Get-NomeObjeto {
    # Packages/pck_teste_jenkins.pck -> pck_teste_jenkins.pck
    param([string] $caminho)
    if ([string]::IsNullOrWhiteSpace($caminho)) { return "" }
    return $caminho.Split('/')[-1].Split('\')[-1]
}

function ConvertTo-CelulaSegura {
    # Pipe dentro de celula quebra a tabela Markdown.
    param([string] $texto)
    if ($null -eq $texto) { return "" }
    return $texto.Trim().Replace('|', '\|')
}

function Get-ChaveTag {
    # vAAAA.MM.DD.SQ -> numero comparavel. Evita comparacao textual, onde
    # "v2026.08.24.10" viria antes de "v2026.08.24.06".
    param([string] $t)
    $m = [regex]::Match($t, '^v?(\d{4})\.(\d{2})\.(\d{2})\.(\d+)$')
    if (-not $m.Success) { return $null }
    return [int64]$m.Groups[1].Value * 100000000L +
           [int64]$m.Groups[2].Value * 1000000L +
           [int64]$m.Groups[3].Value * 10000L +
           [int64]$m.Groups[4].Value
}

# ---------------------------------------------------------------------------
# Localizacao dos arquivos
# ---------------------------------------------------------------------------

if (-not $Planning) {
    $arquivo = if ($Revert) { "Planning_Revert.json" } else { "Planning_Deploy.json" }
    $Planning = Join-Path (Join-Path "DevOps" "Plannings") $arquivo
}
if (-not $Changelog) { $Changelog = "CHANGELOG.md" }

$Planning  = Resolve-CaminhoRepo $Planning
$Changelog = Resolve-CaminhoRepo $Changelog

if (-not (Test-Path $Planning)) {
    throw "Planejamento nao encontrado: $Planning`nInforme -Planning com o caminho completo."
}
if (-not (Test-Path $Changelog)) {
    throw "CHANGELOG nao encontrado: $Changelog`nInforme -Changelog com o caminho completo."
}

# ---------------------------------------------------------------------------
# Leitura do planejamento
# ---------------------------------------------------------------------------

try {
    $plan = Get-Content -Path $Planning -Raw -Encoding UTF8 | ConvertFrom-Json
} catch {
    throw "JSON invalido em: $Planning`n$($_.Exception.Message)`n" +
          "Verifique virgulas faltando entre os campos e aspas desbalanceadas na linha indicada."
}

$tag = Get-Campo $plan 'tag'
if (-not $tag) { throw "O planejamento nao possui o campo 'tag'." }

if ($null -eq (Get-ChaveTag $tag)) {
    Write-Warning "A tag '$tag' nao segue o formato vAAAA.MM.DD.SQ."
}

$autor    = Get-Campo $plan 'autor'
$dataPlan = Get-Campo $plan 'data'
$tarefa   = Get-Campo $plan 'tarefa'

if (-not $autor)  { throw "O planejamento nao possui o campo 'autor'." }
if (-not $tarefa) { throw "O planejamento nao possui o campo 'tarefa'." }

$objetos = @($plan.objetos)
if ($objetos.Count -eq 0) { throw "O planejamento nao possui objetos." }

# Preenchidos na raiz: valem para TODOS os objetos e ignoram o valor individual.
$resultadoRaiz = Get-Campo $plan 'resultado'
$objetivoRaiz  = Get-Campo $plan 'objetivo'

# ---------------------------------------------------------------------------
# Normalizacao dos objetos
# ---------------------------------------------------------------------------

$itens = @()
$ignoradosResultado = @()
$ignoradosObjetivo = @()
$objetivosForaDoPadrao = @()

foreach ($obj in $objetos) {
    $nome = Get-NomeObjeto (Get-Campo $obj 'nome')
    if (-not $nome) { throw "Ha objeto sem o campo 'nome' no planejamento." }

    $resultadoObj = Get-Campo $obj 'resultado'
    $objetivoObj  = Get-Campo $obj 'objetivo'

    # Regra do modelo: a raiz, quando preenchida, prevalece sobre o objeto.
    if ($resultadoRaiz) {
        if ($resultadoObj -and $resultadoObj.ToLower() -ne $resultadoRaiz.ToLower()) {
            $ignoradosResultado += "$nome ('$resultadoObj')"
        }
        $resultadoBruto = $resultadoRaiz
    } else {
        $resultadoBruto = $resultadoObj
    }

    if ($objetivoRaiz) {
        if ($objetivoObj -and $objetivoObj.ToLower() -ne $objetivoRaiz.ToLower()) {
            $ignoradosObjetivo += "$nome ('$objetivoObj')"
        }
        $objetivo = $objetivoRaiz
    } else {
        $objetivo = $objetivoObj
    }

    if (-not $resultadoBruto) {
        throw "Objeto '$nome' sem 'resultado', e a raiz tambem esta vazia. Aceitos: $($ORDEM_SECOES -join ', ')."
    }

    $chave = $resultadoBruto.ToLower()
    if (-not $MAPA_RESULTADO.ContainsKey($chave)) {
        throw "Valor invalido em 'resultado' para '$nome': '$resultadoBruto'. Aceitos: $($ORDEM_SECOES -join ', ')."
    }
    $resultado = $MAPA_RESULTADO[$chave]

    if (-not $objetivo) { $objetivo = Get-ObjetivoDaBranch }
    if (-not $objetivo) {
        throw "Objeto '$nome' sem 'objetivo', ausente tambem na raiz e nao deduzido da branch."
    }
    $objetivo = $objetivo.ToLower()
    if ($OBJETIVOS_VALIDOS -notcontains $objetivo) {
        $objetivosForaDoPadrao += "$nome -> '$objetivo'"
    }

    $atividade = Get-Campo $obj 'atividade'
    if (-not $atividade) {
        Write-Warning "Objeto '$nome' sem o campo 'atividade'. A celula ficara vazia."
    }

    $itens += [pscustomobject]@{
        Nome      = ConvertTo-CelulaSegura $nome
        Resultado = $resultado
        Objetivo  = ConvertTo-CelulaSegura $objetivo
        Atividade = ConvertTo-CelulaSegura $atividade
    }
}

if ($ignoradosResultado.Count -gt 0) {
    Write-Warning "'resultado' da raiz ('$resultadoRaiz') prevaleceu; ignorado no objeto: $($ignoradosResultado -join '; ')."
}
if ($ignoradosObjetivo.Count -gt 0) {
    Write-Warning "'objetivo' da raiz ('$objetivoRaiz') prevaleceu; ignorado no objeto: $($ignoradosObjetivo -join '; ')."
}
if ($objetivosForaDoPadrao.Count -gt 0) {
    Write-Warning "Valor fora do padrao em 'objetivo': $($objetivosForaDoPadrao -join '; '). Aceitos: $($OBJETIVOS_VALIDOS -join ', ')."
}

# ---------------------------------------------------------------------------
# Modo revert: anota a reversao na entrada da tag ja registrada
# ---------------------------------------------------------------------------

if ($Revert) {
    if (-not $DataRevert) { $DataRevert = $dataPlan }

    $conteudo = Get-Content -Path $Changelog -Raw -Encoding UTF8
    $eol = if ($conteudo.Contains("`r`n")) { "`r`n" } else { "`n" }

    # A entrada da tag precisa existir: o revert anota, nao cria.
    $cab = [regex]::Match($conteudo, '(?m)^##\s*\[' + [regex]::Escape($tag) + '\]')
    if (-not $cab.Success) {
        throw "A tag $tag nao consta no CHANGELOG. Registre o deploy antes de registrar a reversao."
    }

    # Delimita o bloco da tag, para nao anotar a entrada errada.
    $depois = $conteudo.Substring($cab.Index)
    $prox = [regex]::Match($depois.Substring(1), '(?m)^##\s*\[')
    $fimBloco = if ($prox.Success) { $cab.Index + 1 + $prox.Index } else { $conteudo.Length }
    $blocoTag = $conteudo.Substring($cab.Index, $fimBloco - $cab.Index)

    if ($blocoTag -match [regex]::Escape($MARCA_REVERT)) {
        Write-Host "A tag $tag ja esta marcada como revertida. Nada a fazer." -ForegroundColor Yellow
        return
    }

    $nomes = @()
    foreach ($i in $itens) { $nomes += '`' + $i.Nome + '`' }

    $aviso = "> [!CAUTION]" + $eol +
             "> **$MARCA_REVERT em $DataRevert por $autor**$QUEBRA_LINHA" + $eol +
             "> Motivo: $tarefa$QUEBRA_LINHA" + $eol +
             "> Objetos restaurados: " + ($nomes -join ', ')

    if ($Preview) {
        Write-Host ""
        Write-Host $aviso
        Write-Host ""
        return
    }

    # Insere logo antes da primeira secao da tag, apos os metadados.
    $secao = [regex]::Match($blocoTag, '(?m)^###\s')
    if ($secao.Success) {
        $posIns = $cab.Index + $secao.Index
        $novoConteudo = $conteudo.Substring(0, $posIns) +
                        $aviso + $eol + $eol +
                        $conteudo.Substring($posIns)
    } else {
        $novoConteudo = $conteudo.Substring(0, $fimBloco).TrimEnd() + $eol + $eol +
                        $aviso + $eol + $eol +
                        $conteudo.Substring($fimBloco)
    }

    $semBomR = New-Object System.Text.UTF8Encoding $false
    [System.IO.File]::WriteAllText((Resolve-Path $Changelog).Path, $novoConteudo, $semBomR)

    Write-Host "Reversao da tag $tag registrada no CHANGELOG." -ForegroundColor Green
    Write-Host "Confira o resultado antes de commitar: git diff $Changelog"
    return
}

# ---------------------------------------------------------------------------
# Montagem do bloco
# ---------------------------------------------------------------------------

if (-not $DataDeploy) { $DataDeploy = $dataPlan }

$sb = [System.Text.StringBuilder]::new()

[void]$sb.AppendLine("## [$tag] - $dataPlan")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("**${ROTULO_ANALISTA}:** $autor$QUEBRA_LINHA")
[void]$sb.AppendLine("**${ROTULO_DEPLOY}:** $DataDeploy$QUEBRA_LINHA")
[void]$sb.AppendLine("**${ROTULO_TAREFA}:** $tarefa")

foreach ($secao in $ORDEM_SECOES) {
    $doGrupo = @($itens | Where-Object { $_.Resultado -eq $secao })
    if ($doGrupo.Count -eq 0) { continue }

    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("### [$secao]")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("| $COLUNA_OBJETO | $COLUNA_OBJETIVO | $COLUNA_ATIVIDADE |")
    [void]$sb.AppendLine("|--------|----------|-----------|")

    foreach ($i in $doGrupo) {
        [void]$sb.AppendLine("| ``$($i.Nome)`` | $($i.Objetivo) | $($i.Atividade) |")
    }
}

$bloco = $sb.ToString().TrimEnd()

if ($Preview) {
    Write-Host ""
    Write-Host $bloco
    Write-Host ""
    return
}

# ---------------------------------------------------------------------------
# Insercao no CHANGELOG
# ---------------------------------------------------------------------------

$conteudo = Get-Content -Path $Changelog -Raw -Encoding UTF8

# Idempotencia: reexecucao nao duplica a entrada.
if ($conteudo -match [regex]::Escape("## [$tag]")) {
    Write-Host "A tag $tag ja consta no CHANGELOG. Nada a fazer." -ForegroundColor Yellow
    return
}

# Preserva o fim de linha do arquivo, para nao sujar o diff.
$eol = if ($conteudo.Contains("`r`n")) { "`r`n" } else { "`n" }
$blocoNormalizado = $bloco.Replace("`r`n", "`n").Replace("`n", $eol)

# Insere respeitando a ordem cronologica decrescente: antes da primeira versao
# registrada que seja mais antiga que a nova tag.
$chaveNova = Get-ChaveTag $tag
$pos = -1

foreach ($m in [regex]::Matches($conteudo, '(?m)^##\s*\[(v\d{4}\.\d{2}\.\d{2}\.\d+)\]')) {
    $chaveExistente = Get-ChaveTag $m.Groups[1].Value
    if ($null -eq $chaveNova -or $null -eq $chaveExistente -or $chaveExistente -lt $chaveNova) {
        $pos = $m.Index
        break
    }
}

if ($pos -ge 0) {
    $novo = $conteudo.Substring(0, $pos) +
            $blocoNormalizado + $eol + $eol + "---" + $eol + $eol +
            $conteudo.Substring($pos)
} else {
    # Nenhuma versao registrada, ou todas mais recentes: acrescenta no fim.
    $novo = $conteudo.TrimEnd() + $eol + $eol + $blocoNormalizado + $eol + $eol + "---" + $eol
}

# UTF-8 sem BOM. Set-Content -Encoding UTF8 grava COM BOM no PowerShell 5.1.
$semBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText((Resolve-Path $Changelog).Path, $novo, $semBom)

Write-Host "CHANGELOG atualizado com a tag $tag." -ForegroundColor Green
Write-Host "Confira o resultado antes de commitar: git diff $Changelog"
