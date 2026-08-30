<#
.SYNOPSIS
    Gera a entrada do CHANGELOG.md a partir dos planejamentos de deploy e revert.

.DESCRIPTION
    Executado pelo analista na branch local, a partir de DevOps\Plannings\.

    Modelo de planejamento:

        raiz
            responsavel   : analista responsável pela tag e deploy
            dataPlano     : data do planejamento, AAAA-MM-DD
            escopo        : descrição detalhada do escopo a ser realizado nos objetos
            tag           : no formato vAAAA.MM.DD.SQ, a posição estática do repositório
            categoria     : fluxo do GitHub Flow obrigatório que descreve a categoria do desenvolvimento
                            sendo válido somente a raiz, valendo para todos os objetos da tag
            tipoMudanca   : mudança a ser realizada nos objetos (geral) segundo o Keep a Changelog obrigatório
                            na raiz, onde funciona como valor genérico. Cada objeto pode sobrepor
            acoes         : acoes extras executadas durante a compilação, conforme parametrizado

        objetos[]
            nome          : caminho relativo indicando o tipo de objeto dentro do Deploy ou Revert e nome do objeto
            implementado  : detalhamento do que foi implementado no objeto
            tipoMudanca   : opcional, quando presente é específico do objeto e sobrepõe o valor da raiz para
                            este objeto. Quando ausente, o objeto herda a raiz
                            Presente porém vazio é erro: use a ausência para herdar

    Valores aceitos em "categoria": feature, release, bugfix, hotfix.

    Valores aceitos em "tipoMudanca": Adicionado, Alterado, Descontinuado, Removido, Corrigido, Segurança.

.NOTES
    Encoding: este arquivo precisa ser salvo como UTF-8 com BOM em função do PowerShell 5.1 que le
    .ps1 sem BOM como ANSI, e os rótulos acentuados sairiam corrompidos no CHANGELOG.

.EXAMPLE
    .\Update-Changelog.ps1 -Preview
    .\Update-Changelog.ps1
    .\Update-Changelog.ps1 -Revert
#>

[CmdletBinding()]
param(
    # Registra a reversão de uma tag já publicada, em vez de criar entrada nova.
    [switch] $Revert,

    # Apenas exibe o bloco, sem gravar no arquivo.
    [switch] $Preview
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

# ---------------------------------------------------------------------------
# Configuração
# ---------------------------------------------------------------------------

# Quebra de linha dentro do bloco de metadados.
# Vazio: a maioria dos visualizadores já quebra na linha simples, e um "<br>"
# aqui produziria uma segunda quebra, com espaçamento duplo.
# Se o seu renderizador juntar os campos numa linha só, use "<br>".
$QUEBRA_LINHA = "<br>"

# Texto usado para marcar e detectar uma tag revertida.
$MARCA_REVERT = "Revertido"

# Rótulos do bloco gerado. Devem espelhar exatamente o CHANGELOG.md.
$ROTULO_RESPONSAVEL  = "Responsável"
$ROTULO_ESCOPO       = "Escopo"
$ROTULO_CATEGORIA    = "Categoria"
$COLUNA_OBJETO       = "Objeto"
$COLUNA_IMPLEMENTADO = "Implementado"

# Separador da tabela, copiado do CHANGELOG.md para não sujar o diff.
$SEPARADOR_TABELA = "|--------|--------------|"

# Valores aceitos em "categoria". Espelha valoresValidos.categoria do ConfigParam.json.
$CATEGORIAS_VALIDAS = @("feature","release","bugfix","hotfix")

# Ordem das seções dentro de cada versão. Espelha a tabela "Tipos de Mudanças
# Previstas" do CHANGELOG.md.
$MUDANCAS_VALIDAS = @("Adicionado","Alterado","Descontinuado","Removido","Corrigido","Segurança")

# Valores aceitos em "tipoMudanca". Chave em minúsculas; aceita com e sem cedilha.
<#$MAPA_MUDANCA = @{
    "adicionado"    = "Adicionado"
    "alterado"      = "Alterado"
    "descontinuado" = "Descontinuado"
    "removido"      = "Removido"
    "corrigido"     = "Corrigido"
    "segurança"     = "Segurança"
    "seguranca"     = "Segurança"
}
#>

