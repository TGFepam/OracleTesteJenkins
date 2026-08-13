CREATE OR REPLACE PACKAGE FEPAM.PCK_PROC_FLUXOS IS

  PROCEDURE SP_FLUXOS_GET_DETALHAMENTO(P_ORIGEM in number,
                                       P_CODIGO in number,
                                       cur      out sys_refcursor);

  PROCEDURE SP_FLUXOS_GET_DISTRIBUIDORES(cur out sys_refcursor);

  PROCEDURE SP_FLUXOS_GET_CARGA(P_PERIODO in varchar2,
                                cur       out sys_refcursor);

  PROCEDURE SP_FLUXOS_GET_CADASTROS(P_PERIODO in varchar2,
                                    cur       out sys_refcursor);

  PROCEDURE SP_FLUXOS_GET_HISTGERENCIAL(P_PERIODO in varchar2,
                                         cur       out sys_refcursor);

  PROCEDURE PR_FLUXOS_PROC_INS(p_PROC_ID            IN NUMBER,
                               p_NUMERO             IN NUMBER,
                               p_ORIG_ID            IN NUMBER,
                               p_ANO                IN NUMBER,
                               p_DV                 IN NUMBER,
                               p_SOLICITACAO_SOL    IN NUMBER,
                               p_NUMERO_AI          IN NUMBER,
                               p_DM_SITUACAO        IN VARCHAR2,
                               p_DM_SITUACAO_AI     IN VARCHAR2,
                               p_TIDO_ID            IN NUMBER,
                               p_ASPR_ID            IN NUMBER,
                               p_TIPO_ASSUNTO       IN VARCHAR2,
                               p_ATAN_ID            IN NUMBER,
                               p_DATA_ENTRADA       IN DATE,
                               p_SETO_ID            IN NUMBER,
                               p_PESS_ID_RESP       IN NUMBER,
                               p_DATA_ANALISTA_RESP IN DATE,
                               p_DATA_INCLUSAO      IN DATE,
                               p_TIPO               IN VARCHAR2,
                               p_PESS_ID_REQU       IN NUMBER,
                               p_CLDO_ID            IN NUMBER,
                               p_ATAN_ID_INT        IN NUMBER);

  PROCEDURE PR_FLUXOS_ATAN_UPD(p_ATAN_ID       IN NUMBER,
                               p_DESCRICAO     IN VARCHAR2,
                               p_RAAT_ID       IN NUMBER,
                               p_MEDIDA_PORTE  IN NUMBER,
                               p_TILO_ID       IN VARCHAR2,
                               p_ENDERECO      IN VARCHAR2,
                               p_BAIRRO        IN VARCHAR2,
                               p_MUNI_ID       IN NUMBER,
                               p_DM_MAIS_MUNIC IN VARCHAR2,
                               p_PESS_ID_atan  IN VARCHAR2);

  PROCEDURE PR_FLUXOS_PESS_UPD(p_PESS_ID         IN NUMBER,
                               p_DM_TIPO_PESSOA  IN VARCHAR2,
                               p_CNPJ            IN VARCHAR2,
                               p_CPF             IN NUMBER,
                               p_DOC_ESTRANGEIRO IN VARCHAR2,
                               p_RAZAO_SOCIAL    IN VARCHAR2);


  PROCEDURE PR_FLUXOS_ATUALIZA_FUNC;

  PROCEDURE PR_FLUXOS_ATUALIZA_PROC;

  FUNCTION FC_ATAN_PORTE_FLUXOS(p_RAAT_ID      IN NUMBER,
                                p_MEDIDA_PORTE IN NUMBER ) return VARCHAR2;


  PROCEDURE SP_FLX_IN_DISTRIBUICAO(p_PROC_ID             in number,
                                     p_PESS_ID_RESP      in number,
                                     p_SETO_ID           in number,
                                     p_DATA_DISTRIBUICAO in varchar2 );

  PROCEDURE SP_FLX_IN_PROCESSOS(p_PROC_ID                 in number,
                                p_NUMERO                  in number,
                                p_ORIG_ID                 in number,
                                p_ANO                     in number,
                                p_DV                      in number,
                                p_TIDO_ID                 in number,
                                p_ASPR_ID                 in number,
                                p_DATA_ENTRADA            in varchar2,
                                p_SITUACAO                in number,
                                p_SETO_ID                 in number,
                                p_ATAN_ID                 in number,
                                p_MPOR_ID                 in number,
                                p_NOME_MUNICIPIO_ORGAO    in varchar2,
                                p_ORGAO_DESTINO_DENUNCIA  IN NUMBER DEFAULT NULL,
                                p_TIPO_DENUNCIA           IN NUMBER DEFAULT NULL);




  PROCEDURE SP_FLX_IN_DEMANDAS_OLD(p_PROC_ID                   in number,
                               p_DEMANDA_ID                in number,
                               p_TXT_TIPO_DEMANDA          in varchar2,
                               p_DATA_CRIACAO              in varchar2,
                               p_DATA_DISTRIBUICAO         in varchar2,
                               p_DATA_INICIO_ANALISE       in varchar2,
                               p_PESS_ID_RESP              in number,
                               p_PESS_ID_ESP               in number );


  PROCEDURE SP_FLX_IN_DEMANDAS
                              (p_PROC_ID                   in number,
                               p_DEMANDA_ID                in number,
                               p_TXT_TIPO_DEMANDA          in varchar2,
                               p_DATA_CRIACAO              in varchar2,
                               p_DATA_DISTRIBUICAO         in varchar2,
                               p_DATA_INICIO_ANALISE       in varchar2,
                               p_PESS_ID_RESP              in number,
                               p_PESS_ID_ESP               in number,
                               p_SITUACAO                  in number,
                               p_MOTIVO_SITUACAO           in varchar2 );

   PROCEDURE SP_FLX_OUT_DEMANDAS(P_PERIODO in varchar2,
                                 cur       out sys_refcursor);

   PROCEDURE SP_FLX_IN_OFICIOSDEMJ(p_PROC_ID                     in number,
                                   p_REQUERIMENTO_ID             in number,
                                   p_OFICIO_ID                   in number,
                                   p_TIPO_OFICIO                 in number,
                                   p_DATA_INCLUSAO               in varchar2,
                                   p_NRO_REQ_RECEBIDO            in varchar2,
                                   p_DATA_RECEBIMENTO            in varchar2,
                                   p_NUMERO_PROCEDIMENTO         in varchar2,
                                   p_TXT_ASSUNTO                 in varchar2,
                                   p_NRO_DIAS_PRORROGACAO        in number,
                                   p_NOME_DESTINATARIO           in varchar2,
                                   p_COD_GENERO                  in number,
                                   p_TXT_CARGO_OFICIO            in varchar2,
                                   p_NOME_MUNICIPIO_DESTINATARIO in varchar2,
                                   p_TXT_TRATAMENTO_OFICIO       in varchar2,
                                   p_COD_DESTINATARIO            in number,
																	 p_QTD_REITERACAO              in number);


   PROCEDURE SP_FLX_OUT_OFICIOSDEMJ(P_PERIODO in varchar2,
                                    cur       out sys_refcursor);

   PROCEDURE PR_FLUXOS_CAD_MUNI(P_MUNI_ID  in number,
                                P_NOME     in varchar2,
                                P_REES_ID  in number,
                                P_REGIONAL in varchar2,
                                P_UNFE_ID  in varchar2 );

   PROCEDURE PR_FLUXOS_CAD_REES(P_REES_ID     in number,
                                P_DESCRICAO   in varchar2);

   PROCEDURE PR_FLUXOS_CAD_RAAT(P_RAAT_ID           in number,
                                P_DESCRICAO         in varchar2,
                                P_CRME_ID           in number,
                                P_SETO_ID_RESP      in number,
                                P_DM_POTENCIAL      in varchar2,
                                P_DATA_DESATIVACAO  in date);

   PROCEDURE PR_FLUXOS_CAD_CRME(P_CRME_ID           in number,
                                P_DESCRICAO         in varchar2,
                                P_ABREVIATURA       in varchar2);

   PROCEDURE PR_FLUXOS_CAD_SETO(P_SETO_ID             in number,
                                P_SIGLA               in varchar2,
                                P_NOME                in varchar2,
                                P_PESS_ID_RESP        in number,
                                P_ORIGEM              in number,
                                P_SETO_ID_RESP        in number,
                                P_DM_GERENCIAL_GRUPO  in number,
                                P_DM_GERENCIAL_ORIGEM in number,
                                P_DATA_EXTINCAO       in date);

   PROCEDURE PR_FLUXOS_CAD_TIDO(P_TIDO_ID           in number,
                                P_ABREVIATURA       in varchar2,
                                P_DESCRICAO         in varchar2,
                                P_EM_USO            in varchar2);

   PROCEDURE PR_FLUXOS_CAD_ASPR(P_ASPR_ID           in number,
                                P_DESCRICAO         in varchar2,
                                P_DM_ATIVO          in varchar2);

   PROCEDURE PR_FLUXOS_CAD_CAFE(P_CAFE_ID              in number,
                                P_DESCRICAO            in varchar2,
                                P_DM_ANALISA_PROCESSOS in varchar2,
                                P_DATA_EXTINCAO        in date);

   PROCEDURE PR_FLUXOS_CAD_PROF(P_PROF_ID           in number,
                                P_NOME              in varchar2);

   PROCEDURE PR_FLUXOS_CAD_TILO(P_TILO_ID           in varchar2,
                                P_DESCRICAO         in varchar2);

   PROCEDURE PR_FLX_ATUALIZA_DISTRIBUICAO;

   PROCEDURE PR_FLX_CHEFIAS_DISTRIBUICAO;

   FUNCTION FC_RESP_PROC_FLUXOS(p_ATAN_ID IN NUMBER ) return number;

   PROCEDURE SP_FLX_IN_DENUNCIAS
                              (p_PROTOCOLO_ID      in number,
                               p_DENUNCIA_ID       in number,
                               p_PROC_ID           in number,
                               p_DATA_ANDAMENTO    in date,
                               p_DATA_ENVIO        in date,
                               p_LATITUDE          in number,
                               p_LONGITUDE         in number );

   FUNCTION FC_QTDE_ANEXO(p_demanda_id IN NUMBER ) return number;

	  PROCEDURE SP_ANEXO_DEMANDAS(p_demanda_id IN NUMBER,
                              cur       out sys_refcursor);

   PROCEDURE PR_FLUXOS_AT_PROC_ULTDOC;

	  PROCEDURE SP_FLX_OUT_PROC_ULTDOC(P_PERIODO in varchar2,
                                cur       out sys_refcursor);

   PROCEDURE pr_demandas_DUC482(P_PROC_ID      IN number,
                                P_DEMANDA_ID   IN NUMBER,
                                P_USER         IN varchar2);

	 PROCEDURE SP_FLX_IN_ARQUIVAMENTO (
																		p_PROC_ID              IN NUMBER,
																		p_DTH_ARQUIVAMENTO     IN VARCHAR2,
																		p_COD_CAT_ARQUIVAMENTO IN NUMBER,
																		p_TXT_MOTIVO           IN VARCHAR2
																) ;
	 PROCEDURE PR_FLX_ATUALIZA_ARQUIVAMENTO;


