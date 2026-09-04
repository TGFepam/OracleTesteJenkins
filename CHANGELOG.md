# Changelog

### Todas as alterações significativas e relevantes deste repositório são documentadas neste arquivo.

O formato deste arquivo é baseado no padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.1.0/) e o projeto adota um versionamento baseado nas **tags de deploy** criadas no repositório que utilizam a data e uma numeração sequencial, obedecendo o formato **`vAAAA.MM.DD.SQ`** onde **`SQ`** é a sequência de tags no mesmo dia.

Aqui será feito o registro de alterações, versões e objetos publicados em ambiente de produção. Os registros são lançados ordenados do mais atual ao mais antigo, estando o mais atual sempre no topo do arquivo.

### Detalhes

- Cada nova versão deve ser adicionada como uma nova seção com os dados do **Tipo de Categoria** realizado e o detalhamento dos objetos que serão publicados;
- A versão também deverá conter o **Tipo de Mudança** do deploy geral para todos os objetos ou, se for o caso, o tipo específico de cada objeto implantado;
- Use a seção **`[Não Publicado]`** para mudanças que estão em andamento no branch atual e que ainda não estão prontas para o processo de deploy.

> [!TIP]
> 
> A atualização deste arquivo pode ser feita através de um processo automatizado que utiliza um script que lê o arquivo **`Planning_Deploy.json`** e faz a transferência das informações.

---

> [!IMPORTANT]
>
> ### Tabelas de Parâmetros Válidos
>
> Nos arquivos de planejamento devem ser informados dois parâmetros indicando a **Categoria** do desenvolvimento e o **Tipo de Mudança** realizada.
>
> A **Categoria** é única para o planejamento como um todo, porém o **Tipo de Mudança** funciona da seguinte forma: a informação contida na raiz do planejamento é geral para todos os objetos planejados, porém, caso algum objeto tenha um **Tipo de Mudança** específico diferente do geral, este deve ser definido junto ao objeto e irá sobrepor o **Tipo** geral.
>
> Estas duas tabelas abaixo listam os valores válidos dos parâmetros do planejamento. Qualquer valor diferente destes listados aqui será considerado erro e o deploy será abortado.


### Tipos de Categoria Previstas

| Tipo | Quando usar |
|------|-------------|
| **`feature`** | Novas funcionalidades, ferramentas ou melhorias planejadas. |
| **`release`** | Preparação final e homologação de uma nova versão do sistema para produção. |
| **`bugfix`** | Correção de erros encontrados durante a fase de testes ou homologação antes da publicação em produção. |
| **`hotfix`** | Correções urgentes, críticas e graves que precisam ser feitas diretamente no código que já está em produção. |

---

### Tipos de Mudanças Previstas

| Tipo | Quando usar |
|------|-------------|
| **`Adicionado`** | Para novas funcionalidades, novos objetos ou recursos: tables, packages, procedures, functions, indexes, views, jobs, etc. |
| **`Alterado`** | Para alterações em funcionalidades existentes, mudança de comportamento, regra de negócio ou alterações em recursos. |
| **`Descontinuado`** | Para funcionalidades que estão para serem removidas, objetos ou recursos que ainda existem, mas serão removidos nas próximas versões em deploy futuro (registrar prazo). |
| **`Removido`** | Para funcionalidades removidas nesta versão, objetos ou recursos efetivamente removidos. |
| **`Corrigido`** | Para qualquer tipo de correção de bug, performance ou dado inconsistente. |
| **`Segurança`** | Em caso de vulnerabilidades, privilégios, roles, auditoria e acessos. |

---

## Início da Seção de Documentação de Alterações

## [Não Publicado]

> [!NOTE]
>
> Listar aqui as alterações em desenvolvimento atualmente, mas ainda sem tag ou previsão para deploy.
> 
> Nesta seção cada objeto traz sua própria categoria e responsável, uma vez que convivem alterações de branches diferentes. Nas versões já publicadas esses dados são únicos para a tag e aparecem apenas no cabeçalho.

Nesta seção cada objeto traz sua própria categoria e responsável, pois convivem alterações de branches diferentes. Nas versões já publicadas esses dados são únicos para a tag e aparecem apenas no cabeçalho.

**Exemplos (não publicado):**

### Adicionado

| Objeto | Categoria | Responsável | Implementado |
|--------|-----------|-------------|--------------|
| `fc_calcula_multa.fnc` | feature | Tiago Gabriel | Cálculo de multa por atraso conforme regra vigente a partir de 01/09. |

### Corrigido

| Objeto | Categoria | Responsável | Implementado |
|--------|-----------|-------------|--------------|
| `vw_clientes_ativos.sql` | bugfix | Tiago Gabriel | Remoção de `DISTINCT` desnecessário que causava full scan em `tb_cliente`. |

## [v2026.08.25.01] → 2026-08-25

**Responsável:** Tiago Gabriel<br>
**Escopo:** Criação de package de teste para o Jenkins<br>
**Categoria:** feature

---

### Adicionado

| Objeto | Implementado |
|--------|--------------|
| `pck_teste_jenkins.pck` | Criar package para testes no Jenkins |

### Corrigido

| Objeto | Implementado |
|--------|--------------|
| `pck_teste_validacao.pck` | Corrigir package para testes para validação |

---
