<#
.SYNOPSIS
    Gera a entrada do CHANGELOG.md a partir do Planning_Deploy.json.

.DESCRIPTION
    Executado pelo analista na branch local, depois de concluir o planejamento
    e antes de gerar a tag.

    Modelo de planejamento esperado:

        raiz
            autor      : nome do analista responsavel pela tag
            data       : data do planejamento, no formato AAAA-MM-DD
            tarefa     : descricao da entrega como um todo
            tag        : vAAAA.MM.DD.SQ
            realizado  : feature | release | bugfix | hotfix

        objetos[]
            nome       : caminho relativo dentro de Deploy/, ex. Packages/pck_x.pck
            atividade  : descricao do que mudou neste objeto
            mudanca    : Adicionado | Alterado | Descontinuado | Removido |
                        Corrigido | Seguranca

    O campo "realizado" tambem pode ser declarado dentro de um objeto, para
    cobrir a tag que mistura mais de uma origem.

    O Planning_Revert.json tem a mesma estrutura e pode ser processado com
    o parametro -Planning.

.EXAMPLE
    .\Update-Changelog.ps1 -Preview
    .\Update-Changelog.ps1
    .\Update-Changelog.ps1 -DataDeploy 2026-08-25
#>

[CmdletBinding()]
param(
    [string] $Planning  = "DevOps\Plannings\Planning_Deploy.json",
    [string] $Changelog = "CHANGELOG.md",

    # Data do deploy em PRD. Se omitido, usa a data do planejamento.
    [string] $DataDeploy,

    # Apenas exibe o bloco, sem gravar no arquivo.
    [switch] $Preview
)

$ErrorActionPreference = "Stop"

# ---------------------------------------------------------------------------
# Configuracao
# ---------------------------------------------------------------------------

# Rotulos do bloco gerado. Alterar aqui reflete em todo o arquivo.
# Sem acentos: o PowerShell 5.1 le .ps1 como ANSI quando o arquivo nao tem BOM,
# e literais acentuados sairiam corrompidos. Para usar acentos nos rotulos,
# salve este .ps1 como UTF-8 com BOM.
# Quebra de linha dentro do bloco de metadados. No Markdown, uma quebra
# simples e tratada como espaco e as linhas virariam um paragrafo unico.
# "<br>" e preferivel aos dois espacos no fim da linha, que sao invisiveis
# no editor e somem em formatadores com trim de espacos.
$QUEBRA_LINHA = "<br>"

$ROTULO_ANALISTA  = "Analista"
$ROTULO_DEPLOY    = "Deploy"
$ROTULO_TAREFA    = "Tarefa"
$COLUNA_OBJETO    = "Objeto"
$COLUNA_REALIZADO = "Realizado"
$COLUNA_ATIVIDADE = "Atividade"

# Ordem das secoes dentro de cada versao.
$ORDEM_SECOES = @("Adicionado","Alterado","Descontinuado","Removido","Corrigido","Seguranca")

# Valores aceitos em "mudanca". Chave em minusculas, sem acento.
$MAPA_MUDANCA = @{
    "adicionado"    = "Adicionado"
    "alterado"      = "Alterado"
    "descontinuado" = "Descontinuado"
    "removido"      = "Removido"
    "corrigido"     = "Corrigido"
    "seguranca"     = "Seguranca"
}

# Valores aceitos em "realizado".
$REALIZADO_VALIDOS = @("feature","release","bugfix","hotfix")

# ---------------------------------------------------------------------------
# Funcoes auxiliares
# ---------------------------------------------------------------------------

function Get-Campo {
    # Le uma propriedade que pode nao existir no objeto vindo do JSON.
    param($obj, [string] $nome)
    if ($null -eq $obj) { return $null }
    if ($obj.PSObject.Properties.Name -notcontains $nome) { return $null }
    $v = $obj.$nome
    if ($null -eq $v) { return $null }
    $v = "$v".Trim()
    if ([string]::IsNullOrWhiteSpace($v)) { return $null }
    return $v
}

function Get-RealizadoDaBranch {
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
    if ($REALIZADO_VALIDOS -contains $prefixo) { return $prefixo }
    return $null
}