END PCK_PROC_FLUXOS;
/
CREATE OR REPLACE PACKAGE BODY FEPAM.PCK_PROC_FLUXOS IS
  /*------------------------------------------------------------------------------------------------------------------------------------------------------
  | Changes:
  | Date       | Tiket           | Author                   | What
  | -----------+-----------------+--------------------------+---------------------------------------------------------------------------------------------
  | 15/04/2026 | FP-3172         | Tiago Gabriel (DNA)      | Adequação ao CNPJ AlfanumÃ©rico. As variáveis do CNPJ foram alteradas para VarChar2.
  +------------------------------------------------------------------------------------------------------------------------------------------------------*/

  PROCEDURE SP_FLUXOS_GET_DETALHAMENTO(P_ORIGEM in number,
                                       P_CODIGO in number,
                                       cur      out sys_refcursor) is

    ----------------------------------------------------------------------
    -- Rotina para Webservice DETALHAMENTOPROCFLUXOS
    --
    --     parametros: p_origem: pos 1  a  1 - 1
    --                           pos 2  a  2 - separador '-'
    --                 p_codigo: pos 3  a 12 - 0000000000
    --
    --           exemplo empreendimento 155832
    --                     No parÃ¢metro:  1-155832
    --
    --           exemplo proc_id 436485
    --                     No parÃ¢metro:  2-436485
    --    tipo_reg:
    --       1 - Proc Lienciatório
    --       2 - Auto de Infração
    --       3 - Denúncia
    --       4 - DEMJ
    --
    --                          ( Malu 05/02/2021  em home office)
    --             ( alterado em 07/02/2022 - Malu em home office)
    --             ( alterado em 31/08/2023 - Malu = incluido a origem = 2
    ----------------------------------------------------------------------

  begin

    --- origem = 1 - por empreendimento
    if p_origem = 1 then

      open cur for
        select vflu.tipo_reg,
               vflu.atan_id,
               vflu.proc_id,
               vflu.data_entrada,
               vflu.processo,
               vflu.solic_sol,
               vflu.numero_ai,
               vflu.sit_proc,
               vflu.nome_analista,
               vflu.tipo_assunto,
               vflu.empreendedor_resp,
               vflu.ultimo_doc,
               vflu.data_fim_vigencia,
               vflu.sit_ult_doc,
               vflu.sit_julgamento,
               vflu.pess_id,
               vflu.docu_id_ult,
               vflu.cod_sit_proc,
               vflu.dm_situacao_proc_ai COD_SIT_PROC_AI,
               vflu.mpor_id,
               vflu.mpor_descricao,
               vflu.nome_municipio_orgao
          from v_proc_fluxos_detalhamento vflu
         where vflu.atan_id = p_codigo
         and   vflu.tipo_reg != 4
         order by 4, 3;

    end if;

    --- origem = 2 - por proc_id
    if p_origem = 2 then

      open cur for
        select vflu.tipo_reg,
               vflu.atan_id,
               vflu.proc_id,
               vflu.data_entrada,
               vflu.processo,
               vflu.solic_sol,
               vflu.numero_ai,
               vflu.sit_proc,
               vflu.nome_analista,
               vflu.tipo_assunto,
               vflu.empreendedor_resp,
               vflu.ultimo_doc,
               vflu.data_fim_vigencia,
               vflu.sit_ult_doc,
               vflu.sit_julgamento,
               vflu.pess_id,
               vflu.docu_id_ult,
               vflu.cod_sit_proc,
               vflu.dm_situacao_proc_ai COD_SIT_PROC_AI,
               vflu.mpor_id,
               vflu.mpor_descricao,
               vflu.nome_municipio_orgao
          from v_proc_fluxos_detalhamento vflu
         where vflu.proc_id = p_codigo
         order by 4, 3;

    end if;

  end;

  ------------------------------------------------------------------
  -- faz a carga de distribuidores para sistema fluxos
  --      http://ww2.fepam.rs.gov.br/API/DistribuidoresFluxos/
  --                                            ( Malu 11/02/2021 )
  ------------------------------------------------------------------
  PROCEDURE SP_FLUXOS_GET_DISTRIBUIDORES(cur out sys_refcursor) is

  begin
    open cur for
      select aupd.pess_id,
             aupd.seto_id,
             aupd.dm_chefia,
             aupd.dm_designado,
             sysdate as data_geracao
        from fep_aux_proc_distribuidores aupd, fep_setores seto
       where aupd.seto_id = seto.seto_id
         and seto.data_extincao is null
       order by 2, 1;
  end;

  --------------------------------------------------------------------------
  -- Le as inclusÃµes e alteraçÃµes para fazer carga
  -- projeto Fluxo atravÃ©s de webservice CARGAFLUXOS
  --
  --  http://ww2.fepam.rs.gov.br/API/CargaFluxos/090220211400-100220210900
  --
  --                                          Malu 10/02/2021
  --------------------------------------------------------------------------
  PROCEDURE SP_FLUXOS_GET_CARGA(P_PERIODO in varchar2,
                                cur       out sys_refcursor) IS

  begin

    -- p_periodo:
    --      string com 25 posiçÃµes  ddmmrrrrhh24mi-ddmmrrrrhh24mi
    --            exemplo 090220211400-100220210900
    --                    09/02/2021 14:00 a 10/02/2021 09:00
    -- cod_origem:
    --      1 - PESSOA         - Tabela fep_aux_fluxos_pess
    --      2 - EMPREENDIMENTO - Tabela fep_aux_fluxos_atan
    --      3 - PROCESSO       - Tabela fep_aux_fluxos_proc
    --      4 - FUNCIONARIO    - Tabela fep_aux_fluxos_func

    open cur for
      select vflu.flux_id,
             vflu.data_geracao,
             vflu.cod_origem,
             vflu.origem,
             vflu.pess_pess_id,
             vflu.pess_dm_tipo_pessoa,
             lpad(vflu.pess_cnpj,14,'0') pess_cnpj,
             lpad(vflu.pess_cpf,11,0)  pess_cpf,
             vflu.pess_doc_estrangeiro,
             vflu.pess_razao_social,
             vflu.pess_proc_id,
             vflu.atan_atan_id,
             vflu.atan_descricao,
             vflu.atan_raat_id,
             vflu.atan_medida_porte,
             vflu.atan_dm_porte,
             vflu.atan_latitude,
             vflu.atan_longitude,
             vflu.atan_tilo_id,
             SUBSTR(vflu.atan_endereco, 1, 60) atan_endereco, -- ALEXANDERSS Dia: 17/07/2025 OS-63019
             SUBSTR(vflu.atan_bairro, 1, 30) atan_bairro, -- ALEXANDERSS Dia: 17/07/2025 OS-63019
             vflu.atan_muni_id,
             vflu.atan_dm_mais_munic,
             vflu.atan_pess_id,
             vflu.atan_proc_id,
             vflu.proc_proc_id,
             vflu.proc_numero,
             vflu.proc_orig_id,
             vflu.proc_ano,
             vflu.proc_dv,
             vflu.proc_solicitacao_sol,
             vflu.proc_numero_ai,
             vflu.proc_dm_situacao,
             vflu.proc_dm_situacao_ai,
             vflu.proc_tido_id,
             vflu.proc_aspr_id,
             vflu.proc_tipo_assunto,
             vflu.proc_atan_id,
             vflu.proc_data_entrada,
             vflu.proc_seto_id,
             vflu.proc_pess_id_resp,
             vflu.proc_data_analista_resp,
             vflu.proc_tipo_reg,
             vflu.proc_pess_id_requ,
             vflu.proc_tipo,
             vflu.func_pess_id,
             vflu.func_matricula,
             vflu.func_seto_id,
             vflu.func_prof_id,
             vflu.func_cafe_id,
             vflu.func_email,
             vflu.func_dm_estagiario,
             vflu.func_dm_situacao
        from v_proc_carga_fluxos vflu
       where vflu.data_geracao between
             to_date(substr(p_periodo, 01, 12) || '00', 'ddmmrrrrhh24miss') and
             to_date(substr(p_periodo, 14, 12) || '59', 'ddmmrrrrhh24miss')
       order by 1;

  end;

 -----------------------------------------------------------------------------
  -- Le as inclusÃµes e alteraçÃµes para fazer carga
  -- projeto Fluxo atravÃ©s de webservice CADASTROSFLUXOS
  --
  --  http://ww2.fepam.rs.gov.br/API/CadastrosFluxos/030520211400-040520211530
  --
  --                                          Malu 06/05/2021
  -----------------------------------------------------------------------------
  PROCEDURE SP_FLUXOS_GET_CADASTROS(P_PERIODO in varchar2,
                                    cur       out sys_refcursor) is

  begin

    -- p_periodo:
    --      string com 25 posiçÃµes  ddmmrrrrhh24mi-ddmmrrrrhh24mi
    --            exemplo 030520211400-040520211530
    --                    03/05/2021 14:00 a 04/05/2021 15:30
     -- origem:
    --      1 - MUNICIPIOS          - Tabela fep_municipios
    --      2 - REGIOES_ESTADUAIS   - Tabela fep_regioes_estaduais
    --      3 - RAMOS_ATIVIDADES    - Tabela fep_ramos_atividades
    --      4 - CRITERIOS_MEDICOES  - Tabela fep_criterios_medicoes
    --      5 - SETORES             - Tabela fep_setores
    --      6 - TIPOS_DOCUMENTOS    - Tabela fep_tipos_documentos
    --      7 - ASSUNTOS_PROCESSOS  - Tabela fep_assuntos_processos
    --      8 - CARGOS              - Tabela fep_cargos_fepam
    --      9 - PROFISSOES          - Tabela fep_profissoes
    --     10 - TIPOS_LOGRADOUROS   - Tabela fep_tipos_logradouros

   open cur for
     select flxc.FLUX_ID,
            flxc.DATA_GERACAO,
            flxc.COD_ORIGEM,
            flxc.ORIGEM,
            flxc.MUNI_MUNI_ID,
            flxc.MUNI_NOME,
            flxc.MUNI_REES_ID,
            flxc.MUNI_REGIONAL,
            flxc.MUNI_UNFE_ID,
            flxc.REES_REES_ID,
            flxc.REES_DESCRICAO,
            flxc.RAAT_RAAT_ID,
            flxc.RAAT_DESCRICAO,
            flxc.RAAT_CRME_ID,
            flxc.RAAT_SETO_ID_RESP,
            flxc.RAAT_DM_POTENCIAL,
            substr(to_char(flxc.RAAT_DATA_DESATIVACAO,'dd/mm/rrrr'),1,10) raat_data_desativacao,
            flxc.CRME_CRME_ID,
            flxc.CRME_DESCRICAO,
            flxc.CRME_ABREVIATURA,
            flxc.SETO_SETO_ID,
            flxc.SETO_SIGLA,
            flxc.SETO_NOME,
            flxc.SETO_PESS_ID_RESP,
            flxc.SETO_DM_ORIGEM,
            flxc.SETO_SETO_ID_RESP,
            flxc.SETO_DM_GERENCIAL_GRUPO,
            flxc.SETO_DM_GERENCIAL_ORIGEM,
            substr(to_char(flxc.SETO_DATA_EXTINCAO,'dd/mm/rrrr'),1,10) seto_data_extincao,
            flxc.TIDO_TIDO_ID,
            flxc.TIDO_ABREVIATURA,
            flxc.TIDO_DESCRICAO,
            flxc.TIDO_EM_USO,
            flxc.ASPR_ASPR_ID,
            flxc.ASPR_DESCRICAO,
            flxc.ASPR_DM_ATIVO,
            flxc.CAFE_CAFE_ID,
            flxc.CAFE_DESCRICAO,
            flxc.CAFE_DM_ANALISA_PROCESSOS,
            substr(to_char(flxc.CAFE_DATA_EXTINCAO,'dd/mm/rrrr'),1,10) cafe_data_extincao,
            flxc.PROF_PROF_ID,
            flxc.PROF_NOME,
            flxc.TILO_TILO_ID,
            flxc.TILO_DESCRICAO
       from fep_aux_fluxos_cadastros flxc
      where flxc.data_geracao between
            to_date(substr(p_periodo, 01, 12) || '00', 'ddmmrrrrhh24miss') and
            to_date(substr(p_periodo, 14, 12) || '59', 'ddmmrrrrhh24miss')
      order by 1;

  end;


  -------------------------------------------------------------------
  -- Le o histórico gerecial para Fluxos
  --        WebService HISTORICOGERECIAL
  -- http://ww2.fepam.rs.gov.br/API/HistoricoGerencial/202103-202104
  --                                     Malu 18/05/2021
  -------------------------------------------------------------------
  PROCEDURE SP_FLUXOS_GET_HISTGERENCIAL(P_PERIODO in varchar2,
                                         cur       out sys_refcursor) is
  begin

    -- p_periodo:
    --      string com 13 posiçÃµes  rrrrmm-rrrrmm
    --            exemplo 202103-202105
    --                    03/2021 a 05/2021
    -- tipo_reg:
    --      1 - Em Tramitação
    --      2 - Novos Processos
    --      3 - Primeiro Licenciamento/Arquivados
    --      5 - Emitidos/Arquivados no mes

   open cur for
    select
             hige.ANO_HIST              ANO_HIST,
             hige.MES_HIST              MES_HIST,
             hige.ANOMES_HIST           ANOMES_HIST,
             hige.DM_SITUACAO           DM_SITUACAO,
             hige.TIPO_REG              TIPO_REG,
             hige.ANO_PROTOCOLO         ANO_PROTOCOLO,
             hige.MES_PROTOCOLO         MES_PROTOCOLO,
             substr(to_char(hige.DATA_PROTOCOLO,'dd/mm/rrrr'),1,10)
                                        DATA_PROTOCOLO,
             hige.PROC_ID               PROC_ID,
             hige.PROCESSO              PROCESSO,
             hige.DM_SOL                DM_SOL,
             hige.SOLICITACAO_SOL       NRO_SOLIC_SOL,
             hige.SITUACAO_COD_PROC     SITUACAO_COD_PROC,
             hige.SITUACAO_PROC         SITUACAO_DESCR_PROC,
             hige.TIDO_ID_PROCESSO      TIDO_ID_PROC,
             hige.TIDO_ABREVIATURA      TIDO_ABREV_PROC,
             hige.TIDO_DESCRICAO        TIDO_DESCR_PROC,
             hige.RAAT_ID_PROC          RAAT_ID,
             hige.RAMO_DESCRICAO        RAAT_DESCRICAO,
             hige.SETO_ID_RAMO          SETO_ID_RAAT,
             hige.SETO_ORIGEM_RAMO      SETO_ORIGEM_RAAT,
             decode(hige.SETO_ORIGEM_RAMO,
                        'SEMA',2,1)     SETO_DM_ORIGEM_RAAT,
             hige.SETO_SIGLA_RAMO       SETO_SIGLA_RAAT,
             hige.SETO_NOME_RAMO        SETO_NOME_RAAT,
             hige.SETO_ID_PROC          SETO_ID_PROC,
             hige.SETO_ORIGEM_PROC      SETO_ORIGEM_PROC,
             decode(hige.SETO_ORIGEM_PROC,
                        'SEMA',2,1)     SETO_DM_ORIGEM_PROC,
             hige.SETO_SIGLA_PROC       SETO_SIGLA_PROC,
             hige.SETO_NOME_PROC        SETO_NOME_PROC,
             hige.ATAN_ID               ATAN_ID,
             hige.POTENCIAL             DM_POTENCIAL,
             hige.PORTE                 DM_PORTE,
             hige.MUNICIPIO_ATAN        MUNICIPIO_ATAN,
             hige.REGIONAL_ATAN         REGIONAL_ATAN,
             hige.DOCU_ID               DOCU_ID,
             hige.DOCUMENTO             DOCUMENTO,
             hige.SITUACAO_DOCU         SITUACAO_COD_DOC,
             hige.SITDESCR_DOCU         SITUACAO_DESCR_DOC,
             hige.TIDO_ID_DOCUMENTO     TIDO_ID_DOC,
             hige.TIDO_ABREV_DOC        TIDO_ABREV_DOC,
             hige.TIDO_DESCRICAO_DOC    TIDO_DESCR_DOC,
             hige.PESS_ID_ANALISTA      ANALISTA_PESS_ID,
             hige.NOME_ANALISTA         ANALISTA_NOME,
             hige.IDADE_PROCESSO        TEMPO_TRAMITACAO,
             hige.TEMPO_ANALISE         TEMPO_ANALISE,
             hige.TOTAL_DIAS_PARADA     TOTAL_DIAS_PARADA,
             hige.DIAS_ATENDER          PRAZO_ATENDIMENTO,
             hige.DIAS_PARADO           DIAS_PARADA_ATUAL,
             hige.PROC_ATE2ANOS         DM_PROC_ATE2ANOS,
             hige.DM_PRIM_LIC           DM_PRIM_LIC,
             hige.DM_PORT46             DM_RENOV_AUTOM,
             hige.DM_ORIGEM             DM_SIT_EMISSAO,
             substr(to_char(hige.DATA_ASSINATURA,'dd/mm/rrrr'),1,10)
                                        DATA_CONCLUSAO,
             hige.DOC_ANTERIOR          DOC_ANTERIOR
       from fep_hist_anomes_processos hige
      where hige.anomes_hist between
                             to_number(substr(p_periodo, 1, 6))  and
                             to_number(substr(p_periodo, 8, 6))
      order by 3,5,9;

  end;


   -------------------------------------------------------------------
  -- Inclui Processos para Projeto de Fluxos
  -- Chamado na triger de Inclusão e Alteração de Processos
  --                                     Malu 09/02/2021
  -------------------------------------------------------------------
  PROCEDURE PR_FLUXOS_PROC_INS(p_PROC_ID            IN NUMBER,
                               p_NUMERO             IN NUMBER,
                               p_ORIG_ID            IN NUMBER,
                               p_ANO                IN NUMBER,
                               p_DV                 IN NUMBER,
                               p_SOLICITACAO_SOL    IN NUMBER,
                               p_NUMERO_AI          IN NUMBER,
                               p_DM_SITUACAO        IN VARCHAR2,
                               p_DM_SITUACAO_AI     IN VARCHAR2,
                               p_TIDO_ID            IN NUMBER,
                               p_ASPR_ID            IN NUMBER,
                               p_TIPO_ASSUNTO       IN VARCHAR2,
                               p_ATAN_ID            IN NUMBER,
                               p_DATA_ENTRADA       IN DATE,
                               p_SETO_ID            IN NUMBER,
                               p_PESS_ID_RESP       IN NUMBER,
                               p_DATA_ANALISTA_RESP IN DATE,
                               p_DATA_INCLUSAO      IN DATE,
                               p_TIPO               IN VARCHAR2,
                               p_PESS_ID_REQU       IN NUMBER,
                               p_CLDO_ID            IN NUMBER,
                               p_ATAN_ID_INT        IN NUMBER) is

    nLatitude     number(11,8);
    nLongitude    number(11,8);
    vPorte        varchar2(1);
    nPess_id_requ number(10);
    nTipoReg      number(2);
    nIncluir      number(1);
    nAtan_id      number(10);
    vTipoPessoa   varchar2(1);
    vErroFluxo    varchar2(200);
    nMuni_id      number(7);

    cursor c1 is
      select pess.pess_id,
             pess.fisica_juridica dm_tipo_pessoa,
             pess.cgc cnpj,
             pess.cpf,
             pess.documento_estrangeiro,
             pess.razao_social,
             nvl(pess.dm_fluxos, 'N') dm_fluxos
        from fep_pessoas               pess,
             fep_atividades_antropicas ata1
       where pess.pess_id          = ata1.pess_id
         and ata1.atan_id          = nAtan_id
         and pess.fisica_juridica != 'N';

    r1 c1%rowtype;

    cursor c2 is
      select ata1.atan_id,
             ata1.descricao,
             ata1.raat_id,
             ata1.medida_porte,
             ata1.tilo_id,
             SUBSTR(ata1.endereco, 1, 60) endereco, -- ALEXANDERSS Dia: 17/07/2025 OS-63019
             SUBSTR(ata1.bairro, 1, 30) bairro, -- ALEXANDERSS Dia: 17/07/2025 OS-63019
             --ata1.endereco,
             --ata1.bairro,
             ata1.muni_id,
             ata1.dm_mais_munic,
             ata1.pess_id,
             nvl(ata1.dm_fluxos, 'N') dm_fluxos
        from fep_atividades_antropicas ata1
       where ata1.atan_id = nAtan_id;

    r2 c2%rowtype;

    cursor c3 is
      select pess.pess_id,
             pess.fisica_juridica dm_tipo_pessoa,
             pess.cgc cnpj,
             pess.cpf,
             pess.documento_estrangeiro,
             pess.razao_social,
             nvl(pess.dm_fluxos, 'N') dm_fluxos
        from fep_pessoas pess
       where pess.pess_id = p_pess_id_requ
         and pess.fisica_juridica != 'N';

    r3 c3%rowtype;

    cursor c4 is
      select pess.fisica_juridica
        from fep_pessoas               pess,
             fep_atividades_antropicas ata1
       where pess.pess_id = ata1.pess_id
         and ata1.atan_id = nAtan_id;

    cursor c5 is
      select pess.fisica_juridica
        from fep_pessoas pess
       where pess.pess_id = nPess_id_requ;

  begin

    -- Tipo de Processo -  TIPO_REG
    --   1 - Licenciamento
    --   2 - Auto de Infração
    --   3 - Denúncia
    --   4 - DEMJ

    nAtan_id := p_atan_id;
    if nAtan_id is null then
      if p_atan_id_int is not null then
        nAtan_id := p_atan_id_int; -- atan id proc integradora
      end if;
    end if;

    if p_tipo_assunto = 'DEMJ' then
       nTipoReg := 4; -- DEMJ
    else
       if p_cldo_id = 26 then
          nTipoReg := 3; -- Denúncia
       elsif p_cldo_id = 7 then
          nTipoReg := 2; -- Auto de Infração
       else
          nTipoReg := 1; -- Licenciamento
       end if;
    end if;

    if nAtan_id is not null then
      nPess_id_requ := null;
    else
      nPess_id_requ := p_pess_id_requ;
    end if;

    ---------------------------------------------------
    -- processo de licenciamento só incluir para fluxos
    -- quando atualizado o empreendimento
    -- acontece em processos de integradora ficar
    -- sem o empreendimento e ser atualizado por rotina
    --               ( Malu 05/03/2021 )
    ---------------------------------------------------
    if nAtan_id is null and nTipoReg = 1 then
      nIncluir := 0;
    else
      nIncluir := 1;
    end if;

    vTipoPessoa := null;
    if nIncluir = 1 then
      if nAtan_id is not null then
        open  c4;
        fetch c4 into vTipoPessoa;
        close c4;
        if vTipoPessoa = 'N' then
           -- Não Identificada
           vErroFluxo := null;
           begin
             vErroFluxo := 'ErroFlx3-PCK_PROC_FLUXOS.PR_FLUXOS_PROC_INS: Pess id do empreendimento não Ã© F/J/E';
             insert into fep_aux_fluxos_erros (data_geracao,proc_id,atan_id,pess_id,descricao_erro
                                     ) values (sysdate,p_proc_id,nAtan_id,null,vErroFluxo);
           end;
           nIncluir := 0;
        end if;
      end if;
    end if;

    vTipoPessoa := null;
    if nIncluir = 1 then
      if nAtan_id is null and nPess_id_requ is not null then
        open  c5;
        fetch c5 into vTipoPessoa;
        close c5;
        if vTipoPessoa = 'N' then
           -- Não Identificada
           vErroFluxo := null;
           begin
             vErroFluxo := 'ErroFlx4-PCK_PROC_FLUXOS.PR_FLUXOS_PROC_INS: Pess id requente do processo: ' || nPess_id_requ || ' não Ã© F/J/E';
             insert into fep_aux_fluxos_erros (data_geracao,proc_id,atan_id,pess_id,descricao_erro
                                     ) values (sysdate,p_proc_id,nAtan_id,null,vErroFluxo);
           end;
           nIncluir := 0;
        end if;
      end if;
    end if;

    -- verifica a situação de pessoa - se Não Identificado não incluir tambÃ©m em fluxos

    if nIncluir = 1 then
      ------------------------------------------------------------
      -- inclusão do requerente - quando não tiver empreendimento
      -- por exemplo em DENUNCIAS
      -- proc_id Ã© apenas para rastreabilidade, foi inserido por
      --         inclusão do processo
      ------------------------------------------------------------
      if nPess_id_requ is not null then

        open c3;
        fetch c3 into r3;
        if c3%found then
          begin
            insert into fep_aux_fluxos_pess
              (FLUX_ID,
               DATA_GERACAO,
               PESS_ID,
               DM_TIPO_PESSOA,
               CNPJ,
               CPF,
               DOCUMENTO_ESTRANGEIRO,
               RAZAO_SOCIAL_NOME,
               PROC_ID)
            values
              (flux_seq.nextval,
               sysdate,
               r3.pess_id,
               r3.dm_tipo_pessoa,
               r3.cnpj,
               r3.cpf,
               r3.documento_estrangeiro,
               r3.razao_social,
               p_proc_id);

          exception
            WHEN OTHERS THEN
              raise_application_error(-20001,
                                      'Erro1: INS-PROC Fep_aux_fluxos_pess-requ. >> ' ||
                                      SQLCODE || ' - ' || SQLERRM);
          end;

          if r1.dm_fluxos = 'N' then
            begin
              update fep_pessoas
                 set dm_fluxos = 'S'
               where pess_id = r3.pess_id;
            exception
              when others then
                raise_application_error(-20001,
                                        'Erro2: INS-PROC Fep_pessoas - fluxos requ. >> ' ||
                                        SQLCODE || ' - ' || SQLERRM);
            end;
          end if;

        end if;
        close c3;

      end if;

      ----------------------------------------------------------
      -- inclusão pess_id_responsável do processo
      ----------------------------------------------------------
      if nAtan_id is not null then
        open c1;
        fetch c1 into r1;
        if c1%found then
          begin
            insert into fep_aux_fluxos_pess
              (FLUX_ID,
               DATA_GERACAO,
               PESS_ID,
               DM_TIPO_PESSOA,
               CNPJ,
               CPF,
               DOCUMENTO_ESTRANGEIRO,
               RAZAO_SOCIAL_NOME,
               PROC_ID)
            values
              (flux_seq.nextval,
               sysdate,
               r1.pess_id,
               r1.dm_tipo_pessoa,
               r1.cnpj,
               r1.cpf,
               r1.documento_estrangeiro,
               r1.razao_social,
               p_proc_id);

          exception
            WHEN OTHERS THEN
              raise_application_error(-20001,
                                      'Erro3: Fep_aux_fluxos_pess. >> ' ||
                                      SQLCODE || ' - ' || SQLERRM);
          end;

          if r1.dm_fluxos = 'N' then
            begin
              update fep_pessoas
                 set dm_fluxos = 'S'
               where pess_id = r1.pess_id;
            exception
              when others then
                raise_application_error(-20001,
                                        'Erro4: INS-PROC Fep_pessoas - fluxos resp. >> ' ||
                                        SQLCODE || ' - ' || SQLERRM);
            end;
          end if;

        end if;
        close c1;

        ----------------------------------------------------------
        -- inclusão empreendimento do processo
        -- proc_id Ã© apenas para rastreabilidade, foi inserido por
        --         inclusão do processo
        ----------------------------------------------------------
        open c2;
        fetch c2 into r2;
        if c2%found then

          nLatitude  := pck_cadastros.FC_ATAN_LATITUDE(r2.atan_id);
          nLongitude := pck_cadastros.FC_ATAN_LONGITUDE(r2.atan_id);
          vPorte     := substr(pck_proc_fluxos.fc_atan_porte_fluxos(r2.raat_id, r2.medida_porte),1,1);

          ----------------------------------------------------
          -- coloca o municipio 4300000 - criado no fluxo
          -- para ramos com municipio nulo e aplicação em
          -- todo o território do RS   ( Malu 09/08/2023 )
          ----------------------------------------------------
          nMuni_id := r2.muni_id;
          if r2.raat_id in ( 123.11, 123.12, 123.13, 123.14,
                            123.15, 123.16, 123.20,
                            3117.00, 5710.10, 5730.10 ) then
             if r2.muni_id is null then
                nMuni_id := 4300000; -- NO TERRITORIO DO ESTADO DO RIO GRANDE DO SUL
             end if;
          end if;

          begin
            insert into fep_aux_fluxos_atan
              (FLUX_ID,
               DATA_GERACAO,
               ATAN_ID,
               DESCRICAO,
               RAAT_ID,
               MEDIDA_PORTE,
               LATITUDE,
               LONGITUDE,
               TILO_ID,
               ENDERECO,
               BAIRRO,
               MUNI_ID,
               DM_MAIS_MUNIC,
               PESS_ID,
               PROC_ID,
               DM_PORTE)
            values
              (flux_seq.nextval,
               sysdate,
               r2.ATAN_ID,
               r2.DESCRICAO,
               r2.RAAT_ID,
               r2.MEDIDA_PORTE,
               nLATITUDE,
               nLONGITUDE,
               r2.TILO_ID,
               r2.ENDERECO,
               r2.BAIRRO,
               nMuni_id,
               r2.DM_MAIS_MUNIC,
               r2.PESS_ID,
               p_proc_id,
               vPorte);

          exception
            WHEN OTHERS THEN
              raise_application_error(-20001,
                                      'Erro5: INS-PROC Fep_aux_fluxos_atan. >> ' ||
                                      SQLCODE || ' - ' || SQLERRM);
          end;

          if r2.dm_fluxos = 'N' then
            begin
              update fep_atividades_antropicas
                 set dm_fluxos = 'S'
               where atan_id = r2.atan_id;
            exception
              when others then
                raise_application_error(-20001,
                                        'Erro6: INS-PROC Fep_atividades_antropicas - fluxos atan. >> ' ||
                                        SQLCODE || ' - ' || SQLERRM);
            end;
          end if;

        end if;
        close c2;
      end if;

      ----------------------------------------------------------
      -- inclusão do processo
      ----------------------------------------------------------
      begin
        insert into fep_aux_fluxos_proc
          (FLUX_ID,
           DATA_GERACAO,
           PROC_ID,
           NUMERO,
           ORIG_ID,
           ANO,
           DV,
           SOLICITACAO_SOL,
           NUMERO_AI,
           DM_SITUACAO,
           DM_SITUACAO_AI,
           TIDO_ID,
           ASPR_ID,
           TIPO_ASSUNTO,
           ATAN_ID,
           DATA_ENTRADA,
           SETO_ID,
           PESS_ID_RESP,
           DATA_ANALISTA_RESP,
           DATA_INCLUSAO_PROC,
           TIPO_REG,
           PESS_ID_REQU,
           CLDO_ID,
           TIPO)
        values
          (flux_seq.nextval,
           sysdate,
           p_PROC_ID,
           p_NUMERO,
           p_ORIG_ID,
           p_ANO,
           p_DV,
           p_SOLICITACAO_SOL,
           p_NUMERO_AI,
           p_DM_SITUACAO,
           p_DM_SITUACAO_AI,
           p_TIDO_ID,
           p_ASPR_ID,
           p_TIPO_ASSUNTO,
           nAtan_id,
           p_DATA_ENTRADA,
           p_SETO_ID,
           p_PESS_ID_RESP,
           p_DATA_ANALISTA_RESP,
           p_DATA_INCLUSAO,
           nTipoReg,
           nPess_id_requ,
           p_CLDO_ID,
           p_TIPO);

      exception
        WHEN OTHERS THEN
          raise_application_error(-20001,
                                  'Erro7: INS-PROC Fep_aux_fluxos_proc. >> ' ||
                                  SQLCODE || ' - ' || SQLERRM);
      end;
    end if;
    ------------------------------------------ FIM nIncluir = 1 ------------------------
  end;

  PROCEDURE PR_FLUXOS_ATAN_UPD(p_ATAN_ID       IN NUMBER,
                               p_DESCRICAO     IN VARCHAR2,
                               p_RAAT_ID       IN NUMBER,
                               p_MEDIDA_PORTE  IN NUMBER,
                               p_TILO_ID       IN VARCHAR2,
                               p_ENDERECO      IN VARCHAR2,
                               p_BAIRRO        IN VARCHAR2,
                               p_MUNI_ID       IN NUMBER,
                               p_DM_MAIS_MUNIC IN VARCHAR2,
                               p_PESS_ID_atan  IN VARCHAR2) IS

    nLatitude  number(11, 8);
    nLongitude number(11, 8);
    vPorte     varchar2(1);
    nMuni_id   number(7);

    cursor c1 is
      select pess.pess_id,
             pess.fisica_juridica dm_tipo_pessoa,
             pess.cgc cnpj,
             pess.cpf,
             pess.documento_estrangeiro,
             pess.razao_social,
             nvl(pess.dm_fluxos, 'N') dm_fluxos
        from fep_pessoas pess
       where pess.pess_id = p_PESS_ID_atan
         and pess.fisica_juridica != 'N';

    r1 c1%rowtype;

  BEGIN

    ----------------------------------------------------------
    -- inclusão pess_id_responsável do empreendimento
    -- p_atan_upd Ã© apenas ara rastreabilidade, porque foi
    --            inserido o registro de pessoa
    ----------------------------------------------------------
    open  c1;
    fetch c1 into r1;
    if c1%found then
      begin
        insert into fep_aux_fluxos_pess
          (FLUX_ID,
           DATA_GERACAO,
           PESS_ID,
           DM_TIPO_PESSOA,
           CNPJ,
           CPF,
           DOCUMENTO_ESTRANGEIRO,
           RAZAO_SOCIAL_NOME,
           PROC_ID,
           ATAN_ID_UPD)
        values
          (flux_seq.nextval,
           sysdate,
           r1.pess_id,
           r1.dm_tipo_pessoa,
           r1.cnpj,
           r1.cpf,
           r1.documento_estrangeiro,
           r1.razao_social,
           null,
           p_ATAN_ID);

      exception
        WHEN OTHERS THEN
          raise_application_error(-20001,
                                  'Erro1: UPD-ATAN - Fep_aux_fluxos_pess. >> ' ||
                                  SQLCODE || ' - ' || SQLERRM);
      end;

      if r1.dm_fluxos = 'N' then
        begin
          update fep_pessoas
             set dm_fluxos = 'S'
           where pess_id = r1.pess_id;
        exception
          when others then
            raise_application_error(-20001,
                                    'Erro2: UPD-ATAN - Fep_pessoas - fluxos resp. >> ' ||
                                    SQLCODE || ' - ' || SQLERRM);
        end;
      end if;

    end if;
    close c1;

    ----------------------------------------------------------
    -- atualizacao do empreendimento
    ----------------------------------------------------------

    nLatitude  := pck_cadastros.FC_ATAN_LATITUDE(p_atan_id);
    nLongitude := pck_cadastros.FC_ATAN_LONGITUDE(p_atan_id);
    vPorte     := substr(pck_proc_fluxos.fc_atan_porte_fluxos(p_raat_id, p_medida_porte),1,1);

    ----------------------------------------------------
    -- coloca o municipio 4300000 - criado no fluxo
    -- para ramos com municipio nulo e aplicação em
    -- todo o território do RS   ( Malu 09/08/2023 )
    ----------------------------------------------------
    nMuni_id := p_muni_id;
    if p_raat_id in ( 123.11, 123.12, 123.13, 123.14,
                      123.15, 123.16, 123.20,
                      3117.00, 5710.10, 5730.10 ) then
       if p_muni_id is null then
          nMuni_id := 4300000; -- NO TERRITORIO DO ESTADO DO RIO GRANDE DO SUL
       end if;
    end if;


    begin
      insert into fep_aux_fluxos_atan
        (FLUX_ID,
         DATA_GERACAO,
         ATAN_ID,
         DESCRICAO,
         RAAT_ID,
         MEDIDA_PORTE,
         LATITUDE,
         LONGITUDE,
         TILO_ID,
         ENDERECO,
         BAIRRO,
         MUNI_ID,
         DM_MAIS_MUNIC,
         PESS_ID,
         PROC_ID,
         DM_PORTE)
      values
        (flux_seq.nextval,
         sysdate,
         p_ATAN_ID,
         p_DESCRICAO,
         p_RAAT_ID,
         p_MEDIDA_PORTE,
         nLATITUDE,
         nLONGITUDE,
         p_TILO_ID,
         p_ENDERECO,
         p_BAIRRO,
         nMuni_id,
         p_DM_MAIS_MUNIC,
         p_PESS_ID_atan,
         null,
         vPorte);

    exception
      WHEN OTHERS THEN
        raise_application_error(-20001,
                                'Erro3: UPD-ATAN Fep_aux_fluxos_atan. >> ' ||
                                SQLCODE || ' - ' || SQLERRM);
    end;

  END;

  PROCEDURE PR_FLUXOS_PESS_UPD(p_PESS_ID         IN NUMBER,
                               p_DM_TIPO_PESSOA  IN VARCHAR2,
                               p_CNPJ            IN VARCHAR2,
                               p_CPF             IN NUMBER,
                               p_DOC_ESTRANGEIRO IN VARCHAR2,
                               p_RAZAO_SOCIAL    IN VARCHAR2) IS

  BEGIN
    ----------------------------------------------------------
    -- atualização de pessoa - fluxos
    ----------------------------------------------------------

    if p_DM_TIPO_PESSOA not in ('N') then
      begin
        insert into fep_aux_fluxos_pess
          (FLUX_ID,
           DATA_GERACAO,
           PESS_ID,
           DM_TIPO_PESSOA,
           CNPJ,
           CPF,
           DOCUMENTO_ESTRANGEIRO,
           RAZAO_SOCIAL_NOME,
           PROC_ID,
           ATAN_ID_UPD)
        values
          (flux_seq.nextval,
           sysdate,
           p_pess_id,
           p_dm_tipo_pessoa,
           p_CNPJ,
           p_CPF,
           p_doc_estrangeiro,
           p_razao_social,
           null,
           null);

      exception
        WHEN OTHERS THEN
          raise_application_error(-20001,
                                  'Erro1: UPD-PESS - Fep_aux_fluxos_pess. >> ' ||
                                  SQLCODE || ' - ' || SQLERRM);
      end;
    END IF;

  END;

  -------------------------------------------------------------------------------
  -- Gera os registros de funcionários para Sistema de Fluxos
  -- utilizada na view v_proc_carga_fluxos - webservice CARGAFLUXOS
  -- Rotina que vai rodar pelas rotinas diárias as 07:30 13:10 19:10
  --                                     Malu  06/04/2021
  -------------------------------------------------------------------------------
  PROCEDURE PR_FLUXOS_ATUALIZA_FUNC IS

   cursor c1 is
      select auxf.pess_id,
             auxf.nro_matricula matricula,
             auxf.seto_id,
             func.prof_id,
             fuor.cafe_id,
             auxf.email,
             decode(auxf.tipo_registro,'E','S','N') dm_estagiario,
             auxf.situacao dm_situacao
        from fep_aux_func_ultimos     auxf,
             fep_pessoas              pess,
             fep_funcionarios_origens fuor,
             fep_funcionarios         func,
             fep_setores              seto
       where auxf.situacao in (1,2)
         and auxf.fuor_id = fuor.fuor_id(+)
         and auxf.pess_id = func.pess_id(+)
         and auxf.seto_id = seto.seto_id
         and seto.data_extincao is null
         and auxf.pess_id = pess.pess_id
         and pess.fisica_juridica != 'N'
       order by 1;

  r1    c1%rowtype;

  cursor c2 is
      select atem.matricula,
             atem.seto_id,
             atem.prof_id,
             atem.cafe_id,
             atem.email,
             atem.dm_estagiario,
             atem.dm_situacao
        from fep_aux_fluxos_func_temp atem
       where atem.pess_id = r1.pess_id;

   r2    c2%rowtype;

   cursor c3 is
      select pess.pess_id,
             pess.fisica_juridica dm_tipo_pessoa,
             pess.cgc cnpj,
             pess.cpf,
             pess.documento_estrangeiro,
             pess.razao_social,
             nvl(pess.dm_fluxos, 'N') dm_fluxos
        from fep_pessoas pess
       where pess.pess_id          = r1.pess_id
         and pess.fisica_juridica != 'N';

   r3    c3%rowtype;

   ------------------------------------------------
   -- manda informação ao Fluxo dos desligados
   -- Situação: 3 - funcionário desligado
   --           4 - estagiário desligado
   cursor c4 is
      select auxf.pess_id,
             auxf.nro_matricula matricula,
             auxf.seto_id,
             func.prof_id,
             fuor.cafe_id,
             auxf.email,
             decode(auxf.tipo_registro,'E','S','N') dm_estagiario,
             decode(auxf.situacao,
                       4,3,
                       auxf.situacao) dm_situacao
        from fep_aux_func_ultimos     auxf,
             fep_aux_fluxos_func_temp atem,
             fep_funcionarios_origens fuor,
             fep_funcionarios         func
       where auxf.pess_id = atem.pess_id
         and auxf.situacao    in (3,4)
         and atem.dm_situacao in (1,2)
         and auxf.fuor_id = fuor.fuor_id(+)
         and auxf.pess_id = func.pess_id(+)
       order by 1;

   r4    c4%rowtype;

  begin

   open c1;
   loop
     fetch c1 into r1;
     if c1%notfound then
        close c1;
        exit;
     else
        open  c2;
        fetch c2 into r2;
        if c2%notfound then
           ------------------------------------------
           -- insere PESSOA em Fluxos
           ------------------------------------------
           open  c3;
           fetch c3 into r3;
           if c3%found then
              begin
                 insert into fep_aux_fluxos_pess
                      (FLUX_ID,
                       DATA_GERACAO,
                       PESS_ID,
                       DM_TIPO_PESSOA,
                       CNPJ,
                       CPF,
                       DOCUMENTO_ESTRANGEIRO,
                       RAZAO_SOCIAL_NOME,
                       PROC_ID,
                       ATAN_ID_UPD)
                     values
                      (flux_seq.nextval,
                       sysdate,
                       r3.pess_id,
                       r3.dm_tipo_pessoa,
                       r3.cnpj,
                       r3.cpf,
                       r3.documento_estrangeiro,
                       r3.razao_social,
                       null,
                       null);

                         commit;

               exception
                     WHEN OTHERS THEN
                         raise_application_error(-20001,
                                                 'Erro1: INS-FUNC - Fep_aux_fluxos_pess. >> ' ||
                                                  SQLCODE || ' - ' || SQLERRM);
               end;

               if r3.dm_fluxos = 'N' then
                  begin
                     update fep_pessoas
                        set dm_fluxos = 'S'
                      where pess_id = r1.pess_id;

                          commit;

                  exception
                     when others then
                          raise_application_error(-20001,
                                                  'Erro2: UPD-FUNC - Fep_pessoas - fluxos resp. >> ' ||
                                                  SQLCODE || ' - ' || SQLERRM);
                  end;
               end if;

           end if;
           close c3;

           ------------------------------------------
           -- insere TEMPORARIA
           ------------------------------------------

           begin
              insert into fep_aux_fluxos_func_temp
                     (PESS_ID,
                      MATRICULA,
                      SETO_ID,
                      PROF_ID,
                      CAFE_ID,
                      EMAIL,
                      DM_ESTAGIARIO,
                      DM_SITUACAO,
                      DATA_ATUALIZACAO,
                      DM_INCLUSAO )
                     values
                     (r1.pess_id,
                      r1.matricula,
                      r1.seto_id,
                      r1.prof_id,
                      r1.cafe_id,
                      r1.email,
                      r1.dm_estagiario,
                      r1.dm_situacao,
                      sysdate,
                      'S');

                             commit;

            exception
                 WHEN OTHERS THEN
                     raise_application_error(-20001,
                                             'Erro3: INS-FUNC_TEMP - Fep_aux_fluxos_func_temp. >> ' ||
                                              SQLCODE || ' - ' || SQLERRM);
            end;

            ------------------------------------------
            -- insere FUNCIONARIO para Fluxos
            ------------------------------------------

            begin
                insert into fep_aux_fluxos_func
                       (FLUX_ID,
                        DATA_GERACAO,
                        PESS_ID,
                        MATRICULA,
                        SETO_ID,
                        PROF_ID,
                        CAFE_ID,
                        EMAIL,
                        DM_ESTAGIARIO,
                        DM_SITUACAO)
                       values
                       (flux_seq.nextval,
                        sysdate,
                        r1.pess_id,
                        r1.matricula,
                        r1.seto_id,
                        r1.prof_id,
                        r1.cafe_id,
                        r1.email,
                        r1.dm_estagiario,
                        r1.dm_situacao );

                            commit;

             exception
                   WHEN OTHERS THEN
                       raise_application_error(-20001,
                                               'Erro4: INS-FUNC - Fep_aux_fluxos_func. >> ' ||
                                                SQLCODE || ' - ' || SQLERRM);
             end;

        else

            ------------------------------------------------------
           -- verifica se teve alteração dos dados já enviados
           ------------------------------------------------------
           if nvl(r1.matricula,0) != nvl(r2.matricula,0) or
              nvl(r1.seto_id,0)   != nvl(r2.seto_id,0)   or
              nvl(r1.prof_id,0)   != nvl(r2.prof_id,0)   or
              nvl(r1.cafe_id,0)   != nvl(r2.cafe_id,0)   or
              nvl(r1.email,' ')   != nvl(r2.email,' ')   or
              r1.dm_estagiario    != r2.dm_estagiario    or
              r1.dm_situacao      != r2.dm_situacao      then

              begin
                update fep_aux_fluxos_func_temp
                   set matricula        = r1.matricula,
                       seto_id          = r1.seto_id,
                       prof_id          = r1.prof_id,
                       cafe_id          = r1.cafe_id,
                       email            = r1.email,
                       dm_estagiario    = r1.dm_estagiario,
                       dm_situacao      = r1.dm_situacao,
                       data_atualizacao = sysdate,
                       dm_inclusao      = 'N'
                 where pess_id = r1.pess_id;

                           commit;

              exception
                   WHEN OTHERS THEN
                       raise_application_error(-20001,
                                               'Erro5: upd-FUNC - Fep_aux_fluxos_func_temp. >> ' ||
                                                SQLCODE || ' - ' || SQLERRM);
              end;

              begin
                  insert into fep_aux_fluxos_func
                         (FLUX_ID,
                          DATA_GERACAO,
                          PESS_ID,
                          MATRICULA,
                          SETO_ID,
                          PROF_ID,
                          CAFE_ID,
                          EMAIL,
                          DM_ESTAGIARIO,
                          DM_SITUACAO)
                         values
                         (flux_seq.nextval,
                          sysdate,
                          r1.pess_id,
                          r1.matricula,
                          r1.seto_id,
                          r1.prof_id,
                          r1.cafe_id,
                          r1.email,
                          r1.dm_estagiario,
                          r1.dm_situacao );

                              commit;

               exception
                     WHEN OTHERS THEN
                         raise_application_error(-20001,
                                                 'Erro6: INS-FUNC - Fep_aux_fluxos_func. >> ' ||
                                                  SQLCODE || ' - ' || SQLERRM);
               end;


           end if;

        end if; -- final c2
        close c2;

     end if; -- final c1

   end loop;

   -----------------------------------------------------------------------
   -- verifica se tem algum registro temporário - que foi enviado ao fluxo
   -- e a pessoa foi desligada
   -----------------------------------------------------------------------

   open c4;
   loop
      fetch c4 into r4;
      if c4%notfound then
         close c4;
         exit;
      else

         begin
            update fep_aux_fluxos_func_temp
               set matricula        = r4.matricula,
                   seto_id          = r4.seto_id,
                   prof_id          = r4.prof_id,
                   cafe_id          = r4.cafe_id,
                   email            = r4.email,
                   dm_estagiario    = r4.dm_estagiario,
                   dm_situacao      = r4.dm_situacao,
                   data_atualizacao = sysdate,
                   dm_inclusao      = 'N'
             where pess_id = r4.pess_id;

                       commit;

         exception
           WHEN OTHERS THEN
               raise_application_error(-20001,
                                       'Erro7: del-FUNC - Fep_aux_fluxos_func_temp. >> ' ||
                                       SQLCODE || ' - ' || SQLERRM);
         end;

         begin
            insert into fep_aux_fluxos_func
                       (FLUX_ID,
                        DATA_GERACAO,
                        PESS_ID,
                        MATRICULA,
                        SETO_ID,
                        PROF_ID,
                        CAFE_ID,
                        EMAIL,
                        DM_ESTAGIARIO,
                        DM_SITUACAO)
                       values
                       (flux_seq.nextval,
                        sysdate,
                        r4.pess_id,
                        r4.matricula,
                        r4.seto_id,
                        r4.prof_id,
                        r4.cafe_id,
                        r4.email,
                        r4.dm_estagiario,
                        r4.dm_situacao );

                              commit;

         exception
              WHEN OTHERS THEN
                    raise_application_error(-20001,
                                            'Erro8: del-FUNC - Fep_aux_fluxos_func. >> ' ||
                                            SQLCODE || ' - ' || SQLERRM);
         end;

      end if;

   end loop;

  end;

  -----------------------------------------------------------------------
  -- Atualiza os Processos que estão no sistema de Fluxos
  --
  -- Chamado dentro da rotina fepam.Pck_net_webserv01.pr_webserv01_aux_le
  -- que já chama para atualizar de hora em hora

  --                  Malu 08/04/2021
  -----------------------------------------------------------------------
  PROCEDURE PR_FLUXOS_ATUALIZA_PROC is

    nProc_id   number(10);
    cursor c1 is
      select auxp.proc_id
         from fep_aux_fluxos_proc auxp,
              fep_processos       proc
        where trunc(auxp.data_geracao) > trunc(sysdate) - 3
          and auxp.proc_id = proc.proc_id
          and nvl(proc.dm_fluxos,'N') = 'N';

  begin
     open c1;
     loop
       fetch c1 into nProc_id;
       if c1%notfound then
          close c1;
          exit;
       else
          begin
             update fep_processos
                set dm_fluxos = 'S'
              where proc_id = nProc_id;

                    commit;

          exception
              WHEN OTHERS THEN
                    raise_application_error(-20001,
                                            'Erro1: at dm_fluxo - Fep_processos. >> ' ||
                                            SQLCODE || ' - ' || SQLERRM);

          end;
       end if;
     end loop;
  end;

  --------------------------------------------------------------
  -- Função Utilizada para empreendimento
  --------------------------------------------------------------

  FUNCTION FC_ATAN_PORTE_FLUXOS(p_RAAT_ID      IN NUMBER,
                                p_MEDIDA_PORTE IN NUMBER ) return VARCHAR2 is

  vPorte     varchar2(1);
  nCont      number(5);

  cursor c1 is
     select count(*)
       from fep_ramos_portes rapo
      where rapo.raat_id = p_raat_id;

  begin
     open  c1;
     fetch c1 into nCont;
     close c1;

     if nCont = 0 then
        vPorte := null;  -- ramo sem definição de portes
     elsif nCont = 1 then
        vPorte := 'U';   -- Ãšnico
     else
        vPorte := busca_porte(p_raat_id, p_medida_porte,null);
        if vPorte is null then
            vPorte := 'N'; -- Não Incidente;
        end if;
     end if;
     return(vPorte);
  end;

  ---------------------------------------------------------------------------------------------
  -- Faz atualizacao na tabela de processos da Distribuição
  -- atraves do sistema de Fluxos  - Malu 11/05/2021

  -- URL do serviço:
  --   http://sra-flx-api.procergs.rs.gov.b/sra-flx-api/api/processos/atualizacoes/yyyy-mm-dd
  --------------------------------------------------------------------------------------------

  PROCEDURE SP_FLX_IN_DISTRIBUICAO(p_PROC_ID           in number,
                                   p_PESS_ID_RESP      in number,
                                   p_SETO_ID           in number,
                                   p_DATA_DISTRIBUICAO in varchar2 ) is

  dDataDistribuicao   date;

  nCont    number(10);

  cursor c1 is
     select count(*)
       from fep_aux_fluxos_rec_distr flxd
      where nvl(flxd.pess_id_resp,0) = nvl(p_pess_id_resp,0)
        and nvl(flxd.seto_id,0)      = nvl(p_seto_id,0)
        and trunc(data_distribuicao) = trunc(dDataDistribuicao)
        and flxd.proc_id             = p_proc_id;

  begin

     dDataDistribuicao := to_date(p_DATA_DISTRIBUICAO,'yyyy-mm-dd');

     open  c1;
     fetch c1 into nCont;
     close c1;
     if nCont = 0 then
        begin
            insert into fep_aux_fluxos_rec_distr (
                 PROC_ID, PESS_ID_RESP, SETO_ID,
                 DATA_DISTRIBUICAO, DM_VALIDADO,
                 DATA_ATUALIZACAO, FLXI_ID, DATA_GERACAO
                   ) values (
                 p_proc_id, p_pess_id_resp, p_seto_id,
                 dDataDistribuicao, 'N',
                 null, flxi_seq.nextval, sysdate );

                 COMMIT;

        exception

              WHEN DUP_VAL_ON_INDEX THEN
                     NULL;
              WHEN OTHERS THEN
                raise_application_error(-20001,
                                        'Erro1: INS-fep_aux_fluxos_rec_distr. >> ' ||
                                        SQLCODE || ' - ' || SQLERRM);
        end;
     end if;
  end;

  ---------------------------------------------------------------------------------------------
  -- Faz a inclusao dos processos de Denuncia/DEMJ do Fluxo para o Banco Fepam
  --                                    - Malu 29/12/2021

  -- URL do serviço:
  --   http://sra-flx-api.hml.intra.rs.gov.br/sra-flx-api/api/processos/rascunhos
  --------------------------------------------------------------------------------------------

  PROCEDURE SP_FLX_IN_PROCESSOS(p_PROC_ID                 in number,
                                p_NUMERO                  in number,
                                p_ORIG_ID                 in number,
                                p_ANO                     in number,
                                p_DV                      in number,
                                p_TIDO_ID                 in number,
                                p_ASPR_ID                 in number,
                                p_DATA_ENTRADA            in varchar2,
                                p_SITUACAO                in number,
                                p_SETO_ID                 in number,
                                p_ATAN_ID                 in number,
                                p_MPOR_ID                 in number,
                                p_NOME_MUNICIPIO_ORGAO    in varchar2,
                                p_ORGAO_DESTINO_DENUNCIA  IN NUMBER DEFAULT NULL,
                                p_TIPO_DENUNCIA           IN NUMBER DEFAULT NULL) is

  nCont          number(5);
  dDataEntrada   date;
  nAnoProc       number(2);
  nProcInteiro   number(14);
  vSitProcesso   varchar2(1)   := 'W';
  nDv            number(1);
  nResp_id       number(10);
	nSetoId        NUMBER(10);

  cursor c1 is
     select count(*)
       from fep_processos proc
      where proc.proc_id   = p_proc_id;

  begin

     dDataEntrada := to_date(p_DATA_ENTRADA,'yyyy-mm-dd');
     nAnoProc     := substr(lpad(p_ano,4,0),3,2);
     nProcInteiro := p_numero || p_orig_id || nAnoProc || p_dv;
     if p_situacao = 23 then
        vSitProcesso := 'W'; -- Aguarda Análise
     end if;

     if p_dv is null then
        nDv := 0;
     else
        nDv := p_dv;
     end if;

     nSetoId := p_SETO_ID;
		 -- processos com órgão destino CABM devem ser associados ao setor 4004 - BATALHAO AMBIENTAL.
		 -- Projeto 70106 - WS Rascunhos - 11/06/2026 - Catia Jardim
		 IF p_ORGAO_DESTINO_DENUNCIA = 3 THEN
				nSetoId := 4004;
		 END IF;

     open  c1;
     fetch c1 into nCont;
     close c1;
     if nCont = 0 then

        nResp_id := pck_proc_fluxos.FC_RESP_PROC_FLUXOS(p_atan_id);

        begin
            insert into FEP_PROCESSOS (
                                      PROC_ID,
                                      NUMERO,
                                      ANO,
                                      DV,
                                      RESP_ID,
                                      ORIG_ID,
                                      ASPR_ID,
                                      SETO_ID,
                                      TIDO_ID,
                                      DATA_ENTRADA,
                                      SITUACAO,
                                      STATUS,
                                      DATA_INCLUSAO,
                                      DATA_ATUALIZACAO,
                                      OPERADOR_INCLUSAO,
                                      OPERADOR_ATUALIZACAO,
                                      ANO_INTEIRO,
                                      MUDANCA_PORTE,
                                      DOCU_FORA_BD,
                                      DM_EIARIMA,
                                      DM_ORIGEM,
                                      PROC_INTEIRO,
                                      DM_FLUXOS,
                                      ATAN_ID,
                                      MPOR_ID,
                                      NOME_MUNICIPIO_ORGAO,
                                      DM_ORIGEM_FLUXOS,
                                      DM_ORGAO_DENUNCIA,
                                      TDEN_ID
                                        ) values (
                                      p_PROC_ID,
                                      p_NUMERO,
                                      nAnoProc,
                                      nDv,
                                      nResp_id,
                                      p_ORIG_ID,
                                      p_ASPR_ID,
                                      nSetoId,
                                      p_TIDO_ID,
                                      dDataEntrada,
                                      vSitProcesso,
                                      1,
                                      sysdate,
                                      sysdate,
                                      'WS FLUXOS-INCL',
                                      'WS FLUXOS-INCL',
                                      p_ano,
                                      'N',
                                      'N',
                                      'N',
                                      1,
                                      nProcInteiro,
                                      'S',
                                      p_ATAN_ID,
                                      p_MPOR_ID,
                                      p_NOME_MUNICIPIO_ORGAO,
                                      'S',
                                       p_ORGAO_DESTINO_DENUNCIA,
                                       p_TIPO_DENUNCIA );

                              COMMIT;

        exception
              WHEN OTHERS THEN
                raise_application_error(-20001,
                                        'Erro1: INS-fep_processos-incl fluxos. >> ' ||
                                        SQLCODE || ' - ' || SQLERRM);
        end;
     end if;
  end;



  --------------------------------------------------------------------------------------------
  -- Inclusão das demandas dos sistema  para o Oracle
  -- URL do serviço:
  --   http://sra-flx-api.des.intra.rs.gov.br/sra-flx-api/api/demandas/atualizacoes/yyyy-mm-dd
  --------------------------------------------------------------------------------------------
  PROCEDURE SP_FLX_IN_DEMANDAS_OLD(p_PROC_ID                   in number,
                               p_DEMANDA_ID                in number,
                               p_TXT_TIPO_DEMANDA          in varchar2,
                               p_DATA_CRIACAO              in varchar2,
                               p_DATA_DISTRIBUICAO         in varchar2,
                               p_DATA_INICIO_ANALISE       in varchar2,
                               p_PESS_ID_RESP              in number,
                               p_PESS_ID_ESP               in number )   is

  nCont               number(5);
  nExiste             number(5);
  dDataCriacao        date;
  dDataDistribuicao   date;
  dDataInicioAnalise  date;

  cursor c1 is
     select count(*)
       from fep_aux_fluxos_demandas flde
      where flde.proc_id    = p_PROC_ID
        and flde.demanda_id = p_DEMANDA_ID;

  cursor c2 is
     select count(*)
       from fep_aux_fluxos_demandas flde
      where flde.proc_id                    = p_PROC_ID
        and flde.demanda_id                 = p_DEMANDA_ID
        and nvl(flde.txt_tipo_demanda,'A')  = nvl(p_TXT_TIPO_DEMANDA,'A')
        and trunc(flde.data_criacao)        = trunc(dDataCriacao)
        and trunc(flde.data_distribuicao)   = trunc(dDataDistribuicao)
        and trunc(flde.data_inicio_analise) = trunc(dDataInicioAnalise)
        and flde.pess_id_resp               = p_PESS_ID_RESP
        and flde.pess_id_esp                = p_PESS_ID_ESP;

  Begin

    dDataCriacao        := to_date(p_DATA_CRIACAO,'dd/mm/rrrr');
    dDataDistribuicao   := to_date(p_DATA_DISTRIBUICAO,'dd/mm/rrrr');
    dDataInicioAnalise  := to_date(p_DATA_INICIO_ANALISE,'dd/mm/rrrr');

    open  c1;
    fetch c1 into nCont;
    close c1;

    -- DM_SITUACAO  A-ATIVO    C-CANCELADO
    if nCont = 0 then

       begin

          insert into fep_aux_fluxos_demandas (
               DATA_ULTIMA_ATUALIZACAO,
               PROC_ID, DEMANDA_ID,
               TXT_TIPO_DEMANDA, DATA_CRIACAO,
               DATA_DISTRIBUICAO, DATA_INICIO_ANALISE,
               PESS_ID_RESP, PESS_ID_ESP, FLXI_ID,
               DM_SITUACAO,
               DOCU_ID, DOCUMENTO, DOCU_TIDO_ID, DOCU_DATA_EMISSAO,
               PESS_ID_EMISSOR, FLUX_ID, DOCU_DATA_VIGOR
                 ) values (
               sysdate,
               p_PROC_ID, p_DEMANDA_ID,
               p_TXT_TIPO_DEMANDA, dDataCriacao,
               dDataDistribuicao, dDataInicioAnalise,
               p_PESS_ID_RESP, p_PESS_ID_ESP, flxi_seq.nextval,
               'A',
               null,null,null,null,
               null,null,null );

               COMMIT;

       exception
            WHEN OTHERS THEN
              raise_application_error(-20001,
                                      'Erro1: INS-fep_aux_fluxos_demandas. >> ' ||
                                      SQLCODE || ' - ' || SQLERRM);
       end;

    else

       -- cancela o registro já existente e foi alterado
       -- se documento não foi emitido

       open  c2;
       fetch c2 into nExiste;
       close c2;
       if nExiste > 0 then
          null; -- já existe e está tudo igual - não insere com as alteraçÃµes
       else
           begin
              update fep_aux_fluxos_demandas
                 set dm_situacao = 'C'
               where proc_id       = p_PROC_ID
                 and demanda_id    = p_DEMANDA_ID
                 and docu_id is null;

                    COMMIT;

           exception
                WHEN OTHERS THEN
                  raise_application_error(-20001,
                                          'Erro2: UPD-fep_aux_fluxos_demandas. >> ' ||
                                          SQLCODE || ' - ' || SQLERRM);

           end;

           -- insere o novo
           begin
              insert into fep_aux_fluxos_demandas (
                   DATA_ULTIMA_ATUALIZACAO,
                   PROC_ID,DEMANDA_ID,
                   TXT_TIPO_DEMANDA, DATA_CRIACAO,
                   DATA_DISTRIBUICAO, DATA_INICIO_ANALISE,
                   PESS_ID_RESP, PESS_ID_ESP, FLXI_ID,
                   DM_SITUACAO,
                   DOCU_ID, DOCUMENTO, DOCU_TIDO_ID, DOCU_DATA_EMISSAO,
                   PESS_ID_EMISSOR, FLUX_ID, DOCU_DATA_VIGOR
                     ) values (
                   sysdate,
                   p_PROC_ID, p_DEMANDA_ID,
                   p_TXT_TIPO_DEMANDA, dDataCriacao,
                   dDataDistribuicao, dDataInicioAnalise,
                   p_PESS_ID_RESP, p_PESS_ID_ESP, flxi_seq.nextval,
                   'A',
                   null,null,null,null,
                   null,null,null );

                   COMMIT;

           exception
                WHEN OTHERS THEN
                  raise_application_error(-20001,
                                          'Erro3: INS-fep_aux_fluxos_demandas. >> ' ||
                                          SQLCODE || ' - ' || SQLERRM);
           end;
         end if;

    end if;



  End;

  --------------------------------------------------------------------------------------------
  -- Inclusão e atualização das demandas dos sistema  para o Oracle
  -- URL do serviço:
  --   http://sra-flx-api.des.intra.rs.gov.br/sra-flx-api/api/demandas/atualizacoes/yyyy-mm-dd
  --                  Alterada em 24/05/2023 - Malu - em produção 05/06/2023 18:00
  --------------------------------------------------------------------------------------------
  PROCEDURE SP_FLX_IN_DEMANDAS
                              (p_PROC_ID                   in number,
                               p_DEMANDA_ID                in number,
                               p_TXT_TIPO_DEMANDA          in varchar2,
                               p_DATA_CRIACAO              in varchar2,
                               p_DATA_DISTRIBUICAO         in varchar2,
                               p_DATA_INICIO_ANALISE       in varchar2,
                               p_PESS_ID_RESP              in number,
                               p_PESS_ID_ESP               in number,
                               p_SITUACAO                  in number,
                               p_MOTIVO_SITUACAO           in varchar2 ) is

  nCont               number(5);
  dDataCriacao        date;
  dDataDistribuicao   date;
  dDataInicioAnalise  date;
  nSituacaoFlx        number(2);

  cursor c1 is
     select count(*)
       from fep_aux_fluxos_demandas flde
      where flde.proc_id    = p_PROC_ID
        and flde.demanda_id = p_DEMANDA_ID;

  Begin

    ----- Situações no Fluxo
    -- 1 - Nova
    -- 2 - Distribuida
    -- 3 - Devolvida
    -- 4 - Em Análise
    -- 5 - Cancelada
    -- 6 - Finalizada

    dDataCriacao        := to_date(p_DATA_CRIACAO,'dd/mm/rrrr');
    dDataDistribuicao   := to_date(p_DATA_DISTRIBUICAO,'dd/mm/rrrr');
    dDataInicioAnalise  := to_date(p_DATA_INICIO_ANALISE,'dd/mm/rrrr');

    nSituacaoFlx := p_situacao;
    if nSituacaoFlx is null then
       nSituacaoFlx := 4;
    end if;

    open  c1;
    fetch c1 into nCont;
    close c1;

    -- DM_SITUACAO  A-ATIVO    C-CANCELADO - Banco Fepam
    if nCont = 0 then

       begin

          insert into fep_aux_fluxos_demandas (
               DATA_ULTIMA_ATUALIZACAO,
               PROC_ID, DEMANDA_ID,
               TXT_TIPO_DEMANDA, DATA_CRIACAO,
               DATA_DISTRIBUICAO, DATA_INICIO_ANALISE,
               PESS_ID_RESP, PESS_ID_ESP, FLXI_ID,
               DM_SITUACAO,
               DOCU_ID, DOCUMENTO, DOCU_TIDO_ID, DOCU_DATA_EMISSAO,
               PESS_ID_EMISSOR, FLUX_ID, DOCU_DATA_VIGOR,
               SITUACAO_DEMANDA_FLX, MOTIVO_SITUACAO_FLX,
               ORIGEM_AT
                 ) values (
               sysdate,
               p_PROC_ID, p_DEMANDA_ID,
               p_TXT_TIPO_DEMANDA, dDataCriacao,
               dDataDistribuicao, dDataInicioAnalise,
               p_PESS_ID_RESP, p_PESS_ID_ESP, flxi_seq.nextval,
               'A',
               null,null,null,null,
               null,null,null,
               nSituacaoFlx, p_MOTIVO_SITUACAO,
               'I' );

               COMMIT;

       exception
            WHEN OTHERS THEN
              raise_application_error(-20001,
                                      'Erro1: INS-fep_aux_fluxos_demandas. >> ' ||
                                      SQLCODE || ' - ' || SQLERRM);
       end;

    else

       begin
          update fep_aux_fluxos_demandas
             set DATA_ULTIMA_ATUALIZACAO = sysdate,
                 TXT_TIPO_DEMANDA        = p_TXT_TIPO_DEMANDA,
                 DATA_DISTRIBUICAO       = dDataDistribuicao,
                 DATA_INICIO_ANALISE     = dDataInicioAnalise,
                 PESS_ID_RESP            = p_PESS_ID_RESP,
                 PESS_ID_ESP             = p_PESS_ID_ESP,
                 SITUACAO_DEMANDA_FLX    = nSituacaoFlx,
                 MOTIVO_SITUACAO_FLX     = p_MOTIVO_SITUACAO,
                 ORIGEM_AT               = 'A'
           where proc_id       = p_PROC_ID
             and demanda_id    = p_DEMANDA_ID
             and  ((TXT_TIPO_DEMANDA            != p_TXT_TIPO_DEMANDA)                    or
                   (DATA_DISTRIBUICAO   is     null and dDataDistribuicao  is not null)   or
                   (DATA_DISTRIBUICAO   is not null and dDataDistribuicao  is     null)   or
                   (DATA_DISTRIBUICAO           !=      dDataDistribuicao )               or
                   (DATA_INICIO_ANALISE is     null and dDataInicioAnalise is not null)   or
                   (DATA_INICIO_ANALISE is not null and dDataInicioAnalise is     null)   or
                   (DATA_INICIO_ANALISE         != dDataInicioAnalise )                   or
                   (nvl(PESS_ID_RESP,0)         != nvl(p_PESS_ID_RESP,0))                 or
                   (nvl(PESS_ID_ESP,0)          != nvl(p_PESS_ID_ESP,0))                  or
                   (nvl(SITUACAO_DEMANDA_FLX,0) != nSituacaoFlx )                         or
                   (MOTIVO_SITUACAO_FLX         != p_MOTIVO_SITUACAO));

                    COMMIT;

           exception
                WHEN OTHERS THEN
                  raise_application_error(-20001,
                                          'Erro2: UPD-fep_aux_fluxos_demandas. >> ' ||
                                          SQLCODE || ' - ' || SQLERRM);

           end;
    end if;

    ----------------------------------------------
    -- Verifica se Demanda foi cancelada no Fluxo
    ----------------------------------------------
    if nSituacaoFlx = 5 then
       begin
         update fep_aux_fluxos_demandas
             set DATA_ULTIMA_ATUALIZACAO = sysdate,
                 DATA_CANCELAMENTO       = sysdate,
                 OPERADOR_CANCELAMENTO   = 'ROT FLUXO',
                 DM_SITUACAO             = 'C'
           where proc_id       = p_PROC_ID
             and demanda_id    = p_DEMANDA_ID
             and DM_SITUACAO   = 'A';

                    COMMIT;
       exception
               WHEN OTHERS THEN
                  raise_application_error(-20001,
                                          'Erro3: UPD-fep_aux_fluxos_demandas. >> ' ||
                                          SQLCODE || ' - ' || SQLERRM);

       end;
    end if;

  End;





  --------------------------------------------------------------------------
  -- Le as inclusÃµes e alteraçÃµes para fazer carga
  -- projeto Fluxo atravÃ©s de webservice FechaDemandas
  --
  --  http://ww2.fepam.rs.gov.br/API/FechaDemandas/090220211400-100220210900
  --
  --                                          Malu 04/05/2021
  --------------------------------------------------------------------------
	-- Limpar esse código na prixima manutenção - Cátia Jardim
  /*PROCEDURE SP_FLX_OUT_DEMANDAS(P_PERIODO in varchar2,
                                cur       out sys_refcursor) IS

  begin

    -- p_periodo:
    --      string com 25 posiçÃµes  ddmmrrrrhh24mi-ddmmrrrrhh24mi
    --            exemplo 090220211400-100220210900
    --                    09/02/2021 14:00 a 10/02/2021 09:00

    open cur for
      select flde.flux_id,
             substr(to_char(flde.docu_data_vigor,'dd/mm/rrrr'),1,10) docu_data_vigor,
             flde.proc_id,
             flde.demanda_id,
             flde.docu_id,
             flde.documento,
             flde.docu_tido_id,
             substr(to_char(flde.docu_data_emissao,'dd/mm/rrrr'),1,10) docu_data_emissao,
             flde.pess_id_emissor
        from fep_aux_fluxos_demandas flde
       where flde.docu_data_vigor between
             to_date(substr(p_periodo, 01, 12) || '00', 'ddmmrrrrhh24miss') and
             to_date(substr(p_periodo, 14, 12) || '59', 'ddmmrrrrhh24miss')
         and flde.docu_id is not null
         and flde.dm_situacao = 'A'
         and flde.docu_data_vigor is not null
       order by 1;
  end;*/

	--------------------------------------------------------------------------
  -- Projeto: Liberar anexos MinistÃ©rio Publico - DEMJ' - SUP 47349
  -- adição de 3 campos no bloco principal: NroQtdeAnexos,
  -- TxtLabelIdentificacao e TxtExtensaoArquivo
  -- Cátia Jardim  - 11/09/2023
  PROCEDURE SP_FLX_OUT_DEMANDAS(P_PERIODO in varchar2,
                                cur       out sys_refcursor) IS

  begin

    -- p_periodo:
    --      string com 25 posiçÃµes  ddmmrrrrhh24mi-ddmmrrrrhh24mi
    --            exemplo 090220211400-100220210900
    --                    09/02/2021 14:00 a 10/02/2021 09:00

    open cur for
      select flde.flux_id,
             substr(to_char(flde.docu_data_vigor,'dd/mm/rrrr'),1,10) docu_data_vigor,
             flde.proc_id,
             flde.demanda_id,
             flde.docu_id,
             replace(flde.documento,'/','-') documento,
             flde.docu_tido_id,
             substr(to_char(flde.docu_data_emissao,'dd/mm/rrrr'),1,10) docu_data_emissao,
             flde.pess_id_emissor,
             pck_proc_fluxos.fc_qtde_anexo(flde.demanda_id) NroQtdeAnexos,
             replace(substr(decode(tido.descricao, null,tido.descricao,tido.descricao )
              || ' nº ' || replace(flde.documento,'/','-')
              || '.'|| Pck_Net_Arquivos.Fc_Docu_SOL_Ext_Arq(flde.proc_id,flde.docu_id, 'N'),1,100),'/',' ') TxtLabelIdentificacao,
             Pck_Net_Arquivos.Fc_Docu_SOL_Ext_Arq(flde.proc_id,flde.docu_id, 'N') TxtExtensaoArquivo
        from fep_aux_fluxos_demandas flde
            ,fep_tipos_documentos tido
       where flde.docu_tido_id = tido.tido_id
         and flde.docu_data_vigor between
             to_date(substr(p_periodo, 01, 12) || '00', 'ddmmrrrrhh24miss') and
             to_date(substr(p_periodo, 14, 12) || '59', 'ddmmrrrrhh24miss')
         and flde.docu_id is not null
         and flde.dm_situacao = 'A'
         and flde.docu_data_vigor is not null
       order by 1;
  end;


  --------------------------------------------------------------------------------------------
  -- Inclusão de Solicitação de Ofícios DEMJ do Fluxo para o Oracle Gerar PDF
  -- atravÃ©s do Forms PROF2750 e Report PROR2250 - Tipo doc - 3605
  --
  -- URL do serviço teste:
  --     http://sra-den-api.procegs.rs.gov.br/sra-den-api/api/requerimentos/oficios/novos
  --                                                            Malu 31/01/2022
	--
	-- Inclusão do campo p_QTD_REITERACAO - SUP 49543 - Catia Jardim - 11/12/2023
  --------------------------------------------------------------------------------------------

  PROCEDURE SP_FLX_IN_OFICIOSDEMJ( p_PROC_ID                     in number,
                                   p_REQUERIMENTO_ID             in number,
                                   p_OFICIO_ID                   in number,
                                   p_TIPO_OFICIO                 in number,
                                   p_DATA_INCLUSAO               in varchar2,
                                   p_NRO_REQ_RECEBIDO            in varchar2,
                                   p_DATA_RECEBIMENTO            in varchar2,
                                   p_NUMERO_PROCEDIMENTO         in varchar2,
                                   p_TXT_ASSUNTO                 in varchar2,
                                   p_NRO_DIAS_PRORROGACAO        in number,
                                   p_NOME_DESTINATARIO           in varchar2,
                                   p_COD_GENERO                  in number,
                                   p_TXT_CARGO_OFICIO            in varchar2,
                                   p_NOME_MUNICIPIO_DESTINATARIO in varchar2,
                                   p_TXT_TRATAMENTO_OFICIO       in varchar2,
                                   p_COD_DESTINATARIO            in number,
																	 p_QTD_REITERACAO              in number )is

   dDataRecebimento     date;
   dDataInclusao        date;
   nCont                number(5);
   nProc_id             number(10);

   cursor c1 is
      select count(*)
        from fep_aux_fluxos_ofdemj
       where oficio_id = p_oficio_id;

   cursor c2 is
      select proc_id
        from fep_processos
       where proc_id = p_proc_id;

  BEGIN

     open  c1;
     fetch c1 into nCont;
     close c1;

     open  c2;
     fetch c2 into nProc_id;
     close c2;

     if nCont = 0 and nProc_id is not null then

        dDataInclusao    := to_date(p_DATA_INCLUSAO,'dd/mm/rrrr');
        dDataRecebimento := to_date(p_DATA_RECEBIMENTO,'dd/mm/rrrr');

        begin
          insert into fep_aux_fluxos_ofdemj (
                                      DATA_ULTIMA_ATUALIZACAO,
                                      PROC_ID,
                                      REQUERIMENTO_ID,
                                      OFICIO_ID,
                                      DM_TIPO_OFICIO,
                                      DATA_INCLUSAO,
                                      TXT_ASSUNTO,
                                      NRO_DIAS_PRORROGACAO,
                                      NOME_DESTINATARIO,
                                      DM_COD_GENERO,
                                      TXT_CARGO_OFICIO,
                                      TXT_TRATAMENTO_OFICIO,
                                      NOME_MUNICIPIO_DESTINATARIO,
                                      FLUX_ID,
                                      DM_SITUACAO,
                                      TXT_NUMERO_OFICIO,
                                      LABEL_OFICIO,
                                      NRO_REQ_RECEBIDO_OF,
                                      DATA_RECEBIMENTO_OF,
                                      NRO_PROCEDIMENTO,
                                      DOCU_ID,
                                      DOCU_DATA_VIGOR,
                                      EXTENSAO,
                                      TEXTO_OFICIO_RESPOSTA,
                                      ASSUNTO_OFICIO,
                                      DM_FEPAM_SEMA,
																			qtd_reiteracao
                                        ) values (
                                      sysdate,
                                      p_PROC_ID,
                                      p_REQUERIMENTO_ID,
                                      p_OFICIO_ID,
                                      p_TIPO_OFICIO,
                                      dDataInclusao,
                                      p_TXT_ASSUNTO,
                                      p_NRO_DIAS_PRORROGACAO,
                                      p_NOME_DESTINATARIO,
                                      p_COD_GENERO,
                                      p_TXT_CARGO_OFICIO,
                                      p_TXT_TRATAMENTO_OFICIO,
                                      p_NOME_MUNICIPIO_DESTINATARIO,
                                      null,
                                      'P',
                                      null,
                                      null,
                                      p_NRO_REQ_RECEBIDO,
                                      dDataRecebimento,
                                      p_NUMERO_PROCEDIMENTO,
                                      null,
                                      null,
                                      null,
                                      null,
                                      null,
                                      p_COD_DESTINATARIO,
																			p_QTD_REITERACAO );
                                                  COMMIT;
        exception
                WHEN OTHERS THEN
                  raise_application_error(-20001,
                                          'Erro1: INS-fep_aux_fluxos_ofdemj. >> ' ||
                                          SQLCODE || ' - ' || SQLERRM);

        end;
     end if;

  END;

  --------------------------------------------------------------------------
  -- Le as inclusÃµes e alteraçÃµes para fazer carga
  -- projeto Fluxo atravÃ©s de webservice FechaOficios
  -- os processos são de origem Fluxos e o tipo de ofício gerado Ã© 3605
  --
  --  URL Desenvolvimento
  --  http://ww2.fepam.rs.gov.br/API/FechaOficio/200120221400-210120220900
  --
  --                                          Malu 20/01/2022
  --------------------------------------------------------------------------
  PROCEDURE SP_FLX_OUT_OFICIOSDEMJ(P_PERIODO in varchar2,
                                cur       out sys_refcursor) IS

  begin

    -- p_periodo:
    --      string com 25 posiçÃµes  ddmmrrrrhh24mi-ddmmrrrrhh24mi
    --            exemplo 200120221400-210120220900
    --                    20/01/2022 14:00 a 21/01/2022 09:00

    open cur for
      select fofd.flux_id,
             fofd.oficio_id,
             fofd.txt_numero_oficio,
             substr(to_char(fofd.docu_data_vigor,'dd/mm/rrrr'),1,10) dt_geracao_oficio,
             fofd.label_oficio  nome_arquivo_oficio,
             fofd.docu_id,
             fofd.extensao
        from fep_aux_fluxos_ofdemj fofd,
             fep_documentos        docu,
             fep_processos         proc
       where fofd.docu_data_vigor between
             to_date(substr(p_periodo, 01, 12) || '00', 'ddmmrrrrhh24miss') and
             to_date(substr(p_periodo, 14, 12) || '59', 'ddmmrrrrhh24miss')
         and fofd.docu_id         is not null
         and fofd.docu_data_vigor is not null
         and fofd.docu_id  = docu.docu_id
         and docu.situacao = 'E'
         and docu.tido_id  = 3605
         and docu.proc_id  = proc.proc_id
         and nvl(proc.dm_origem_fluxos,'N') = 'S'
       order by 1;
  end;

  ---------------------------------------------------------------
  -- Inclusão das alteração do Cadastro de Município
  -- para Webservice de Fluxos  - WS CADASTROSFLUXOS
  --                                          ( Malu 05/05/2021 )
  ---------------------------------------------------------------
  PROCEDURE PR_FLUXOS_CAD_MUNI(P_MUNI_ID  in number,
                               P_NOME     in varchar2,
                               P_REES_ID  in number,
                               P_REGIONAL in varchar2,
                               P_UNFE_ID  in varchar2 ) is

  begin
      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       MUNI_MUNI_ID,
                       MUNI_NOME,
                       MUNI_REES_ID,
                       MUNI_REGIONAL,
                       MUNI_UNFE_ID
                      ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       1,
                       'MUNICIPIOS',
                       p_MUNI_ID,
                       p_NOME,
                       p_REES_ID,
                       p_REGIONAL,
                       p_UNFE_ID );


     exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                   'Erro1: INS-fep_aux_fluxos_cadastros - MUNI. >> ' ||
                                    SQLCODE || ' - ' || SQLERRM);
     end;
   end;

   ---------------------------------------------------------------
   -- Inclusão das alteração do Cadastro de RegiÃµes Estaduais
   -- para Webservice de Fluxos - WS CADASTROSFLUXOS
   --                                          ( Malu 05/05/2021 )
   ---------------------------------------------------------------
   PROCEDURE PR_FLUXOS_CAD_REES(P_REES_ID     in number,
                                P_DESCRICAO   in varchar2) is

   begin
      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       REES_REES_ID,
                       REES_DESCRICAO
                      ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       2,
                       'REGIOES_ESTADUAIS',
                       p_REES_ID,
                       p_DESCRICAO );

      exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                    'Erro2: INS-fep_aux_fluxos_cadastros - REES. >> ' ||
                                     SQLCODE || ' - ' || SQLERRM);
      end;
    end;

   ---------------------------------------------------------------
   -- Inclusão das alteração do Cadastro de Ramos de Atividades
   -- para Webservice de Fluxos - WS CADASTROSFLUXOS
   --                                          ( Malu 05/05/2021 )
   ---------------------------------------------------------------
   PROCEDURE PR_FLUXOS_CAD_RAAT(P_RAAT_ID           in number,
                                P_DESCRICAO         in varchar2,
                                P_CRME_ID           in number,
                                P_SETO_ID_RESP      in number,
                                P_DM_POTENCIAL      in varchar2,
                                P_DATA_DESATIVACAO  in date) is

   begin
      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       RAAT_RAAT_ID,
                       RAAT_DESCRICAO,
                       RAAT_CRME_ID,
                       RAAT_SETO_ID_RESP,
                       RAAT_DM_POTENCIAL,
                       RAAT_DATA_DESATIVACAO
                      ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       3,
                       'RAMOS_ATIVIDADES',
                       p_RAAT_ID,
                       p_DESCRICAO,
                       p_CRME_ID,
                       p_SETO_ID_RESP,
                       p_DM_POTENCIAL,
                       p_DATA_DESATIVACAO );

      exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                    'Erro3: INS-fep_aux_fluxos_cadastros - RAAT. >> ' ||
                                     SQLCODE || ' - ' || SQLERRM);
      end;
    end;

   ---------------------------------------------------------------
   -- Inclusão das alteração do Cadastro de CritÃ©rios MediçÃµes
   -- para Webservice de Fluxos - WS CADASTROSFLUXOS
   --                                          ( Malu 05/05/2021 )
   ---------------------------------------------------------------
   PROCEDURE PR_FLUXOS_CAD_CRME(P_CRME_ID           in number,
                                P_DESCRICAO         in varchar2,
                                P_ABREVIATURA       in varchar2) is

   begin

      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       CRME_CRME_ID,
                       CRME_DESCRICAO,
                       CRME_ABREVIATURA
                      ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       4,
                       'CRITERIOS_MEDICOES',
                       p_CRME_ID,
                       p_DESCRICAO,
                       p_ABREVIATURA);


      exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                    'Erro4: INS-fep_aux_fluxos_cadastros - CRME. >> ' ||
                                     SQLCODE || ' - ' || SQLERRM);
      end;
    end;

   ---------------------------------------------------------------
   -- Inclusão das alteração do Cadastro de Setores
   -- para Webservice de Fluxos - WS CADASTROSFLUXOS
   --                                          ( Malu 05/05/2021 )
   ---------------------------------------------------------------
   PROCEDURE PR_FLUXOS_CAD_SETO(P_SETO_ID             in number,
                                P_SIGLA               in varchar2,
                                P_NOME                in varchar2,
                                P_PESS_ID_RESP        in number,
                                P_ORIGEM              in number,
                                P_SETO_ID_RESP        in number,
                                P_DM_GERENCIAL_GRUPO  in number,
                                P_DM_GERENCIAL_ORIGEM in number,
                                P_DATA_EXTINCAO       in date) is

   begin

      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       SETO_SETO_ID,
                       SETO_SIGLA,
                       SETO_NOME,
                       SETO_PESS_ID_RESP,
                       SETO_DM_ORIGEM,
                       SETO_SETO_ID_RESP,
                       SETO_DM_GERENCIAL_GRUPO,
                       SETO_DM_GERENCIAL_ORIGEM,
                       SETO_DATA_EXTINCAO
                         ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       5,
                       'SETORES',
                       p_SETO_ID,
                       p_SIGLA,
                       p_NOME,
                       p_PESS_ID_RESP,
                       p_ORIGEM,
                       p_SETO_ID_RESP,
                       P_DM_GERENCIAL_GRUPO,
                       P_DM_GERENCIAL_ORIGEM,
                       p_DATA_EXTINCAO );

      exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                    'Erro5: INS-fep_aux_fluxos_cadastros - SETO. >> ' ||
                                     SQLCODE || ' - ' || SQLERRM);
      end;
    end;

   ---------------------------------------------------------------
   -- Inclusão das alteração do Cadastro de Tipos de Documentos
   -- para Webservice de Fluxos - WS CADASTROSFLUXOS
   --                                          ( Malu 05/05/2021 )
   ---------------------------------------------------------------
   PROCEDURE PR_FLUXOS_CAD_TIDO(P_TIDO_ID           in number,
                                P_ABREVIATURA       in varchar2,
                                P_DESCRICAO         in varchar2,
                                P_EM_USO            in varchar2) is
   begin

      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       TIDO_TIDO_ID,
                       TIDO_ABREVIATURA,
                       TIDO_DESCRICAO,
                       TIDO_EM_USO
                         ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       6,
                       'TIPOS_DOCUMENTOS',
                       p_TIDO_ID,
                       p_ABREVIATURA,
                       p_DESCRICAO,
                       p_EM_USO );

      exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                    'Erro6: INS-fep_aux_fluxos_cadastros - TIDO. >> ' ||
                                     SQLCODE || ' - ' || SQLERRM);
      end;
    end;

   ---------------------------------------------------------------
   -- Inclusão das alteração do Cadastro de Assuntos de Processos
   -- para Webservice de Fluxos - WS CADASTROSFLUXOS
   --                                          ( Malu 05/05/2021 )
   ---------------------------------------------------------------
   PROCEDURE PR_FLUXOS_CAD_ASPR(P_ASPR_ID           in number,
                                P_DESCRICAO         in varchar2,
                                P_DM_ATIVO          in varchar2) is

   begin

      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       ASPR_ASPR_ID,
                       ASPR_DESCRICAO,
                       ASPR_DM_ATIVO
                         ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       7,
                       'ASSUNTOS_PROCESSOS',
                       p_ASPR_ID,
                       p_DESCRICAO,
                       p_DM_ATIVO  );

      exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                    'Erro7: INS-fep_aux_fluxos_cadastros - ASPR. >> ' ||
                                     SQLCODE || ' - ' || SQLERRM);
      end;
    end;

   ---------------------------------------------------------------
   -- Inclusão das alteração do Cadastro de Cargos
   -- para Webservice de Fluxos - WS CADASTROSFLUXOS
   --                                          ( Malu 05/05/2021 )
   ---------------------------------------------------------------
   PROCEDURE PR_FLUXOS_CAD_CAFE(P_CAFE_ID              in number,
                                P_DESCRICAO            in varchar2,
                                P_DM_ANALISA_PROCESSOS in varchar2,
                                P_DATA_EXTINCAO        in date) is

  begin
      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       CAFE_CAFE_ID,
                       CAFE_DESCRICAO,
                       CAFE_DM_ANALISA_PROCESSOS,
                       CAFE_DATA_EXTINCAO
                         ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       8,
                       'CARGOS',
                       p_CAFE_ID,
                       p_DESCRICAO,
                       p_DM_ANALISA_PROCESSOS,
                       p_DATA_EXTINCAO );

      exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                    'Erro8: INS-fep_aux_fluxos_cadastros - CAFE. >> ' ||
                                     SQLCODE || ' - ' || SQLERRM);
      end;
    end;


   ---------------------------------------------------------------
   -- Inclusão das alteração do Cadastro de ProfissÃµes
   -- para Webservice de Fluxos - WS CADASTROSFLUXOS
   --                                          ( Malu 05/05/2021 )
   ---------------------------------------------------------------
   PROCEDURE PR_FLUXOS_CAD_PROF(P_PROF_ID           in number,
                                P_NOME              in varchar2) is

   begin

      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       PROF_PROF_ID,
                       PROF_NOME
                         ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       9,
                       'PROFISSOES',
                       p_PROF_ID,
                       p_NOME );

      exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                    'Erro9: INS-fep_aux_fluxos_cadastros - PROF. >> ' ||
                                     SQLCODE || ' - ' || SQLERRM);
      end;
    end;

   ---------------------------------------------------------------
   -- Inclusão das alteração do Cadastro de Tipos Logradouros
   -- para Webservice de Fluxos - WS CADASTROSFLUXOS
   --                                          ( Malu 05/05/2021 )
   ---------------------------------------------------------------
   PROCEDURE PR_FLUXOS_CAD_TILO(P_TILO_ID           in varchar2,
                                P_DESCRICAO         in varchar2) is

   begin
      begin
         insert into fep_aux_fluxos_cadastros (
                       FLUX_ID,
                       DATA_GERACAO,
                       COD_ORIGEM,
                       ORIGEM,
                       TILO_TILO_ID,
                       TILO_DESCRICAO
                         ) values (
                       FLUX_seq.nextval,
                       sysdate,
                       10,
                       'TIPOS_LOGRADOUROS',
                       p_TILO_ID,
                       p_DESCRICAO );

      exception
         WHEN OTHERS THEN
            raise_application_error(-20001,
                                    'Erro10: INS-fep_aux_fluxos_cadastros - TILO. >> ' ||
                                     SQLCODE || ' - ' || SQLERRM);
      end;
    end;

   ---------------------------------------------------------------------------------------------
   -- Atualização da Distribuição de Processos feitos atravÃ©s
   -- do sistema de Fluxos, alterando Setor ou Analista no Processo, banco Fepam
   -- URL do serviço:
   --   http://sra-flx-api.des.intra.rs.gov.br/sra-flx-api/api/processos/atualizacoes/yyyy-mm-dd
   --             SP_FLX_IN_DISTRIBUICAO
   --
   --                                                               ( Malu 19/05/2021 )
   ---------------------------------------------------------------------------------------------
   PROCEDURE PR_FLX_ATUALIZA_DISTRIBUICAO IS

      nSeto_id_proc    number(6);
      nPess_id_proc    number(10);
      vAtualizaProc    varchar2(1);

      cursor c1 is
         select flre.proc_id,
                flre.pess_id_resp,
                flre.seto_id,
                flre.data_distribuicao,
                flre.dm_validado,
                flre.data_atualizacao,
                flre.flxi_id,
                flre.dm_alt_proc
           from fep_aux_fluxos_rec_distr flre
          where flre.dm_validado = 'N'
          order by flre.flxi_id;

     r1    c1%rowtype;

      cursor c2 is
         select proc.seto_id,
                proc.pess_id_respondido
           from fep_processos proc
          where proc.proc_id = r1.proc_id;

   Begin

       open c1;
       loop
         fetch c1 into r1;
         if c1%notfound then
            close c1;
            exit;
         else

            nSeto_id_proc := null;
            nPess_id_proc := null;
            vAtualizaProc := 'N';

            open  c2;
            fetch c2 into nSeto_id_proc, nPess_id_proc;
            close c2;

            if nvl(r1.seto_id,0)      != nvl(nSeto_id_proc,0) or
               nvl(r1.pess_id_resp,0) != nvl(nPess_id_proc,0) then

               vAtualizaProc := 'S';

               -----------------------------------------------------
               -- atualiza a distribuição em processos - banco Fepam
               -----------------------------------------------------
               begin
                 update fep_processos
                    set seto_id              = r1.seto_id,
                        pess_id_respondido   = r1.pess_id_resp,
                        dm_distr_fluxos      = 'S',
                        data_distr_flx       = r1.data_distribuicao,
                        data_atualizacao     = sysdate,
                        operador_atualizacao = 'FLUXOS-FLXI_ID: ' || r1.flxi_id
                  where proc_id = r1.proc_id;
                                  commit;
               exception
                 when others then
                   raise_application_error(-20001,
                                'Erro1: At Proc-distr flxi_id: '|| r1.flxi_id || ' >> ' ||
                                 SQLCODE || ' - ' || SQLERRM);
               end;
            end if;

            --------------------------------------------
            -- atualiza o fluxo de distribuição - Fluxos
            --------------------------------------------
            begin
              update fep_aux_fluxos_rec_distr
                 set dm_validado      = 'S',
                     dm_alt_proc      = vAtualizaProc,
                     data_atualizacao = sysdate
               where flxi_id = r1.flxi_id;
                               commit;
            exception
               when others then
                 raise_application_error(-20001,
                             'Erro2: At Fluxos-distribuição >> ' ||
                              SQLCODE || ' - ' || SQLERRM);
            end;
         end if;
       end loop;
   End;

   -------------------------------------------------------------------------------------
   -- Faz atualização da Carga de Distribuidores para fluxos
   -- usado no WS http://ww2.fepam.rs.gov.br/API/DistribuidoresFluxos/
   --                                                                    Malu 24/05/2021
   -------------------------------------------------------------------------------------
   PROCEDURE PR_FLX_CHEFIAS_DISTRIBUICAO IS

      cursor c1 is
         select seto.seto_id,
                seto.pess_id
           from fep_setores          seto,
                fep_aux_func_ultimos auxf
          where seto.data_extincao is null
            and seto.pess_id is not null
            and seto.pess_id = auxf.pess_id
            and auxf.situacao in (1,2)
            order by 1;

     r1   c1%rowtype;

   begin
     begin
        delete
          from fep_aux_proc_distribuidores
         where dm_chefia    = 'S'
           and dm_designado = 'N';
                commit;
     exception
          when others then
            raise_application_error(-20001,
                              'Erro1: At Chefias-distribuição >> ' ||
                              SQLCODE || ' - ' || SQLERRM);
     end;

     begin
        update fep_aux_proc_distribuidores
           set dm_chefia    = 'N'
         where dm_chefia    = 'S'
           and dm_designado = 'S';
                commit;
     exception
           when others then
            raise_application_error(-20001,
                              'Erro2: At Chefias-distribuição >> ' ||
                              SQLCODE || ' - ' || SQLERRM);
     end;

     open c1;
     loop
        fetch c1 into r1;
        if c1%notfound then
           close c1;
           exit;
        else
           begin
              insert into fep_aux_proc_distribuidores (
                            pess_id,
                            seto_id,
                            dm_chefia,
                            dm_designado,
                            data_geracao
                             ) values (
                            r1.pess_id,
                            r1.seto_id,
                            'S',
                            'N',
                            sysdate );
                                  commit;
           exception
                 when others then
                  raise_application_error(-20001,
                                    'Erro3: Inclui Chefias-distribuição >> ' ||
                                    SQLCODE || ' - ' || SQLERRM);
           end;
        end if;
     end loop;
   end;

   --------------------------------------------------------------------------
   -- função que busca o resp_id dos processos cadastrados no fluxo
   -- ( demj e denuncia ) na pck_proc_fluxos.sp_flx_in_processos
   -- quando atan_id Ã© informado        ( Malu 05/04/2022 )
   --------------------------------------------------------------------------
   FUNCTION FC_RESP_PROC_FLUXOS(p_ATAN_ID IN NUMBER ) return number is

   nResp_id     number(10) := null;

   cursor c1 is
      select resp.resp_id
        from fep_responsabilidades     resp,
             fep_atividades_antropicas ata1
       where resp.atan_id = p_ATAN_ID
         and resp.atan_id = ata1.atan_id
         and resp.data_fim       is null
         and resp.dm_empdor_resp = 'S'
         and resp.pess_id        = ata1.pess_id;

  begin

    if p_atan_id is not null then
       open  c1;
       fetch c1 into nResp_id;
       close c1;
    end if;

    return(nResp_id);

  end;

  --------------------------------------------------------------------------
  -- Procedure que inclui as denúncias do Processo do Fluxo no banco Fepam
  --                                                  (  Malu 29/05/2023 )
  --------------------------------------------------------------------------
  PROCEDURE SP_FLX_IN_DENUNCIAS
                              (p_PROTOCOLO_ID      in number,
                               p_DENUNCIA_ID       in number,
                               p_PROC_ID           in number,
                               p_DATA_ANDAMENTO    in date,
                               p_DATA_ENVIO        in date,
                               p_LATITUDE          in number,
                               p_LONGITUDE         in number ) is

  nCont               number(5);
  nExiste             number(2);
  nLatitude           number(11,8);
  nLongitude          number(11,8);
  nTam                number(3);

  cursor c1 is
     select count(*)
       from fep_processos proc
      where proc.proc_id     = p_proc_id;

  cursor c2 is
     select count(*)
       from fep_processos_denuncias pdem
      where pdem.proc_id     = p_proc_id
        and pdem.denuncia_id = p_denuncia_id;

  begin

      open  c1;
      fetch c1 into nExiste; -- tem processo cadastrado
      close c1;

      open  c2;
      fetch c2 into nCont;   -- verifica se já tem denuncia cadastrada no processo
      close c2;

      if nExiste > 0 and nCont = 0 then

         -- Latitude number(11,8)
         nTam := length(p_latitude);
         if nTam > 12 then
            nLatitude := to_number(substr(to_char(p_latitude),1,12)); --  para não arredondar
         else
            nLatitude  := p_latitude;
         end if;

         -- Longitude number(11,8)
         nTam := length(p_longitude);
         if nTam > 12 then
            nLongitude := to_number(substr(to_char(p_longitude),1,12)); --  para não arredondar
         else
            nLongitude := p_longitude;
         end if;

         begin
            insert into fep_processos_denuncias (
                           pden_id,
                           proc_id,
                           protocolo_id,
                           denuncia_id,
                           data_andam_denuncia,
                           data_envio_denuncia,
                           coord_latitude,
                           coord_longitude,
                           data_inclusao,
                           operador_inclusao,
                           data_atualizacao,
                           operador_atualizacao
                           ) values (
                           pden_seq.nextval,
                           p_proc_id,
                           p_protocolo_id,
                           p_denuncia_id,
                           p_data_andamento,
                           p_data_envio,
                           nLatitude,
                           nLongitude,
                           sysdate,
                           user,
                           sysdate,
                           user );

                           commit;

         exception
               when others then
                 raise_application_error(-20001,
                             'Erro: Inc Fep_processos_denuncias >> ' ||
                              SQLCODE || ' - ' || SQLERRM);
         end;
      end if;

  end;


   --------------------------------------------------------------------------
   -- função que busca a quantidade de documentos em anexo por demanada
   -- Projeto: Liberar anexos MinistÃ©rio Publico - DEMJ' - SUP 47349
   -- Cátia Jardim  - 11/09/2023
   --------------------------------------------------------------------------
   FUNCTION FC_QTDE_ANEXO(p_demanda_id IN NUMBER ) return number is

   nContador    number(2) := 0;
   nTido_id     number(5);

   cursor c0 is
    select proc.tido_id
      from fep_aux_fluxos_demandas flde,
           fep_processos           proc
     where flde.demanda_id = p_demanda_id
       and flde.proc_id    = proc.proc_id;

   cursor c1 is
       select count(*)
    from fep_aux_fluxos_demandas_anexos dane
    where dane.demanda_id = p_demanda_id ;

  begin

       open  c0;
       fetch c0 into nTido_id;
       close c0;

       open  c1;
       fetch c1 into nContador;
       close c1;

       -- se Processo 2710-DEMJ - a resposta será adicionada como anexo
       -- para mostrar na lista de Docs do Requerimento no Fluxo
       --                             Malu 21/12/2023
       if nTido_id in ( 2710 ) then
          nContador := nContador + 1;
       end if;

       return(nContador);

  end;

 --------------------------------------------------------------------------
   -- Procedure que libera o grupo de informação por docuemnto da demanada
   -- Projeto: Liberar anexos MinistÃ©rio Publico - DEMJ' - SUP 47349
	 -- Cátia Jardim  - 11/09/2023
   --------------------------------------------------------------------------
  PROCEDURE SP_ANEXO_DEMANDAS(p_demanda_id IN NUMBER,
                              cur       out sys_refcursor) IS

  begin

    open cur for
  -- inclui o documento de resposta para processos DEMJ e DENUNCIA como anexo
  --                                              Malu 21/12/2023
  -- incluido o processo no label do nome do documento cfme solic Leandro - DEMJ ( Malu 16/02/2024 )
      select flde.flux_id                     NroFluxId,
             flde.demanda_id                  Nro_Int_Processo_Demanda,
             docu.numero || '-' || docu.ano   TxtNumeroDocumento,
             trunc(decode(docu.data_assinatura_fisica,null, docu.data_emissao,docu.data_assinatura_fisica)) dtDataEmissao,
             proc.numero || '-' || proc.ano || '-' || proc.dv || ' 1 ' || lpad(docu.docu_id,7,0) || ' ' ||
             replace(substr(decode(docu.tido_id,
                              2720, docu.label_anexo_demj || '.pdf',
                                    decode(tido.descricao_oficios,
                                           null,tido.descricao,
                                                decode(docu.dm_tipo_of,
                                                       4,replace(tido.descricao_oficios,'Parada','Informação'),
                                                       tido.descricao_oficios)) ||
                                   ' nº ' || docu.numero || '-' || docu.ano  || '.'||
                                   Pck_Net_Arquivos.Fc_Docu_SOL_Ext_Arq(docu.proc_id,docu.docu_id, 'N')),1,100),'/',' ') TxtLabelIdentificacao,
             flde.docu_id Docu_id,
             Pck_Net_Arquivos.Fc_Docu_SOL_Ext_Arq(proc.proc_id,docu.docu_id, 'N') TxtExtensaoArquivo,
             1   Origem
        from fep_aux_fluxos_demandas        flde,
             fep_documentos                 docu,
             fep_processos                  proc,
             fep_tipos_documentos           tido,
             fep_sub_classes_documentos     sucd,
             fep_classes_documentos         cldo
       where
             flde.demanda_id = p_demanda_id
         and flde.docu_id    = docu.docu_id
         and docu.proc_id    = proc.proc_id
         and docu.tido_id    = tido.tido_id
         and tido.sucd_id    = sucd.sucd_id
         and sucd.cldo_id    = cldo.cldo_id
         and proc.tido_id in (2710)
