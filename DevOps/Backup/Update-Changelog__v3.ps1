<#
.SYNOPSIS
    Gera a entrada do CHANGELOG.md a partir dos planejamentos de deploy e revert.

.DESCRIPTION
    Executado pelo analista na branch local, a partir de DevOps\Scripts\.

    Modelo de planejamento:

        raiz
            autor         : analista responsavel pela tag
            data          : data do planejamento, AAAA-MM-DD
            tarefa        : descricao da tarefa a ser realizada nos objetos
            tag           : no formato vAAAA.MM.DD.SQ, a posicao estatica do repositorio
            implementacao : fluxo do GitHub. OBRIGATORIO e valido SOMENTE na raiz,
                            valendo para todos os objetos da tag
            resultado     : acao resultante segundo o Keep a Changelog. OBRIGATORIO na raiz,
                            onde funciona como valor generico. Cada objeto pode sobrepor
            acoes         : acoes executadas durante a compilacao, conforme parametrizacao

        objetos[]
            nome          : caminho relativo dentro do Deploy ou Revert
            atividade     : descricao do que sera executado no objeto
            resultado     : OPCIONAL. Quando presente, SOBREPOE o valor da raiz para
                            este objeto. Quando ausente, o objeto herda a raiz.
                            Presente porem vazio e erro: use a ausencia para herdar

    Valores aceitos em "implementacao": feature, release, bugfix, hotfix.

    Valores aceitos em "resultado": Adicionado, Alterado, Descontinuado, Removido,
                                    Corrigido, Seguranca (maiusculas, minusculas e
                                    cedilha indiferentes na entrada).

.NOTES
    ENCODING: este arquivo precisa ser salvo como UTF-8 COM BOM. O PowerShell 5.1 le
    .ps1 sem BOM como ANSI, e os rotulos acentuados ("Implementacao", "Seguranca")
    sairiam corrompidos no CHANGELOG.

.EXAMPLE
    .\Update-Changelog.ps1 -Preview
    .\Update-Changelog.ps1
    .\Update-Changelog.ps1 -Revert
#>

[CmdletBinding()]
param(
    # Vazios por padrão: resolvidos a partir da pasta do próprio script,
    # que se assume estar em DevOps\Scripts\.
    [string] $Planning,
    [string] $Changelog,

    # Registra a reversão de uma tag já publicada, em vez de criar entrada nova.
    [switch] $Revert,

    # Data do deploy em produção. Se omitido, usa a data do planejamento.
    [string] $DataDeploy,

    # Data da reversão. Se omitido, usa a data do planejamento do revert.
    [string] $DataRevert,

    # Apenas exibe o bloco, sem gravar no arquivo.
    [switch] $Preview
)

$ErrorActionPreference = "Stop"

# ---------------------------------------------------------------------------
# Configuração
# ---------------------------------------------------------------------------

# Quebra de linha dentro do bloco de metadados.
# Vazio: a maioria dos visualizadores já quebra na linha simples, e um "<br>"
# aqui produziria uma segunda quebra, com espaçamento duplo.
# Se o seu renderizador juntar os campos numa linha só, use "<br>".
$QUEBRA_LINHA = ""

# Texto usado para marcar e detectar uma tag revertida.
$MARCA_REVERT = "Revertido"

# Rótulos do bloco gerado. Devem espelhar exatamente o CHANGELOG.md.
$ROTULO_ANALISTA      = "Analista"
$ROTULO_DEPLOY        = "Deploy"
$ROTULO_TAREFA        = "Tarefa"
$ROTULO_IMPLEMENTACAO = "Implementação"
$COLUNA_OBJETO        = "Objeto"
$COLUNA_ATIVIDADE     = "Atividade"

# Separador da tabela, copiado do CHANGELOG.md para não sujar o diff.
$SEPARADOR_TABELA = "|--------|-----------|"

# Valores aceitos em "implementacao". Espelha lib.implementacoes do LibraryFile.
$IMPLEMENTACOES_VALIDAS = @("feature","release","bugfix","hotfix")

# Ordem das seções dentro de cada versão. Espelha a tabela "Tipos de Mudanças
# Previstas" do CHANGELOG.md.
$ORDEM_SECOES = @("Adicionado","Alterado","Descontinuado","Removido","Corrigido","Segurança")

