<#
.SYNOPSIS
    Registra no CHANGELOG.md a entrada correspondente a um planejamento.

.DESCRIPTION
    Rodar a partir de DevOps\Scripts\. O modelo do planejamento e os valores
    aceitos em "implementacao" e "resultado" estão documentados no CHANGELOG.md.

    Cascata: "resultado" na raiz vale para todos os objetos; o objeto que
    declarar o campo sobrepõe. Para herdar, omita a chave.

    Salvar este arquivo em UTF-8 COM BOM: sem o BOM o PowerShell 5.1 lê como
    ANSI e corrompe os rótulos acentuados.

.EXAMPLE
    .\Update-Changelog.ps1 -Preview
    .\Update-Changelog.ps1
    .\Update-Changelog.ps1 -Revert
#>

[CmdletBinding()]
param(
    [string] $Planning,    # padrão: DevOps\Plannings\Planning_[Deploy|Revert].json
    [string] $Changelog,   # padrão: CHANGELOG.md na raiz do repositório
    [switch] $Revert,      # anota a reversão numa tag já registrada
    [string] $DataDeploy,  # padrão: data do planejamento
    [string] $DataRevert,  # padrão: data do planejamento
    [switch] $Preview      # exibe o bloco sem gravar
)

$ErrorActionPreference = "Stop"

# Ordem das seções e normalização de "resultado" (chave minúscula, com ou sem cedilha).
$ORDEM_SECOES = @("Adicionado","Alterado","Descontinuado","Removido","Corrigido","Segurança")
$MAPA_RESULTADO = @{
    "adicionado" = "Adicionado"; "alterado"  = "Alterado"; "descontinuado" = "Descontinuado"
    "removido"   = "Removido";   "corrigido" = "Corrigido"
    "segurança"  = "Segurança";  "seguranca" = "Segurança"
}

# ---------------------------------------------------------------------------
# Auxiliares
# ---------------------------------------------------------------------------

function Get-Campo {
    # Devolve $null tanto para chave ausente quanto para valor vazio.
    param($obj, [string] $nome)
    if ($null -eq $obj -or $obj.PSObject.Properties.Name -notcontains $nome) { return $null }
    $v = "$($obj.$nome)".Trim()
    if ([string]::IsNullOrWhiteSpace($v)) { return $null }
    return $v
}

function Resolve-CaminhoRepo {
    # Relativo à raiz do repositório (dois níveis acima de DevOps\Scripts\).
    param([string] $caminho)
    if ([System.IO.Path]::IsPathRooted($caminho)) { return $caminho }
    if ($PSScriptRoot) {
        $tentativa = Join-Path $PSScriptRoot (Join-Path '..\..' $caminho)
        if (Test-Path $tentativa) { return (Resolve-Path $tentativa).Path }
    }
    if (Test-Path $caminho) { return (Resolve-Path $caminho).Path }
    return $caminho
}

function Get-ChaveTag {
    # vAAAA.MM.DD.SQ -> inteiro comparável, para não ordenar "10" antes de "06".
    param([string] $t)
    $m = [regex]::Match($t, '^v?(\d{4})\.(\d{2})\.(\d{2})\.(\d+)$')
    if (-not $m.Success) { return $null }
    return [int64]$m.Groups[1].Value * 100000000L + [int64]$m.Groups[2].Value * 1000000L +
           [int64]$m.Groups[3].Value * 10000L     + [int64]$m.Groups[4].Value
}

function Format-Celula {
    param([string] $t)
    if ($null -eq $t) { return "" }
    return $t.Trim().Replace('|', '\|')   # pipe quebraria a tabela
}

# ---------------------------------------------------------------------------
# Leitura do planejamento
# ---------------------------------------------------------------------------

if (-not $Planning) {
    $arq = if ($Revert) { "Planning_Revert.json" } else { "Planning_Deploy.json" }
    $Planning = Join-Path "DevOps\Plannings" $arq
}
if (-not $Changelog) { $Changelog = "CHANGELOG.md" }

$Planning  = Resolve-CaminhoRepo $Planning
$Changelog = Resolve-CaminhoRepo $Changelog

foreach ($p in @($Planning, $Changelog)) {
    if (-not (Test-Path $p)) { throw "Arquivo não encontrado: $p" }
}

try {
    $plan = Get-Content -Path $Planning -Raw -Encoding UTF8 | ConvertFrom-Json
} catch {
    throw "JSON inválido em $Planning`n$($_.Exception.Message)"
}

$tag           = Get-Campo $plan 'tag'
$autor         = Get-Campo $plan 'autor'
$dataPlan      = Get-Campo $plan 'data'
$tarefa        = Get-Campo $plan 'tarefa'
$implementacao = Get-Campo $plan 'implementacao'
$resultadoRaiz = Get-Campo $plan 'resultado'

foreach ($c in @('tag','autor','data','tarefa','implementacao','resultado')) {
    if (-not (Get-Campo $plan $c)) { throw "Campo '$c' ausente ou vazio na raiz de $Planning." }
}

$objetos = @($plan.objetos)
if ($objetos.Count -eq 0) { throw "O planejamento não possui objetos." }

# ---------------------------------------------------------------------------
# Normalização dos objetos: a chave presente sobrepõe a raiz; ausente, herda.
# ---------------------------------------------------------------------------