# ---------------------------------------------------------------------------
# Funções auxiliares
# ---------------------------------------------------------------------------

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
    # O diretório é descartado: a extensão do arquivo já indica o tipo do objeto.
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
#
# O local do script é em DevOps\Plannings\, junto dos planejamentos.
# O CHANGELOG.md fica na raiz do repositório, dois níveis acima.
# ---------------------------------------------------------------------------

$arquivo   = if ($Revert) { "Planning_Revert.json" } else { "Planning_Deploy.json" }
$Planning  = Join-Path $PSScriptRoot $arquivo
$Changelog = Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) "CHANGELOG.md"

if (-not (Test-Path $Planning))  { throw "Planejamento não encontrado: $Planning" }
if (-not (Test-Path $Changelog)) { throw "CHANGELOG não encontrado: $Changelog" }

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

$responsavel = Get-Campo $plan 'responsavel'
$dataPlano   = Get-Campo $plan 'dataPlano'
$escopo      = Get-Campo $plan 'escopo'

if (-not $responsavel) { throw "O planejamento não possui o campo 'responsavel'." }
if (-not $dataPlano)   { throw "O planejamento não possui o campo 'dataPlano'." }
if (-not $escopo)      { throw "O planejamento não possui o campo 'escopo'." }

$objetos = @($plan.objetos)
if ($objetos.Count -eq 0) { throw "O planejamento não possui objetos." }

# ---------------------------------------------------------------------------
# Parâmetros da raiz
#
# Regra do modelo:
#   categoria   -> obrigatória, válida SOMENTE na raiz
#   tipoMudanca -> obrigatória na raiz como valor genérico; cada objeto pode sobrepor
# ---------------------------------------------------------------------------

$categoria = Get-Campo $plan 'categoria'
if (-not $categoria) {
    throw "O planejamento não possui o campo 'categoria' na raiz. " +
          "Aceitos: $($CATEGORIAS_VALIDAS -join ', ')."
}
if ($CATEGORIAS_VALIDAS -cnotcontains $categoria) {
    throw "Valor inválido em 'categoria': '$categoria'. " +
          "Aceitos: $($CATEGORIAS_VALIDAS -join ', ')."
}
$mudancaRaiz = Get-Campo $plan 'tipoMudanca'
if (-not $mudancaRaiz) {
    throw "O planejamento não possui o campo 'tipoMudanca' na raiz. " +
          "Aceitos: $($MUDANCAS_VALIDAS -join ', ')."
}
if ($MUDANCAS_VALIDAS -cnotcontains $mudancaRaiz) {
    throw "Valor inválido em 'tipoMudanca' na raiz: '$mudancaRaiz'. " +
          "Aceitos: $($MUDANCAS_VALIDAS -join ', ')."
}

# ---------------------------------------------------------------------------
# Normalização dos objetos
# ---------------------------------------------------------------------------

$itens = @()
$sobrepostos = @()
$categoriaNoObjeto = @()

foreach ($obj in $objetos) {
    $nome = Get-NomeObjeto (Get-Campo $obj 'nome')
    if (-not $nome) { throw "Há objeto sem o campo 'nome' no planejamento." }

    # 'categoria' vale somente na raiz; no objeto é ignorada, com aviso.
    if (Test-TemCampo $obj 'categoria') {
        $categoriaNoObjeto += $nome
    }

    # Cascata: a presença da chave no objeto SOBREPÕE a raiz.
    # Ausência herda. Presente porém vazia é erro, nunca herança silenciosa.
    if (Test-TemCampo $obj 'tipoMudanca') {
        $mudancaObj = Get-Campo $obj 'tipoMudanca'
        if (-not $mudancaObj) {
            throw "Objeto '$nome': campo 'tipoMudanca' presente porém vazio. " +
                  "Para herdar o valor da raiz, remova a chave do JSON."
        }
        $mudancaBruta = $mudancaObj
        $sobrepostos += "$nome ('$mudancaObj')"
    } else {
        $mudancaBruta = $mudancaRaiz
    }
    if ($MUDANCAS_VALIDAS -cnotcontains $mudancaBruta) {
        throw "Valor inválido em 'tipoMudanca' para '$nome': '$mudancaBruta'. " +
              "Aceitos: $($MUDANCAS_VALIDAS -join ', ')."
    }
    $mudanca = $mudancaBruta

    $implementado = Get-Campo $obj 'implementado'
    if (-not $implementado) {
        Write-Warning "Objeto '$nome' sem o campo 'implementado'. A célula ficará vazia."
    }

    $itens += [pscustomobject]@{
        Nome         = ConvertTo-CelulaSegura $nome
        Implementado = ConvertTo-CelulaSegura $implementado
        Mudanca      = $mudanca
    }
}

