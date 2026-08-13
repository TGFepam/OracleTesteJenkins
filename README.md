<div align="center">

# 🗄️ OracleDatabase_CI_CD

**Repositório oficial dos códigos-fonte SQL e PL/SQL dos bancos de dados Oracle**
Pipeline de deploy e reversão automatizado via **Jenkins**

[![Oracle](https://img.shields.io/badge/Oracle-12c-F80000?logo=oracle&logoColor=white)](https://www.oracle.com/database/)
[![Jenkins](https://img.shields.io/badge/CI%2FCD-Jenkins-D24939?logo=jenkins&logoColor=white)](https://www.jenkins.io/)
[![Changelog](https://img.shields.io/badge/Changelog-Keep%20a%20Changelog-orange)](CHANGELOG.md)
[![License](https://img.shields.io/badge/License-Privado-lightgrey)](#)

</div>

---

> [!TIP]
> **Histórico de Versões**
> Para visualizar o histórico de entregas, tags e atualizações recentes, consulte o [CHANGELOG.md](CHANGELOG.md).

## Índice

- [Sobre o Projeto](#sobre-o-projeto)
- [Estrutura do Repositório](#estrutura-do-repositório)
- [Como Funciona o Pipeline](#como-funciona-o-pipeline)
- [Como Contribuir](#como-contribuir)
- [Convenções](#convenções)
- [Monitoramento](#monitoramento)
- [Equipe](#equipe)

## 📖 Sobre o Projeto

Este repositório centraliza os objetos de banco de dados **Oracle** (SQL e PL/SQL) utilizados pelas aplicações corporativas, com um pipeline de **CI/CD via Jenkins** responsável por automatizar o **deploy** e a **reversão (rollback)** desses objetos entre os ambientes.

O fluxo garante rastreabilidade, versionamento e segurança nas publicações, evitando alterações manuais diretas em produção.

## 🗂️ Estrutura do Repositório

```text
OracleDatabase_CI_CD/
├── Deploy/              # Objetos SQL/PL-SQL a serem publicados no banco
│   ├── Functions/
│   ├── Indexes/
│   ├── Java/
│   ├── Jobs/
│   ├── Packages/
│   ├── Procedures/
│   ├── Schedules/
│   ├── Scripts/
│   ├── Sequences/
│   ├── Synonyms/
│   ├── Tables/
│   ├── Triggers/
│   └── Views/
├── Revert/              # Scripts de reversão (rollback) em caso de erro no deploy
├── DevOps/
│   ├── Jenkins/         # Jenkinsfiles e parâmetros de configuração do pipeline
│   ├── Plannings/       # JSONs de planejamento (deploy/revert) por branch/tag
│   ├── Scripts/         # Scripts auxiliares (compilação, kill session, invalidos)
│   └── HealthServer/    # Jenkinsfiles de health check (HML/PRD)
├── METRICS/             # Dashboards e configuração de monitoramento (Grafana/Prometheus)
├── CHANGELOG.md
└── README.md
```

| Diretório | Descrição |
|---|---|
| **Deploy** | Contém os códigos **SQL** e **PL/SQL** organizados por tipo de objeto, prontos para publicação no banco de dados |
| **Revert** | Contém os scripts equivalentes de reversão, utilizados em caso de falha na publicação |
| **DevOps** | Pipelines Jenkins, planejamentos de execução e scripts de apoio ao processo de deploy/revert |
| **METRICS** | Artefatos de observabilidade (dashboards e coleta de métricas) do ambiente de banco |

## ⚙️ Como Funciona o Pipeline

1. **Planejamento** — é criado um arquivo de planejamento em `DevOps/Plannings/`, no padrão `Plan_[origem]_Deploy.json`, listando os objetos a publicar. Cada operação sempre gera **dois arquivos**: um para *Deploy* e outro para *Revert*.
2. **Deploy** — o Jenkins executa o `JenkinsFileDeploy`, que:
   - Mata sessões ativas conflitantes (`KillSessions.sql`);
   - Publica os objetos definidos no planejamento;
   - Compila os objetos afetados (`CompileObjects.sql`);
   - Lista objetos inválidos após a operação (`ListInvalids.sql`).
3. **Revert (se necessário)** — o Jenkins executa o `JenkinsFileRevert`, aplicando os scripts correspondentes do diretório `Revert/`.
4. **Health Check** — pipelines dedicados (`JenkinsFileHealthHML` / `JenkinsFileHealthPRD`) validam a saúde do ambiente após a operação.

> [!WARNING]
> Os arquivos em `DevOps/Jenkins/` e `DevOps/Scripts/` são de uso interno do pipeline e **não devem ser alterados** manualmente.

## 🚀 Como Contribuir

1. Crie uma branch a partir de `main`, seguindo a convenção `feature/FP-XXXX` ou `hotfix/CS-XXXXX`.
2. Adicione/atualize os objetos correspondentes em `Deploy/<TipoDoObjeto>/`.
3. Crie o script de reversão correspondente em `Revert/`.
4. Gere o arquivo de planejamento em `DevOps/Plannings/`.
5. Abra um **Pull Request** descrevendo a alteração, referenciando o card/ticket (ex: `FP-XXXX`, `CS-XXXXX`).
6. Após aprovação e merge, o Jenkins assume a publicação nos ambientes.
7. Atualize o [CHANGELOG.md](CHANGELOG.md) com a entrega realizada.

## 📋 Convenções

- **Nomenclatura de objetos**: seguir o padrão já utilizado por tipo (ex.: `fc_` para functions, `pr_`/`pkg_` para procedures/packages).
- **Changelog**: baseado no padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/), com versionamento por data (`vAAAA.MM.DD.NN`).
- **Rastreabilidade**: toda alteração deve referenciar o card da demanda (ex.: `[FP-9102]`) ou o chamado de suporte (ex.: `[CS-54321]`).

## 📊 Monitoramento

Os dashboards e a configuração de coleta de métricas do ambiente Oracle estão disponíveis em [`METRICS/`](METRICS/), incluindo integração com **Prometheus** e **Grafana**.

## 👥 Equipe

Mantido pela equipe de **Banco de Dados / DevOps**.

---

<div align="center">

Feito com 💛 pela equipe de Banco de Dados

</div>