union all
--    anexos da demanda
      select dane.flux_id                     NroFluxId,
             dane.demanda_id                  Nro_Int_Processo_Demanda,
             docu.numero || '-' || docu.ano   TxtNumeroDocumento,
             trunc(decode(docu.data_assinatura_fisica,null, docu.data_emissao,docu.data_assinatura_fisica)) dtDataEmissao,
             pro1.numero || '-' || pro1.ano || '-' || pro1.dv || ' 2 ' || lpad(docu.docu_id,7,0) || ' ' ||
             replace(replace(replace(
                  substr(decode(docu.tido_id,
                              2720, docu.label_anexo_demj || '.pdf',
                                    decode(tido.descricao_oficios,
                                           null,tido.descricao,
                                                decode(docu.dm_tipo_of,
                                                       4,replace(tido.descricao_oficios,'Parada','Informação'),
                                                       tido.descricao_oficios)) ||
                                   ' nº ' || docu.numero || '-' || docu.ano  || '.'||
                                   Pck_Net_Arquivos.Fc_Docu_SOL_Ext_Arq(docu.proc_id,docu.docu_id, 'N')),1,100),
                                   '/',' '),')',''),'(','')  TxtLabelIdentificacao,
             dane.docu_id Docu_id,
             Pck_Net_Arquivos.Fc_Docu_SOL_Ext_Arq(proc.proc_id,docu.docu_id, 'N') TxtExtensaoArquivo,
             2   Origem
        from fep_aux_fluxos_demandas_anexos dane,
             fep_aux_fluxos_demandas        flde,
             fep_documentos                 docu,
             fep_processos                  proc,
             fep_processos                  pro1,
             fep_tipos_documentos           tido,
             fep_sub_classes_documentos     sucd,
             fep_classes_documentos         cldo
       where
             dane.demanda_id = p_demanda_id
         and dane.demanda_id = flde.demanda_id
         and flde.proc_id    = pro1.proc_id
         and dane.docu_id    = docu.docu_id
         and docu.proc_id    = proc.proc_id
         and docu.tido_id    = tido.tido_id
         and tido.sucd_id    = sucd.sucd_id
         and sucd.cldo_id    = cldo.cldo_id
         and docu.tido_id   != 700
   union all
   -- auto de infração vindo do sol
   --              Malu 03/01/2024
      select dane.flux_id                     NroFluxId,
             dane.demanda_id                  Nro_Int_Processo_Demanda,
             docu.numero || '-' || docu.ano   TxtNumeroDocumento,
             trunc(decode(docu.data_assinatura_fisica,null, docu.data_emissao,docu.data_assinatura_fisica)) dtDataEmissao,
             pro1.numero || '-' || pro1.ano || '-' || pro1.dv || ' 3 ' || lpad(docu.docu_id,7,0) || ' ' ||
             replace(substr(tido.descricao_oficios || ' nº ' || docu.numero || '-' || docu.ano  || '.pdf' ,1,100),'/',' ')  TxtLabelIdentificacao,
             dane.docu_id Docu_id,
             'pdf'  TxtExtensaoArquivo,
             3   Origem
        from fep_aux_fluxos_demandas_anexos dane,
             fep_aux_fluxos_demandas        flde,
             fep_documentos                 docu,
             fep_processos                  proc,
             fep_processos                  pro1,
             fep_tipos_documentos           tido,
             fep_sub_classes_documentos     sucd,
             fep_classes_documentos         cldo
       where
             dane.demanda_id = p_demanda_id
         and dane.demanda_id = flde.demanda_id
         and flde.proc_id    = pro1.proc_id
         and dane.docu_id    = docu.docu_id
         and docu.proc_id    = proc.proc_id
         and docu.tido_id    = tido.tido_id
         and tido.sucd_id    = sucd.sucd_id
         and sucd.cldo_id    = cldo.cldo_id
         and docu.tido_id    = 700
         and proc.numero_ai_sol is not null
       order by 8 desc,5 desc,1;

  end;

  --------------------------------------------------------------------------
  -- Procedure que atualiza o ultimo doc do processo para envio ao Fluxo
  -- para geração de CSV para processos
  --                                                  (  Malu 06/11/2023 )
  --------------------------------------------------------------------------

  PROCEDURE PR_FLUXOS_AT_PROC_ULTDOC IS

   nProc_id        number(10);
   vUltDoc_1       varchar2(25);
   vSitDoc_1       varchar2(25);
   dDataDoc_1      date;
   vUltDoc_2       varchar2(25);
   vSitDoc_2       varchar2(25);
   dDataDoc_2      date;
   dDataGeracao    date;
   nAtualiza       number(1);

   cursor c0 is
      select proc.proc_id
        from fep_processos proc
       where proc.dm_fluxos = 'S'
       order by 1;

   cursor c1 is
      select fxpd.ultimo_doc,
             fxpd.sit_ult_doc,
             fxpd.data_fim_vigencia
        from fep_aux_fluxos_proc_ultdoc fxpd
       where fxpd.proc_id = nProc_id;

   cursor c2 is
      select vpfd.ultimo_doc,
             vpfd.sit_ult_doc,
             vpfd.data_fim_vigencia
        from v_proc_fluxos_detalhamento vpfd
       where vpfd.proc_id = nProc_id;