$itens = foreach ($obj in $objetos) {
    $nome = Get-Campo $obj 'nome'
    if (-not $nome) { throw "Há objeto sem o campo 'nome' em $Planning." }
    $nome = $nome.Split('/')[-1].Split('\')[-1]

    $bruto = if ($obj.PSObject.Properties.Name -contains 'resultado') {
        "$($obj.resultado)".Trim()
    } else {
        $resultadoRaiz
    }

    $chave = "$bruto".ToLower()
    if (-not $MAPA_RESULTADO.ContainsKey($chave)) {
        throw "Objeto '$nome': 'resultado' inválido ('$bruto'). Aceitos: $($ORDEM_SECOES -join ', '). Para herdar a raiz, omita a chave."
    }

    [pscustomobject]@{
        Nome      = Format-Celula $nome
        Atividade = Format-Celula (Get-Campo $obj 'atividade')
        Resultado = $MAPA_RESULTADO[$chave]
    }
}

$conteudo = Get-Content -Path $Changelog -Raw -Encoding UTF8
$eol      = if ($conteudo.Contains("`r`n")) { "`r`n" } else { "`n" }
$semBom   = New-Object System.Text.UTF8Encoding $false   # UTF8 do Set-Content grava COM BOM no 5.1

# ---------------------------------------------------------------------------
# Modo revert: anota a reversão na entrada já registrada, sem criar nova
# ---------------------------------------------------------------------------

if ($Revert) {
    if (-not $DataRevert) { $DataRevert = $dataPlan }

    $cab = [regex]::Match($conteudo, '(?m)^##\s*\[' + [regex]::Escape($tag) + '\]')
    if (-not $cab.Success) {
        throw "A tag $tag não consta no CHANGELOG. Registre o deploy antes do revert."
    }

    # Delimita o bloco da tag para não anotar a entrada vizinha.
    $prox = [regex]::Match($conteudo.Substring($cab.Index + 1), '(?m)^##\s*\[')
    $fim  = if ($prox.Success) { $cab.Index + 1 + $prox.Index } else { $conteudo.Length }
    $bloco = $conteudo.Substring($cab.Index, $fim - $cab.Index)

    if ($bloco -match 'Revertido') {
        Write-Host "A tag $tag já está marcada como revertida. Nada a fazer." -ForegroundColor Yellow
        return
    }

    $nomes = ($itens | ForEach-Object { '`' + $_.Nome + '`' }) -join ', '
    $aviso = "> [!CAUTION]$eol> **Revertido em $DataRevert por $autor**$eol" +
             "> Motivo: $tarefa$eol> Objetos restaurados: $nomes"

    if ($Preview) { Write-Host "`n$aviso`n"; return }

    # Entra logo antes da primeira seção da tag, depois dos metadados.
    $secao = [regex]::Match($bloco, '(?m)^###\s')
    $pos   = if ($secao.Success) { $cab.Index + $secao.Index } else { $fim }
    $novo  = $conteudo.Substring(0, $pos) + $aviso + $eol + $eol + $conteudo.Substring($pos)

    [System.IO.File]::WriteAllText((Resolve-Path $Changelog).Path, $novo, $semBom)
    Write-Host "`nRevert da tag $tag registrado. Confira: git diff $Changelog`n" -ForegroundColor Green
    return
}

# ---------------------------------------------------------------------------
# Montagem do bloco, no formato já usado pelo CHANGELOG
# ---------------------------------------------------------------------------

if (-not $DataDeploy) { $DataDeploy = $dataPlan }

$linhas = @(
    "## [$tag] - $dataPlan"
    ""
    "**Analista:** $autor"
    "**Deploy:** $DataDeploy"
    "**Tarefa:** $tarefa"
    "**Implementação:** $implementacao"
)

foreach ($secao in $ORDEM_SECOES) {
    $doGrupo = @($itens | Where-Object { $_.Resultado -eq $secao })
    if ($doGrupo.Count -eq 0) { continue }

    $linhas += @("", "### $secao", "", "| Objeto | Atividade |", "|--------|-----------|")
    $linhas += $doGrupo | ForEach-Object { "| ``$($_.Nome)`` | $($_.Atividade) |" }
}

$bloco = $linhas -join $eol

if ($Preview) { Write-Host "`n$bloco`n"; return }

# ---------------------------------------------------------------------------
# Inserção, mantendo a ordem cronológica decrescente
# ---------------------------------------------------------------------------

if ($conteudo -match [regex]::Escape("## [$tag]")) {
    Write-Host "A tag $tag já consta no CHANGELOG. Nada a fazer." -ForegroundColor Yellow
    return
}

$chaveNova = Get-ChaveTag $tag
$pos = -1
foreach ($m in [regex]::Matches($conteudo, '(?m)^##\s*\[(v\d{4}\.\d{2}\.\d{2}\.\d+)\]')) {
    $chave = Get-ChaveTag $m.Groups[1].Value
    if ($null -eq $chaveNova -or $null -eq $chave -or $chave -lt $chaveNova) { $pos = $m.Index; break }
}

$novo = if ($pos -ge 0) {
    $conteudo.Substring(0, $pos) + $bloco + $eol + $eol + "---" + $eol + $eol + $conteudo.Substring($pos)
} else {
    $conteudo.TrimEnd() + $eol + $eol + $bloco + $eol + $eol + "---" + $eol
}

[System.IO.File]::WriteAllText((Resolve-Path $Changelog).Path, $novo, $semBom)
Write-Host "`nCHANGELOG atualizado com a tag $tag. Confira: git diff $Changelog`n" -ForegroundColor Green
