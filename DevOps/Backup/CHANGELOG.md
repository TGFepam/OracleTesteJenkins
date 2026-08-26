# Changelog

### Todas as alterações significativas e relevantes deste repositório são documentadas neste arquivo.

O formato deste arquivo é baseado no padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.1.0/) e o projeto adota um versionamento correspondem às **tags de deploy** do repositório baseado em datas com uma numeração sequencial no formato **`vAAAA.MM.DD.SQ`** onde **`SQ`** é a sequência das tags no mesmo dia.

Aqui será feito o registro de alterações, versões e objetos publicados em ambiente de produção. Cada nova atualização deve ser adicionada como uma nova seção com os dados do exemplo abaixo. Os registros são lançados ordenados do mais atual ao mais antigo, sendo o mais atual no topo.

- Cada nova versão deve ser adicionada como uma nova seção com os dados da release e o detalhamento dos objetos
- Use a seção **`Não publicado`** para mudanças em andamento na branch atual que ainda não estão prontas para o deploy.

---

### Tipos de Mudanças Previstas

| Tipo | Quando usar |
|------|-------------|
| **`Adicionado`** | Novos objetos ou recursos: tables, packages, procedures, functions, indexes, views, jobs, etc. |
| **`Alterado`** | Mudança de comportamento, regra de negócio ou alterações em recursos existentes. |
| **`Descontinuado`** | Objetos ou recursos que ainda existem, mas serão removidos nas próximas versões em deploy futuro (registrar prazo). |
| **`Removido`** | Objetos ou recursos efetivamente removidos nesta versão. |
| **`Corrigido`** | Qualquer correção de bug, performance ou dado inconsistente. |
| **`Segurança`** | Privilégios, roles, auditoria, correção de vulnerabilidades. |

---

## [Não Publicado]

Alterações em desenvolvimento, possívelmente já mergeadas na branch **`main`** mas ainda sem tag ouo previsão para deploy.

---

## Exemplo (não publicado):

### Adicionado

| Objeto | Implementação | Analista | Historico |
|--------|------|----------|-----------|
| `fc_calcula_multa` | feature | Tiago Gabriel | cálculo de multa por atraso conforme regra vigente a partir de 01/09.|

### Corrigido

| Objeto | Implementação | Analista | Historico |
|--------|------|----------|-----------|
| `vw_clientes_ativos` | bugfix | Tiago Gabriel | remoção de `DISTINCT` desnecessário que causava full scan em `tb_cliente`. |

---

## [v2026.08.25.01] - 2026-08-25

**Analista:** Tiago Gabriel
**Deploy:** 2026-08-25
**Tarefa:** Criação de package de teste para o Jenkins
**Implementação:** feature

### Adicionado

| Objeto | Atividade |
|--------|-----------|
| `pck_teste_jenkins.pck` | Criar package para testes no Jenkins |

---