begin

   dDataGeracao := trunc(sysdate);

   open c0;
   loop

     nProc_id  := null;
     nAtualiza := 0;

     fetch c0 into nProc_id;
     if c0%notfound then
        close c0;
        exit;
     else

        nAtualiza  := 1;
        vUltDoc_1  := null;
        vSitDoc_1  := null;
        dDataDoc_1 := null;
        vUltDoc_2  := null;
        vSitDoc_2  := null;
        dDataDoc_2 := null;

        -- verifica o ultimo doc da tabela auxiliar
        open  c1;
        fetch c1 into vUltDoc_1, vSitDoc_1, dDataDoc_1;
        close c1;

        -- verifica o ultimo doc da view do ultimo documento do processo
        open  c2;
        fetch c2 into vUltDoc_2, vSitDoc_2, dDataDoc_2;
        close c2;

        if vUltDoc_1 is not null then
           if vUltDoc_1  = nvl(vUltDoc_2,'X')  and
              nvl(vSitDoc_1,'X')  = nvl(vSitDoc_2,'X')  and
              nvl(dDataDoc_1,trunc(sysdate)) = nvl(dDataDoc_2,trunc(sysdate)) then
              nAtualiza := 0; -- não mudou, não precisa atualizar
           end if;
        end if;

        -- se processo não tem documento emitido - não inclui na tabela auxiliar
        if nAtualiza = 1 then
           if vUltDoc_2 is null then
              nAtualiza := 0;
           end if;
        end if;

        if nAtualiza = 1 then
           if  vUltDoc_1 is not null then
               -- atualiza na tabela auxiliar
               begin
                  update fep_aux_fluxos_proc_ultdoc
                     set data_geracao         = dDataGeracao,
                         ultimo_doc           = vUltDoc_2,
                         sit_ult_doc          = vSitDoc_2,
                         data_fim_vigencia    = dDataDoc_2,
                         data_atualizacao     = sysdate,
                         operador_atualizacao = 'AT AUT-FLUXO'
                   where proc_id = nProc_id;
                          commit;
               exception
                   when others then
                     raise_application_error(-20001,
                                'Erro1: At fep_aux_fluxos_proc_ultdoc >> ' ||
                                 SQLCODE || ' - ' || SQLERRM);
               end;
           else
               -- inclui na tabela auxiliar
               begin
                 insert into fep_aux_fluxos_proc_ultdoc (
                         data_geracao,
                         proc_id,
                         ultimo_doc,
                         sit_ult_doc,
                         data_fim_vigencia,
                         data_atualizacao,
                         operador_atualizacao
                         ) values (
                         dDataGeracao,
                         nProc_id,
                         vUltDoc_2,
                         vSitDoc_2,
                         dDataDoc_2,
                         sysdate,
                         'INC AUT-FLUXO');
                          commit;
               exception
                   when others then
                     raise_application_error(-20001,
                                'Erro2: At fep_aux_fluxos_proc_ultdoc >> ' ||
                                 SQLCODE || ' - ' || SQLERRM);
               end;
           end if;
        end if;
     end if;
   end loop;