if ($categoriaNoObjeto.Count -gt 0) {
    Write-Warning ("'categoria' vale somente na raiz e foi ignorada em: " +
                   "$($categoriaNoObjeto -join ', ').")
}
if ($sobrepostos.Count -gt 0) {
    Write-Host "Tipo de mudança da raiz ('$mudancaRaiz') sobreposto em: $($sobrepostos -join '; ')."
}

# ---------------------------------------------------------------------------
# Modo revert: anota a reversão na entrada da tag já registrada
# Se não encontrar a tag já registrada, registra a tag do revert
# ---------------------------------------------------------------------------

$conteudo = Get-Content -Path $Changelog -Raw -Encoding UTF8
$eol = if ($conteudo.Contains("`r`n")) { "`r`n" } else { "`n" }
$aviso = ""

if ($Revert) {
    $nomes = @()
    foreach ($i in $itens) { $nomes += '`' + $i.Nome + '`' }

    $aviso = "> [!CAUTION]" + $eol +
             ">" + $eol +
             "> ### $MARCA_REVERT em $dataPlano por $responsavel $QUEBRA_LINHA" + $eol +
             ">" + $eol +
             "> Motivo: $escopo$QUEBRA_LINHA" + $eol +
             "> Objetos restaurados: " + ($nomes -join ', ')

    $cab = [regex]::Match($conteudo, '(?m)^##\s*\[' + [regex]::Escape($tag) + '\]')

    if ($cab.Success) {
        # Delimita o bloco da tag, para não anotar a entrada errada.
        $depois = $conteudo.Substring($cab.Index)
        $prox = [regex]::Match($depois.Substring(1), '(?m)^##\s*\[')
        $fimBloco = if ($prox.Success) { $cab.Index + 1 + $prox.Index } else { $conteudo.Length }
        $blocoTag = $conteudo.Substring($cab.Index, $fimBloco - $cab.Index)

        if ($blocoTag -match [regex]::Escape($MARCA_REVERT)) {
            Write-Host "A tag $tag já está marcada como revertida. Nada a fazer." -ForegroundColor Yellow
            return
        }

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
        Write-Host ""
        return
    }

    # Tag ausente no CHANGELOG: o deploy não chegou a ser registrado.
    # Segue para a montagem normal, criando a entrada com os dados do
    # Planning_Revert e o aviso logo após os metadados.
}

$sb = [System.Text.StringBuilder]::new()

[void]$sb.AppendLine("## [$tag] → $dataPlano")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("**${ROTULO_RESPONSAVEL}:** $responsavel$QUEBRA_LINHA")
[void]$sb.AppendLine("**${ROTULO_ESCOPO}:** $escopo$QUEBRA_LINHA")
[void]$sb.AppendLine("**${ROTULO_CATEGORIA}:** $categoria")

if ($Revert) {
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine($aviso)
}

foreach ($secao in $MUDANCAS_VALIDAS) {
    $doGrupo = @($itens | Where-Object { $_.Mudanca -eq $secao })
    if ($doGrupo.Count -eq 0) { continue }

    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("### $secao")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("| $COLUNA_OBJETO | $COLUNA_IMPLEMENTADO |")
    [void]$sb.AppendLine($SEPARADOR_TABELA)

    foreach ($i in $doGrupo) {
        [void]$sb.AppendLine("| ``$($i.Nome)`` | $($i.Implementado) |")
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

# Idempotência: reexecução não duplica a entrada.
if ($conteudo -match [regex]::Escape("## [$tag]")) {
    Write-Host "A tag $tag já consta no CHANGELOG. Nada a fazer." -ForegroundColor Yellow
    exit 2
    #return
}

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
