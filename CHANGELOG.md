# Changelog

Todas as alterações notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado no padrão [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/), e este projeto adota um versionamento baseado em datas e numeração sequencial para as entregas de banco de dados e aplicações.

## [v2026.06.02.01] - 2026-06-02

### Adicionado
- [FP-9102] - Implementação da nova estrutura de validação nas packages principais para suportar a adequação do CNPJ Alfanumérico. - Tiago Gabriel
- [FP-9105] - Criação de novas procedures de integração para o módulo financeiro. - Tiago Gabriel

### Corrigido
- [CS-54321] - Hotfix para corrigir lentidão extrema na query de fechamento mensal no ambiente de produção. - Tiago Gabriel

## [v2026.05.28.02] - 2026-05-28

### Alterado
- [FP-8888] - Adequação do bloco F50B no módulo de cadastro de clientes para o projeto de migração do Oracle Forms. - Tiago Gabriel
- [FP-8890] - Refatoração da rotina de cálculo de juros para otimizar o tempo de execução no banco de dados. - Tiago Gabriel

### Corrigido
- [CS-53900] - Bugfix no retorno do índice de ocorrência do objeto (IDFOS_OOI) que estava travando a compilação do relatório. - Tiago Gabriel

## [v2026.05.15.01] - 2026-05-15

### Adicionado
- [FP-8500] - Criação da tabela de log de auditoria para as sessões de usuários no novo padrão 12c. - Tiago Gabriel