end;

-------------------------------------------------------------------------
  -- Libera as informaçÃµes para o Fluxo
  -- http://ww2.fepam.rs.gov.br/API/UltDocProcFluxo/06112023-08112023
  -- Sup 48922
  -- Cátia Jardim - 10/11/2023
  --------------------------------------------------------------------------

  PROCEDURE SP_FLX_OUT_PROC_ULTDOC(P_PERIODO in varchar2,
                                cur       out sys_refcursor) IS

  begin

  	-- ParÃ¢metro de entrada: p_periodo
		-- data geração inicial e final
    -- Exemplo:  to_date(substr('06112023-08112023', 01, 08), 'ddmmrrrr') and to_date(substr('06112023-08112023', 10, 08), 'ddmmrrrr')
    -- Informar: 06112023-08112023 (ddmmyyyy-ddmmyyyy  )
                            -- String com 17 posiçÃµes.

    open cur for
       select  substr(to_char(udoc.data_geracao,'dd/mm/rrrr'),1,10) DtDataGeracao
      ,udoc.proc_id           NroProcId
      ,udoc.ultimo_doc        TxtUltimoDoc
      ,udoc.sit_ult_doc       TxtSituacaoUltDoc
			,substr(to_char(udoc.data_fim_vigencia,'dd/mm/rrrr'),1,10) DtDataFimVigencia
 from fep_aux_fluxos_proc_ultdoc udoc
 where udoc.data_geracao between
       to_date(substr(p_periodo, 01, 08) , 'ddmmrrrr') and
       to_date(substr(p_periodo, 10, 08) , 'ddmmrrrr')
       order by 1;
  end;

  ------------------------------------------------------------------------
  -- Gera Documento 482 atravÃ©s de Demandas - PROF2690
  --                                                      Malu 23/01/2024
  ------------------------------------------------------------------------
   PROCEDURE pr_demandas_DUC482(P_PROC_ID      IN number,
                                P_DEMANDA_ID   IN NUMBER,
                                P_USER         IN varchar2) is

    nSeto_id            number(6);
    nPess_id            number(10);
    dDataAtual          date;
    vUsuario            varchar2(30);
    nAduc_id            number(10);
    nPrcr_id            number(10);
    dDataInicio         date;
    dDataFim            date;
    nNroMeses           number(5);

    vObservacao         varchar2(120);
    vObsOrigem          varchar2(2000);

