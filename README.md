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

Este repositório centraliza os objetos de banco de dados **Oracle** (SQL e PL/SQL) utilizados pelas aplicações corporativas e as configurações do um pipeline de **CI/CD via Jenkins** responsável por automatizar os processos de **Deploy** e **Revert (rollback)** desses objetos entre os ambientes.

O fluxo garante rastreabilidade, versionamento e segurança nas publicações, evitando alterações manuais diretas em produção.

---

## Estrutura Básica dos Repositórios

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

## Como Contribuir

1. Antes de qualquer operação, atualizar a branch **`main`** através de um **`pull`**;
2. Criar uma branch de trabalho a partir de **`main`** (que deve sempre ser atualizada antes da criação), seguindo a convenção do prefixo definido no GitHub Flow de acordo com o tipo de desenvolvimento a ser realizado: **`feature`**, **`release`**, **`bugfix`** ou **`hotfix`**, que devem ser seguidos de uma barra (**/**) e de uma breve descrição, **sempre em letras minúsculas**, por ex.: **`feature/novo_calculo`** ou **`bugfix/erro_lancamento`**;
3. Adicionar e/ou atualizar os objetos correspondentes nos diretórios do repositório de acordo com o tipo de objeto, em **`Deploy/<TipoDoObjeto>/`**;
4. Sempre criar também também a estrutura necessária sendo scripts ou salvar os arquivos de reversão necessários para o caso de caso de erros no deploy em **`Revert/<TipoDoObjeto>/`** de acordo com o tipo de dado;
5. Criar os arquivos de planejamento para o **Deploy** e o **Revert** em **`DevOps/Plannings/`**, chamados **`Planning_Deploy.json`** e **`Planning_Revert.json`** com os dados de identificação e a relação dos objetos a serem aplicados; É imprescindível **sempre criar os dois arquivos** de planejamento;
6. Identificar qual será a próxima **tag** a ser criada no repositório e incluir esta informação em ambos os arquivos de planejamento:
   - Dica de comando do PowerShell para identificar a próxima tag;
   - A primeira linha traz as tags criadas por outros analistas; sem ela a lista pode estar desatualizada;
   - A segunda lista as tags de hoje, da maior para a menor — a próxima é o sequencial do topo mais um.

```PowerShell
git fetch --tags
git tag --list "v$(Get-Date -Format 'yyyy.MM.dd').*" --sort=-v:refname
```

7. Efetuar a atualização do [CHANGELOG.md](CHANGELOG.md) com as informações do desenvolvimento; **Detalhe:** esta atualização pode ser feita de forma automática com base nos dados do planejamento de deploy;
8. Abrir um **Pull Request** descrevendo as alterações efetuadas, referenciando uma breve descrição e sempre que possível incluir a informação do card/ticket (ex.: **`FP-12345`**, **`CS-67890`**);
9. Após a aprovação e o merge do **Pull Request**, executar um **`pull`** na branch **`main`** para atualização dos dados **antes de gerar a tag**;
10. Criar a **tag** e com a data corrente e o sequencial e não a data prevista para o deploy para manter a cronologia;
11. O Jenkins assume a publicação nos ambientes; com a data corrente e o sequencial e não a data prevista para o deploy, para manter a cronologia, no formato **`vAAAA.MM.DD.SQ`** onde **`SQ`** é a sequência da tag no dia;

> [!IMPORTANT]
>
> ### Informações do Planning_Deploy.json
>
> Para que informações corretas e detalhadas das alterações efetuadas no banco da dados sejam inseridas no [CHANGELOG.md](CHANGELOG.md) é imprescindível que o arquivo de planejamento do deploy seja preenchido da melhor e mais detalhada forma possível, restando apenas a execução de um script para a atualização das informações.

---

## Os Arquivos de Planejamento

Os arquivos de planejamento são arquivos no formato JSON. A estrutura de ambos os arquivos, de **Deploy** e de **Revert** é a mesma.

**Importante:** Para que informações corretas e detalhadas das alterações efetuadas no banco da dados sejam inseridas no [CHANGELOG.md](CHANGELOG.md) é imprescindível que o arquivo de planejamento do deploy seja preenchido da melhor e mais detalhada forma possível, para que a atualização automática carregue dados significativos. Segue um arquivo de planejamento de exemplo:

```JSON
{
    "responsavel": "Tiago Gabriel",
    "dataPlano": "2026-08-25",
    "escopo": "Criação de package de teste para o Jenkins",
    "tag": "v2026.08.25.01",
    "categoria": "feature",
    "tipoMudanca": "Corrigido",
    "acoes": {
        "matarSessoes": false,
        "listarInvalidos": true,
        "compilarObjetos": true
    },
    "objetos": [
        {
            "nome": "Packages/pck_teste_jenkins.pck",
            "implementado": "Criar package para testes no Jenkins",
            "tipoMudanca": "Adicionado"
        },
        {
            "nome": "Packages/pck_teste_validacao.pck",
            "implementado": "Corrigir package para testes para validação"
        }
    ]
}
```
### Detalhamento da Estrutura

| Campo | Descrição |
|-------|-----------|
| responsavel | Nome do responsável pela publicação dos objetos. |
| dataPlano | Data corrente da criação do planejamento. |
| escopo | Objetivo ou necessidade da manutenção dos objetos listados no planejamento. É a descrição geral que detalha a manutenção como um todo. |
| tag | Tag criada no repositório que agrupa a imagem estática dos objetos para aplicação. |
| categoria | Identificação do fluxo do GitHub Flow que representa a manutenção realizada nos objetos. É único por desenvolvimento. |
| tipoMudanca | Baseado no Keep a Changelog, identifica a mudança realizada. O valor informado na raiz vale para todos os objetos do planejamento, porém, cada objeto pode informar o seu próprio, que sobrepõe o da raiz apenas para aquele objeto; os objetos que não informarem herdam o valor geral. |
| acoes | Bloco com as ações adicionais que o pipeline executa junto com a publicação. Cada ação é ativada ou desativada individualmente. |
| acoes.matarSessoes | Encerra as sessões ativas no banco antes da publicação, evitando bloqueios na compilação dos objetos. |
| acoes.listarInvalidos | Lista os objetos que ficaram inválidos após a publicação. |
| acoes.compilarObjetos | Recompila os objetos afetados e os que ficaram inválidos. |
| objetos | Relação dos objetos que serão aplicados. Cada item representa um arquivo-fonte do repositório. |
| objetos.nome | Caminho do arquivo a partir do diretório base, iniciando pelo tipo do objeto — por exemplo **`Packages/pck_teste_jenkins.pck`**. |
| objetos.implementado | Detalhamento do que foi efetivamente implementado neste objeto especificamente. É o texto que aparece no CHANGELOG, portanto deve ser específico e descritivo. |
| objetos.tipoMudanca | Opcional. Quando informado, sobrepõe o **`tipoMudanca`** da raiz para aquele objeto. Quando ausente, o objeto herda o valor geral. |

---

## Como Funciona o Pipeline

1. **Desenvolvimento** → após a conclusão do desenvolvimento os arquivos-fonte serão salvos na estrutura do repositório de acordo com o objetivo em **`Deploy/<TipoDoObjeto>`** e os scripts necessários para a reversão na estrutura do **`Revert/<TipoDoObjeto>`**;

2. **Planejamento** → alterar os dois arquivos JSON de planejamento do job que irão guiar o processo no **Jenkins** para aplicação dos scripts nos bancos de dados;

3. **Deploy** → o Jenkins irá executar a operação de **Deploy** configurada pelo script do pipeline **`JenkinsFileDeploy`**, que fará uma série de verificações, validações e configurações do ambiente. De acordo com os parâmetros informados no planejamento será executado nesta ordem:
   - Validar a estrutura dos scripts planejados para o **Deploy**;
   - Matar as sessões ativas no banco de dados (script **`KillSessions.sql`**) caso parametrizado;
   - Publicar os objetos definidos no planejamento;
   - Listar os objetos que tenham ficado inválidos após o **Deploy** (**`ListInvalids.sql`**) caso parametrizado;
   - Compilar os objetos afetados e inválidos (**`CompileObjects.sql`**) caso parametrizado.

4. **Revert (se necessário)** → caso ocorram erros na operação de **Deploy**, deverá ser executado imediatamente a operação de **Revert** configurada pelo script **`JenkinsFileRevert`**, que também fará verificações, validações e configurações do ambiente;

5. **Health Check** → pipelines dedicados (**`JenkinsFileHealthHML`** / **`JenkinsFileHealthPRD`**) que fazem a validação da saúde do ambiente de Homologação e Produção após a operação.

### Estrutura do Pipeline → Diretórios

O pipeline do Jenkins depende de uma série de arquivos para configuração, implantação e funcionamento. Estes arquivos estão armazenados no repositório em um diretório específico:

```text
DevOps            → Diretório base das configurações para a automação via Jenkins
├── HealthServer  → Jenkinsfiles de health check dos bancos de dados (HML/PRD)
├── Jenkins       → Jenkinsfiles de configuração dos pipelines e JSONs de parâmetros da operação
├── Plannings     → Arquivos JSONs de planejamento de deploy e revert e scripts de atualização do CHANGELOG
└── Scripts       → Scripts auxiliares executados conforme parâmetros
```

### Arquivos

#### DevOps/HealthServer

| Arquivo | Finalidade |
|---------|------------|
| `JenkinsFileHealthHML` | Verificação de saúde do ambiente de homologação. |
| `JenkinsFileHealthPRD` | Verificação de saúde do ambiente de produção. |
| `JenkinsFileScheduleHML` | Agendamento de tarefas no ambiente de homologação. |
| `JenkinsFileSchedulePRD` | Agendamento de tarefas no ambiente de produção. |

#### DevOps/Jenkins

| Arquivo | Finalidade |
|---------|------------|
| `ConfigParam.json` | Arquivo de parâmetros de configuração e comportamento do pipeline, diretórios base, scripts auxiliares e valores aceitos no planejamento. |
| `DatabaseParam.json` | Informações e dados para conexão com cada banco de dados: descrição, endereço, porta, service name e se aceita deploy. |
| `JenkinsFileDeploy` | Script pipeline de configuração e validação para publicação dos objetos nos bancos de dados. |
| `JenkinsFileRevert` | Script pipeline de reversão, executado quando o deploy apresenta qualquer tipo de falha. |
| `LibraryFile` | Arquivo de funções e procedimentos compartilhados pelos dois pipelines: log, formatação, validações e status. |

#### DevOps/Plannings

| Arquivo | Finalidade |
|---------|------------|
| `Planning_Deploy.json` | Arquivo de configuração e detalhamento do planejamento dos objetos a publicar. |
| `Planning_Revert.json` | Arquivo de configuração e detalhamento do planejamento de reversão do deploy do banco de dados. |
| `Update-Changelog.ps1` | Script do PowerShell que executa a automação para geração da entrada dos dados do arquivo de planejamento de deploy no arquivo [CHANGELOG.md](CHANGELOG.md). |
| `Update-Changelog.vbs` | Atalho para execução facilitada do script **`Update-Changelog.ps1`** sendo um atalho para executar o script apenas com um duplo clique. |

#### DevOps/Scripts

| Arquivo | Finalidade |
|---------|------------|
| `CompileObjects.sql` | Executa a compilaçãop dos objetos e artefatos inválidos do banco de dados após a aplicação dos objetos. |
| `KillSessions.sql` | Encerra as sessões ativas no banco de dados antes da execução dos scripts. |
| `ListInvalids.sql` | Lista os objetos e artefatos que eventualmente tenham ficado inválidos após a publicação. |

---

> [!WARNING]
> ### Restrição a arquivos
>
> Os arquivos localizaods em **`DevOps\HealthServer`**, **`DevOps/Jenkins/`** e **`DevOps/Scripts/`** são de uso interno para configuração do pipeline do Jenkins e **não devem ser alterados** manualmente.

---

## Conteúdo dos Arquivos

**`ConfigParam.json`**
```JSON
{
    "gerarLog": true,
    "consistirRevert": true,
    "validarScripts": {
        "homologa": true,
        "fprod": true
    },
    "diretoriosRaiz": {
        "deploy": "Deploy",
        "revert": "Revert"
    },
    "scripts": {
        "matarSessoes": "DevOps/Scripts/KillSessions.sql",
        "listarInvalidos": "DevOps/Scripts/ListInvalids.sql",
        "compilarObjetos": "DevOps/Scripts/CompileObjects.sql"
    },
    "valoresValidos": {
        "categoria": {
            "feature": "Novas funcionalidades, ferramentas ou melhorias planejadas.",
            "release": "Preparação final e homologação de uma nova versão do sistema para produção.",
            "bugfix": "Correção de erros encontrados durante a fase de testes ou homologação antes da publicação em produção.",
            "hotfix": "Correções urgentes, críticas e graves que precisam ser feitas diretamente no código que já está em produção."
        },
        "tipoMudanca": {
            "Adicionado": "Para novas funcionalidades, novos objetos ou recursos: tables, packages, procedures, functions, indexes, views, jobs, etc.",
            "Alterado": "Para alterações em funcionalidades existentes, mudança de comportamento, regra de negócio ou alterações em recursos.",
            "Descontinuado": "Para funcionalidades que estão para serem removidas, objetos ou recursos que ainda existem, mas serão removidos nas próximas versões em deploy futuro (registrar prazo).",
            "Removido": "Para funcionalidades removidas nesta versão, objetos ou recursos efetivamente removidos.",
            "Corrigido": "Para qualquer tipo de correção de bug, performance ou dado inconsistente.",
            "Segurança": "Em caso de vulnerabilidades, privilégios, roles, auditoria e acessos."
        }
    }
}
```

| Campo | Descrição |
|-------|-----------|
| `geraLog` | Indica que deve ser gerado um arquivo de log durante o processo de aplicação dos objetos. |
| `consistirRevert` | Indica que o arquivo de planejamento do revert deve ser consistido e validado no momento do deploy. |
| `validarScripts.homologa` | Indica que os arquivos planejados para deploy na base de homologação deverão ser validados através de API referente à existância de caracteres inválidos no código. |
| `validarScripts.fprod` | Indica que os arquivos planejados para deploy na base de produção deverão ser validados através de API referente à existância de caracteres inválidos no código. |
| `diretorioRaiz.deploy` | Local do diretório raiz de deploy para os scripts a serem executados. |
| `diretorioRaiz.revert` | Local do diretório raiz de reversão para os scripts a serem executados. |
| `scripts.matarSessoes` | Local e nome do script utilizado para matrar as sessões do banco de dados de acordo com o parâmetro. |
| `scripts.listarInvalidos` | Local e nome do script de banco de dados para listar os objetos e artefatos inválisod após a aplocação. |
| `scripts.compilarObjetos` | Local e nome do script de banco de dados para execcutar a compilação dos objetos inválidos no banco de dados após a aplicação. |
| `valoresValidos` | Listas dos valores válidos dos parâmetros de **Planejamentos** e **Revert**. |
| `categoria` | Lista de todas as categorias válidas como parâmetros do processamento. |
| `tipoMudanca` | Lista de todos os tipos de mudança válidos como parâmetros da raiz dos planejamentos para todos os arquivois ou específicos de cada objeto planejado. |

---

**`ConfigParam.json`**
```JSON
{
    "fprod": {
        "descricao": "Produção",
        "enderecoIP": "10.92.2.66",
        "porta": "1521",
        "serviceName": "fprod",
        "aceitaDeploy": true
    },
    "homologa": {
        "descricao": "Homologação",
        "enderecoIP": "10.92.2.65",
        "porta": "1521",
        "serviceName": "homologa",
        "aceitaDeploy": true
    },
    "hmlforms": {
        "descricao": "Forms 12c",
        "enderecoIP": "10.92.2.65",
        "porta": "1521",
        "serviceName": "hmlforms",
        "aceitaDeploy": false
    },
    "fepdev": {
        "descricao": "Desenvolvimento",
        "enderecoIP": "10.92.2.65",
        "porta": "1521",
        "serviceName": "fepdev",
        "aceitaDeploy": false
    }
}
```

| Bancos | Descrição |
|--------|-----------|
| **`fprod`** | Banco de dados de preodução. |
| **`homologa`** | Banco de daods de homologação. |
| **`hmlforms`** | Banco de dados de homologação do Forms 12c. |
| **`fepdev`** | Banco de dados de desenvolvimento. |


| Campos | Descrição |
|--------|-----------|
| `descricao` | Nome do banco de daodos. |
| `enderecoIP` | Endereço IP do banco de dados. |
| `porta` | Código da porta de acesso ao banco de dados. |
| `serviceName` | Nome do serviço para acesso ao banco de dados. |
| `aceitaDeploy` | Indica que este banco de dados aceita conexões para deploy. |

---

## Atualização Automática do Changelog

Foi implementado no repositório a facilidade da atualização automática do arquivo `CHANGELOG.md` com poucos passos sem ser necessário editar o arquivo MarkDown (md).

1. Além dos dois arquivos de planejamento que estão dentro do diretório `DevOps/Plannings` existem mais dois arqwuivos que devem para a atualização do `CHANGELOG.md`. São eles: **`Update-Changelog.ps1`** que é um script do PowerShell que é quem efetivamente atualiza o arquivo e o outro arquivo é o **`Update-Changelog.vbs`** que funciona como um facilitador para a execução. Ambos os arquivos podem ser executados, porém p `ps1` necessita de uma janela do PowerShell aberta para execução, enquanto o `vbs` pode ser rodado direto com duplo-clique.
2. O funcionamento é bastante simples:
   - No momento da criação da branch, ambos os arquivos serão copiados para o repositório local;
   - **Importante:** O arquivo Planning_Deploy.json deve ser atualizado de forma bastante detalhada e completa, pois o seu conteúdo irá figurar como o conteúdo do CHANGFELOG, logo, quanto mais detalhado melhor. Principalmente a TAG deve estar informada;
   - Após a atualização do Planning_Deploy e com o arquivo CHANGELOG.md na raiz do repositório, basta efetuar um duplo-clique no script sobre o arquivo do planejamento;
   - Feito. O arquivo CHANGELOG.md estará atualizado com a alteração que estará sendo feita.

---

## Convenções

- **Nomenclatura de Branches (Categorias)**: prefixo obrigatório conforme o caso, seguindo o GitHub Flow: **`feature`**, **`release`**, **`bugfix`** ou **`hotfix`** — acompanhado de uma breve descrição, **sempre em letras minúsculas**;
- **Nomenclatura de Objetos**: seguir o padrão já utilizado por tipo de objeto, por exemplo:
   - **`fc_`** para functions;
   - **`pr_`** para procedures;
   - **`pck_`** para packages, e assim por diante;
- **Tags de Deploy**: formato **`vAAAA.MM.DD.SQ`**, onde **`SQ`** é o sequencial da tag dentro do mesmo dia;
- **Changelog (Tipo de Mudança)**: baseado no padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.1.0/), com o versionamento por data no formato da tag (`vAAAA.MM.DD.SQ`);
- **Rastreabilidade**: toda alteração (branch) deve ter o correto prefixo (**`feature`** / **`release`** / **`bugfix`** ou **`hotfix`**) conforme for o caso, acompanhado de uma breve descrição, sempre em letras minúsculas e, sempre que possível, referenciando o card da demanda (ex.: **`FP-9102`**) ou o chamado de suporte (ex.: **`CS-54321`**).

---

## Monitoramento

Os dashboards e a configuração de coleta de métricas do ambiente Oracle estão disponíveis em [**`METRICS/`**](METRICS/), incluindo integração com **Prometheus** e **Grafana**;

---

## Equipe

Desenvolvido e mantido pelas equipes do **GitHub**, **Banco de Dados** e **DevOps**.

Feito com 💙.