# Valores aceitos em "resultado". Chave em minúsculas; aceita com e sem cedilha.
$MAPA_RESULTADO = @{
    "adicionado"    = "Adicionado"
    "alterado"      = "Alterado"
    "descontinuado" = "Descontinuado"
    "removido"      = "Removido"
    "corrigido"     = "Corrigido"
    "segurança"     = "Segurança"
    "seguranca"     = "Segurança"
}

# ---------------------------------------------------------------------------
# Funções auxiliares
# ---------------------------------------------------------------------------

function Get-RaizRepo {
    # Este script vive em DevOps\Scripts\, então a raiz está dois níveis acima.
    if ($PSScriptRoot) {
        $tentativa = Join-Path $PSScriptRoot '..\..'
        if (Test-Path $tentativa) { return (Resolve-Path $tentativa).Path }
    }
    # Último recurso, caso o script seja movido de lugar.
    try {
        $raiz = (git rev-parse --show-toplevel 2>$null)
        if (-not [string]::IsNullOrWhiteSpace($raiz)) {
            return "$raiz".Trim().Replace('/', [System.IO.Path]::DirectorySeparatorChar)
        }
    } catch { }
    return $null
}

function Resolve-CaminhoRepo {
    # Caminho relativo resolvido contra a raiz do repositório; não achando ali,
    # tenta o diretório atual.
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

function Test-TemCampo {
    # A CHAVE EXISTE no JSON? Distinto de "tem valor".
    # A regra do modelo é: só a AUSÊNCIA herda da raiz. Presente e vazio é erro.
    param($obj, [string] $nome)
    if ($null -eq $obj) { return $false }
    return ($obj.PSObject.Properties.Name -contains $nome)
}

function Get-Campo {
    # Lê uma propriedade que pode não existir ou vir vazia; devolve $null nos dois casos.
    # Para distinguir ausência de vazio, combine com Test-TemCampo.
    param($obj, [string] $nome)
    if ($null -eq $obj) { return $null }
    if ($obj.PSObject.Properties.Name -notcontains $nome) { return $null }
    $v = $obj.$nome
    if ($null -eq $v) { return $null }
    $v = "$v".Trim()
    if ([string]::IsNullOrWhiteSpace($v)) { return $null }
    return $v
}

function Get-NomeObjeto {
    param([string] $caminho)
    if ([string]::IsNullOrWhiteSpace($caminho)) { return "" }
    return $caminho.Split('/')[-1].Split('\')[-1]
}

function ConvertTo-CelulaSegura {
    # Pipe dentro de célula quebra a tabela Markdown.
    param([string] $texto)
    if ($null -eq $texto) { return "" }
    return $texto.Trim().Replace('|', '\|')
}

function Get-ChaveTag {
    # vAAAA.MM.DD.SQ -> número comparável. Evita comparação textual, onde
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
# Localização dos arquivos
# ---------------------------------------------------------------------------

if (-not $Planning) {
    $arquivo = if ($Revert) { "Planning_Revert.json" } else { "Planning_Deploy.json" }
    $Planning = Join-Path (Join-Path "DevOps" "Plannings") $arquivo
}
if (-not $Changelog) { $Changelog = "CHANGELOG.md" }

$Planning  = Resolve-CaminhoRepo $Planning
$Changelog = Resolve-CaminhoRepo $Changelog

if (-not (Test-Path $Planning)) {
    throw "Planejamento não encontrado: $Planning`nInforme -Planning com o caminho completo."
}
if (-not (Test-Path $Changelog)) {
    throw "CHANGELOG não encontrado: $Changelog`nInforme -Changelog com o caminho completo."
}

# ---------------------------------------------------------------------------
# Leitura do planejamento
# ---------------------------------------------------------------------------

try {
    $plan = Get-Content -Path $Planning -Raw -Encoding UTF8 | ConvertFrom-Json
} catch {
    throw "JSON inválido em: $Planning`n$($_.Exception.Message)`n" +
          "Verifique vírgulas faltando entre os campos e aspas desbalanceadas na linha indicada."
}

$tag = Get-Campo $plan 'tag'
if (-not $tag) { throw "O planejamento não possui o campo 'tag'." }

if ($null -eq (Get-ChaveTag $tag)) {
    Write-Warning "A tag '$tag' não segue o formato vAAAA.MM.DD.SQ."
}

$autor    = Get-Campo $plan 'autor'
$dataPlan = Get-Campo $plan 'data'
$tarefa   = Get-Campo $plan 'tarefa'

if (-not $autor)  { throw "O planejamento não possui o campo 'autor'." }
if (-not $tarefa) { throw "O planejamento não possui o campo 'tarefa'." }

$objetos = @($plan.objetos)
if ($objetos.Count -eq 0) { throw "O planejamento não possui objetos." }

# ---------------------------------------------------------------------------
# Parâmetros da raiz
#
# Regra do modelo:
#   implementacao -> obrigatória, válida SOMENTE na raiz
#   resultado     -> obrigatória na raiz como valor genérico; cada objeto pode sobrepor
# ---------------------------------------------------------------------------

$implementacao = Get-Campo $plan 'implementacao'
if (-not $implementacao) {
    throw "O planejamento não possui o campo 'implementacao' na raiz. " +
          "Aceitos: $($IMPLEMENTACOES_VALIDAS -join ', ')."
}
$implementacao = $implementacao.ToLower()
if ($IMPLEMENTACOES_VALIDAS -notcontains $implementacao) {
    throw "Valor inválido em 'implementacao': '$implementacao'. " +
          "Aceitos: $($IMPLEMENTACOES_VALIDAS -join ', ')."
}

$resultadoRaiz = Get-Campo $plan 'resultado'
if (-not $resultadoRaiz) {
    throw "O planejamento não possui o campo 'resultado' na raiz. " +
          "Aceitos: $($ORDEM_SECOES -join ', ')."
}
if (-not $MAPA_RESULTADO.ContainsKey($resultadoRaiz.ToLower())) {
    throw "Valor inválido em 'resultado' na raiz: '$resultadoRaiz'. " +
          "Aceitos: $($ORDEM_SECOES -join ', ')."
}

# ---------------------------------------------------------------------------
# Normalização dos objetos
# ---------------------------------------------------------------------------

$itens = @()
$sobrepostos = @()
$implementacaoNoObjeto = @()

foreach ($obj in $objetos) {
    $nome = Get-NomeObjeto (Get-Campo $obj 'nome')
    if (-not $nome) { throw "Há objeto sem o campo 'nome' no planejamento." }

    # 'implementacao' vale somente na raiz; no objeto é ignorada, com aviso.
    if (Test-TemCampo $obj 'implementacao') {
        $implementacaoNoObjeto += $nome
    }

    # Cascata: a presença da chave no objeto SOBREPÕE a raiz.
    # Ausência herda. Presente porém vazia é erro, nunca herança silenciosa.
    if (Test-TemCampo $obj 'resultado') {
        $resultadoObj = Get-Campo $obj 'resultado'
        if (-not $resultadoObj) {
            throw "Objeto '$nome': campo 'resultado' presente porém vazio. " +
                  "Para herdar o valor da raiz, remova a chave do JSON."
        }
        $resultadoBruto = $resultadoObj
        $sobrepostos += "$nome ('$resultadoObj')"
    } else {
        $resultadoBruto = $resultadoRaiz
    }

    $chave = $resultadoBruto.ToLower()
    if (-not $MAPA_RESULTADO.ContainsKey($chave)) {
        throw "Valor inválido em 'resultado' para '$nome': '$resultadoBruto'. " +
              "Aceitos: $($ORDEM_SECOES -join ', ')."
    }
    $resultado = $MAPA_RESULTADO[$chave]

    $atividade = Get-Campo $obj 'atividade'
    if (-not $atividade) {
        Write-Warning "Objeto '$nome' sem o campo 'atividade'. A célula ficará vazia."
    }

    $itens += [pscustomobject]@{
        Nome      = ConvertTo-CelulaSegura $nome
        Atividade = ConvertTo-CelulaSegura $atividade
        Resultado = $resultado
    }
}

if ($implementacaoNoObjeto.Count -gt 0) {
    Write-Warning ("'implementacao' vale somente na raiz e foi ignorada em: " +
                   "$($implementacaoNoObjeto -join ', ').")
}
if ($sobrepostos.Count -gt 0) {
    Write-Host "Resultado da raiz ('$resultadoRaiz') sobreposto em: $($sobrepostos -join '; ')."
}

# ---------------------------------------------------------------------------
# Modo revert: anota a reversão na entrada da tag já registrada
# ---------------------------------------------------------------------------

if ($Revert) {
    if (-not $DataRevert) { $DataRevert = $dataPlan }

    $conteudo = Get-Content -Path $Changelog -Raw -Encoding UTF8
    $eol = if ($conteudo.Contains("`r`n")) { "`r`n" } else { "`n" }

    # A entrada da tag precisa existir: o revert anota, não cria.
    $cab = [regex]::Match($conteudo, '(?m)^##\s*\[' + [regex]::Escape($tag) + '\]')
    if (-not $cab.Success) {
        throw "A tag $tag não consta no CHANGELOG. Registre o deploy antes de registrar o revert."
    }

    # Delimita o bloco da tag, para não anotar a entrada errada.
    $depois = $conteudo.Substring($cab.Index)
    $prox = [regex]::Match($depois.Substring(1), '(?m)^##\s*\[')
    $fimBloco = if ($prox.Success) { $cab.Index + 1 + $prox.Index } else { $conteudo.Length }
    $blocoTag = $conteudo.Substring($cab.Index, $fimBloco - $cab.Index)

    if ($blocoTag -match [regex]::Escape($MARCA_REVERT)) {
        Write-Host "A tag $tag já está marcada como revertida. Nada a fazer." -ForegroundColor Yellow
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

    # Insere logo antes da primeira seção da tag, após os metadados.
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

    Write-Host ""
    Write-Host "Revert da tag $tag registrada no CHANGELOG." -ForegroundColor Green
    Write-Host ""
    Write-Host "Confira o resultado antes de commitar: git diff $Changelog"
    return
}

# ---------------------------------------------------------------------------
# Montagem do bloco
#
# O formato abaixo espelha exatamente a entrada já existente no CHANGELOG.md:
#   metadados sem colchetes, seções sem colchetes, tabela de duas colunas.
# ---------------------------------------------------------------------------

if (-not $DataDeploy) { $DataDeploy = $dataPlan }

$sb = [System.Text.StringBuilder]::new()

[void]$sb.AppendLine("## [$tag] - $dataPlan")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("**${ROTULO_ANALISTA}:** $autor$QUEBRA_LINHA")
[void]$sb.AppendLine("**${ROTULO_DEPLOY}:** $DataDeploy$QUEBRA_LINHA")
[void]$sb.AppendLine("**${ROTULO_TAREFA}:** $tarefa$QUEBRA_LINHA")
[void]$sb.AppendLine("**${ROTULO_IMPLEMENTACAO}:** $implementacao")

foreach ($secao in $ORDEM_SECOES) {
    $doGrupo = @($itens | Where-Object { $_.Resultado -eq $secao })
    if ($doGrupo.Count -eq 0) { continue }

    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("### $secao")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("| $COLUNA_OBJETO | $COLUNA_ATIVIDADE |")
    [void]$sb.AppendLine($SEPARADOR_TABELA)

    foreach ($i in $doGrupo) {
        [void]$sb.AppendLine("| ``$($i.Nome)`` | $($i.Atividade) |")
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
# Inserção no CHANGELOG
# ---------------------------------------------------------------------------

$conteudo = Get-Content -Path $Changelog -Raw -Encoding UTF8

# Idempotência: reexecução não duplica a entrada.
if ($conteudo -match [regex]::Escape("## [$tag]")) {
    Write-Host "A tag $tag já consta no CHANGELOG. Nada a fazer." -ForegroundColor Yellow
    return
}

# Preserva o fim de linha do arquivo, para não sujar o diff.
$eol = if ($conteudo.Contains("`r`n")) { "`r`n" } else { "`n" }
$blocoNormalizado = $bloco.Replace("`r`n", "`n").Replace("`n", $eol)

# Insere respeitando a ordem cronológica decrescente: antes da primeira versão
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
    # Nenhuma versão registrada, ou todas mais recentes: acrescenta no fim.
    $novo = $conteudo.TrimEnd() + $eol + $eol + $blocoNormalizado + $eol + $eol + "---" + $eol
}

# UTF-8 sem BOM. Set-Content -Encoding UTF8 grava COM BOM no PowerShell 5.1.
$semBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText((Resolve-Path $Changelog).Path, $novo, $semBom)

Write-Host ""
Write-Host "CHANGELOG atualizado com a tag $tag." -ForegroundColor Green
Write-Host ""
Write-Host "Confira o resultado antes de commitar: git diff $Changelog"
Write-Host ""