cursor c1 is
   select aux.seto_id,
          aux.pess_id
     from fep_aux_func_ultimos aux
    where aux.username = p_user;

cursor c2 is
   select tido.nro_meses_doc
     from fep_tipos_documentos tido
    where tido.tido_id = 482;

BEGIN

        select sysdate into dDataAtual FROM DUAL;
        vUsuario := substr(p_user,1,26) ||  '-AUT';
        vObservacao := 'Demanda: ' || p_demanda_id;

        open  c1;
        fetch c1 into nSeto_id, nPess_id;   -- setor e código do user de inclusão
        close c1;

        open  c2;
        fetch c2 into nNroMeses;
        close c2;

        dDataInicio  := sysdate;
        if nNroMeses is not null then
           dDataFim  := add_months(dDataInicio,nNroMeses);
        end if;
        vObsOrigem   := null;

        select aduc_seq.nextval into nAduc_id from dual;

        begin
           insert into fep_aux_unid_conserv_duc (
                ADUC_ID,
                PROC_ID,
                DATA_SOLIC,
                SETO_ID_SOLIC,
                PESS_ID_SOLIC,
                OBSERVACAO,
                DATA_ATEND,
                SETO_ID_ATEND,
                PESS_ID_ATEND,
                DOCU_ID,
                DATA_INCLUSAO,
                OPERADOR_INCLUSAO,
                DATA_ATUALIZACAO,
                OPERADOR_ATUALIZACAO,
                PRCR_ID,
                OBSERVACAO_ADUC,
                DM_REC_DUC,
                DM_CANCELADO,
                DEMANDA_ID
               ) Values (
                nAduc_id,
                p_proc_id,
                dDataAtual,
                nSeto_id,
                nPess_id,
                vObsOrigem,
                null,
                null,
                null,
                null,
                sysdate,
                vUsuario,
                sysdate,
                vUsuario,
                null,
                vObservacao,
                'N',
                'N',
                p_demanda_id
               );
       exception
            WHEN OTHERS THEN
               raise_application_error(-20001, 'Erro1: DUC-Incl fep_aux_unid_conserv. (Proc_id : ' || p_proc_id || '). Avise a Informática. - ' ||
                                                                           SQLCODE || ' - ' || SQLERRM );
       end;

       ----------------------------------------------
       -- gera os registro de fep_aux_proc_cond_restr
       ----------------------------------------------

       select prcr_seq.nextval into nPrcr_id from dual;

       begin
           insert into fep_aux_proc_cond_restr (
                         PRCR_ID,
                         PROC_ID,
                         PESS_ID_TECNICO,
                         SETO_ID_TECNICO,
                         DOCU_ID_PARECER,
                         TIDO_ID_PARECER,
                         DOCU_ID_REVOGADO,
                         DOCU_ID_RENOVACAO,
                         DOCU_ID_LICENCA,
                         TIDO_ID_LICENCA,
                         DATA_VENCIMENTO,
                         OBSERVACAO,
                         DM_ATIVO,
                         DATA_INCLUSAO,
                         OPERADOR_INCLUSAO,
                         DATA_ATUALIZACAO,
                         OPERADOR_ATUALIZACAO,
                         DM_LIBERA_ESPECIFICO,
                         DATA_INICIO_VIGENCIA,
                         DATA_FIM_VIGENCIA,
                         MOTIVO_REVOGACAO,
                         DESCRICAO_ATIVIDADE,
                         DM_DATA_FIM_INF,
                         DM_ALTERACAO_DOC,
                         DM_IMPLOCAL,
                         DM_IGNORAR_PADRAO,
                         DM_RES052014,
                         DM_PORT192016,
                         ADUC_ID,
                         DEMANDA_ID
                                     ) values (
                         nPrcr_id,
                         p_proc_id,
                         nPess_id,
                         nSeto_id,
                         null,
                         3482,
                         null,
                         null,
                         null,
                         482,
                         null,
                         null,
                         'S',
                         sysdate,
                         p_user,
                         sysdate,
                         p_user,
                         'S',
                         dDataInicio,
                         dDataFim,
                         null,
                         null,
                         'N',
                         'N',
                         'N',
                         'N',
                         'N',
                         'N',
                         nAduc_id,
                         p_demanda_id
                                   );
       exception
            WHEN OTHERS THEN
               raise_application_error(-20001, 'Erro2: DUC-Incl fep_aux_proc_cond_restr (Proc_id : ' || p_proc_id || '). Avise a Informática. - ' ||
                                                                                         SQLCODE || ' - ' || SQLERRM );
       end;


       begin
         update fep_aux_unid_conserv_duc
            set prcr_id = nPrcr_id
          where aduc_id = nAduc_id;
       exception
            WHEN OTHERS THEN
            raise_application_error(-20001, 'Erro3: DUC-Incl fep_aux_unid_conserv. (Aduc_id : ' || nAduc_id || '). Avise a Informática. - ' ||
                                                                                      SQLCODE || ' - ' || SQLERRM );

       end;

 END;
