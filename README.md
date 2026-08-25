# ![Database](https://api.iconify.design/mdi:database.svg?height=32&color=%23F80000) OracleDatabase_CI_CD

[![Oracle](https://img.shields.io/badge/Oracle-12c-F80000?logo=oracle&logoColor=white)](https://www.oracle.com/database/)<br>
[![Jenkins](https://img.shields.io/badge/CI%2FCD-Jenkins-D24939?logo=jenkins&logoColor=white)](https://www.jenkins.io/)

## Repositório oficial dos códigos-fonte SQL e PL/SQL dos bancos de dados Oracle

### Pipelines de deploy e revert automatizados via **Orquestrador Jenkins**<br><br>

> [!TIP]
> ###  Histórico de Versões
>
> Para acessar o histórico de entregas, tags e atualizações recentes, consulte o [CHANGELOG.md](CHANGELOG.md).

---

## Sobre o Projeto

Este repositório centraliza os objetos de banco de dados **Oracle** (SQL e PL/SQL) utilizados pelas aplicações corporativas, com um pipeline de **CI/CD via Jenkins** responsável por automatizar os processos de **deploy** e **revert (rollback)** desses objetos entre os ambientes.

O fluxo garante rastreabilidade, versionamento e segurança nas publicações, evitando alterações manuais diretas em produção.

---

## Estrutura Básica do Repositório

<details>
<summary>Clique para expandir a estrutura de diretórios</summary>

```text
OracleDatabase_CI_CD  → Diretório raiz do repositório
├── Deploy            → Diretório base dos códigos a serem publicados nos bancos de dados contendo um subdiretório para cada tipo de arquivo-fonte (objeto)
│   ├── Functions
│   ├── Indexes
│   ├── Java
│   ├── Jobs
│   ├── Packages
│   ├── Procedures
│   ├── Schedules
│   ├── Scripts
│   ├── Sequences
│   ├── Synonyms
│   ├── Tables
│   ├── Triggers
│   └── Views
├── DevOps            → Diretório base das configurações para a automação via Jenkins 
│   ├── HealthServer  → Jenkinsfiles de health check dos bancos de dados (HML/PRD)
│   ├── Jenkins       → Jenkinsfiles de configuração dos pipelines e JSONs de parâmetros da operação
│   ├── Plannings     → Arquivos JSONs de planejamento de deploy e revert por tag
│   └── Scripts       → Scripts auxiliares (kill session, lista inválidos e recompilação)
├── METRICS           → Armazenamento das métricas utilizadas no monitoramento do Grafana
├── Revert            → Diretório base dos códigos de backup e reversão para serem aplicados em caso de erros no deploy contendo um subdiretório para cada tipo de arquivo-fonte (objeto)
│   ├── Functions      
│   ├── Indexes
│   ├── Java
│   ├── Jobs
│   ├── Packages
│   ├── Procedures
│   ├── Schedules
│   ├── Scripts
│   ├── Sequences
│   ├── Synonyms
│   ├── Tables
│   ├── Triggers
│   └── Views
├── CHANGELOG.md      → Arquivo que armazena o histórico das tags aplicadas e o detalhamento das alterações
└── README.md         → Este arquivo de detalhamento do repositório
```

</details>

---

## Como Funciona o Pipeline

1. **Desenvolvimento** → após a conclusão do desenvolvimento os arquivos-fonte serão salvos na estrutura do repositório para **Deploy**, bem como os scripts necessários para a reversão também serão salvos na estrutura do **Revert**.

2. **Planejamento** → serão criados/alterados dois arquivos JSON de planejamento do job localizados em **`DevOps/Plannings/`** sendo um para o **Deploy** chamado **`Planning_Deploy.json`** que conterá as informações dos scripts que deverão ser aplicados nos bancos de dados e um para **Revert** chamado **`Planning_Revert.json`** que conterá os scripts de contenção e fallback em caso de ocorrer algum problema no deploy permitindo a restauração do banco de dados:
   - Ambos os arquivos terão os dados do analista responsável, data da criação, informação da tag gerada e as informações referente aos processos adicionais que deverão ser executados (kill sessions, list invalids e recompile objects);
   - **Importante:** Cada operação sempre irá gerar **os dois arquivos**.

3. **Deploy** → o Jenkins irá executar a operação de **Deploy** configurada pelo script **`JenkinsFileDeploy`**, que fará uma série de verificações, validações e configurações do ambiente para a correta execução dos scripts planejados. De acordo com os parâmetros informados no planejamento será executado:
   - Matar as sessões ativas no banco de dados (script **`KillSessions.sql`**);
   - Validar a estrutura dos scripts planejados para o **Deploy**;
   - Publicar os objetos definidos no planejamento;
   - Listar os objetos que tenham ficado inválidos após o **Deploy** (**`ListInvalids.sql`**);
   - Compilar os objetos afetados e inválidos (**`CompileObjects.sql`**).

4. **Revert (se necessário)** → caso ocorram erros na operação de **Deploy**, deverá ser executado imediatamente a operação de **Revert** configurada pelo script **`JenkinsFileRevert`**, que também fará verificações, validações e configurações do ambiente e, da mesma forma de acordo com os parâmetros informados no planejamento, executará as operações bem como os scripts planejados. **Detalhe:** os scripts planejados deverão estar no diretório **Revert** e no diretório do respectivo objeto.

5. **Health Check** → pipelines dedicados (**`JenkinsFileHealthHML`** / **`JenkinsFileHealthPRD`**) que fazem a validação da saúde do ambiente de Homologação e Produção após a operação.

> [!WARNING]
> ### Restrição a arquivos
>
> Os arquivos em **`DevOps/Jenkins/`** e **`DevOps/Scripts/`** são de uso interno do pipeline e **não devem ser alterados** manualmente.

---

## Como Contribuir

1. Antes de qualquer operação, atualizar a branch **`main`** através de um **`PULL`**;
2. Criar uma branch a partir de **`main`** (que deve sempre ser atualizada antes da criação), seguindo a convenção do prefixo correto definido no GitHub Flow: **`feature`**, **`release`**, **`bugfix`** ou **`hotfix`**, seguida de uma breve descrição, **sempre em letras minúsculas**, por ex.: **`feature/novo_calculo`** ou **`bugfix/erro_lancamento`**
3. Adicionar/atualizar os objetos correspondentes em **`Deploy/<TipoDoObjeto>/`**;
4. Criar sempre o script de reversão necessário em **`Revert/<TipoDoObjeto>/`**;
5. Gerar os arquivos de planejamento em **`DevOps/Plannings/`**, **sempre os dois arquivos**;
6. Abrir um **Pull Request** descrevendo a alteração efetuada, referenciando uma breve descrição e sempre que possível o card/ticket (ex.: **`FP-12345`**, **`CS-67890`**);
7. Após a aprovação e merge do **Pull Request**, executar um **`PULL`** na branch **`main`** para atualização antes de gerar a tag e criar a tag com a data corrente e o sequencial e não a data prevista para o deploy, para mantrer a cronologia: o Jenkins assume a publicação nos ambientes;
8. Atualizar o [CHANGELOG.md](CHANGELOG.md) com os dados da tag e as informações da entrega realizada;
   - Foi criado um script do PowerShell que atualiza automaticamente o [CHANGELOG.md](CHANGELOG.md) com os dados do arquivo de planejamento de deploy: Para a correta execução será necessário alterar o formato dos arquivos de planejamento **`Planning_Deploy.json`** e **`Pnanning_Revert.json`**;
   - Foram adicionados dois parâmetros em cada arquivo com informações necessárias para a correta e completa informação no [CHANGELOG.md](CHANGELOG.md);
   - Inicialmente estas configurações estão em ambiente de testes controlado para validação e após o devido detalhamento será implementado em produção.

---

## Convenções

- **Nomenclatura de branches**: prefixo obrigatório conforme o caso, seguindo o GitHub Flow: **`feature`**, **`release`**, **`bugfix`** ou **`hotfix`** — acompanhado de uma breve descrição, **sempre em letras minúsculas**;
- **Nomenclatura de objetos**: seguir o padrão já utilizado por tipo de objeto, por exemplo:
   - **`fc_`** para functions;
   - **`pr_`** para procedures;
   - **`pck_`** para packages, e assim por diante;
- **Tags de deploy**: formato **`vAAAA.MM.DD.SQ`**, onde **`SQ`** é o sequencial da tag dentro do mesmo dia;
- **Changelog**: baseado no padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/), com o versionamento por data no formato da tag (`vAAAA.MM.DD.SQ`);
- **Rastreabilidade**: toda alteração (branch) deve ter o correto prefixo (**`feature`** / **`release`** / **`bugfix`** ou **`hotfix`**) conforme for o caso, acompanhado de uma breve descrição, sempre em letras minúsculas e, sempre que possível, referenciando o card da demanda (ex.: **`FP-9102`**) ou o chamado de suporte (ex.: **`CS-54321`**).

---

## Monitoramento

Os dashboards e a configuração de coleta de métricas do ambiente Oracle estão disponíveis em [**`METRICS/`**](METRICS/), incluindo integração com **Prometheus** e **Grafana**;

---

## Equipe

Desenvolvido e mantido pelas equipes do **GitHub**, **Banco de Dados** e **DevOps**.

Feito com 💙.