function Get-NomeObjeto {
    # Packages/pck_proc_fluxos.pck -> pck_proc_fluxos.pck
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
# Leitura do planejamento
# ---------------------------------------------------------------------------

if (-not (Test-Path $Planning))  { throw "Planejamento nao encontrado: $Planning" }
if (-not (Test-Path $Changelog)) { throw "CHANGELOG nao encontrado: $Changelog" }

$plan = Get-Content -Path $Planning -Raw -Encoding UTF8 | ConvertFrom-Json

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

if (-not $DataDeploy) { $DataDeploy = $dataPlan }

# "realizado" da raiz vale para os objetos que nao o declararem.
$realizadoRaiz = Get-Campo $plan 'realizado'
if (-not $realizadoRaiz) { $realizadoRaiz = Get-RealizadoDaBranch }

# ---------------------------------------------------------------------------
# Normalizacao dos objetos
# ---------------------------------------------------------------------------

$itens = @()
$avisos = @()

foreach ($obj in $objetos) {
    $nome = Get-NomeObjeto (Get-Campo $obj 'nome')
    if (-not $nome) { throw "Ha objeto sem o campo 'nome' no planejamento." }

    # mudanca: obrigatorio, por objeto.
    $mudancaBruta = Get-Campo $obj 'mudanca'
    if (-not $mudancaBruta) {
        throw "Objeto '$nome' sem o campo 'mudanca'. Valores aceitos: $($ORDEM_SECOES -join ', ')."
    }
    $chave = $mudancaBruta.ToLower()
    if (-not $MAPA_MUDANCA.ContainsKey($chave)) {
        throw "Valor invalido em 'mudanca' no objeto '$nome': '$mudancaBruta'. Aceitos: $($ORDEM_SECOES -join ', ')."
    }
    $mudanca = $MAPA_MUDANCA[$chave]

    # realizado: por objeto, com a raiz como padrao.
    $realizado = Get-Campo $obj 'realizado'
    if (-not $realizado) { $realizado = $realizadoRaiz }
    if (-not $realizado) {
        throw "Objeto '$nome' sem 'realizado', ausente tambem na raiz e nao deduzido da branch."
    }
    $realizado = $realizado.ToLower()
    if ($REALIZADO_VALIDOS -notcontains $realizado) {
        $avisos += "$nome -> realizado '$realizado'"
    }

    $atividade = Get-Campo $obj 'atividade'
    if (-not $atividade) {
        Write-Warning "Objeto '$nome' sem o campo 'atividade'. A celula ficara vazia."
    }

    $itens += [pscustomobject]@{
        Nome      = ConvertTo-CelulaSegura $nome
        Mudanca   = $mudanca
        Realizado = ConvertTo-CelulaSegura $realizado
        Atividade = ConvertTo-CelulaSegura $atividade
    }
}

if ($avisos.Count -gt 0) {
    Write-Warning "Valor fora do padrao em 'realizado': $($avisos -join '; '). Aceitos: $($REALIZADO_VALIDOS -join ', ')."
}

# ---------------------------------------------------------------------------
# Montagem do bloco
# ---------------------------------------------------------------------------

$sb = [System.Text.StringBuilder]::new()

[void]$sb.AppendLine("## [$tag] - $dataPlan")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("**${ROTULO_ANALISTA}:** $autor$QUEBRA_LINHA")
[void]$sb.AppendLine("**${ROTULO_DEPLOY}:** $DataDeploy$QUEBRA_LINHA")
[void]$sb.AppendLine("**${ROTULO_TAREFA}:** $tarefa")

foreach ($secao in $ORDEM_SECOES) {
    $doGrupo = @($itens | Where-Object { $_.Mudanca -eq $secao })
    if ($doGrupo.Count -eq 0) { continue }

    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("### [$secao]")
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("| $COLUNA_OBJETO | $COLUNA_REALIZADO | $COLUNA_ATIVIDADE |")
    [void]$sb.AppendLine("|--------|-----------|-----------|")

    foreach ($i in $doGrupo) {
        [void]$sb.AppendLine("| ``$($i.Nome)`` | $($i.Realizado) | $($i.Atividade) |")
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