---------------------------------------------------------------------------------------------
-- Recebe dados de arquivamento de processos de denúncia atravÃ©s do WS da Procergs e grava na tabela auxiliar.
-- Chamado: 70113 - WS Arquivamento - 14/07/2026 - CJ
-- URL do serviço:
--   https://sechml.procergs.com.br/sra-den-api/api/denuncias/arquivamento/yyyy-mm-dd
---------------------------------------------------------------------------------------------

PROCEDURE SP_FLX_IN_ARQUIVAMENTO (
    p_PROC_ID              IN NUMBER,
    p_DTH_ARQUIVAMENTO     IN VARCHAR2,
    p_COD_CAT_ARQUIVAMENTO IN NUMBER,
    p_TXT_MOTIVO           IN VARCHAR2
) IS

    dDataArquivamento DATE;
    nCont             NUMBER(10);

    CURSOR c1 IS
        SELECT COUNT(*)
          FROM fep_aux_fluxos_rec_arq_den flxa
         WHERE flxa.proc_id = p_proc_id
           AND flxa.tcad_id = p_cod_cat_arquivamento
           AND flxa.data_arquivamento = dDataArquivamento;

BEGIN

    /*
      O WS retorna a data no formato: 2026-05-11T09:54:11.864488
      Como DATE não guarda fraçÃµes de segundo, será convertido atÃ© segundos.
    */
    dDataArquivamento := TO_DATE(SUBSTR(p_DTH_ARQUIVAMENTO, 1, 19), 'yyyy-mm-dd"T"hh24:mi:ss');

    OPEN c1;
    FETCH c1 INTO nCont;
    CLOSE c1;

    IF nCont = 0 THEN
        BEGIN
            INSERT INTO fep_aux_fluxos_rec_arq_den (
                flxa_id,
                proc_id,
                data_arquivamento,
                tcad_id,
                motivo_arq_denuncia,
                dm_validado,
                dm_alt_proc,
                data_atualizacao,
                data_geracao,
                msg_processamento
            ) VALUES (
                flxa_seq.NEXTVAL,
                p_proc_id,
                dDataArquivamento,
                p_cod_cat_arquivamento,
                SUBSTR(p_txt_motivo, 1, 200),
                'N',
                NULL,
                NULL,
                SYSDATE,
                NULL
            );

            COMMIT;

        EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN
                NULL;

            WHEN OTHERS THEN
                RAISE_APPLICATION_ERROR(
                    -20001,
                    'Erro1: INS-fep_aux_fluxos_rec_arq_den. PROC_ID: ' ||
                    p_proc_id || ' >> ' || SQLCODE || ' - ' || SQLERRM
                );
        END;
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Erro2: SP_FLX_IN_ARQUIVAMENTO. PROC_ID: ' ||
            p_proc_id || ' >> ' || SQLCODE || ' - ' || SQLERRM
        );
END;

---------------------------------------------------------------------------------------------
-- Atualização do arquivamento de processos de denúncia a partir dos dados recebidos do WS da Procergs.
-- Chamado: 70113 - WS Arquivamento - 14/07/2026 - CJ
-- Rotina origem: SP_FLX_IN_ARQUIVAMENTO
---------------------------------------------------------------------------------------------

PROCEDURE PR_FLX_ATUALIZA_ARQUIVAMENTO IS

    vSituacaoProc      VARCHAR2(1);
    nExisteProc        NUMBER(10);
    nExisteTcad        NUMBER(10);
    vAtualizaProc      VARCHAR2(1);
    vMsgProcessamento  VARCHAR2(4000);

    CURSOR c1 IS
        SELECT flxa.flxa_id,
               flxa.proc_id,
               flxa.data_arquivamento,
               flxa.tcad_id,
               flxa.motivo_arq_denuncia,
               flxa.dm_validado,
               flxa.dm_alt_proc,
               flxa.data_atualizacao,
               flxa.data_geracao
          FROM fep_aux_fluxos_rec_arq_den flxa
         WHERE flxa.dm_validado = 'N'
         ORDER BY flxa.flxa_id;

    r1 c1%ROWTYPE;

    CURSOR c_proc IS
        SELECT proc.situacao
          FROM fep_processos proc
         WHERE proc.proc_id = r1.proc_id;

    CURSOR c_tcad IS
        SELECT COUNT(*)
          FROM fep_tipos_cat_arq_denuncias tcad
         WHERE tcad.tcad_id = r1.tcad_id;

BEGIN

    OPEN c1;

    LOOP
        FETCH c1 INTO r1;

        IF c1%NOTFOUND THEN
            CLOSE c1;
            EXIT;
        END IF;

        vSituacaoProc     := NULL;
        nExisteProc       := 0;
        nExisteTcad       := 0;
        vAtualizaProc     := 'N';
        vMsgProcessamento := NULL;

        -----------------------------------------------------
        -- Verifica se o processo existe
        -----------------------------------------------------
        BEGIN
            OPEN c_proc;
            FETCH c_proc INTO vSituacaoProc;

            IF c_proc%FOUND THEN
                nExisteProc := 1;
            ELSE
                nExisteProc := 0;
            END IF;

            CLOSE c_proc;
        EXCEPTION
            WHEN OTHERS THEN
                IF c_proc%ISOPEN THEN
                    CLOSE c_proc;
                END IF;

                RAISE_APPLICATION_ERROR(
                    -20001,
                    'Erro1: Consulta processo arquivamento FLXA_ID: ' ||
                    r1.flxa_id || ' >> ' || SQLCODE || ' - ' || SQLERRM
                );
        END;

        -----------------------------------------------------
        -- Verifica se categoria existe
        -----------------------------------------------------
        BEGIN
            OPEN c_tcad;
            FETCH c_tcad INTO nExisteTcad;
            CLOSE c_tcad;
        EXCEPTION
            WHEN OTHERS THEN
                IF c_tcad%ISOPEN THEN
                    CLOSE c_tcad;
                END IF;

                RAISE_APPLICATION_ERROR(
                    -20001,
                    'Erro2: Consulta categoria arquivamento FLXA_ID: ' ||
                    r1.flxa_id || ' >> ' || SQLCODE || ' - ' || SQLERRM
                );
        END;

        -----------------------------------------------------
        -- ValidaçÃµes antes de atualizar o processo
        -----------------------------------------------------
        IF nExisteProc = 0 THEN

            vAtualizaProc     := 'N';
            vMsgProcessamento := 'Processo não localizado na FEP_PROCESSOS. PROC_ID: ' || r1.proc_id;

            BEGIN
                UPDATE fep_aux_fluxos_rec_arq_den
                   SET dm_validado       = 'E',
                       dm_alt_proc       = vAtualizaProc,
                       data_atualizacao  = SYSDATE,
                       msg_processamento = SUBSTR(vMsgProcessamento, 1, 4000)
                 WHERE flxa_id = r1.flxa_id;

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    RAISE_APPLICATION_ERROR(
                        -20001,
                        'Erro3: At Aux Arquivamento - processo inexistente FLXA_ID: ' ||
                        r1.flxa_id || ' >> ' || SQLCODE || ' - ' || SQLERRM
                    );
            END;

        ELSIF nExisteTcad = 0 THEN

            vAtualizaProc     := 'N';
            vMsgProcessamento := 'Categoria de arquivamento não localizada. TCAD_ID: ' || r1.tcad_id;

            BEGIN
                UPDATE fep_aux_fluxos_rec_arq_den
                   SET dm_validado       = 'E',
                       dm_alt_proc       = vAtualizaProc,
                       data_atualizacao  = SYSDATE,
                       msg_processamento = SUBSTR(vMsgProcessamento, 1, 4000)
                 WHERE flxa_id = r1.flxa_id;

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    RAISE_APPLICATION_ERROR(
                        -20001,
                        'Erro4: At Aux Arquivamento - categoria inexistente FLXA_ID: ' ||
                        r1.flxa_id || ' >> ' || SQLCODE || ' - ' || SQLERRM
                    );
            END;

        ELSIF vSituacaoProc = 'A' THEN

            -----------------------------------------------------
            -- Processo já arquivado: ignora
            -----------------------------------------------------
            vAtualizaProc     := 'N';
            vMsgProcessamento := 'Processo já estava arquivado na FEP_PROCESSOS.';

            BEGIN
                UPDATE fep_aux_fluxos_rec_arq_den
                   SET dm_validado       = 'S',
                       dm_alt_proc       = vAtualizaProc,
                       data_atualizacao  = SYSDATE,
                       msg_processamento = SUBSTR(vMsgProcessamento, 1, 4000)
                 WHERE flxa_id = r1.flxa_id;

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    RAISE_APPLICATION_ERROR(
                        -20001,
                        'Erro5: At Aux Arquivamento - processo já arquivado FLXA_ID: ' ||
                        r1.flxa_id || ' >> ' || SQLCODE || ' - ' || SQLERRM
                    );
            END;

        ELSE

            -----------------------------------------------------
            -- Atualiza o arquivamento em processos - banco FEPAM
            -----------------------------------------------------
            vAtualizaProc := 'S';

            BEGIN
                UPDATE fep_processos
                   SET situacao              = 'A',
                       data_arquivamento     = r1.data_arquivamento,
                       tcad_id               = r1.tcad_id,
                       motivo_arq_denuncia   = r1.motivo_arq_denuncia,
                       data_atualizacao      = SYSDATE,
                       operador_atualizacao  = 'FLUXOS-FLXA_ID: ' || r1.flxa_id
                 WHERE proc_id = r1.proc_id;

                COMMIT;

            EXCEPTION
                WHEN OTHERS THEN
                    RAISE_APPLICATION_ERROR(
                        -20001,
                        'Erro6: At Proc-arquivamento FLXA_ID: ' ||
                        r1.flxa_id || ' >> ' || SQLCODE || ' - ' || SQLERRM
                    );
            END;

            -----------------------------------------------------
            -- Atualiza o registro auxiliar como processado
            -----------------------------------------------------
            BEGIN
                UPDATE fep_aux_fluxos_rec_arq_den
                   SET dm_validado       = 'S',
                       dm_alt_proc       = vAtualizaProc,
                       data_atualizacao  = SYSDATE,
                       msg_processamento = 'Processo arquivado com sucesso na FEP_PROCESSOS.'
                 WHERE flxa_id = r1.flxa_id;

                COMMIT;

            EXCEPTION
                WHEN OTHERS THEN
                    RAISE_APPLICATION_ERROR(
                        -20001,
                        'Erro7: At Aux Arquivamento FLXA_ID: ' ||
                        r1.flxa_id || ' >> ' || SQLCODE || ' - ' || SQLERRM
                    );
            END;

        END IF;

    END LOOP;

END;

END PCK_PROC_FLUXOS;
/
