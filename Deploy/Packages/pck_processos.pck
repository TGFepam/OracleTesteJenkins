CREATE OR REPLACE PACKAGE FEPAM.PCK_PROCESSOS IS

  FUNCTION FC_IS_TIDO_INDEF(P_TIDO_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_DIAS_LIC_PENDENTE(P_PROC_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_PROC_DIAS_ULT_PARADA(P_PROC_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_PROC_TEMPO_ATENDER(P_PROC_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_TEMPO_LO_REN(P_DOCU_ID IN NUMBER, P_TEMPO IN NUMBER)
    RETURN NUMBER;
  PROCEDURE PR_PROC_QT_DOCS;

  FUNCTION FC_PRCR_RAMO(P_PRCR_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_PRCR_RAMO_TAB
        (P_PRCR_ID IN NUMBER,
         p_proc_id IN NUMBER,
         p_sold_id IN NUMBER,
         p_sose_id IN NUMBER,
         p_ader_id IN NUMBER
         )  RETURN NUMBER;

  PROCEDURE PR_PROC_AT_TEMPO_LIC;
  FUNCTION FC_PRIMEIRA_LIC(P_DOCU_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_TEMPO_LIC(P_DOCU_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_ORIGEM_VIGOR(P_USUARIO IN VARCHAR2) RETURN VARCHAR2;
  FUNCTION FC_ORIGEM_ASSINATURA(P_DOCU_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_ORIGEM_PESSOA(P_USER IN VARCHAR2) RETURN NUMBER;
  FUNCTION FC_VALIDA_360_COBR(P_DOCU_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_ATAN_QT_DOCLIC(P_ATAN_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_LIB_DECL_ALT_RESP(P_DOCUMENTO IN VARCHAR2,
                                P_ORIGEM    IN NUMBER) RETURN NUMBER;
  PROCEDURE PR_ATAN_ULTIMAS_LICENCAS;
  PROCEDURE PR_ATAN_DOCU_ULLI(P_DOCU_ID  IN NUMBER,
                              P_TIDO_ID  IN NUMBER,
                              P_SITUACAO IN VARCHAR2);
  PROCEDURE PR_PROC_GERA_ULLI(P_ATAN_ID IN NUMBER);
  FUNCTION FC_MUNI_DOCU(P_DOCU_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_ARR_PROC_VLRPAGO(P_PROC_ID IN NUMBER) RETURN NUMBER;
  PROCEDURE PR_ATUALIZA_PK_MODELAGEM;
  PROCEDURE PR_ATUALIZA_PROC_DOCU;
  PROCEDURE PR_ATUALIZA_RESP_PROC;
  PROCEDURE PR_GERA_PROR2010(P_SETOR IN NUMBER, P_DATA IN DATE);
  PROCEDURE PR_EXCLUI_INFORMACOES_AUT;
  FUNCTION FC_CHEFE_DOCU_AUTOM(P_SETO_ID IN NUMBER, P_USER IN VARCHAR2)
    RETURN VARCHAR2;
  FUNCTION FC_DOCU_PEND_ASSINAT(P_PROC_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_PATH_DOC_INTERNET(P_DOCU_ID         IN NUMBER,
                                P_DATA_EMISSAO    IN DATE,
                                P_DM_ASS_DIGITAL  IN VARCHAR2,
                                P_DATA_ASS_FISICA IN DATE,
                                P_TIDO_ID         IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_EXISTE_PDF(P_DOCU_ID   IN NUMBER,
                         P_SITUACAO  IN VARCHAR2,
                         P_GER_AUTOM IN VARCHAR2) RETURN VARCHAR2;
  FUNCTION FC_LISTAR_DOC_INTERNET(P_PROC_ID      IN NUMBER,
                                  P_DOCU_ID      IN NUMBER,
                                  P_SITUACAO     IN VARCHAR2,
                                  P_TIDO_ID      IN NUMBER,
                                  P_DATA_EMISSAO IN DATE) RETURN VARCHAR2;
  FUNCTION FC_MOSTRAR_PROC(P_PROC_ID IN NUMBER,
                           P_ATAN_ID IN NUMBER,
                           P_CLASSE  IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_PORTE_LU(P_RAAT_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_GRUPO_LIC_DIF(P_TIDO_ID         IN NUMBER,
                            P_RAAT_ID         IN NUMBER,
                            P_MEDIDA_PORTE    IN NUMBER,
                            P_DATA_REFERENCIA IN DATE,
                            P_PROC_ID_RENOV   IN NUMBER,
                            P_CPFCNPJESTR     IN VARCHAR2,
                            P_TIPODOCPESS     IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_VER_PORTE_ALT(P_RAAT_ID      IN NUMBER,
                            P_MEDIDA_PORTE IN NUMBER,
                            P_DATA         IN DATE) RETURN VARCHAR2;
  FUNCTION FC_IMPLOC_DOCU(P_DOCU_ID IN NUMBER) RETURN VARCHAR2;
  PROCEDURE PR_PROC_SIT_DOCEMITIDO;
  FUNCTION FC_MAX_PROR0190(P_ATAN_ID     IN NUMBER,
                           P_SUCD_ID     IN NUMBER,
                           P_DATA_INICIO IN DATE,
                           P_DATA_FIM    IN DATE,
                           P_SITUACAO    IN VARCHAR2) RETURN NUMBER;
  FUNCTION FC_PROC_OS232007(P_PROC_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_PROC_ULT_PARADA(P_PROC_ID IN NUMBER) RETURN NUMBER;
	
	
  FUNCTION FC_PAGO_PROC(P_PROC_ID IN NUMBER) RETURN NUMBER;

  FUNCTION FC_ULT_PRORROGACAO(P_DOCU_ID           IN NUMBER,
                              P_TIDO_ID           IN NUMBER,
                              P_DATA_FIM_VIGENCIA IN DATE,
                              P_ATAN_ID           IN NUMBER,
                              P_PROC_ID           IN NUMBER,
                              P_DATA_ENTRADA      IN DATE) RETURN NUMBER;
  PROCEDURE PR_PROC_ALT_SITUACAO;
  FUNCTION FC_ANOS_VALID_DOCU(P_DOCU_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_VALOR_PAGO_AI(P_PROC_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_DISPLAY_PROC_INTERNET(P_PROC_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_EXISTE_PROC_POSTERIOR(P_PROC_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_PROC_IMPACTO_LOCAL(P_PROC_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_SOLIC_PENDENTE_MP(P_MPSO_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_PROCESSO_MP(P_NUMERO  IN NUMBER,
                          P_ORIG_ID IN NUMBER,
                          P_ANO     IN NUMBER,
                          P_DV      IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_ALTERACAO_FROTA(P_PROC_ID      IN NUMBER,
                              P_MEDIDA_PORTE IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_LOCAL_LABORATORIO(P_MUNI_ID IN NUMBER, P_TIDO_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_DIAS_MP_SOLIC(P_DATA_OFICIO IN DATE,
                            P_DATA_PRAZO  IN DATE,
                            P_DM_ATENDIDO IN VARCHAR2) RETURN NUMBER;
  FUNCTION FC_EXISTE_INDEF_LIC(P_ATAN_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_PROC_DOCUMENTO(P_DOCU_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_PARECER_COBRANCA(P_TIDO_PARECER_ID IN NUMBER,
                               P_EIARIMA         IN VARCHAR2) RETURN NUMBER;
  FUNCTION FC_ULT_PROC_TIDO(P_ATAN_ID      IN NUMBER,
                            P_PROC_ID      IN NUMBER,
                            P_DATA_ENTRADA IN DATE,
                            P_TIDO_ID      IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_DATA_VIGOR(P_DOCU_ID IN NUMBER) RETURN DATE;
  FUNCTION FC_AI_INCLUIR_RESP(P_DOCU_ID IN NUMBER, P_RESP_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_INFRACAO_AI(P_DOCU_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_AI_INCLUIR(P_TIPO            IN NUMBER,
                         P_VALOR_PARAMETRO IN VARCHAR2,
                         P_DOCU_ID         IN NUMBER) RETURN NUMBER;
  FUNCTION FC_ULT_DECISAO_AI(P_PROC_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_TECNICO_VIGOR(P_DOCU_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_QUEM_ASSINA(P_DOCU_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_NRO_PROCESSO(P_PROC_ID NUMBER) RETURN NUMBER;
  FUNCTION FC_PROC_AGROTOX_VALIDO(P_PROC_ID IN number, P_ATAN_ID IN number)
    RETURN VARCHAR2;
  FUNCTION FC_VER_RAMO_AUT(P_PROC_ID IN number, P_TIDO_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_VALIDA_DOCS_TRAB(P_PROC_ID IN number,
                               P_TIDO_ID IN number,
                               P_DOCU_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_DICOPI_FUNC_PROD(P_RAAT_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_LIB_DISPLAY_PDF(P_DOCU_ID IN number, P_USUARIO IN varchar2) RETURN VARCHAR2;
  PROCEDURE PR_GERA_TAB_PROR2090;
  FUNCTION FC_AGRO_PRINCIPIO_ATIVO(P_PROC_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_DIAS_TRAMIT_PROC(P_PROC_ID IN NUMBER) RETURN INTEGER;
  FUNCTION FC_PRCR_PROMOVER(P_PRCR_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PRCR_SETOR(P_PRCR_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_AUX_INCLUI_COND(P_PRCR_ID     IN NUMBER,
                              P_RAAT_ID     IN NUMBER,
                              P_TIDO_ID     IN NUMBER,
                              P_CVC_TROCA   IN VARCHAR2,
                              P_CVC_REMOCAO IN VARCHAR2,
                              P_CLCR_ID     IN NUMBER,
                              P_CORS_ID     IN NUMBER) RETURN VARCHAR2;
  FUNCTION FNC_BUSCA_NRO_DOCU(P_ANO_DOCU IN number,
                              P_TIDO_ID  IN number,
                              P_SETO_ID  IN number) RETURN NUMBER;
  FUNCTION FC_SIT_CAD_AGROTOXICO(P_PROC_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_DOCU_BLOQUEIA_MANUAL(P_PROC_ID   IN number,
                                   P_TIDO_ID   IN number,
                                   P_DM_GERAUT IN varchar2) RETURN VARCHAR2;
  FUNCTION FC_RAMO_LIC_SUSP_DT(P_PROC_ID IN number,
                               P_RAAT_ID IN number,
                               P_TIDO_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_BLOQUEIA_PROCESSO(P_ATAN_ID NUMBER, P_TIDO_ID NUMBER)
    RETURN VARCHAR2;
  FUNCTION FC_TIDO_OUTROS_GERAUT(P_RAAT_ID      IN number,
                                 P_TIDO_PARECER IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_VALIDA_FUNC_DICOP(P_USUARIO VARCHAR2,
                                P_RAAT_ID NUMBER,
                                P_TIDO_ID NUMBER) RETURN VARCHAR2;
  FUNCTION FC_PRCR_120DIAS(P_PRCR_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PRCR_PERIODO_VIG(P_PRCR_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_PRCR_DISPLAY_DTVIG(P_DATA_FIM_VIGENCIA IN DATE) RETURN VARCHAR2;
  FUNCTION FC_PRCR_TRANSPORTAR(P_PRCR_ID IN number) RETURN VARCHAR2;
  PROCEDURE PR_PRCR_INSERT_CORS_ID(P_CORS_ID IN NUMBER,
                                   P_PRCR_ID IN NUMBER);
  PROCEDURE PR_PRCR_PONTUACAO(P_PRCR_ID IN NUMBER);
  PROCEDURE PR_PRCR_VIG_DOCUMENTO(P_PRCR_ID IN NUMBER);
  PROCEDURE PR_PRCR_COND_RESTR(P_PRCR_ID IN number);
  PROCEDURE PR_PRCR_INSERT_AMLC(P_PRCR_ID    IN NUMBER,
                                P_LINHA      IN NUMBER,
                                P_MOTIVO     IN VARCHAR2,
                                P_DATA_INCL  IN DATE,
                                P_OPER_INCL  IN VARCHAR2,
                                P_TIPO_REG   IN NUMBER,
                                P_DM_PARECER IN VARCHAR2,
                                P_DM_LICENCA IN VARCHAR2);
  PROCEDURE PR_PRCR_DECISAO_ADM(P_PRCR_ID IN number);
  FUNCTION FC_AI_DIAS_NAO_JULGA(P_DOCU_ID IN number, P_DATA_FINAL IN date)
    RETURN NUMBER;
  FUNCTION FC_PROC_IMA_ANO(P_ANO         IN NUMBER,
                           P_ORDENACAO   IN NUMBER,
                           P_SUCD_ID_LIC IN NUMBER,
                           P_SUCD_ID     NUMBER) RETURN NUMBER;
  FUNCTION FC_PROC_TEMPO_MEDIO(P_ANO            IN number,
                               P_TIDO_DESCRICAO IN varchar2,
                               P_TIPO           IN number,
                               P_ORDENACAO      IN number,
                               P_USUARIO        IN varchar2) RETURN NUMBER;
  FUNCTION FC_PROC_RENOV_TIDO(P_PROC_ID IN NUMBER) RETURN VARCHAR2;
  FUNCTION FC_PROC_SUPERADO(P_PROC_ID IN number, P_DATA_INICIO IN date)
    RETURN DATE;
  FUNCTION FC_TEMPO_MEDIO_ATEND(P_ANO_ENTRADA IN NUMBER,
                                P_ORDENACAO   IN NUMBER) RETURN NUMBER;
  FUNCTION FC_TEMPO_MEDIO_PEND(P_ANO_ENTRADA  IN NUMBER,
                               P_ORDENACAO    IN NUMBER,
                               P_DM_RENOVACAO IN VARCHAR2) RETURN NUMBER;
  PROCEDURE PR_GERA_PROC_PEND(P_ANO_REF   IN number,
                              P_NRO_ANOS  IN number,
                              P_RELATORIO IN VARCHAR2,
                              P_USUARIO   IN VARCHAR2);
  PROCEDURE PR_GERA_PROC_PEND_AI(P_ANO_REF   NUMBER,
                                 P_NRO_ANOS  NUMBER,
                                 P_RELATORIO IN VARCHAR2,
                                 P_USUARIO   IN VARCHAR2);
  FUNCTION FC_PROC_PEND_PERCENT(P_ANO_INICIO  IN NUMBER,
                                P_ANO_FINAL   IN NUMBER,
                                P_ORDEM       IN NUMBER,
                                P_SUCD_ID     IN NUMBER,
                                P_SUCD_ID_LIC IN NUMBER,
                                P_USUARIO     IN VARCHAR2,
                                P_RELATORIO   IN VARCHAR2,
                                P_TIPO        IN VARCHAR2) RETURN NUMBER;
  PROCEDURE PR_PRCR_INDEF_SOSE(P_PRCR_ID IN number);
  FUNCTION FC_COMB_TQCB_TRR(P_ATAN_ID IN number, P_TQCB_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PATH_PNLA_DOC(P_DOCU_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PRCR_QT_CLASSE90(P_PRCR_ID IN number) RETURN NUMBER;
  PROCEDURE PR_PROC_SIT_DOCSCOMPL(P_DPCO_ID IN number, P_DOCM_ID IN number);
  FUNCTION FC_AGROT_ATAN(P_AGRO_ID IN number) RETURN NUMBER;
  FUNCTION FC_QUEM_LICENCIA(P_PROC_ID IN number) RETURN NUMBER;
  FUNCTION FC_PROC_LIBERA_WORD(P_SETO_ID_DOC IN number,
                               P_TIDO_ID     IN number,
                               P_USUARIO     IN varchar2) RETURN VARCHAR2;
  FUNCTION FC_PROC_TOTAL_LIC(P_ANO            IN number,
                             P_MES            IN number,
                             P_CLDO           IN NUMBER,
                             P_TIPO           IN NUMBER,
                             P_INCLUIR_TRANSP IN VARCHAR2,
                             P_SETO_ID        IN NUMBER) RETURN NUMBER;
  PROCEDURE PR_PROC_TOTAL_LIC(P_TIPO_PESQUISA  IN NUMBER,
                              P_ANO_INICIAL    IN number,
                              P_ANO_FINAL      IN number,
                              P_USUARIO        IN varchar2,
                              P_INCLUIR_TRANSP IN VARCHAR2,
                              P_SETO_ID        IN NUMBER,
                              P_RAAT_ID        IN NUMBER,
                              P_CLDO_ID        IN NUMBER);
  PROCEDURE PR_PRCR_ESTR_ENERGIA(P_PRCR_ID IN number, P_ATAN_ID IN number);
  PROCEDURE PR_PROC_AT_RAAT_PROC;
  FUNCTION FC_PROC_TIPO_LO(P_PROC_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_PROC_POSSUI_OF1300(P_PROC_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PROC_RENOVACAO(P_TIPO            IN number,
                             P_ATAN_ID         IN number,
                             P_TIDO_ID         IN number,
                             P_DATA_PROC_PRORR IN date) RETURN NUMBER;
  FUNCTION FC_PRCR_NOME_ATIV(P_PRCR_ID IN number,
                             P_PROC_ID IN number,
                             P_ATAN_ID IN number) RETURN VARCHAR2;
  PROCEDURE PR_PROC_GERA_DA880(P_PROC_ID_ARQUIVADO  IN number,
                               P_DOCU_ID_PRORROGADO IN number,
                               P_USUARIO            IN varchar2,
                               P_PRCR_ID_GERADO     IN OUT number);
  FUNCTION FC_PROC_DOCU_PRORR(P_ATAN_ID IN number,
                              P_PROC_ID IN number,
                              P_TIDO_ID IN number) RETURN NUMBER;
  PROCEDURE PR_PRCR_GERA_AGROT_2800(P_PRCR_ID IN number);
  PROCEDURE PR_PRCR_INS_DOFU_2800(P_DOCU_ID IN number);
  FUNCTION FC_LIC_RENOVACAO(P_ATAN_ID IN number,
                            P_TIDO_ID IN number,
                            P_TIPO    IN number,
                            P_PROC_ID IN NUMBER) RETURN NUMBER;
  FUNCTION FC_VENC_ULT_LO_AUT(P_DOCU_ID IN number) RETURN DATE;
  FUNCTION FC_TECNICO_PARECER(P_PROC_ID IN NUMBER) RETURN VARCHAR2;
  PROCEDURE PR_PRCR_DELETAR(P_PRCR_ID IN number);
  PROCEDURE PR_PRCR_INS_CDRA_DRAGA(P_PRCR_ID   IN NUMBER,
                                   P_DESCRICAO IN VARCHAR2,
                                   P_VALOR     IN VARCHAR2,
                                   P_CRITERIO  IN VARCHAR2,
                                   P_USUARIO   IN varchar2);
  PROCEDURE PR_PRCR_CARACT_DRAGA(P_ATAN_ID IN NUMBER,
                                 P_PRCR_ID IN NUMBER,
                                 P_USUARIO IN varchar2);
  FUNCTION FC_ULTAND_PROC(P_PROC_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_ULTAND_MAN_PROC(P_PROC_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PRCR_TEL_EMERG_TRANSP(P_ATAN_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PROC_COMPETENCIA(P_PROC_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PRCR_PARECER(P_DOCU_ID_PARECER IN number) RETURN NUMBER;
  FUNCTION FC_TEMPO_TRAMITACAO(P_PROC_ID      IN NUMBER,
                               P_TIDO_ID      IN NUMBER,
                               P_DATA_EMISSAO IN DATE) RETURN NUMBER;
  PROCEDURE PR_PRCR_SCAC_PORT113(P_PRCR_ID IN number);


  FUNCTION FC_PROC_SMAM_POA(P_PROC_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PROC_MUNI_REGIONAL(P_PROC_ID IN number,
                                 P_RESP_ID IN number,
                                 P_ORIGEM  IN number) RETURN VARCHAR2;
  FUNCTION FC_PROC_AI_SITUACAO(P_PROC_ID IN number) RETURN VARCHAR2;
  PROCEDURE PR_NOVALIC_OLUC_PORT23(P_DOCU_ID IN number,
                                   P_PROC_ID IN number,
                                   P_ATAN_ID IN number,
                                   P_RAAT_ID IN number,
                                   P_USUARIO IN varchar2);
  FUNCTION FC_PROC_ATAN(P_PROC_ID IN number) RETURN NUMBER;
  FUNCTION FC_ATCE_LISTAR(P_ATCE_ID IN number, P_PRCR_ID IN number)
    RETURN VARCHAR2;
  PROCEDURE PR_PRCA_AT_PROC;
  FUNCTION FC_DOCU_SOL_PATH(P_PROC_ID IN NUMBER,
                            P_DOCU_ID IN NUMBER,
                            P_DM_P7S  IN VARCHAR2) RETURN VARCHAR2;
--  FUNCTION FC_DOCU_SOL_EXT_ARQ(P_PROC_ID IN NUMBER,
--                               P_DOCU_ID IN NUMBER,
--                               P_DM_P7S  IN VARCHAR2) RETURN VARCHAR2;
  PROCEDURE PR_PROC_PROF2420_AUX(P_USUARIO IN varchar2);
  FUNCTION FC_ATAN_SIT_LICENCA(P_ATAN_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_OF3000_LINHAS(P_ORIGEM IN number, P_DOCU_OFICIO IN NUMBER)
    RETURN VARCHAR2;
  PROCEDURE PR_PROC_ARRUMA_INDEF;
  FUNCTION FC_RAMO_EMITE_LU(P_RAAT_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_PROC_TIDO_VEGETACAO(P_TIDO_ID IN number) RETURN VARCHAR2;
  PROCEDURE PR_INCLUI_HIST_OF4000(P_DOCU_ID_OFICIO IN number);
  PROCEDURE PR_GERA_PRCR_DUC482(P_PROC_ID      IN number,
                                P_USER         IN varchar2,
                                P_PROC_NUMERO  IN NUMBER,
                                P_PROC_ANO     IN NUMBER,
                                P_PROC_DV      IN NUMBER,
                                P_PROC_SETO_ID IN NUMBER);
  /* Valida o processo pra liberação */
  FUNCTION FC_PRJU_LIB(P_PROCESSO IN NUMBER, P_OPERADOR IN VARCHAR2)
    RETURN VARCHAR2;
  /* Insere os processos liberados judicialmente */
  PROCEDURE PR_PRJU_INS(P_PROCESSO IN NUMBER, P_OPERADOR IN VARCHAR2);
  /* Liberar e bloqueia processos judiciais */
  PROCEDURE SP_PRJU_UPD_DATA(P_PRJU_ID  IN NUMBER,
                             P_PROC_ID  IN NUMBER,
                             P_OPERADOR IN VARCHAR2);

  FUNCTION FC_PROF2420_EXIBIR_REG(p_lov_setor        in varchar2,
                                  p_lov_ramo         in varchar2,
                                  p_lov_atividade    in varchar2,
                                  p_seto_origem_ramo in varchar2,
                                  p_seto_id_proc     in number,
                                  p_usuario          in varchar2,
                                  p_raat_id_proc     in number,
                                  p_aba              in varchar2)
    return varchar2;

  FUNCTION FC_PROF2420_EXIBIR(P_LOV_GRUPO_SETOR IN varchar2,
                              P_SETO_ID         IN number,
                              P_ORIGEM_RAMO     IN varchar2,
                              P_ABA             IN number) RETURN VARCHAR2;

  FUNCTION FC_NOME_EMISSOR(P_DOCU_ID IN number) RETURN VARCHAR2;
  FUNCTION FC_ULT_PROC_SILV(P_ATAN_ID IN number) RETURN NUMBER;
  PROCEDURE PR_EMAIL_PROCS_ARQ(NPROC_ID  IN NUMBER,
                               SPROCESSO IN VARCHAR2,
                               NSETO_ID  IN NUMBER);

  PROCEDURE pr_at_hist_anomes_result(p_anohist  in number,
                                     p_meshist  in number,
                                     p_origem   in number,
                                     p_encerrar in varchar2,
                                     p_usuario  in varchar2);

  FUNCTION FC_TROCA_EMPREENDIMENTO_SOLIC(n_solic Number, n_codempto Number)
    RETURN varchar2;

  procedure PR_TROCA_EMPREENDIMENTO_SOLIC(n_solic    Number,
                                          n_proc_id  Number,
                                          n_codempto Number);

  procedure pr_prcr_especies_vegetais(p_atan_id in number,
                                      p_prcr_id in number);

  FUNCTION fc_sigla_setor(p_seto_docu_id   in number,
                          p_seto_parametro in number) return varchar2;

  PROCEDURE PR_PRCR_ATAN_COORDENADAS(P_PRCR_ID IN number,
                                     P_CORS_ID IN number,
                                     P_ATAN_ID IN number);

  PROCEDURE PR_CP_RESTR_TIPO_DOCS_RAMO_ORI(p_ramo_in     in number,
                                           p_ramo_out    in number,
                                           p_tido_id_in  in number,
                                           p_tido_id_out in number,
                                           p_usuario     in varchar2);

  FUNCTION FC_PROC_SIT_LICENCA(P_PROC_ID IN number) RETURN VARCHAR2;

  function fc_proc_ult_lic(p_proc_id IN NUMBER) return number;

  FUNCTION fc_ultlic_atan(p_atan_id in number, p_origem in number) return varchar2;

  FUNCTION fc_atan_LO_port46(p_atan_id  in number, p_seq_lic in number) return number;

  FUNCTION fc_docu_data_vistoria(p_docu_id in number, p_tido_id in number) return date;

  FUNCTION fc_agrot_ramo_tido(p_raat_id in number) return number;

  PROCEDURE pr_postos_port46_depara(p_prcr_id_ant  in number,
                                    p_prcr_id_new  in number,
                                    p_tido_id_proc in number,
                                    p_atan_id      in number);

END PCK_PROCESSOS;
/
CREATE OR REPLACE PACKAGE BODY FEPAM.PCK_PROCESSOS IS
--------------------------------------------------------------------------------------------
--   Alterado por Malu - 15/05/2025 06:50  - Excluidas as funções abaixo e 
--                                           incluidas na pck_proc_prof0825
--                                               fc_prcr_somos_pror1045
--                                               fc_prcr_III_mesma_etapa
--                                               fc_prcr_III_prox_etapa
--                                               fc_prcr_IV_prox_etapa
--                                               FC_PRCR_TITULO_III
--                                               FC_PRCR_TITULO_II
--                                               FC_PRCR_TIT_APRES
--
--  Alterado por Malu - 17/09/2025 23:05   - Alterada procedure pr_proc_sit_docemitido
--                                           desconsiderando o tipo doc 2160
--
--  Alterado por Malu - 18/09/2025 22:45   - Excluidas as procedures e funções abaixo
--                                           incluidas na pck_gerencial
--                                                pr_proc_estoque_gerencial
--                                                pr_proc_hist_anomes
--                                                pr_at_hist_anomes_result
--                                                fc_proc_prim_doclic
--                                                fc_proc_pend_dataref
--                                          - alterado procedure pr_proc_alt_situacao
--                                            ignorando tipodoc 2160
-- Alterado por Malu - 29/12/2025 12:30 - alterada procedure pr_proc_alt_situacao
--                                        não alterando os processos já arquivados
-----------------------------------------------------------------------------------------------

  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 10/09/2024
  | Purpose: Retirados os warnings da compilação: comentados variáveis e cursores não utilizadas.
  +----------------------------------------------------------------------------------------------------*/

 nDiasProrrogacao number :=119;
 --nSomaDiasAntes number := 0;

FUNCTION FC_IS_TIDO_INDEF (P_TIDO_ID IN NUMBER) RETURN VARCHAR2 IS
  nCldo_id    number(3)    := null;
  vSimNao     varchar2(1)  := 'N';

  cursor c1 is
   select sucd.cldo_id
     from fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd
    where tido.tido_id = p_tido_id
      and tido.sucd_id = sucd.sucd_id;

  cursor c2 is
   select sucd.cldo_id
     from fep_tipos_docs_emissoes    tidm,
          fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd
    where tidm.tido_id_parecer   = p_tido_id
      and tidm.tido_id_documento = tido.tido_id
      and tido.sucd_id           = sucd.sucd_id;
BEGIN

  open  c1;
  fetch c1 into nCldo_id;
  close c1;

  --  5 - Indeferimento
  -- 12 - Parecer

  if nvl(nCldo_id,0) in (5,12) then
    if nCldo_id = 5 THEN
       vSimNao := 'S';
    else
       open  c2;
       fetch c2 into nCldo_id; -- Verifica se documento a ser emitido é indeferimento
       close c2;
       if nvl(nCldo_id,0) = 5 THEN
          vSimNao := 'S';
       end if;
    end if;
  end if;

  return(vSimNao);

END;

FUNCTION FC_DIAS_LIC_PENDENTE (P_PROC_ID IN NUMBER) RETURN NUMBER IS

  nAtan_id     number(10);
  nTido_id     number(5);
  nProc_id     number(10);
  dDataVenc    date;
  nDias        number(6) := 0;

  cursor c1 is
  select resp.atan_id,
         proc.tido_id
    from fep_processos         proc,
         fep_responsabilidades resp
   where proc.proc_id = p_proc_id
     and proc.resp_id = resp.resp_id
     and proc.tido_id = 120;


  cursor c2 is
  select proc.proc_id,
         docu.data_fim_vigencia
    from fep_documentos        docu,
         fep_processos         proc,
         fep_responsabilidades resp
   where resp.atan_id  = nAtan_id
     and resp.resp_id  = proc.resp_id
     and proc.proc_id  = docu.proc_id
     and docu.tido_id  = nTido_id
     and docu.situacao = 'E';
begin
   open  c1;
   fetch c1 into nAtan_id, nTido_id;
   close c1;

   if nAtan_id is not null then
      open  c2;
      fetch c2 into nProc_id, dDataVenc;
      close c2;
      if  dDataVenc is not null and
          nProc_id  != p_proc_id then
          nDias := dDataVenc - trunc(sysdate);
      end if;
   end if;

   if nDias = 0 then
      nDias := null;
   end if;

   return(nDias);
end;

FUNCTION FC_PROC_DIAS_ULT_PARADA (P_PROC_ID IN NUMBER) RETURN NUMBER IS

  nDias         number(5)  := null;
  dDataParada   date;
  dDataRetorno  date;

  cursor c1 is
   select trunc(hipp.data_parada)  data_parada,
          trunc(hipp.data_retorno) data_retorno
    from  fep_hist_paradas_processos hipp
    where hipp.proc_id = p_proc_id
    order by trunc(hipp.data_parada) desc;
begin

   -- só verifica a última parada
   open  c1;
   fetch c1 into dDataParada, dDataRetorno;
   close c1;

   if dDataParada  is not null and
      dDataRetorno is     null then
      nDias  := trunc(sysdate) - dDataParada;
   end if;

   return(nDias); -- Número de dias que o processo está parado

end;

FUNCTION FC_PROC_TEMPO_ATENDER (P_PROC_ID IN NUMBER) RETURN NUMBER IS

  nHipp_id            number(10);
  dDataRetorno        date;
  nDocu_id_oficio     number(10);
  nDiasPrazo          number(5);
  nTido_id            number(5);
  vSitDocu            varchar2(1);
  nRaat_id_proc       number(7,2);
  nCont               number(5);

  cursor c1 is
   select hipp.hipp_id,
          hipp.data_retorno,
          hipp.docu_id_oficio,
          docu.dias_of_parada,
          docu.situacao
     from fep_hist_paradas_processos hipp,
          fep_documentos docu
    where hipp.proc_id = p_proc_id
      and hipp.docu_id_oficio = docu.docu_id(+)
    order by hipp.data_parada desc, hipp.hipp_id desc;

  cursor c2 is
   select docu.tido_id,
          docu.dias_of_parada
     from fep_documentos docu
    where docu.proc_id = p_proc_id
      and docu.situacao = 'E'
      and docu.tido_id in (1300,3000,3500)
    order by docu.data_emissao desc, docu.docu_id desc;

  cursor c3 is
   select proc.raat_id_proc
     from fep_processos proc
    where proc.proc_id = p_proc_id;

  cursor c4 is
     select count(*)
       from fep_controles_solics coso
      where coso.proc_id = p_proc_id
        and coso.docu_id is null;

BEGIN

  -------------------------------------------------------------------------
  -- função utilizada em pck_processos.pr_proc_hist_anomes
  --                       ( Malu 30/04/2019 )
  -------------------------------------------------------------------------

  open  c1;
  fetch c1 into nHipp_id, dDataRetorno, nDocu_id_oficio, nDiasPrazo, vSitDocu;
  close c1;

  if dDataRetorno is not null then
     nDiasPrazo := -999; -- não está mais parado
     return(nDiasPrazo);
  end if;

  if nDocu_id_oficio is not null then
     if vSitDocu != 'E' then
        nDiasPrazo := null; -- oficio não está em vigor
     else
        if nDiasPrazo is null then
           nDiasPrazo := 120;
        end if;
     end if;
     return(nDiasPrazo); -- tem o oficio identificado na parada
  end if;

  if nHipp_id is not null then
     open  c2;
     fetch c2 into nTido_id, nDiasPrazo; -- oficios em vigor
     close c2;
     if nTido_id is not null then
        if nDiasPrazo is null then
           nDiasPrazo := 120;
        end if;
        return(nDiasPrazo);
     else
        open  c3;
        fetch c3 into nRaat_id_proc;
        close c3;
        -- Especialistas
        --   Irrigação:    111.30, 111.41, 111.42, 111.43
        --   Silvicultura: 126.10, 126.20
        --   Transportes:  4710.10, 4710.11, 4710.12, 4710.20, 4710.30
        if nRaat_id_proc in ( 111.30, 111.41, 111.42, 111.43,
                              126.10, 126.20,
                              4710.10, 4710.11, 4710.12, 4710.20, 4710.30 ) then
           nDiasPrazo := 120;
        else
           open  c4;
           fetch c4 into nCont; -- especialista industria e transportes
           close c4;
           if nCont > 0 then
              nDiasPrazo := 120;
           else
              nDiasPrazo := null; -- parado e não encontrou oficio em vigor
           end if;
        end if;
        return(nDiasPrazo);
     end if;
  end if;

  return(nDiasPrazo);

END;

FUNCTION FC_TEMPO_LO_REN (P_DOCU_ID IN NUMBER,
                          P_TEMPO   IN NUMBER) RETURN NUMBER IS

  dDataEntrada             date;
  dDataAtual               date;
  dDataParada              date;
  dDataRetorno             date;
  nTempoTramitacao         number(5) :=  null;
  nDiasParados             number(5) := 0;

  cursor c1 is
   select resp.atan_id                                          atan_id,
                    proc.proc_id                                         proc_id,
                     trunc(docu.data_emissao)              dt_emissao_atual,
                     trunc(proc.data_entrada)                dt_entrada_atual,
                     trunc(docu.data_inicio_vigencia)  dt_ini_vig_atual,
                     trunc(docu.data_fim_vigencia)      dt_fim_vig_atul
           from fep_documentos           docu,
                     fep_processos               proc,
                     fep_responsabilidades resp
        where docu.proc_id           = proc.proc_id
             and proc.resp_id            = resp.resp_id
             and proc.tido_id             = 120
             and docu.tido_id            = 120
             and docu.dm_prim_lic = 'S'
             and docu.docu_id          = p_docu_id;
r1   c1%rowtype;

cursor c2 is
       select resp.atan_id                                          atan_id,
                    proc.proc_id                                         proc_id,
                     trunc(docu.data_emissao)              dt_emissao_ant,
                     trunc(proc.data_entrada)                dt_entrada_ant,
                     trunc(docu.data_inicio_vigencia)  dt_ini_vig_ant,
                     trunc(docu.data_fim_vigencia)      dt_fim_vig_ant
           from fep_documentos           docu,
                     fep_processos               proc,
                     fep_responsabilidades resp
        where docu.proc_id           = proc.proc_id
             and proc.resp_id            = resp.resp_id
             and proc.tido_id             = 120
             and docu.tido_id            = 120
             and docu.dm_prim_lic = 'S'
             and resp.atan_id            = r1.atan_id
             and trunc(proc.data_entrada) < r1.dt_entrada_atual
             and docu.situacao not in ('B','T','C')
 order by proc.data_entrada desc, proc.proc_id desc, docu.data_emissao desc, docu.docu_id desc;
r2   c2%rowtype;

cursor c3 is
       select hipp.data_parada,
                    nvl(hipp.data_retorno,dDataAtual) data_retorno
        from fep_hist_paradas_processos hipp
     where hipp.proc_id = r1.proc_id;
BEGIN

  SELECT SYSDATE INTO dDataAtual FROM dual;

  OPEN   c1;
  FETCH  c1 into  r1;
  if c1%found then

          -- verifica se é de renovação -- se não for não continua o cálculo

          open c2;
          fetch c2 into r2;
          if c2%found then

                   -- se técnico deu a licença dentro do vencimento da LO anterior ( com uma diferença de até 3 dias )
                   -- considera a data de entrada do processo atual  a data de emissao da LO nova e refaz os cálculos

                   if (r2.dt_fim_vig_ant + 3) > r1.dt_ini_vig_atual then
                                dDataEntrada := r1.dt_emissao_atual;

                               -- Dias Parados do Processo do Documento
                              OPEN  c3;
                              LOOP
                                         FETCH c3 INTO dDataParada, dDataRetorno;
                                         IF c3%notfound THEN
                                                 CLOSE c3;
                                                  EXIT;
                                         ELSE
                                                 -- data de emissão antes da parada
                                                  IF r1.dt_emissao_atual  <= dDataParada THEN
                                                                 NULL;
                                                 ELSE
                                                        -- data de emissão depois da parada
                                                        IF r1.dt_emissao_atual  >= dDataRetorno THEN
                                                                   nDiasParados := nDiasParados + ( (dDataRetorno + 1) - dDataParada );
                                                       ELSE
                                                                -- data de emissão durante parada do processo
                                                               IF  r1.dt_emissao_atual  BETWEEN (dDataParada  + 1) AND
                                                                                  (dDataRetorno - 1 ) THEN
                                                                       nDiasParados := nDiasParados + ( ( r1.dt_emissao_atual + 1) - dDataParada );
                                                               END IF;
                                                       END IF;
                                                  END IF;
                                           END IF;
                              END LOOP;

                              IF TRUNC(r1.dt_emissao_atual) = TRUNC(dDataEntrada) THEN
                                       nTempoTramitacao := 1;
                             ELSE
                                       nTempoTramitacao := ((r1.dt_emissao_atual + 1) - dDataEntrada) - nDiasParados;
                                       IF nTempoTramitacao < 0 then
                                                 nTempoTramitacao := 1;
                                      end if;
                             END IF;
                  end if;

                   -- se o cálculo não foi refeito usa o tempo já calculado
                   if nTempoTramitacao is null then
                        nTempoTramitacao := p_tempo;
                  end if;

          end if;
          close c2;

 end  if;
 close c1;

 RETURN(nTempoTramitacao);

END;
PROCEDURE PR_PROC_QT_DOCS
 IS
nProc_id       number(10);
   nContador      number(5);
   dDataEmissao   date;
   nTido_id_docu  number(5);
   nSeto_id_docu  number(6);
   nDocu_id       number(10);
--   nAtualiza      number(5) := 0;
   vLic           varchar2(1);
   nContLic       number(5);
   nContAI        number(5);
   nGerar         number(1);
   nGer           number(10)   := 0;

--   nNroDocsProc   number(5)  := null;

   cursor c1 is
     select proc.proc_id
       from fep_processos proc
      where proc.proc_id between 1 and 400000;

    cursor c2 is
       select count(*)
         from fep_documentos docu
        where docu.proc_id = nProc_id;

    cursor c4 is
       select count(*)
         from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where docu.proc_id = nProc_id
          and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id
          and docu.situacao not in ('B','C','T')
          and sucd.cldo_id between 1 and 6;

    cursor c5 is
       select count(*)
         from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where docu.proc_id = nProc_id
          and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id
          and sucd.cldo_id = 7;

    cursor c3 is
       select docu.docu_id,
              docu.data_emissao,
              docu.tido_id,
              docu.seto_id
         from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where docu.proc_id = nProc_id
          and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id
          and docu.situacao not in ('B','C','T')
          and sucd.cldo_id in (1,5)
        order by docu.data_emissao desc,
                 docu.docu_id      desc;

    cursor c31 is
       select docu.docu_id,
              docu.data_emissao,
              docu.tido_id,
              docu.seto_id
         from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where docu.proc_id = nProc_id
          and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id
          and docu.situacao not in ('B','C','T')
          and sucd.cldo_id in (2,3,4,6)
        order by docu.data_emissao desc,
                 docu.docu_id      desc;

    cursor c32 is
       select docu.docu_id,
              docu.data_emissao,
              docu.tido_id,
              docu.seto_id
         from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where docu.proc_id = nProc_id
          and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id
          and docu.situacao not in ('B','C','T')
          and sucd.cldo_id not in (1,2,3,4,5,6,12)
        order by docu.data_emissao desc,
                 docu.docu_id      desc;
begin

    open c1;
    loop
      fetch c1 into nProc_id;
      if c1%notfound then
         close c1;
         commit;
         exit;
      else


        begin
           update fep_processos
              set nro_docs        = null,
                  tido_id_docu    = null,
                  seto_id_docu    = null,
                  dt_emissao_docu = null,
                  tido_docu_lic   = null,
                  nro_docs_lic    = null,
                  nro_docs_AI     = null
            where proc_id = nProc_id;
                      nGer := nGer + 1;

                   commit;
        end;

        if nGer > 100 then
           commit;
           nGer := 0;
        end if;

        open  c2;
        fetch c2 into nContador;
        close c2;

        if nContador > 0 then
           open  c4;
           fetch c4 into nContLic;
           close c4;

           open  c5;
           fetch c5 into nContAI;
           close c5;
           if nContAI = 0 then
              nContAI := null;
           end if;

           nGerar := 0;

           if nContLic > 0 then
              if nContAI = 0 then
                 nContAI := null;
              end if;
              open  c3;
              fetch c3 into nDocu_id, dDataEmissao, nTido_id_docu, nSeto_id_docu;
              if c3%found then
                 nGerar := 1;
                 vLic   := 'S';
                 begin
                    update fep_processos
                       set nro_docs        = nContador,
                           tido_id_docu    = nTido_id_docu,
                           seto_id_docu    = nSeto_id_docu,
                           dt_emissao_docu = dDataEmissao,
                           tido_docu_lic   = vLic,
                           nro_docs_lic    = nContLic,
                           nro_docs_AI     = nContAI
                     where proc_id = nProc_id;

                          nGer := nGer + 1;
                 end;
              else
                 open  c31;
                 fetch c31 into nDocu_id, dDataEmissao, nTido_id_docu, nSeto_id_docu;
                 if c31%found then
                    nGerar := 1;
                    vLic   := 'S';
                    begin
                       update fep_processos
                          set nro_docs        = nContador,
                              tido_id_docu    = nTido_id_docu,
                              seto_id_docu    = nSeto_id_docu,
                              dt_emissao_docu = dDataEmissao,
                              tido_docu_lic   = vLic,
                              nro_docs_lic    = nContLic,
                              nro_docs_AI     = nContAI
                        where proc_id = nProc_id;

                          nGer := nGer + 1;

                    end;
                 end if;
                 close c31;
              end if;
              close c3;
           else
              if nContLic = 0 then
                 nContLic := null;
              end if;
              if nContAI = 0 then
                 nContAI := null;
              end if;
              open  c32;
              fetch c32 into nDocu_id, dDataEmissao, nTido_id_docu, nSeto_id_docu;
              if c32%found then
                 nGerar := 1;
                 vLic   := 'N';
                 begin
                    update fep_processos
                       set nro_docs        = nContador,
                           tido_id_docu    = nTido_id_docu,
                           seto_id_docu    = nSeto_id_docu,
                           dt_emissao_docu = dDataEmissao,
                           tido_docu_lic   = vLic,
                           nro_docs_lic    = nContLic,
                           nro_docs_AI     = nContAI
                     where proc_id = nProc_id;

                          nGer := nGer + 1;

                 end;
              end if;
              close c32;
           end if;

           if nGerar = 0 then
              if nContAI = 0 then
                 nContAI := null;
              end if;
              begin
                 update fep_processos
                    set nro_docs        = nContador,
                        nro_docs_AI     = nContAI
                  where proc_id = nProc_id;
                          nGer := nGer + 1;
              end;
           end if;
        end if;
    end if;
  end loop;
end;

FUNCTION FC_PRCR_RAMO
 (P_PRCR_ID IN NUMBER
 )
 RETURN NUMBER
 IS
    nRaat_id      number(7,2)  := null;
    nProc_id      number(10)   := null;
    nSold_id      number(10);
    nSose_id      number(10);
    nAder_id      number(10);
    nResp_id      number(10);
    nTipoSolic    number(1);
    nSoin_id      number(10);

    cursor c1 is
       select prcr.proc_id,
              prcr.sold_id,
              prcr.sose_id,
              prcr.ader_id,
              proc.resp_id
         from fep_aux_proc_cond_restr prcr,
              fep_processos           proc
        where prcr.prcr_id = p_prcr_id
          and prcr.proc_id = proc.proc_id;

     cursor c2 is
       select ata1.raat_id
         from fep_responsabilidades     resp,
              fep_atividades_antropicas ata1
        where resp.resp_id = nResp_id
          and resp.atan_id = ata1.atan_id;

    cursor c3 is
       select soin.tipo_solicitacao,
              soin.soin_id
         from fep_solic_int_documentos sold,
              fep_solic_integradoras   soin
        where sold.sold_id = nSold_id
          and sold.soin_id = soin.soin_id;


    cursor c4 is
       select ata1.raat_id
         from fep_integradoras_cobrancas inhc,
              fep_integrados_hist_cobr   ihic,
              fep_atividades_antropicas  ata1
        where inhc.soin_id = nSoin_id
          and inhc.inhc_id = ihic.inhc_id
          and ihic.atan_id = ata1.atan_id
          and ihic.dm_cancelado = 'N';


    cursor c5 is
       select sold.sold_id
         from fep_aux_decl_respons       ader,
              fep_solic_int_documentos   sold
        where ader.ader_id = nAder_id
          and ader.docu_id_licenca = sold.docu_id;
begin

  open  c1;
  fetch c1 into nProc_id, nSold_id, nSose_id, nAder_id, nResp_id;
  close c1;

  if nProc_id is null then
     return(nRaat_id);
  end if;

  if nResp_id is not null then
     open  c2;
     fetch c2 into nRaat_id;
     close c2;

     if nSold_id is not null and nRaat_id is not null  then

         if nRaat_id in  ( 112.11,112.12,112.13)  then
             nRaat_id := 112.11;
         end if;

         if nRaat_id in ( 114.21,114.22,114.23,114.24,114.25,114.26,114.31,114.32,114.33,114.34,114.35,114.36 )  then
             nRaat_id := 114.11;
         end if;

         return(nRaat_id);

     end if;
  end if;

  if nSold_id is not null then
     open  c3;
     fetch c3 into nTipoSolic, nSoin_id;
     close c3;
     if nTipoSolic = 1 then
        nRaat_id := 112.11;
     elsif nTipoSolic = 2 then
        nRaat_id := 114.11;
     else
        open  c4;
        fetch c4 into nRaat_id;
        close c4;
     end if;
     return(nRaat_id);
  end if;

  if nAder_id is not null then
     open  c5;
     fetch c5 into nSold_id;
     close c5;

     if nSold_id is not null then
        open  c3;
        fetch c3 into nTipoSolic, nSoin_id;
        close c3;
        if nTipoSolic = 1 then
           nRaat_id := 112.11;
        elsif nTipoSolic = 2 then
           nRaat_id := 114.11;
        else
           open  c4;
           fetch c4 into nRaat_id;
           close c4;
        end if;
     end if;
     return(nRaat_id);
  end if;

  return(nRaat_id);

end;


FUNCTION FC_PRCR_RAMO_TAB
 (P_PRCR_ID IN NUMBER, -- (TG) Não utilizado: estudar retirada...
  p_proc_id IN NUMBER,
  p_sold_id IN NUMBER,
  p_sose_id IN NUMBER, -- (TG) Não utilizado: estudar retirada...
  p_ader_id IN NUMBER
 )
 RETURN NUMBER
 IS
    nRaat_id      number(7,2)  := null;
    nProc_id      number(10)   := null;
    nSold_id      number(10);
--    nSose_id      number(10);
    nAder_id      number(10);
    nResp_id      number(10);
    nTipoSolic    number(1);
    nSoin_id      number(10);

    cursor c1 is
       select proc.resp_id
         from fep_processos           proc
        where proc.proc_id = p_proc_id;

     cursor c2 is
       select ata1.raat_id
         from fep_responsabilidades     resp,
              fep_atividades_antropicas ata1
        where resp.resp_id = nResp_id
          and resp.atan_id = ata1.atan_id;

    cursor c3 is
       select soin.tipo_solicitacao,
              soin.soin_id
         from fep_solic_int_documentos sold,
              fep_solic_integradoras   soin
        where sold.sold_id = nSold_id
          and sold.soin_id = soin.soin_id;


    cursor c4 is
       select ata1.raat_id
         from fep_integradoras_cobrancas inhc,
              fep_integrados_hist_cobr   ihic,
              fep_atividades_antropicas  ata1
        where inhc.soin_id = nSoin_id
          and inhc.inhc_id = ihic.inhc_id
          and ihic.atan_id = ata1.atan_id
          and ihic.dm_cancelado = 'N';


    cursor c5 is
       select sold.sold_id
         from fep_aux_decl_respons       ader,
              fep_solic_int_documentos   sold
        where ader.ader_id = nAder_id
          and ader.docu_id_licenca = sold.docu_id;
begin

  open  c1;
  fetch c1 into nResp_id;
  close c1;
  nProc_id := p_proc_id;
  nSold_id := p_sold_id;
--  nSose_id := p_sose_id;
  nAder_id := p_ader_id;

  if nProc_id is null then
     return(nRaat_id);
  end if;

  if nResp_id is not null then
     open  c2;
     fetch c2 into nRaat_id;
     close c2;

     if nSold_id is not null and nRaat_id is not null  then

         if nRaat_id in  ( 112.11,112.12,112.13)  then
             nRaat_id := 112.11;
         end if;

         if nRaat_id in ( 114.21,114.22,114.23,114.24,114.25,114.26,114.31,114.32,114.33,114.34,114.35,114.36 )  then
             nRaat_id := 114.11;
         end if;

         return(nRaat_id);

     end if;
  end if;

  if nSold_id is not null then
     open  c3;
     fetch c3 into nTipoSolic, nSoin_id;
     close c3;
     if nTipoSolic = 1 then
        nRaat_id := 112.11;
     elsif nTipoSolic = 2 then
        nRaat_id := 114.11;
     else
        open  c4;
        fetch c4 into nRaat_id;
        close c4;
     end if;
     return(nRaat_id);
  end if;

  if nAder_id is not null then
     open  c5;
     fetch c5 into nSold_id;
     close c5;

     if nSold_id is not null then
        open  c3;
        fetch c3 into nTipoSolic, nSoin_id;
        close c3;
        if nTipoSolic = 1 then
           nRaat_id := 112.11;
        elsif nTipoSolic = 2 then
           nRaat_id := 114.11;
        else
           open  c4;
           fetch c4 into nRaat_id;
           close c4;
        end if;
     end if;
     return(nRaat_id);
  end if;

  return(nRaat_id);

end;



PROCEDURE PR_PROC_AT_TEMPO_LIC
 IS
   nDocu_id            number(10);
   nTempo              number(5);
   vSimNaoFrota    varchar2(1);
   nTempoTram      number(5);
   vPrimLic              varchar2(1);
   nTido_id              number(5);
   nTempoRenov  number(5);
   nTempoRenLO  number(5);


cursor c1 is
select docu.docu_id,
            docu.tido_id,
             docu.tempo_tramLO_ren
from   fep_documentos docu,
       fep_tipos_documentos tido,
       fep_sub_classes_documentos sucd
where  docu.tido_id = tido.tido_id
and    tido.sucd_id = sucd.sucd_id
and    sucd.cldo_id = 1
and   ( (trunc(docu.data_emissao) > trunc(sysdate) - 7)
                or
            (docu.dm_prim_lic is null) )
and    docu.situacao not in ('C','T','B');

cursor c2 is
      select NVL(docu.tempo_tramitacao,0)  tempo,
                  docu.dm_prim_lic
       from fep_documentos docu
     where docu.docu_id = nDocu_id;
BEGIN
   OPEN c1;
   LOOP
       FETCH c1 INTO nDocu_id, nTido_id, nTempoRenov;
       IF c1%notfound THEN
          CLOSE c1;
          EXIT;
       ELSE
          nTempo              := pck_processos.fc_tempo_lic(nDocu_id);
          vSimNaoFrota   := pck_processos.fc_primeira_lic(nDocu_id);

          OPEN    c2;
          FETCH  c2 INTO nTempoTram, vPrimLic;
          CLOSE c2;

          IF vPrimLic IS NULL OR  nTempoTram != nTempo then
              BEGIN
                   UPDATE fep_documentos
                           SET tempo_tramitacao = nTempo,
                                   dm_prim_lic              = vSimNaoFrota
                    WHERE docu_id  = nDocu_id;
                         COMMIT;
              END;
        END IF;

        -- calcula o tempo de tramitação para LOs de Renovação   ( Malu 25/03/2010 )
        if nTido_id = 120 and vSimNaoFrota = 'S' then
                 nTempoRenLO    := pck_processos.fc_tempo_LO_Ren(nDocu_id, nTempo);
                 IF  nTempoRenLO  !=  nvl(nTempoRenov,0)  then
                          BEGIN
                                UPDATE fep_documentos
                                        SET tempo_tramLO_ren = nTempoRenLO
                                 WHERE docu_id  = nDocu_id;
                                         COMMIT;
                          END;
                 END IF;
       end if;

      END IF;
   END LOOP;


  -------------------------------------------------------------------------------------------------------------------
   -- Atualiza ramo das licenças que não tem o ramo informado em fep_processos
   --                                                                    Malu   21/01/2015

  begin
           pck_processos.pr_proc_at_raat_proc;
  end;

  ------------------------------------------------------------------------------------------------------


END;
FUNCTION FC_PRIMEIRA_LIC
 (P_DOCU_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
   nProc_id                  number(10);
   nCldo_id_proc       number(3);
   nDocu_id                 number(10);
   nSose_id                 number(10) := null;
   vSimNaoFrota        varchar2(1) := 'N';


   cursor c1 is
      select proc.proc_id,
             sucd.cldo_id
        from fep_documentos             docu,
             fep_processos                     proc,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
       where docu.docu_id = p_docu_id
         and docu.proc_id = proc.proc_id
         and proc.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id;


   cursor c2 is
      select docu.docu_id
        from fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
       where docu.proc_id = nProc_id
         and docu.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and sucd.cldo_id = nCldo_id_proc
         and docu.situacao not in ('C','T','B')
      order by docu.data_emissao, docu.docu_id;


cursor c3 is
     select   sose.sose_id
       from fep_solic_seamb sose,
                 fep_solic_seamb_documentos sodc,
                 fep_documentos docu,
                 fep_historicos_cobrancas hicb,
                 fep_historicos_pagamentos hipa
   where  sose.tido_id = 340
        and sose.tsoi_id = 6
        and sose.sose_id = sodc.sose_id
        and sodc.docu_id = docu.docu_id
        and sose.hicb_id = hicb.hicb_id
        and hicb.hicb_id = hipa.hicb_id
        and docu.docu_id = p_docu_id;
begin
    open  c3;
    fetch c3 into nSose_id;
    close c3;

    if nSose_id is not null then
           vSimNaoFrota := 'F';
    else
          open  c1;
          fetch c1 into nProc_id, nCldo_id_proc;
          close c1;

          open  c2;
          fetch c2 into nDocu_id;
          close c2;

           if nDocu_id = p_docu_id then
               vSimNaoFrota := 'S';
          end if;
     end if;

     return(vSimNaoFrota);

end;
FUNCTION FC_TEMPO_LIC
 (P_DOCU_ID IN NUMBER
 )
 RETURN NUMBER
 IS

     nTempoTramitacao  number(5) := 0;

     nSose_id                     number(10)  := null;
     nTempoAltFrota         number(5);

     nProc_id                     number(10);
     nTido_id_proc            number(5);
     dDataEmissao           date;


cursor c1 is
select   sose.sose_id,
             ( trunc(docu.data_emissao + 1) - hipa.data_credito)  tempo_alt_frota
 from fep_solic_seamb                           sose,
           fep_solic_seamb_documentos sodc,
           fep_documentos                            docu,
           fep_historicos_cobrancas          hicb,
           fep_historicos_pagamentos       hipa
 where
         sose.tido_id = 340
 and sose.tsoi_id = 6
  and sose.sose_id = sodc.sose_id
 and sodc.docu_id = docu.docu_id
 and sose.hicb_id = hicb.hicb_id
 and hicb.hicb_id = hipa.hicb_id
 and docu.docu_id = p_docu_id;


   cursor c2 is
      select docu.proc_id,
                  proc.tido_id,
                  trunc(docu.data_emissao) data_emissao
        from fep_documentos docu,
                  fep_processos    proc
       where docu.docu_id = p_docu_id
            and docu.proc_id = proc.proc_id;
BEGIN

  -- verifica se é alteração de frota
  OPEN    c1;
  FETCH  c1 INTO nSose_id, nTempoAltFrota;
  CLOSE c1;

   -- se é alteração de frota não faz outros cálculos   Malu 24/03/2010
   IF nSose_id IS NOT NULL THEN
        IF nTempoAltFrota < 0 OR nTempoAltFrota = 0 THEN
            nTempoTramitacao := 1;
       ELSE
            nTempoTramitacao := nTempoAltFrota;
        END IF;
       RETURN(nTempoTramitacao);
  END IF;

  OPEN    c2;
  FETCH  c2 INTO nProc_id, nTido_id_proc,  dDataEmissao;
  CLOSE c2;

  -- alterado para fazer chamada de uma única rotina ( Malu 29/07/2015 )

  nTempoTramitacao := pck_processos.fc_tempo_tramitacao(nProc_id, nTido_id_proc, dDataEmissao);

  RETURN(nTempoTramitacao);

END;
FUNCTION FC_ORIGEM_VIGOR
 (P_USUARIO IN VARCHAR2
 )
 RETURN VARCHAR2
 IS
vMsg        varchar2(200)  := null;
    nCont       number(5);

    cursor c1 is
       select count(*)
         from fep_aux_func_ultimos   aux,
              fep_acessos_parametros acpa,
              fep_acessos_pessoas    acpe
        where aux.username   = p_usuario
          and aux.situacao   = 1
          and aux.pess_id    = acpe.pess_id
          and acpe.acpa_id   = acpa.acpa_id
          and acpa.parametro = 'ASSINATURA_DIGITAL';
begin
  open  c1;
  fetch c1 into nCont;
  close c1;
  if nCont = 0 then
     vMsg := 'Erro: Pessoa não autorizada a colocar documentos em vigor.';
  end if;
  return(vMsg);
end;
FUNCTION FC_ORIGEM_ASSINATURA
 (P_DOCU_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nOrigem     number(1);
    nCldo_id    number(3);

    cursor c1 is
       select sucd.cldo_id
         from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where docu.docu_id = p_docu_id
          and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id;
begin
  open  c1;
  fetch c1 into nCldo_id;
  close c1;
  if nCldo_id in (100,101,102) then
      nOrigem := 2;    -- DEFAP
  elsif nCldo_id in ( 200,201,202,203 ) then
      nOrigem := 3;    -- DRH
  else
      nOrigem := 1;    -- FEPAM
  end if;
  return(nOrigem);
end;
FUNCTION FC_ORIGEM_PESSOA
 (P_USER IN VARCHAR2
 )
 RETURN NUMBER
 IS
    nOrigem     number(1)     := 0;
    vSigla          varchar2(20)  := null;

    cursor c1 is
       select seto.sigla
         from fep_aux_func_ultimos aux,
              fep_setores          seto
        where aux.username = p_user
          and aux.seto_id  = seto.seto_id;
begin
  open  c1;
  fetch c1 into vSigla;
  close c1;
  if vSigla is not null then
       if vSigla like '%DEFAP%' then
             nOrigem := 2;    -- DEFAP
      elsif vSigla like '%DRH%' then
             nOrigem := 3;    -- DRH
      else
             nOrigem := 1;    -- FEPAM
       end if;
  end if;
  return(nOrigem);
end;
FUNCTION FC_VALIDA_360_COBR
 (P_DOCU_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
vDescricao    varchar(200) := null;
  vDocumento    varchar2(30);

  cursor c1 is
     select cobr.cobr_id,
            cobp.nro_bloqueto,
            substr(to_char(cobp.data_vencimento,'dd/mm/rrrr'),1,10) data_vencimento
       from fep_cobrancas          cobr,
            fep_cobrancas_parcelas cobp
      where cobr.cobr_id = cobp.cobr_id
        and cobr.tido_id = 360
        and cobr.hicb_id is null
        and cobr.docu_id = p_docu_id;

  r1  c1%rowtype;

  cursor c2 is
     select substr(docu.numero || '/'   ||
            docu.ano    || ' - ' ||
            tido.abreviatura,1,30) documento
       from fep_documentos       docu,
            fep_tipos_documentos tido
      where docu.docu_id = p_docu_id
        and docu.tido_id = tido.tido_id;
begin

   open  c1;
   fetch c1 into r1;
   if c1%found then

      open  c2;
      fetch c2 into vDocumento;
      close c2;

      vDescricao := 'Atenção: Já foi emitido o boleto ' || r1.nro_bloqueto ||
                    ' com vencimento em ' || r1.data_vencimento ||
                    ' na cobrança '       || r1.cobr_id ||
                    ' para o documento '  || vDocumento || '.';
   end if;
   close c1;

   return(vDescricao);

end;
FUNCTION FC_ATAN_QT_DOCLIC
 (P_ATAN_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nContador      number(2)   := 0;

   cursor c1 is
      select count(*)
        from fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos              proc,
             fep_responsabilidades      resp
       where docu.tido_id  = tido.tido_id
         and tido.sucd_id  = sucd.sucd_id
         and sucd.cldo_id  in (1,2,3,4,5,6)
         and docu.situacao in ('E','G')
         and docu.proc_id  = proc.proc_id
         and proc.resp_id  = resp.resp_id
         and resp.tipa_id  not in (3,9,13)
         and resp.data_fim is null
         and resp.atan_id  = p_Atan_id;


   cursor c2 is
      select count(*)
        from fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos              proc,
             fep_empreend_processos     epro,
             fep_responsabilidades      resp
       where docu.tido_id  = tido.tido_id
         and tido.sucd_id  = sucd.sucd_id
         and sucd.cldo_id  in (1,2,3,4,5,6)
         and docu.situacao in ('E','G')
         and docu.proc_id  = proc.proc_id
         and proc.proc_id  = epro.proc_id
         and epro.resp_id  = resp.resp_id
         and resp.tipa_id  not in (3,9,13)
         and resp.data_fim is null
         and resp.atan_id  = p_Atan_id;
BEGIN

    open  c1;
    fetch c1 into nContador;
    close c1;
    if nContador = 0 then
       open  c2;
       fetch c2 into nContador;
       close c2;
    end if;

   return(nContador);

END;
FUNCTION FC_LIB_DECL_ALT_RESP
 (P_DOCUMENTO IN VARCHAR2
 ,P_ORIGEM IN NUMBER
 )
 RETURN NUMBER
 IS
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 16/09/2024
  | Purpose: Fechar cursores antes do final dos processos.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/

nContador      number(2)   := 0;
   nAtan_id       number(10);

   cursor c1 is
      select ata1.atan_id
        from fep_atividades_antropicas ata1,
             fep_pessoas               pess
       where ata1.situacao = 1
         and ata1.pess_id  = pess.pess_id
         and (   ( pess.cgc                   = to_number(p_documento) and
                   p_origem                   = 0 )
              or ( pess.cpf                   = to_number(p_documento) and
                   p_origem                   = 1 )
              or ( pess.documento_estrangeiro = p_documento            and
                   p_origem                   = 2 )
             );


   cursor c2 is
      select count(*)
        from fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos              proc,
             fep_responsabilidades      resp
       where docu.tido_id  = tido.tido_id
         and tido.sucd_id  = sucd.sucd_id
         and sucd.cldo_id  in (1,2,3,4,5,6)
         and docu.situacao in ('E','G')
         and docu.proc_id  = proc.proc_id
         and proc.resp_id  = resp.resp_id
         and resp.tipa_id  not in (3,9,13)
         and resp.data_fim is null
         and resp.atan_id  = nAtan_id;


   cursor c3 is
      select count(*)
        from fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos              proc,
             fep_empreend_processos     epro,
             fep_responsabilidades      resp
       where docu.tido_id  = tido.tido_id
         and tido.sucd_id  = sucd.sucd_id
         and sucd.cldo_id  in (1,2,3,4,5,6)
         and docu.situacao in ('E','G')
         and docu.proc_id  = proc.proc_id
         and proc.proc_id  = epro.proc_id
         and epro.resp_id  = resp.resp_id
         and resp.tipa_id  not in (3,9,13)
         and resp.data_fim is null
         and resp.atan_id  = nAtan_id;
BEGIN


   open c1;
   loop
     fetch c1 into nAtan_id;
     if c1%notfound then
        close c1;
        exit;
     else
        -- se existir pelo menos 1 já libera o botão de Declaração Alteração Responsabilidade no site
        open  c2;
        fetch c2 into nContador;
        close c2;
        if nContador = 0 then
           open  c3;
           fetch c3 into nContador;
           close c3;
        end if;
        if nContador > 0 then

           close c1; -- (TG) Adicionado

           exit;
        end if;
     end if;
   end loop;

   return(nContador);


END;
PROCEDURE PR_ATAN_ULTIMAS_LICENCAS
 IS
nAtan_id    number(10);

   cursor c1 is
      select ata1.atan_id
        from fep_atividades_antropicas ata1
       where ata1.situacao = 1
      order by 1;
begin

   delete from fep_atan_ultimas_licencas;
      commit;

   open c1;
   loop
       fetch c1 into nAtan_id;
       if c1%notfound then
          close c1;
          exit;
       else
           pck_processos.pr_proc_gera_ULLI(nAtan_id);
            commit;
       end if;
   end loop;
end;
PROCEDURE PR_ATAN_DOCU_ULLI
 (P_DOCU_ID IN NUMBER
 ,P_TIDO_ID IN NUMBER
 ,P_SITUACAO IN VARCHAR2
 )
 IS
nAtan_id     number(10);
    nCldo_id     number(3);

    cursor c1 is
       select sucd.cldo_id
         from fep_tipos_documentos tido,
              fep_sub_classes_documentos sucd
        where tido.sucd_id = sucd.sucd_id;


    CURSOR c2 IS
      SELECT DISTINCT(ata1.atan_id)
        FROM fep_documentos                    docu,
             fep_processos                     proc,
             fep_responsabilidades             resp,
             fep_atividades_antropicas         ata1
       WHERE docu.docu_id  = p_docu_id
         and docu.proc_id  = proc.proc_id
         and proc.resp_id  = resp.resp_id
         and resp.atan_id  = ata1.atan_id
         and ata1.situacao = 1;

    CURSOR c3 IS
       SELECT DISTINCT(ata1.atan_id)
         FROM fep_processos_documentos          prdc,
              fep_empreend_processos            epro,
              fep_responsabilidades             resp,
              fep_atividades_antropicas         ata1
        where prdc.docu_id = p_docu_id
          and prdc.proc_id = epro.proc_id
          and epro.resp_id = resp.resp_id
          and resp.data_fim is null
          and resp.tipa_id not in (3,9,13)
          and resp.atan_id = ata1.atan_id
          and ata1.situacao = 1;
begin
   open  c1;
   fetch c1 into nCldo_id;
   close c1;

   if nCldo_id in (1,2,3,4,5,6) and p_tido_id != 360 then
      if p_situacao in ('V' ) then
         begin
            delete
              from fep_atan_ultimas_licencas
             where docu_id = p_docu_id;
         end;
      end if;

      if p_situacao in ('E','G' ) then
         open c2;
         loop
            fetch c2 into nAtan_id;
            if c2%notfound then
               close c2;
               exit;
            else
               begin
                  pck_processos.pr_proc_gera_ULLI(nAtan_id);
               end;
            end if;
         end loop;


         open c3;
         loop
            fetch c3 into nAtan_id;
            if c3%notfound then
               close c3;
               exit;
            else
               begin
                  pck_processos.pr_proc_gera_ULLI(nAtan_id);
               end;
            end if;
         end loop;

      end if;

   end if;

end;
Procedure PR_PROC_GERA_ULLI(P_ATAN_ID IN NUMBER) IS
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 17/09/2024
  | Purpose: Foi reformatado o código desta procedure para melhor entendimento.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/

  nResp_id   number(10);
  nProc_id   number(10);
  dDataAtual date;
  vUsuario   varchar2(30);


  cursor c0 is
    select ulli.ulli_id
          ,ulli.docu_id
          ,ulli.data_inicio_vigencia
      from fep_atan_ultimas_licencas ulli
     where ulli.atan_id = p_atan_id;

  r0 c0%rowtype;

  cursor c1 is
    select resp.resp_id
      from fep_responsabilidades resp
     where resp.atan_id = p_atan_id
       and resp.tipa_id not in (3, 9, 13)
       and resp.data_fim is null;

  cursor c2 is
    select proc.proc_id
      from fep_processos proc
     where proc.resp_id = nResp_id
    union all
    select epro.proc_id
      from fep_empreend_processos epro
     where epro.resp_id = nResp_id
     order by 1 desc;

  cursor c3 is
    select decode(docu.data_inicio_vigencia, null, docu.data_emissao, docu.data_inicio_vigencia) data_inicio_vigencia
          ,sucd.cldo_id cldo_id
          ,docu.docu_id docu_id
          ,docu.numero numero
          ,docu.ano ano
          ,docu.tido_id tido_id
          ,tido.abreviatura tido_abreviatura
          ,tido.descricao tido_descricao
          ,docu.situacao situacao
          ,substr(decode(docu.situacao, 'E', 'Em Vigor', 'G', 'Prorrogado'), 1, 25) descr_situacao
          ,docu.seto_id seto_id
          ,seto.sigla seto_sigla
          ,seto.nome seto_nome
          ,docu.renovavel dm_renovavel
          ,docu.data_fim_vigencia data_fim_vigencia
      from fep_documentos             docu
          ,fep_tipos_documentos       tido
          ,fep_sub_classes_documentos sucd
          ,fep_setores                seto
     where docu.proc_id = nProc_id
       and docu.tido_id = tido.tido_id
       and tido.sucd_id = sucd.sucd_id
       and sucd.cldo_id in (1, 2, 3, 4, 5, 6, 300, 305)
       and docu.situacao in ('E', 'G')
       and docu.seto_id = seto.seto_id
    union all
    select decode(docu.data_inicio_vigencia, null, docu.data_emissao, docu.data_inicio_vigencia) data_inicio_vigencia
          ,sucd.cldo_id cldo_id
          ,docu.docu_id docu_id
          ,docu.numero numero
          ,docu.ano ano
          ,docu.tido_id tido_id
          ,tido.abreviatura tido_abreviatura
          ,tido.descricao tido_descricao
          ,docu.situacao situacao
          ,substr(decode(docu.situacao, 'E', 'Em Vigor', 'G', 'Prorrogado'), 1, 25) descr_situacao
          ,docu.seto_id seto_id
          ,seto.sigla seto_sigla
          ,seto.nome seto_nome
          ,docu.renovavel dm_renovavel
          ,docu.data_fim_vigencia data_fim_vigencia
      from fep_processos_documentos   prdc
          ,fep_documentos             docu
          ,fep_tipos_documentos       tido
          ,fep_sub_classes_documentos sucd
          ,fep_setores                seto
     where prdc.proc_id = nProc_id
       and prdc.docu_id = docu.docu_id
       and docu.tido_id = tido.tido_id
       and tido.sucd_id = sucd.sucd_id
       and sucd.cldo_id in (1, 2, 3, 4, 5, 6, 300, 305)
       and docu.situacao in ('E', 'G')
       and docu.seto_id = seto.seto_id
     order by 1 desc
             ,2;

  r3 c3%rowtype;
begin

  select user
        ,sysdate
    into vUsuario
        ,dDataAtual
    from dual;

  open c1;
  loop
    fetch c1
      into nResp_id;
    if c1%notfound then
      close c1;
      exit;
    else
      open c2;
      loop
        fetch c2
          into nProc_id;
        if c2%notfound then
          close c2;
          exit;
        else
          open c3;
          fetch c3
            into r3;
          if c3%found then
            open c0;
            fetch c0
              into r0;
            if c0%notfound then
            
              begin
                insert into fep_atan_ultimas_licencas
                  (ULLI_ID
                  ,DOCU_ID
                  ,ATAN_ID
                  ,NUMERO
                  ,ANO
                  ,TIDO_ID
                  ,TIDO_DESCRICAO
                  ,TIDO_ABREVIATURA
                  ,SITUACAO
                  ,DESCR_SITUACAO
                  ,SETO_ID
                  ,SETO_SIGLA
                  ,SETO_NOME
                  ,DATA_INICIO_VIGENCIA
                  ,DATA_FIM_VIGENCIA
                  ,DM_RENOVAVEL
                  ,DATA_INCLUSAO
                  ,OPERADOR_INCLUSAO
                  ,DATA_ATUALIZACAO
                  ,OPERADOR_ATUALIZACAO)
                values
                  (ULLI_seq.nextval
                  ,r3.DOCU_ID
                  ,p_atan_id
                  ,r3.NUMERO
                  ,r3.ANO
                  ,r3.TIDO_ID
                  ,r3.TIDO_DESCRICAO
                  ,r3.TIDO_ABREVIATURA
                  ,r3.SITUACAO
                  ,r3.DESCR_SITUACAO
                  ,r3.SETO_ID
                  ,r3.SETO_SIGLA
                  ,r3.SETO_NOME
                  ,r3.DATA_INICIO_VIGENCIA
                  ,r3.DATA_FIM_VIGENCIA
                  ,r3.DM_RENOVAVEL
                  ,dDataAtual
                  ,vUsuario
                  ,dDataAtual
                  ,vUsuario);
              end;
            
            else
            
              if r0.docu_id != r3.docu_id then
                if r3.data_inicio_vigencia > r0.data_inicio_vigencia then
                
                  begin
                    update fep_atan_ultimas_licencas
                       set DOCU_ID              = r3.docu_id
                          ,NUMERO               = r3.numero
                          ,ANO                  = r3.ano
                          ,TIDO_ID              = r3.tido_id
                          ,TIDO_DESCRICAO       = r3.tido_descricao
                          ,TIDO_ABREVIATURA     = r3.tido_abreviatura
                          ,SETO_ID              = r3.seto_id
                          ,SETO_SIGLA           = r3.seto_sigla
                          ,SETO_NOME            = r3.seto_nome
                          ,DATA_INICIO_VIGENCIA = r3.data_inicio_vigencia
                          ,DATA_FIM_VIGENCIA    = r3.data_fim_vigencia
                          ,DM_RENOVAVEL         = r3.dm_renovavel
                          ,DATA_ATUALIZACAO     = dDataAtual
                          ,OPERADOR_ATUALIZACAO = vUsuario
                     where ulli_id = r0.ulli_id;
                  
                  end;
                
                end if;
              end if;
            end if;
            close c0;
          
          
          end if;
          close c3;
        
        end if;
      end loop;
    
    end if;
  end loop;
end;
FUNCTION FC_MUNI_DOCU
 (P_DOCU_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nMuni_id  number(7);
  nProc_id  number(10);
  nResp_id  number(10);
  nAtan_id  number(10);


  cursor c11 is
     select docu.proc_id
       from fep_documentos docu
      where docu.docu_id = p_docu_id;

  cursor c12 is
     select prdc.proc_id
       from fep_processos_documentos prdc
      where prdc.docu_id = p_docu_id;

  cursor c21 is
     select proc.resp_id
       from fep_processos proc
      where proc.proc_id = nProc_id;

  cursor c22 is
     select resp.resp_id
       from fep_empreend_processos epro,
            fep_responsabilidades  resp
      where epro.proc_id = nProc_id
        and epro.resp_id = resp.resp_id
        and resp.tipa_id not in (3,9,13)
    order by resp.atan_id;

  cursor c3 is
     select resp.atan_id
       from fep_responsabilidades resp
      where resp.resp_id = nResp_id;

  cursor c4 is
     select ata1.muni_id
       from fep_atividades_antropicas ata1
      where ata1.atan_id = nAtan_id;
begin

  open  c11;
  fetch c11 into nProc_id;
  close c11;

  if nProc_id is null then
     open  c12;
     fetch c12 into nProc_id;
     close c12;
  end if;

  if nProc_id is not null then
     open  c21;
     fetch c21 into nResp_id;
     close c21;
  end if;

  if nResp_id is null then
     open  c22;
     fetch c22 into nResp_id;
     close c22;
  end if;

  if nResp_id is not null then
     open  c3;
     fetch c3 into nAtan_id;
     close c3;
  end if;

  if nAtan_id is not null then
     open  c4;
     fetch c4 into nMuni_id;
     close c4;
  end if;

  return(nMuni_id);

end;
FUNCTION FC_ARR_PROC_VLRPAGO
 (P_PROC_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nValorPago    number(13,2);

  cursor c1 is
     select sum(nvl(hipa.valor_pago,0) + nvl(hipa.valor_desconto,0)) valor
       from fep_historicos_pagamentos hipa,
            fep_historicos_cobrancas  hicb
      where hipa.hicb_id = hicb.hicb_id
        and hipa.status = 5
        and hicb.proc_id = p_proc_id;
begin
   open c1;
   fetch c1 into nValorPago;
   close c1;
   return(nValorPago);
end;
PROCEDURE PR_ATUALIZA_PK_MODELAGEM
 IS
begin

   -- Esta procedure está agendada para executar todos os dias
   -- a noite e ao meio-dia

   -- atualiza o pess_id do empreendedor responsavel
   -- tabela fep_atividades_antropicas

         pck_cadastros.pr_atualiza_resp_atan;
         commit;

   -- atualiza o resp_id do processo
   -- tabela fep_processos

         pck_processos.pr_atualiza_resp_proc;
         commit;

   -- atualiza o proc_id do documento
   -- tabela fep_documentos

         pck_processos.pr_atualiza_proc_docu;
         commit;

end;
PROCEDURE PR_ATUALIZA_PROC_DOCU
 IS
    vUsuario   varchar2(30)    :=  user || '-ATUAL PROC';
    dDataAtual date                  :=  sysdate;

    nProc_id      number(10);
    nDocu_id      number(10);
    nContador     number(3);

    cursor c1 is
       select docu.docu_id
         from fep_documentos docu
        where docu.proc_id is null
          and docu.seto_id != 2001
        order by docu.docu_id;

    cursor c11 is
       select count(distinct(prdc.proc_id)) qt
         from fep_processos_documentos prdc
        where prdc.docu_id = nDocu_id;

    cursor c2 is
       select distinct(prdc.proc_id) proc_id
         from fep_processos_documentos prdc
        where prdc.docu_id = nDocu_id;
begin
   open c1;
   loop
      fetch c1 into nDocu_id;
      if c1%notfound then
         close c1;
         exit;
      else

         open  c11;
         fetch c11 into nContador;
         close c11;

         if nContador = 1 then

            nProc_id := null;

            open  c2;
            fetch c2 into nProc_id;
            close c2;

            if nProc_id is not null then

               begin
                 update fep_documentos
                    set proc_id = nProc_id,
                        operador_atualizacao = vUsuario,
                        data_atualizacao     = dDataAtual
                  where docu_id = nDocu_id;
                             commit;
               end;

            end if;
          end if;

        end if;
    end loop;
end;
PROCEDURE PR_ATUALIZA_RESP_PROC
 IS
    vUsuario   varchar2(30)    :=  user || '-ATUAL RESP';
    dDataAtual date                  :=  sysdate;

    nProc_id      number(10);
    nAtan_id      number(10);
    nResp_id      number(10);
    nPess_id      number(10);
    nPess_id_req  number(10);
    nContador     number(3);


    cursor c1 is
       select proc.proc_id,
              proc.pess_id
         from fep_processos proc
        where resp_id is null
          and seto_id not in (2001,2053)
        order by proc.proc_id;

    cursor c11 is
       select count(distinct(resp.atan_id)) qt
         from fep_empreend_processos epro,
              fep_responsabilidades  resp
        where epro.proc_id = nProc_id
          and epro.resp_id = resp.resp_id
          and resp.data_fim is null;

    cursor c2 is
       select distinct(resp.atan_id) atan_id
         from fep_empreend_processos epro,
              fep_responsabilidades  resp
        where epro.proc_id = nProc_id
          and epro.resp_id = resp.resp_id
          and resp.data_fim is null
        order by resp.atan_id;

    cursor c3 is
      select epro.resp_id, resp.pess_id
        from fep_empreend_processos epro,
             fep_responsabilidades  resp
       where epro.resp_id = resp.resp_id
         and resp.atan_id = nAtan_id
         and resp.dm_empdor_resp = 'S';
begin
   open c1;
   loop
      fetch c1 into nProc_id, nPess_id_req;
      if c1%notfound then
         close c1;
         exit;
      else

         open  c11;
         fetch c11 into nContador;
         close c11;

         if nContador = 1 then

            nAtan_id := null;
            nResp_id := null;
            nPess_id := null;

            open  c2;
            fetch c2 into nAtan_id;
            close c2;

            if nAtan_id is not null then

               open  c3;
               fetch c3 into nResp_id, nPess_id;
               close c3;

               if nResp_id is not null then

                  if nPess_id_req is not null then
                     nPess_id := nPess_id_req;
                  end if;

                  begin
                     update fep_processos
                        set resp_id = nResp_id,
                            pess_id = nPess_id,
                            operador_atualizacao = vUsuario,
                            data_atualizacao     = dDataAtual
                      where proc_id = nProc_id;
                             commit;
                  end;

            end if;
          end if;
          end if;

        end if;
    end loop;
end;
PROCEDURE PR_GERA_PROR2010
 (P_SETOR IN NUMBER
 ,P_DATA IN DATE
 )
 IS
   wusuario           VARCHAR2(30);
   wexiste            NUMBER(1);
   wsolicitado1       NUMBER(10);
   wemitido1          NUMBER(10);
   waguarda_doc1      NUMBER(10);
   wsolicitado2       NUMBER(10);
   wemitido2          NUMBER(10);
   waguarda_doc2      NUMBER(10);
   wsolicitado3       NUMBER(10);
   wemitido3          NUMBER(10);
   waguarda_doc3      NUMBER(10);

   nEmitidos2007      number(10);
   nEmitidos2008      number(10);
   nEmitidos2009      number(10);
   nSeto_id           number(6);

   cursor c1 is
      select aux.seto_id,
             est.doc_emitido_2007,
             est.doc_emitido_2008,
             est.doc_emitido_2009
       from fep_aux_pror1720_rel     aux,
            fep_aux_estproc_emitidos est
      where aux.usuario = wUsuario
        and aux.seto_id = est.seto_id
       ORDER BY aux.sigla;
BEGIN

  -- alterado para ler direto das tabelas de processos e documentos em 11/06/2008 - Malu

   -- Data informada deve ser maior que 01/07/2007.
   -- Em 11/03/2009 cfe. sol. da presidencia passou a ser > 01/01/2008
   -- chamado 23273: > 01/01/2008

    PR_GERA_PROC_EST_EMITIDOS (P_DATA);


   SELECT user
     INTO wusuario
     FROM DUAL;

   DELETE FEP_AUX_PROR1720_REL
    WHERE usuario  = wusuario;
                          COMMIT;

   -- Popula a tabela com os Processos Licenciatórios.
   FOR rpro IN (SELECT tipo_registro,
                       seto_id,
                       sigla,
                       SUM(NVL(nro_solicitados, 0)) Nro_solicitados,
                       SUM(NVL(nro_emitidos, 0))    Nro_emitidos,
                       SUM(NVL(aguarda_doc, 0))     Aguarda_doc
                        ----------------------  SOLICITADOS  --------------------
                  FROM (SELECT 1             tipo_registro, -- De 01/01/2002 até 31/12/2007
                               proc.seto_id  seto_id,
                               seto.sigla    sigla,
                               count(*)      nro_solicitados,
                               0             nro_emitidos,
                               0             aguarda_doc
                          FROM fep_processos              proc,
                               fep_tipos_documentos       tido,
                               fep_sub_classes_documentos sucd,
                               fep_setores                seto
                         WHERE (p_setor  = 0 OR proc.seto_id = p_setor )
                           and proc.tido_id              = tido.tido_id
                           and tido.sucd_id              = sucd.sucd_id
                           and sucd.cldo_id      in ( 1,2,3,4,5,6 )
                           and proc.seto_id              = seto.seto_id
                           AND TRUNC(proc.data_entrada) <= TRUNC(TO_DATE('31/12/2007','DD/MM/YYYY'))
                           AND TRUNC(proc.data_entrada) >= TRUNC(TO_DATE('01/01/2002','DD/MM/YYYY'))
                         GROUP BY proc.seto_id
                                 ,seto.sigla
                         UNION ALL
                        SELECT 2             tipo_registro, -- De 01/01/2008 até 30/06/2008
                          -- em 11/03/2009 cfe Sol. Presidencia passa a ser De 01/01/2008 até 31/12/2008 -- chamado 23273
                               proc.seto_id  seto_id,
                               seto.sigla    sigla,
                               count(*)      nro_solicitados,
                               0             nro_emitidos,
                               0             aguarda_doc
                          FROM fep_processos              proc,
                               fep_tipos_documentos       tido,
                               fep_sub_classes_documentos sucd,
                               fep_setores                seto
                         WHERE (p_setor  = 0 OR proc.seto_id = p_setor )
                           and proc.tido_id              = tido.tido_id
                           and tido.sucd_id              = sucd.sucd_id
                           and sucd.cldo_id      in ( 1,2,3,4,5,6 )
                           and proc.seto_id              = seto.seto_id
                           AND TRUNC(proc.data_entrada) <= TRUNC(TO_DATE('31/12/2008','DD/MM/YYYY'))
                           AND TRUNC(proc.data_entrada) >= TRUNC(TO_DATE('01/01/2008','DD/MM/YYYY'))
                         GROUP BY proc.seto_id
                                 ,seto.sigla
                         UNION ALL
                        SELECT 3             tipo_registro, -- De 01/01/2009 até data informada
                        --  EM 11/03/2009 Cfe. Sol. Presidencia passa a ser De 01/01/2009 até data informada -- chamado 23273
                               proc.seto_id  seto_id,
                               seto.sigla    sigla,
                               count(*)      nro_solicitados,
                               0             nro_emitidos,
                               0             aguarda_doc
                          FROM fep_processos              proc,
                               fep_tipos_documentos       tido,
                               fep_sub_classes_documentos sucd,
                               fep_setores                seto
                         WHERE (p_setor  = 0 OR proc.seto_id = p_setor )
                           and proc.tido_id              = tido.tido_id
                           and tido.sucd_id              = sucd.sucd_id
                           and sucd.cldo_id      in ( 1,2,3,4,5,6 )
                           and proc.seto_id              = seto.seto_id
                           AND TRUNC(proc.data_entrada) <= p_data
                           AND TRUNC(proc.data_entrada) >= TRUNC(TO_DATE('01/01/2009','DD/MM/YYYY'))
                         GROUP BY proc.seto_id
                                 ,seto.sigla
                         UNION ALL
                        ----------------------  AGUARDANDO DOCUMENTAÇÃO  --------------------
                        SELECT 1             tipo_registro, -- De 01/01/2002 até 31/12/2007
                               proc.seto_id  seto_id,
                               seto.sigla    sigla,
                               0             nro_solicitados,
                               0             nro_emitidos,
                               count(*)      aguarda_doc
                          FROM fep_processos              proc,
                               fep_tipos_documentos       tido,
                               fep_sub_classes_documentos sucd,
                               fep_setores                seto
                         WHERE (p_setor  = 0 OR proc.seto_id = p_setor )
                           and proc.situacao             = 'I' -- AGUARDA COMPLEMENTAÇÃO
                           and proc.tido_id              = tido.tido_id
                           and tido.sucd_id              = sucd.sucd_id
                           and sucd.cldo_id      in ( 1,2,3,4,5,6 )
                           and proc.seto_id              = seto.seto_id
                           AND TRUNC(proc.data_entrada) <= TRUNC(TO_DATE('31/12/2007','DD/MM/YYYY'))
                           AND TRUNC(proc.data_entrada) >= TRUNC(TO_DATE('01/01/2002','DD/MM/YYYY'))
                         GROUP BY proc.seto_id
                                 ,seto.sigla
                      UNION ALL
                        SELECT 2             tipo_registro, -- De 01/01/2008 até 31/12/2008
                        -- Em 11/03/2009 Cfe. Sol. da presidencia passa a ser De 01/01/2008 até 31/12/2008 -- chamado 23273
                               proc.seto_id  seto_id,
                               seto.sigla    sigla,
                               0             nro_solicitados,
                               0             nro_emitidos,
                               count(*)      aguarda_doc
                          FROM fep_processos              proc,
                               fep_tipos_documentos       tido,
                               fep_sub_classes_documentos sucd,
                               fep_setores                seto
                         WHERE (p_setor  = 0 OR proc.seto_id = p_setor )
                           and proc.situacao             = 'I' -- AGUARDA COMPLEMENTAÇÃO
                           and proc.tido_id              = tido.tido_id
                           and tido.sucd_id              = sucd.sucd_id
                           and sucd.cldo_id      in ( 1,2,3,4,5,6 )
                           and proc.seto_id              = seto.seto_id
                           AND TRUNC(proc.data_entrada) <= TRUNC(TO_DATE('31/12/2008','DD/MM/YYYY'))
                           AND TRUNC(proc.data_entrada) >= TRUNC(TO_DATE('01/01/2008','DD/MM/YYYY'))
                         GROUP BY proc.seto_id
                                 ,seto.sigla
                         UNION ALL
                        SELECT 3             tipo_registro, -- De 01/07/2009 até data informada
                        -- Em 11/03/2009 Cfe. Sol. da presidencia passa a ser De 01/01/2008 até 31/12/2008 -- chamado 23273
                               proc.seto_id  seto_id,
                               seto.sigla    sigla,
                               0             nro_solicitados,
                               0             nro_emitidos,
                               count(*)      aguarda_doc
                          FROM fep_processos              proc,
                               fep_tipos_documentos       tido,
                               fep_sub_classes_documentos sucd,
                               fep_setores                seto
                         WHERE (p_setor  = 0 OR proc.seto_id = p_setor )
                           and proc.situacao             = 'I' -- AGUARDA COMPLEMENTAÇÃO
                           and proc.tido_id              = tido.tido_id
                           and tido.sucd_id              = sucd.sucd_id
                           and sucd.cldo_id      in ( 1,2,3,4,5,6 )
                           and proc.seto_id              = seto.seto_id
                           AND TRUNC(proc.data_entrada) <= p_data
                           AND TRUNC(proc.data_entrada) >= TRUNC(TO_DATE('01/01/2009','DD/MM/YYYY'))
                         GROUP BY proc.seto_id
                                 ,seto.sigla
                         UNION ALL
                        ---------------------  EMITIDOS  --------------------------
                        SELECT 1             tipo_registro, -- De 01/01/2002 até 31/12/2007 -- chamado 23273
                               proc.seto_id  seto_id,
                               seto.sigla    sigla,
                               0             nro_solicitados,
                               count(*)      nro_emitidos,
                               0             aguarda_doc
                          FROM fep_processos              proc,
                               fep_tipos_documentos       tido,
                               fep_sub_classes_documentos sucd,
                               fep_setores                seto
                         WHERE (p_setor  = 0 OR proc.seto_id = p_setor )
                           and proc.tido_id              = tido.tido_id
                           and tido.sucd_id              = sucd.sucd_id
                           and sucd.cldo_id      in ( 1,2,3,4,5,6 )
                           and proc.seto_id              = seto.seto_id
                           and TRUNC(proc.data_entrada) <= TRUNC(TO_DATE('31/12/2007','DD/MM/YYYY'))
                           and TRUNC(proc.data_entrada) >= TRUNC(TO_DATE('01/01/2002','DD/MM/YYYY'))
                              and ((     (proc.situacao not in ('A','S','I')
             and         (( exists ( select null
                      from fep_documentos             docu1,
                                fep_tipos_documentos       tido1,
                               fep_sub_classes_documentos sucd1
                     where docu1.proc_id = proc.proc_id
                       and docu1.tido_id = tido1.tido_id
                       and tido1.sucd_id = sucd1.sucd_id
                       and sucd1.cldo_id in (1,2,3,4,5,6)
                       and docu1.situacao not in ('T','B','C')))
               or
            (exists ( select null
                    from fep_processos_documentos   prdc,
                              fep_documentos             docu1,
                              fep_tipos_documentos       tido1,
                              fep_sub_classes_documentos sucd1
                 where prdc.proc_id  = proc.proc_id
                      and prdc.docu_id  = docu1.docu_id
                      and docu1.tido_id = tido1.tido_id
                      and tido1.sucd_id = sucd1.sucd_id
                      and sucd1.cldo_id in (1,2,3,4,5,6)
                      and docu1.situacao not in ('T','B','C'))))))
       or (proc.situacao in ('A','S')))
                         GROUP BY proc.seto_id
                                 ,seto.sigla
                         UNION ALL
                        SELECT 2             tipo_registro, -- De 01/01/2008 até 30/06/2008
                        -- em 11/03/2009 cfe. sol. Presidencia passa a ser De 01/01/2008 até 31/12/2008 -- chamado 23273
                               proc.seto_id  seto_id,
                               seto.sigla    sigla,
                               0             nro_solicitados,
                               count(*)      nro_emitidos,
                               0             aguarda_doc
                          FROM fep_processos              proc,
                               fep_tipos_documentos       tido,
                               fep_sub_classes_documentos sucd,
                               fep_setores                seto
                         WHERE (p_setor  = 0 OR proc.seto_id = p_setor )
                           and proc.tido_id              = tido.tido_id
                           and tido.sucd_id              = sucd.sucd_id
                           and sucd.cldo_id      in ( 1,2,3,4,5,6 )
                           and proc.seto_id              = seto.seto_id
                           AND TRUNC(proc.data_entrada)       <= TRUNC(TO_DATE('31/12/2008','DD/MM/YYYY'))
                           AND TRUNC(proc.data_entrada)       >= TRUNC(TO_DATE('01/01/2008','DD/MM/YYYY'))
                           and ((    (proc.situacao not in ('A','S','I')
             and
           (( exists ( select null
                      from fep_documentos             docu1,
                           fep_tipos_documentos       tido1,
                           fep_sub_classes_documentos sucd1
                    where docu1.proc_id = proc.proc_id
                       and docu1.tido_id = tido1.tido_id
                       and tido1.sucd_id = sucd1.sucd_id
                       and sucd1.cldo_id in (1,2,3,4,5,6)
                       and docu1.situacao not in ('T','B','C')))
             or
            (exists ( select null
                         from fep_processos_documentos   prdc,
                              fep_documentos             docu1,
                              fep_tipos_documentos       tido1,
                              fep_sub_classes_documentos sucd1
                        where prdc.proc_id  = proc.proc_id
                          and prdc.docu_id  = docu1.docu_id
                          and docu1.tido_id = tido1.tido_id
                          and tido1.sucd_id = sucd1.sucd_id
                          and sucd1.cldo_id in (1,2,3,4,5,6)
                          and docu1.situacao not in ('T','B','C'))))))
           or (proc.situacao in ('A','S')))
                         GROUP BY proc.seto_id,
                                  seto.sigla
                         UNION ALL
                        SELECT 3             tipo_registro, -- De 01/07/2009 até data informada
                        -- em 11/03/2009 cfe. sol. da Presidencia passa a ser De 01/01/2009 -- chamado 23273
                               proc.seto_id  seto_id,
                               seto.sigla    sigla,
                               0             nro_solicitados,
                               count(*)      nro_emitidos,
                               0             aguarda_doc
                          FROM fep_processos              proc,
                               fep_tipos_documentos       tido,
                               fep_sub_classes_documentos sucd,
                               fep_setores                seto
                         WHERE (p_setor  = 0 OR proc.seto_id = p_setor )
                           and proc.tido_id              = tido.tido_id
                           and tido.sucd_id              = sucd.sucd_id
                           and sucd.cldo_id      in ( 1,2,3,4,5,6 )
                           and proc.seto_id              = seto.seto_id
                           AND TRUNC(proc.data_entrada)       <= p_data
                           AND TRUNC(proc.data_entrada)       >= TRUNC(TO_DATE('01/01/2009','DD/MM/YYYY'))
                           and ((    (proc.situacao not in ('A','S','I')
            and
           (( exists ( select null
                 from fep_documentos             docu1,
                           fep_tipos_documentos       tido1,
                           fep_sub_classes_documentos sucd1
                     where docu1.proc_id = proc.proc_id
                       and docu1.tido_id = tido1.tido_id
                       and tido1.sucd_id = sucd1.sucd_id
                       and sucd1.cldo_id in (1,2,3,4,5,6)
                       and docu1.situacao not in ('T','B','C')))
             or
           (exists ( select null
                         from fep_processos_documentos   prdc,
                              fep_documentos             docu1,
                              fep_tipos_documentos       tido1,
                              fep_sub_classes_documentos sucd1
                        where prdc.proc_id  = proc.proc_id
                          and prdc.docu_id  = docu1.docu_id
                          and docu1.tido_id = tido1.tido_id
                          and tido1.sucd_id = sucd1.sucd_id
                          and sucd1.cldo_id in (1,2,3,4,5,6)
                          and docu1.situacao not in ('T','B','C'))))))
           or (proc.situacao in ('A','S')))
                         GROUP BY proc.seto_id,
                                  seto.sigla)
                GROUP BY tipo_registro,
                         seto_id,
                         sigla
                ORDER BY tipo_registro,
                          seto_id)
   LOOP
      -- Atualiza as variáveis para inclusão.
      IF rpro.tipo_registro    = 1 THEN
         wsolicitado1   := rpro.nro_solicitados;
         wemitido1      := rpro.nro_emitidos;
         waguarda_doc1  := rpro.aguarda_doc;
         wsolicitado2   := 0;
         wemitido2      := 0;
         waguarda_doc2  := 0;
         wsolicitado3   := 0;
         wemitido3      := 0;
         waguarda_doc3  := 0;
      ELSIF rpro.tipo_registro = 2 THEN
         wsolicitado1   := 0;
         wemitido1      := 0;
         waguarda_doc1  := 0;
         wsolicitado2   := rpro.nro_solicitados;
         wemitido2      := rpro.nro_emitidos;
         waguarda_doc2  := rpro.aguarda_doc;
         wsolicitado3   := 0;
         wemitido3      := 0;
         waguarda_doc3  := 0;
      ELSIF rpro.tipo_registro = 3 THEN
         wsolicitado1   := 0;
         wemitido1      := 0;
         waguarda_doc1  := 0;
         wsolicitado2   := 0;
         wemitido2      := 0;
         waguarda_doc2  := 0;
         wsolicitado3   := rpro.nro_solicitados;
         wemitido3      := rpro.nro_emitidos;
         waguarda_doc3  := rpro.aguarda_doc;
      END IF;

      -- Verifica se já existe o setor na tabela.
      BEGIN
         SELECT 1
           INTO wexiste
           FROM FEP_AUX_PROR1720_REL
          WHERE seto_id     = rpro.seto_id
            AND usuario     = wusuario;

         -- Se existir o setor, atualiza conforme o tipo de registro.
         UPDATE FEP_AUX_PROR1720_REL
            SET solicitado1   = NVL(solicitado1, 0)  + wsolicitado1,
                emitido1      = NVL(emitido1, 0)     + wemitido1,
                aguarda_doc1  = NVL(aguarda_doc1, 0) + waguarda_doc1,
                solicitado2   = NVL(solicitado2, 0)  + wsolicitado2,
                emitido2      = NVL(emitido2, 0)     + wemitido2,
                aguarda_doc2  = NVL(aguarda_doc2, 0) + waguarda_doc2,
                solicitado3   = NVL(solicitado3, 0)  + wsolicitado3,
                emitido3      = NVL(emitido3, 0)     + wemitido3,
                aguarda_doc3  = NVL(aguarda_doc3, 0) + waguarda_doc3
          WHERE seto_id   = rpro.seto_id
            AND usuario   = wusuario;

      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            -- Inseri na tabela quando não encontra o setor.
            INSERT INTO FEP_AUX_PROR1720_REL
                       (usuario,          seto_id,            sigla,
                        solicitado1,      emitido1,           aguarda_doc1,
                        solicitado2,      emitido2,           aguarda_doc2,
                        solicitado3,      emitido3,           aguarda_doc3
                        )
                VALUES (wusuario,         rpro.seto_id,       rpro.sigla,
                        wsolicitado1,     wemitido1,          waguarda_doc1,
                        wsolicitado2,     wemitido2,          waguarda_doc2,
                        wsolicitado3,     wemitido3,          waguarda_doc3);
      END;
   END LOOP;

   COMMIT;

   -- Emissao de Documentos

   open c1;
   loop
        fetch c1 into nSeto_id, nEmitidos2007, nEmitidos2008, nEmitidos2009;
        if c1%notfound then
             close c1;
           exit;
        else
           begin
             update FEP_AUX_PROR1720_REL
                set DOC_EMITIDO_2007 = nEmitidos2007,
                    DOC_EMITIDO_2008 = nEmitidos2008,
                    DOC_EMITIDO_2009 = nEmitidos2009
              where usuario = wUsuario
                and seto_id = nSeto_id;
             commit;
           end;
        end if;
   end loop;

   commit;

end;
PROCEDURE PR_EXCLUI_INFORMACOES_AUT
 IS
--nPrcr_id  number(10);
/*  cursor c1 is
     select prcr_id
       from fep_documentos          docu,
            fep_aux_proc_cond_restr prcr
      where prcr.docu_id_licenca = docu.docu_id
        and docu.data_assinatura_fisica is not null
        and docu.data_assinatura_fisica < trunc(sysdate - 7)
        and exists ( select null
                       from fep_aux_cond_restr_informacoes ainf
                      where ainf.prcr_id = prcr.prcr_id );
*/
begin
   -- Rotina diária que exclui os registros de informação usados no parecer
   -- das licenças automáticas assinadas a mais de 7 dias
   --                            Malu 19/03/2009

/*
   -- deixado de excluir porque os usuários estão perdendo o histórico do que escreveram nas informações
   --                                                             Malu 20/10/2016

   open c1;
   loop
     fetch c1 into nPrcr_id;
     if c1%notfound then
        close c1;
        exit;
     else
        begin
          delete
            from fep_aux_cond_restr_informacoes
           where prcr_id = nPrcr_id;
        end;
     end if;
   end loop;
   commit;
*/

     --------------------------------------------------------------------
     -- incluida a rotina de envio de emails para as juntas dos
     -- processos com juntadas no SOL
     -- Incluida a rotina aqui porque não está sendo possivel
     -- gerar novo JOB para execução com erro de data que está acontecendo
     -- e que o DBA está verificando    ( Malu 02/05/2019 )
     --------------------------------------------------------------------
     begin
        pck_procergs.PR_ENVIA_EMAIL_JUNTA;
     end;

   -----------------------------------------------------------------------------
   -- executa a rotina de envio de email as juntas por andamento
   -- não criado rotina especifica porque não está conseguindo criar novas
   -- rotinas com horário para agendar      Malu 08/05/2019
   -------------------------------------------------------------------------

   begin
       pck_procergs.PR_EMAIL_JUNTA_ANDAMENTOS;
   end;


end;


FUNCTION FC_CHEFE_DOCU_AUTOM
 (P_SETO_ID IN NUMBER
 ,P_USER IN VARCHAR2
 )
 RETURN VARCHAR2
 IS
  nPess_id          number(10);
  vParametro     varchar2(30);
  nCont                number(2);
  vSimNao          varchar2(1)  := 'N';

  cursor c11 is
     select func.pess_id
       from fep_funcionarios   func
      where func.username = p_user;

  cursor c12 is
     select esta.pess_id
       from fep_estagiarios esta
      where esta.username = p_user;


  cursor c2 is
     select count(*)
       from fep_acessos_parametros acpa,
                 fep_acessos_pessoas    acpe
      where acpa.parametro = vParametro
        and acpa.acpa_id   = acpe.acpa_id
        and acpe.pess_id   = nPess_id;
begin

  open  c11;
  fetch c11 into nPess_id;
  close c11;

  if nPess_id is null then
     open  c12;
     fetch c12 into nPess_id;
     close c12;
  end if;

  if nPess_id is null then
     vSimNao := 'N';
     return(vSimNao);
  end if;

  vParametro := 'CHEFIA_' || p_seto_id;

  open  c2;
  fetch c2 into nCont;
  close c2;

  if nCont > 0 then
     vSimNao := 'S';
     return(vSimNao);
  end if;

  return(vSimNao);

end;
FUNCTION FC_DOCU_PEND_ASSINAT
 (P_PROC_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
nCont          number(2);
  vDescricao     varchar2(50)  := null;

  cursor c1 is
     select count(*)
       from fep_documentos             docu,
            fep_tipos_documentos       tido,
            fep_sub_classes_documentos sucd
      where docu.tido_id  = tido.tido_id
        and tido.sucd_id  = sucd.sucd_id
        and sucd.cldo_id in (1,2,3,4,5,6)
        and docu.situacao = 'T'
        and docu.proc_id  = p_proc_id
        and docu.proc_id is not null
        and docu.tido_id != 360
    order by docu.data_emissao desc;

  cursor c2 is
     select count(*)
       from fep_processos_documentos   dopr,
            fep_documentos             docu,
            fep_tipos_documentos       tido,
            fep_sub_classes_documentos sucd
      where dopr.proc_id  = p_proc_id
        and dopr.docu_id  = docu.docu_id
        and docu.tido_id  = tido.tido_id
        and tido.sucd_id  = sucd.sucd_id
        and sucd.cldo_id in (1,2,3,4,5,6)
        and docu.situacao = 'T'
        and docu.tido_id != 360
        and docu.proc_id is null
   order by docu.data_emissao desc;
begin
  open  c1;
  fetch c1 into nCont;
  close c1;
  if nCont > 0 then
     vDescricao := 'Documento aguardando Assinatura Digital.';
     return(vDescricao);
  end if;

  -- modelagem nova
  open  c2;
  fetch c2 into nCont;
  close c2;
  if nCont > 0 then
     vDescricao := 'Documento aguardando Assinatura Digital.';
     return(vDescricao);
  end if;

  return(vDescricao);

end;
FUNCTION FC_PATH_DOC_INTERNET
 (P_DOCU_ID IN NUMBER
 ,P_DATA_EMISSAO IN DATE
 ,P_DM_ASS_DIGITAL IN VARCHAR2
 ,P_DATA_ASS_FISICA IN DATE
 ,P_TIDO_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
  vPath                  varchar2(100)  := 'N';
  dDataRef           date          := to_date('03/01/2006','dd/mm/rrrr');
  nAnoAss           number(4);
  vPathFilePDF    VARCHAR2(200);
  vParametro      VARCHAR2(200);

  CURSOR c1 IS
     SELECT par1.description
       FROM tpl_parameters par1
      WHERE par1.parameter_name = vParametro;
begin
  if p_tido_id = 2011 then   -- Documento Externo

      -- vPath := 'http://www.fepam.rs.gov.br/DocExterno/' || p_docu_id || '.pdf';
      -- PATH_PDF_I_DOCEXTERNO = http://www.fepam.rs.gov.br/doclics/docexterno/

        vParametro := 'PATH_PDF_I_DOCEXTERNO';   -- documento tido_id = 2011
        open  c1;
        fetch  c1 into vPathFilePDF;
        close c1;
        vPath := vPathFilePDF ||  p_docu_id || '.pdf';

  elsif
     p_dm_ass_digital = 'S' or p_data_emissao > dDataRef then
     nAnoAss := to_number(to_char(p_data_ass_fisica,'rrrr'));

        --vPath   := 'http://www.fepam.rs.gov.br/doclics/signed/' ||  nAnoAss || '/' || p_docu_id || '_signed.pdf';
        -- PATH_PDF_LICENCA_DIG = http://www.fepam.rs.gov.br/doclics/signed/

        vParametro := 'PATH_PDF_LICENCA_DIG';   -- documentos após 03/01/2006
        open  c1;
        fetch  c1 into vPathFilePDF;
        close c1;
        vPath := vPathFilePDF ||  nAnoAss || '/' || p_docu_id || '_signed.pdf';

 elsif
       p_dm_ass_digital = 'N' then

       --  vPath   := 'http://www.fepam.rs.gov.br/doclics/'  || p_docu_id || '.pdf';
       --  PATH_PDF_LICENCA = http://www.fepam.rs.gov.br/doclics/ant2006/

        vParametro := 'PATH_PDF_LICENCA';   -- documentos anterior a 03/01/2006
        open  c1;
        fetch  c1 into vPathFilePDF;
        close c1;
        vPath := vPathFilePDF ||  p_docu_id || '.pdf';

  else

     vPath   := 'naodisponivel.asp';

  end if;
  return(vPath);
end;
FUNCTION FC_EXISTE_PDF
 (P_DOCU_ID IN NUMBER
 ,P_SITUACAO IN VARCHAR2
 ,P_GER_AUTOM IN VARCHAR2
 )
 RETURN VARCHAR2
 IS
vSimNao      varchar2(1)  := 'N';
  vConversao   varchar2(1)  := 'N';

  cursor c1 is
    select doco.conversao
      from fep_documentos_conteudos doco
     where doco.docu_id = p_docu_id;
begin
  if  p_situacao in ('E','V','G','R','S','A','U','P') then
      if  p_ger_autom = 'S' then
            vSimNao := 'S';
      else
            open  c1;
            fetch c1 into vConversao;
            close c1;
            if  vConversao = 'S' then
                vSimNao := 'S';
            end   if;
      end   if;
  end if;
  return(vSimNao);
end;
FUNCTION FC_LISTAR_DOC_INTERNET
 (P_PROC_ID IN NUMBER
 ,P_DOCU_ID IN NUMBER
 ,P_SITUACAO IN VARCHAR2
 ,P_TIDO_ID IN NUMBER -- (TG) Não utilizado: estudar retirada...
 ,P_DATA_EMISSAO IN DATE
 )
 RETURN VARCHAR2
 IS
vSimNao       varchar2(1)   := 'N';
nContador    number(5);

cursor c1 is
      select count(*)
          from fep_documentos                            docu,
                    fep_tipos_documentos                tido,
                    fep_sub_classes_documentos sucd
      where docu.docu_id > p_docu_id
           and trunc(docu.data_emissao) >= trunc(p_data_emissao)
           and docu.proc_id = p_proc_id
           and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id
          and sucd.sucd_id in ( 10,11,12,15,16,
                                                   22,23,28,
                                                  30,31,32,33,34,
                                                  40,41,42,43,44,
                                                  50,51,52,53,54,55,56,57,58,
                                                  60,
                                                  83,84,85,86,87,201)
          and docu.situacao not in ('T','B','C');

cursor c2 is
      select count(*)
          from fep_documentos                            docu,
                    fep_processos_documentos     prdc,
                    fep_tipos_documentos                tido,
                    fep_sub_classes_documentos sucd
      where docu.docu_id > p_docu_id
           and trunc(docu.data_emissao) >= trunc(p_data_emissao)
           and docu.proc_id is null
           and docu.docu_id = prdc.docu_id
           and prdc.proc_id  = p_proc_id
           and docu.tido_id   = tido.tido_id
           and tido.sucd_id   = sucd.sucd_id
           and sucd.sucd_id in ( 10,11,12,15,16,
                                                   22,23,28,
                                                  30,31,32,33,34,
                                                  40,41,42,43,44,
                                                  50,51,52,53,54,55,56,57,58,
                                                  60,
                                                  83,84,85,86,87,201)
          and docu.situacao not in ('T','B','C');
BEGIN

  IF p_situacao IN ('E') THEN
     vSimNao := 'S';
     RETURN(vSimNao);
  END IF;

   OPEN c1;
   FETCH c1 INTO nContador;
   CLOSE c1;
   IF nContador = 0 THEN
      OPEN c2;
      FETCH c2 INTO nContador;
      CLOSE c2;
  END IF;
  IF nContador > 0 THEN   -- tem Documento Licenciatório mais recente no mesmo processo
      vSimNao := 'N';
     RETURN(vSimNao);
 END IF;


 -- alterado para estas situações cfme Sup 22531 Arai-DL ( Malu 03/12/2008 )
  -- E - EM VIGOR
  -- V - VENCIDO
  -- G - PRORROGADO

  IF p_situacao IN ('E','V','G') THEN
     vSimNao := 'S';
  END IF;
  RETURN(vSimNao);
END;

FUNCTION FC_MOSTRAR_PROC ( P_PROC_ID IN NUMBER
                          ,P_ATAN_ID IN NUMBER
                          ,P_CLASSE IN NUMBER ) RETURN VARCHAR2 IS
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 17/09/2024
  | Purpose: Fechar cursores antes do final dos processos.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/

  vSimNao       varchar2(1) := 'N';
  nContador     number(5)   := 0;
  nContLic      number(5);
  nContLicProc  number(5)   := 0;
  nContAmpl     number(5);
  nContaLO      number(5)   := 0;
  nLOEmitida    number(5)   := 0;
  nContMaisRec  number(5)   := 0;
  nContVigor        number(3) := 0;
  nTido_id      number(5);

  cursor c1 is
   select proc.proc_id,
          proc.tido_id,
          proc.data_entrada,
          proc.situacao,
          sucd.sucd_id,
          to_number(decode(sucd.sucd_id, 10,1,
                                         11,1,
                                         12,1,
                                         15,1,
                                         16,1,
                                         17,1,
                                         18,1,28,1,sucd.sucd_id )) classe
    from  fep_responsabilidades      resp,
          fep_processos              proc,
          fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd
    where resp.atan_id = p_atan_id
      and resp.resp_id = proc.resp_id
      and proc.situacao not in ('S')
      and proc.tido_id = tido.tido_id
      and tido.em_uso  = 'S'
      and tido.sucd_id = sucd.sucd_id
      and ( sucd.sucd_id in ( 10, 11,12,15,16,17,18,
                              22, 23,28,
                              30, 31,32,33,34,
                              40, 41,42,43,44,
                              50, 51,52,53,54,55,56,57,58,
                              60, 83,84,85,86,87,422,426) --CS-64670 ALEXANDERSS Dia: 22/09/2025 - Inclusão "426"
       or   sucd.cldo_id in ( 100,101,200,201,300))
      and to_number(decode(sucd.sucd_id, 10,1,
                                         11,1,
                                         12,1,
                                         15,1,
                                         16,1,
                                         17,1,
                                         18,1, 28,1, sucd.sucd_id )) = p_classe
union all
select
       proc.proc_id,
       proc.tido_id,
       proc.data_entrada,
       proc.situacao,
       sucd.sucd_id,
       to_number(decode(sucd.sucd_id,
                           10,1,
                           11,1,
                           12,1,
                           15,1,
                           16,1,
                           17,1,
                           18,1,28,1,sucd.sucd_id )) classe
  from
       fep_responsabilidades      resp,
       fep_processos              proc,
       fep_empreend_processos     epro,
       fep_tipos_documentos       tido,
       fep_sub_classes_documentos sucd
 where
       resp.atan_id = p_atan_id
   and resp.tipa_id not in (3,4,9,13)
   and resp.resp_id = epro.resp_id
   and epro.proc_id = proc.proc_id
   and proc.situacao not in ('S')
   and proc.resp_id is null
   and proc.tido_id = tido.tido_id
   and tido.em_uso  = 'S'
   and tido.sucd_id = sucd.sucd_id
   and ( sucd.sucd_id in ( 10,11,12,15,16,17,18,
                                               22,23,28,
                                               30,31,32,33,34,
                                               40,41,42,43,44,
                                               50,51,52,53,54,55,56,57,58,
                                               60,
                                               83,84,85,86,87,422,426) --CS-64670 ALEXANDERSS Dia: 22/09/2025 - Inclusão "426"
                   or
              sucd.cldo_id in ( 100,101,200,201,300))
   and to_number(decode(sucd.sucd_id,
                           10,1,
                           11,1,
                           12,1,
                           15,1,
                           16,1,
                           17,1,
                           18,1,28,1,sucd.sucd_id )) = p_classe
order by 6, 3 desc, 5 desc;

r1   c1%rowtype;

cursor c2 is
   select count(*)
     from fep_documentos             docu,
          fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd
    where docu.proc_id = r1.proc_id
      and docu.tido_id = tido.tido_id
      and tido.em_uso  = 'S'
      and tido.sucd_id = sucd.sucd_id
      and ( sucd.sucd_id in ( 10,11,12,15,16,17,18,
                                                  22,23,28,
                                                  30,31,32,33,34,
                                                  40,41,42,43,44,
                                                  50,51,52,53,54,55,56,57,58,
                                                  60,
                                                  83,84,85,86,87)
                   or
              sucd.cldo_id in ( 100,101,200,201,300))
     and docu.situacao not in ( 'B','T','C','P' )
     and docu.proc_id is not null;


cursor c21 is
   select count(*)
     from fep_documentos             docu,
          fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd
    where docu.proc_id = r1.proc_id
      and docu.tido_id = tido.tido_id
      and tido.em_uso  = 'S'
      and tido.sucd_id = sucd.sucd_id
      and ( sucd.sucd_id in ( 10,11,12,15,16,17,18,
                                                  22,23,28,
                                                  30,31,32,33,34,
                                                  40,41,42,43,44,
                                                  50,51,52,53,54,55,56,57,58,
                                                  60,
                                                  83,84,85,86,87)
                   or
              sucd.cldo_id in ( 100,101,200,201,300))
     and docu.situacao in( 'E','G')
     and docu.proc_id is not null;

cursor c3 is
   select count(*)
     from fep_documentos             docu,
          fep_processos_documentos   prdc,
          fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd
    where docu.docu_id = prdc.docu_id
      and prdc.proc_id = r1.proc_id
      and docu.tido_id = tido.tido_id
      and tido.em_uso  = 'S'
      and tido.sucd_id = sucd.sucd_id
      and ( sucd.sucd_id in ( 10,11,12,15,16,17,18,
                                                  22,23,28,
                                                  30,31,32,33,34,
                                                  40,41,42,43,44,
                                                  50,51,52,53,54,55,56,57,58,
                                                  60,
                                                  83,84,85,86,87)
                   or
              sucd.cldo_id in ( 100,101,200,201,300))
     and docu.situacao not in ( 'B','T','C','P' )
     and docu.proc_id is null;

cursor c31 is
   select count(*)
     from fep_documentos             docu,
          fep_processos_documentos   prdc,
          fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd
    where docu.docu_id = prdc.docu_id
      and prdc.proc_id = r1.proc_id
      and docu.tido_id = tido.tido_id
      and tido.em_uso  = 'S'
      and tido.sucd_id = sucd.sucd_id
      and ( sucd.sucd_id in ( 10,11,12,15,16,17,18,
                                                 22,23,28,
                                                 30,31,32,33,34,
                                                 40,41,42,43,44,
                                                 50,51,52,53,54,55,56,57,58,
                                                 60,
                                                 83,84,85,86,87)
                   or
              sucd.cldo_id in ( 100,101,200,201,300))
     and docu.situacao = 'E'
     and docu.proc_id is null;


cursor c41 is
   select count(*)
     from fep_documentos             docu,
          fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd,
          fep_processos              proc,
          fep_responsabilidades      resp
    where docu.proc_id = proc.proc_id
      and proc.resp_id = resp.resp_id
      and resp.atan_id = p_atan_id
      and proc.tido_id = nTido_id
      and docu.tido_id = tido.tido_id
      and tido.sucd_id = sucd.sucd_id
      and ( sucd.sucd_id in ( 10,11,12,15,16,17,18,
                                                  22,23,28,
                                                  30,31,32,33,34,
                                                  40,41,42,43,44,
                                                  50,51,52,53,54,55,56,57,58,
                                                  60,
                                                  83,84,85,86,87)
                   or
              sucd.cldo_id in ( 100,101,200,201,300))
     and docu.situacao not in ( 'B','T' ,'C','P')
     and trunc(docu.data_emissao) > trunc(r1.data_entrada)
     and proc.proc_id != p_proc_id
     and docu.proc_id is not null;

cursor c42 is
   select count(*)
     from fep_documentos             docu,
          fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd,
          fep_processos_documentos   prdc,
          fep_processos              proc,
          fep_empreend_processos     epro,
          fep_responsabilidades      resp
    where docu.docu_id = prdc.docu_id
      and proc.proc_id = prdc.proc_id
      and proc.proc_id = epro.proc_id
      and epro.resp_id = resp.resp_id
      and resp.tipa_id not in (3,4,9,13)
      and resp.atan_id = p_atan_id
      and proc.tido_id = nTido_id
      and docu.tido_id = tido.tido_id
      and tido.sucd_id = sucd.sucd_id
      and ( sucd.sucd_id in ( 10,11,12,15,16,17,18,
                                                  22,23,28,
                                                  30,31,32,33,34,
                                                  40,41,42,43,44,
                                                  50,51,52,53,54,55,56,57,58,
                                                  60,
                                                  83,84,85,86,87)
                   or
              sucd.cldo_id in ( 100,101,200,201,300))
     and docu.situacao not in ( 'B','T','C','P' )
     and trunc(docu.data_emissao) > trunc(r1.data_entrada)
     and proc.proc_id != p_proc_id
     and docu.proc_id is null;
begin

  open c1;
  loop
     fetch c1 into r1;
     if c1%notfound then
        close c1;
        exit;
     else

        nContador := nContador + 1;

        open  c2;
        fetch c2 into nContLic;
        close c2;
        if nContLic = 0 then
           open  c3;
           fetch c3 into nContLic;
           close c3;
        end if;

        -- Processo arquivado sem documento emitido não mostra quando não for o mais recente
        if r1.situacao = 'A' and nContLic = 0 then
           nContador := nContador - 1;
           if r1.proc_id = p_proc_id then
              if nContador > 1 then
                 vSimNao := 'N';

                 close c1; -- (TG) Adicionado

                 exit;
              end if;
           end if;
        end if;

        if r1.tido_id in (120,125) then
           nContaLO := nContaLO + 1;
           if nContLic > 0 then
              nLOEmitida := nLOEmitida + 1;
           end if;
        end if;
         -- Verifica se doc ampliação em Vigor ou Prorrogada
         if r1.tido_id in (126) then
               open  c21;
               fetch c21 into nContVigor;
              close c21;
              if nContVigor > 0 then
                    vSimNao := 'S';

                    close c1; -- (TG) Adicionado

                    return(vSimNao);
              end if;
         end if;

       --- Exceção para Autorização Geral - e para fora do estado lista todas que estiverem EM VIGOR  ( Malu 16/03/2009 )
        if r1.tido_id in (400,431,432) then
               open  c21;
               fetch c21 into nContVigor;
              close c21;
              if nContVigor > 0 then
                    vSimNao := 'S';

                    close c1; -- (TG) Adicionado

                    return(vSimNao);
              end if;
       end if;

        if r1.proc_id = p_proc_id then
           if nContador = 1 then
              vSimNao := 'S';

              close c1; -- (TG) Adicionado

              exit;
           end if;
           if r1.tido_id in (120,125) then
              if nContaLO = 1 or
                 nLOEmitida <= 1 then
                 vSimNao := 'S';

                 close c1; -- (TG) Adicionado

                 exit;
              else
                 vSimNao := 'N';

                 close c1; -- (TG) Adicionado

                 exit;
              end if;
           end if;

           -- se já tem LO mais recente com doc Emitido não lista processo de LP ou LI
           if r1.tido_id in (100,110) then
              if nLOEmitida > 0 then
                 vSimNao := 'N';

                 close c1; -- (TG) Adicionado

                 exit;
              end if;
           end if;

        end if;

        if nContLic > 0 then
           nContLicProc := nContLicProc + 1;
        end if;

        if r1.proc_id = p_proc_id then

           -- Ampliação e sem documento emitido
           if r1.tido_id in (101,102,103,104,106,107,108,111,112,113,114,116,117,118) then
              if nContLic = 0 then -- sem documento emitido
                 vSimNao := 'S';

                 close c1; -- (TG) Adicionado

                 exit;
              else
                 -- Verifica se doc ampliação em Vigor
                 open  c21;
                 fetch c21 into nContAmpl;
                 close c21;
                 if nContAmpl = 0 then
                    open  c31;
                    fetch c31 into nContAmpl; -- modelagem nova
                    close c31;
                 end if;
              end if;
              if nContAmpl > 0 then  -- tem documento Em Vigor para ampliação
                 vSimNao := 'S';
              else
                 -- verifica se não tem documento de tipo 120 emitido mais recente
                 -- se não tiver lista
                 nTido_id := 120;
                 open  c41;
                 fetch c41 into nContMaisRec;
                 close c41;
                 if nContMaisRec = 0 then
                    open  c42;
                    fetch c42 into nContMaisRec;  -- modelagem nova
                    close c42;
                 end if;
                 if nContMaisRec = 0 then
                    vSimNao := 'S';
                 else
                    vSimNao := 'N';
                 end if;
              end if;
              exit;
           end if;

           -- Documento do tipo 410 só listar o último - em Vigor ou Não
           if r1.tido_id = 410 then
              nTido_id := 410;
              open  c41;
              fetch c41 into nContMaisRec;
              close c41;
              if nContMaisRec = 0 then
                 open  c42;
                 fetch c42 into nContMaisRec;  -- modelagem nova
                 close c42;
              end if;
              if nContMaisRec > 0 then  -- tem documento em proc mais recente
                 vSimNao := 'N';

                 close c1; -- (TG) Adicionado

                 exit;
              end if;
           end if;

           if nContador > 1 then
-- Karina 08/02/2023 Chamado 41182: permitir que sejam exibidos Processos anteriores, ainda mais quando for Lic Prévia ou LI que antecede a LO, deve ser apresentada.
--              -- Verifica se teve Documentos listados em Proc mais recentes
--              if nContLicProc > 1 then
--                 vSimNao := 'N';
--              else
                 vSimNao := 'S';
--              end if;
           end if;

           close c1; -- (TG) Adicionado

           exit;

        end if;
     end if;

  end loop;

  return(vSimNao);

end;
FUNCTION FC_PORTE_LU
 (P_RAAT_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
vSimNao      varchar2(1) := 'N';

   cursor c1 is
    select rapo.impacto_local
      from fep_ramos_portes rapo
     where rapo.raat_id = p_raat_id
       and rapo.porte   = 'I';
BEGIN
   OPEN  c1;
   fetch c1 into vSimNao;
   close c1;
   return(vSimNao);
END;
FUNCTION FC_GRUPO_LIC_DIF
 (P_TIDO_ID IN NUMBER
 ,P_RAAT_ID IN NUMBER
 ,P_MEDIDA_PORTE IN NUMBER
 ,P_DATA_REFERENCIA IN DATE
 ,P_PROC_ID_RENOV IN NUMBER
 ,P_CPFCNPJESTR IN VARCHAR2
 ,P_TIPODOCPESS IN NUMBER
 )
 RETURN VARCHAR2
 IS
-- PL/SQL Specification
vMensagem     varchar2(500) := null;
nGrupo        number(2);
vPorte          varchar2(1);
nCldo_id    number(3);
dDataRef                    date;
dDataIndice               date  :=  to_date('01/07/2008','dd/mm/rrrr');
nTido_id                    number(5);
nCpfcnpj                    number(14)    := null;
vDocEstrang            varchar2(30)  := null;

cursor  c1  is
        select  nvl(raat.dm_grupo_lic_dif,0)
          from  fep_ramos_atividades raat
        where   raat.raat_id = p_raat_id;

cursor c2 is
        select  sucd.cldo_id
        from    fep_tipos_documentos      tido,
                  fep_sub_classes_documentos sucd
        where   tido.tido_id = P_TIDO_ID
        and     tido.sucd_id = sucd.sucd_id;

cursor c3 is
        select  proc.tido_id
                  from    fep_processos                      proc
        where   proc.proc_id = p_proc_id_renov;

-- PL/SQL Block
BEGIN


IF p_data_referencia IS NULL THEN
   dDataRef := SYSDATE;
ELSE
  dDataRef := p_data_referencia;
END IF;

OPEN   c2;
FETCH  c2  INTO nCldo_id;
CLOSE  c2;

IF p_proc_id_renov IS NOT NULL THEN
      OPEN  c3;
      FETCH c3  INTO nTido_id;
      CLOSE c3;
END IF;


-- Alteração da Resolução para Porte Mínino e LU    Res 008/2008    ( Malu 22/07/2008 )

IF dDataRef >= dDataIndice THEN
      IF  nCldo_id = 1 THEN
    vPorte := busca_porte(p_raat_id, p_medida_porte, NULL);
  OPEN  c1;
    FETCH c1 INTO nGrupo;
    CLOSE c1;

    IF  vPorte  =  'I'     then
                             if p_tido_id = 151 then
                                       if   p_raat_id not in (126.10, 126.20)  then
                                            vMensagem := 'LICENÇA ÚNICA Inválida para este Ramo de Atividade, ' ||
                                                                                 'conforme Resolução nº 008/2008 de 01/07/2008.';
                                                     RETURN(vMensagem);
                                     else
                                                  if p_cpfCNPJEstr is not null and p_tipoDocPess is not null then
                                                            if p_tipoDocPess in (0,1) then
                                                                     nCpfcnpj             := to_number(p_cpfCNPJEstr);
                                                            else
                                                                     vDocEstrang      := p_cpfCNPJEstr;
                                                           end if;
                                                            vMensagem := pck_integrados.fc_pess_porte_lu (nCpfcnpj, vDocEstrang, p_tipoDocPess, p_medida_porte, p_raat_id, p_tido_id);
                                                            RETURN(vMensagem);
                                                 end if;
                                      end if;
                           else
                                      if   p_raat_id in (126.10, 126.20) and p_tido_id not in (140,360)  then

                                                   -- faz a chamada para a função que verifica se tem áreas para o mesmo cpf ou cnpj .. então devem ser somadas ( Malu 01/10/2009 )

                                                  if p_cpfCNPJEstr is not null and p_tipoDocPess is not null then
                                                            if p_tipoDocPess in (0,1) then
                                                                     nCpfcnpj             := to_number(p_cpfCNPJEstr);
                                                            else
                                                                     vDocEstrang      := p_cpfCNPJEstr;
                                                           end if;
                                                             vMensagem := pck_integrados.fc_pess_porte_lu (nCpfcnpj, vDocEstrang, p_tipoDocPess, p_medida_porte, p_raat_id, p_tido_id);
                                                              RETURN(vMensagem);

                                                 else
                                                        vMensagem := 'Deverá ser solicitada a LICENÇA ÚNICA para as atividades de Porte Mínimo deste Ramo, ' ||
                                                                                         'conforme Resolução nº 008/2008 de 01/07/2008.';
                                                             RETURN(vMensagem);
                                                  end if;

                                      end if;
                           end if;
                else
                        if p_tido_id = 151  then
                      vMensagem := 'LICENÇA ÚNICA Inválida para este Porte, ' ||
                                                             'conforme Resolução nº 008/2008 de 01/07/2008.';
                                RETURN(vMensagem);
                      end if;
               end if;

    END  IF;
END IF;

 -- 161  - LICENÇA DE INSTALAÇÃO E OPERAÇÃO
 -- 1206 - PARECER PARA LICENÇA DE INSTALAÇÃO E OPERAÇÃO
-- chamaod de suporte 35258 Crisitano(Por gentileza, lincar o tipo doc 1206 e 161 ao cod ramo 138,20. Obrigado.)
  IF p_tido_id in (161,1206) THEN
             if p_raat_id not in(138.20,  3416.10)  THEN
                       vMensagem := 'Código de Documento (' || p_tido_id || ') só é permitido para os Ramos de atividade ' ||
                                                   '3416,10-PARCELAMENTO DO SOLO RURAL PARA FINS DE REFORMA AGRARIA e 138,20-PROPRIEDADE RURAL COM PRODUÇÃO AGRICOLA ORGÂNICA';
                      RETURN(vMensagem);
           end if;

  end if;


  -- 152 - LICENÇA ÚNICA DE INSTALAÇÃO E OPERAÇÃO
  -- 1205 - PARECER PARA LICENÇA ÚNICA DE INSTALAÇÃO E OPERAÇÃO

  if p_tido_id in (152,1205) then
     if nGrupo != 1 then -- Agroindústria
        vMensagem := 'Tipo de Documento (' || p_tido_id ||
                     ') permitido somente para Ramos de atividade ' ||
                     'do Grupo de Agroindústria cfme Conama 385/2006.';
        return(vMensagem);
     else
        if vPorte != 'I' then
           vMensagem := 'Tipo de Documento (' || p_tido_id ||
                        ') permitido somente para Ramos de atividade ' ||
                        'do Grupo de Agroindústria com Porte Mínimo cfme Conama 385/2006.';
           return(vMensagem);
        end if;
     end if;
  end if;

  return(vMensagem);

end;
FUNCTION FC_VER_PORTE_ALT
 (P_RAAT_ID IN NUMBER
 ,P_MEDIDA_PORTE IN NUMBER
 ,P_DATA IN DATE
 )
 RETURN VARCHAR2
 IS
VPorte        varchar2(1) := null;
  dDataAlt      date;
  dDataEntrada  date;
  dDataRef      date := null;
  nCont         number(5) := 0;

  cursor c1 is
    select trunc(hirp.data_inclusao) data_inclusao
      from fep_hist_ramos_portes hirp
     where hirp.raat_id = p_raat_id
     group by trunc(hirp.data_inclusao)
     order by trunc(hirp.data_inclusao) desc;

  cursor c2 is
    select substr(decode(hirp.porte_anterior,
                                      'MINIMO'     ,'I',
                                      'PEQUENO'    ,'P',
                                      'MEDIO'      ,'M',
                                      'GRANDE'     ,'G',
                                      'EXCEPCIONAL','E',null),1,1) porte
      from fep_hist_ramos_portes hirp
     where trunc(hirp.data_inclusao) = dDataRef
       and (p_medida_porte between hirp.limite_inf_anterior and hirp.limite_sup_anterior)
       and hirp.raat_id = p_raat_id
     order by hirp.hirp_id;
begin
   dDataEntrada := trunc(p_data);
   open  c1;
   loop
      fetch c1 into dDataAlt;
      if c1%notfound then
         exit;
      else
         nCont := nCont + 1;
         if dDataEntrada > dDataAlt then
            if nCont = 1 then
               close c1;
               vPorte := null; -- usa o porte atual da tabela fep_ramos_portes
               return(vPorte);
            end if;
         end if;
         if dDataEntrada < dDataAlt then
            dDataRef := dDataAlt;
         end if;
      end if;
   end loop;
   close c1;
   if dDataRef is not null then
      open  c2;
      fetch c2 into vPorte;
      close c2;
   end if;
   return(vPorte);
end;
FUNCTION FC_IMPLOC_DOCU
 (P_DOCU_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
vImpacto_Local    varchar2(1)   := null;
  nRaat_id          number(7,2)   := null;
  nMedida_Porte     number(12,4);

  cursor c1 is
     select ata1.raat_id,
            ata1.medida_porte
       from fep_atividades_antropicas ata1,
            fep_responsabilidades     resp,
            fep_processos             proc,
            fep_documentos            docu
      where ata1.atan_id = resp.atan_id
        and resp.resp_id = proc.resp_id
        and proc.proc_id = docu.proc_id
        and docu.docu_id = p_docu_id;
begin
   open  c1;
   fetch c1 into nRaat_id, nMedida_porte;
   close c1;
   if nRaat_id is not null then
      vImpacto_Local :=  fc_impacto_local(nRaat_id, substr(busca_porte(nRaat_id,nMedida_porte,null),1,1));
   end if;
   if vImpacto_Local is null then
      vImpacto_Local := 'N';
   end if;

   return(vImpacto_Local);
end;
PROCEDURE PR_PROC_SIT_DOCEMITIDO
 IS
  nProc_id            number(10);
  nTecnico            number(10);
  nChefeSetor         number(10);
--  nPresidente         number(10);
  nTecnicoProc        number(10);
  nCont               number(5);
  nContPrcr           number(5);
	
	-- Não efetuar essa validação pra tipo de DOC 2140 - DPAM
  -- Suporte 53768 - Cátia Jardim - 17/07/2024
  
 	-- Não efetuar essa validação pra tipo de DOC 2160 - 
  -- cfme Jorge-DL - (Malu - 17/09/2025)


  cursor c1 is
     select proc.proc_id                          proc_id,
                  proc.pess_id_respondido tecnico,
                 seto.pess_id                          chefe_setor
       from fep_processos proc,
                 fep_setores   seto
    where proc.situacao in ('L','R')
         and proc.seto_id = seto.seto_id(+)
         and (
           exists ( select null
                      from fep_documentos docu,
                           fep_tipos_documentos tido,
                           fep_sub_classes_documentos sucd
                     where docu.proc_id = proc.proc_id
                       and docu.tido_id not in ( 2140, 2160 )
                       and docu.tido_id = tido.tido_id
                       and tido.sucd_id = sucd.sucd_id
                       and sucd.cldo_id in (1,2,3,4,5,6,100,105)
                       and docu.situacao in ('E','V'))
              or
             exists ( select null
                        from fep_documentos docu,
                             fep_tipos_documentos tido,
                             fep_sub_classes_documentos sucd
                       where docu.proc_id = proc.proc_id
                         and docu.tido_id not in (2160)
                         and docu.tido_id = tido.tido_id
                         and tido.sucd_id = sucd.sucd_id
                         and sucd.cldo_id in (100,101,200,201)
                         and proc.tido_id != 120
                         and docu.situacao in ('E','V'))
              or
             exists ( select null
                        from fep_processos_documentos prdc,
                             fep_documentos docu,
                             fep_tipos_documentos tido,
                             fep_sub_classes_documentos sucd
                       where prdc.proc_id = proc.proc_id
                         and prdc.docu_id = docu.docu_id
                         and docu.tido_id not in (2160)
                         and docu.tido_id = tido.tido_id
                         and tido.sucd_id = sucd.sucd_id
                         and sucd.cldo_id in (1,2,3,4,5,6,100,105)
                         and docu.situacao in ('E','V'))
              or
             exists ( select null
                        from fep_processos_documentos prdc,
                             fep_documentos docu,
                             fep_tipos_documentos tido,
                             fep_sub_classes_documentos sucd
                       where prdc.proc_id = proc.proc_id
                         and prdc.docu_id = docu.docu_id
                         and docu.tido_id not in (2160)
                         and docu.tido_id = tido.tido_id
                         and tido.sucd_id = sucd.sucd_id
                         and sucd.cldo_id in (100,101,200,201)
                         and proc.tido_id != 120
                         and docu.situacao in ('E','V')));

  cursor c2 is
     select seto.pess_id
       from fep_setores seto
      where seto.seto_id = 1;
			
  -----------------------------------
  -- C - Ag Liberação Chefia
  -- T - Ag Assinatura
  -- K - Ag Publicação
  ----------------------------------
  cursor c3 is
     select count(*)
       from fep_documentos docu,
            fep_docs_setores_acordo scac
      where docu.proc_id = nProc_id
        and docu.docu_id = scac.docu_id
        and docu.situacao in ( 'C','T','K' );
	 
   cursor c4 is
     select count(*)
       from fep_aux_proc_cond_restr prcr
      where prcr.proc_id  = nProc_id
        and prcr.dm_ativo = 'S'
        and trunc(prcr.data_atualizacao) > trunc(sysdate) - 5;

begin
   open c1;
   loop
      fetch c1 into nProc_id, nTecnico, nChefeSetor;
      if c1%notfound then
         close c1;
         exit;
      else
         if nTecnico is null then
            if nChefeSetor is null then
               open  c2;
               fetch c2 into nTecnicoProc;
               close c2;
            else
               nTecnicoProc := nChefeSetor;
            end if;
         else
            nTecnicoProc := nTecnico;
         end if;

         -- verifica se tem documento pendente na ciência ( Malu 13/06/2018 )
         open  c3;
         fetch c3 into nCont;
         close c3;

         -- verifica se tem registro de PRCR ativo onde a última
         -- alteração foi a menos de 30 dias
         -- este prazo se justifica para processos que são reabertos
         -- para revogação do Doc Emitido e geração de novo documento
         -- então o analista tem 30 dias de prazo para fazer novo
         -- documento                        ( Malu 11/12/2020 )

         -- Jorge pediu para trocar de 30 para 5 dias
         --                   Malu 02/08/2022

         if nCont = 0 then
            open  c4;
            fetch c4 into nContPrcr;
            close c4;
            if nContPrcr > 0 then
               nCont := nContPrcr;
            end if;
         end if;

         ---------------------------------------------------------------
         -- Altera a situação do Processo para Doc Emitido
         -- se encontrar doc licenciatório já emitido e não
         -- tiver documento novo aguardando liberação ou
         -- não tiver registro para geração automática ativo modificado
         -- a menos de 30 dias      ( Malu 11/12/2020 )

         -- alterado de 30 para 5 dias, cfme solic Jorge-DL
         --                            Malu 02/08/2022
         ---------------------------------------------------------------
         if nCont = 0 then
            begin
                update fep_processos
                   set situacao             = 'D',
                       pess_id_respondido   = nTecnicoProc,
                       data_atualizacao     = sysdate,
                       operador_atualizacao = 'ROT AUT DOC EMIT'
                 where proc_id = nProc_id;
            end;
         end if;

      end if;
   end loop;
end;
FUNCTION FC_MAX_PROR0190
 (P_ATAN_ID IN NUMBER
 ,P_SUCD_ID IN NUMBER
 ,P_DATA_INICIO IN DATE
 ,P_DATA_FIM IN DATE
 ,P_SITUACAO IN VARCHAR2
 )
 RETURN NUMBER
 IS
nDocu_id                  number(10);
dDataAssinatura    date;
   cursor c1 is
      select docu.docu_id,
                   docu.data_assinatura_fisica
        from fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos              proc,
             fep_responsabilidades      resp
       where docu.proc_id = proc.proc_id
         and proc.resp_id = resp.resp_id
         and resp.atan_id = p_atan_id
         and docu.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and sucd.cldo_id  in (1,2,3,4,6)
         and (p_sucd_id =  0 or sucd.sucd_id =p_sucd_id)
         and ((p_data_inicio is null and p_data_fim is null) or
                trunc(docu.data_assinatura_fisica) between
               p_data_inicio and p_data_fim)
         and (p_situacao = '0' or docu.situacao = p_situacao)
union all
      select docu.docu_id,
                   docu.data_assinatura_fisica
        from fep_documentos                            docu,
                  fep_tipos_documentos                 tido,
                  fep_sub_classes_documentos sucd,
                  fep_processos_documentos     prdc,
                  fep_responsabilidades                 resp,
                  fep_empreend_processos          epro
       where
                  prdc.docu_id      = docu.docu_id
         and  prdc.proc_id       = epro.proc_id
          and epro.resp_id       = resp.resp_id
          and resp.atan_id      = p_atan_id
         and docu.tido_id        = tido.tido_id
         and tido.sucd_id        = sucd.sucd_id
         and sucd.cldo_id  in (1,2,3,4,6)
         and (p_sucd_id =  0 or sucd.sucd_id =p_sucd_id)
         and ((p_data_inicio is null and p_data_fim is null) or
                trunc(docu.data_assinatura_fisica) between
               p_data_inicio and p_data_fim)
         and (p_situacao = '0' or docu.situacao = p_situacao)
       order by 2 desc, 1 desc;
begin
   open  c1;
   fetch c1 into nDocu_id, dDataAssinatura;
   close c1;
   return(nDocu_id);
end;
FUNCTION FC_PROC_OS232007
 (P_PROC_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
nHipp_id            number(10);
  dDataParada         date;
  dDataRetorno        date;
  dDataAtual          date;
  dDataCalc           date;
  vArquiva            varchar2(1) := 'N';

  cursor c1 is
     select hipp.hipp_id,
            hipp.data_parada,
            hipp.data_retorno
       from fep_hist_paradas_processos hipp
      where hipp.proc_id = p_proc_id
   order by hipp.data_parada desc;
BEGIN

  open  c1;
  fetch c1 into nHipp_id, dDataParada, dDataRetorno;
  if c1%found then
     if dDataRetorno is null then
        select sysdate into dDataAtual from dual;
        dDataCalc := add_months(dDataParada,4);
        if trunc(dDataCalc) < trunc(dDataAtual) then
           vArquiva := 'S';
        end if;
     end if;
  end if;
  close c1;
  return(vArquiva);

END;
FUNCTION FC_PROC_ULT_PARADA
 (P_PROC_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nHipp_id            number(10);
  dDataParada         date;
  dDataRetorno        date;
  dDataAtual          date;
  nDiasParado         number(10) := 0;

  cursor c1 is
     select hipp.hipp_id,
            hipp.data_parada,
            hipp.data_retorno
       from fep_hist_paradas_processos hipp
      where hipp.proc_id = p_proc_id
   order by hipp.data_parada desc;
BEGIN

  open  c1;
  fetch c1 into nHipp_id, dDataParada, dDataRetorno;
  if c1%found then
     if dDataRetorno is null then
        select sysdate into dDataAtual from dual;
        nDiasParado := (TRUNC(dDataAtual) - TRUNC(dDataParada));
     end if;
  end if;
  close c1;
  return(nDiasParado);

END;

FUNCTION FC_PAGO_PROC
 (P_PROC_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nValorProc   number(13,2);

   cursor c1 is
      select sum(nvl(hipa.valor_pago,0) + nvl(hipa.valor_desconto,0)) valor
        from fep_historicos_cobrancas  hicb,
             fep_historicos_pagamentos hipa
       where hicb.proc_id = p_proc_id
         and hicb.hicb_id = hipa.hicb_id
         and hipa.status = 5
       group by hipa.hicb_id;
begin
  open  c1;
  fetch c1 into nValorProc;
  close c1;
  return(nValorProc);
end;

FUNCTION FC_ULT_PRORROGACAO
 (P_DOCU_ID IN NUMBER
 ,P_TIDO_ID IN NUMBER
 ,P_DATA_FIM_VIGENCIA IN DATE
 ,P_ATAN_ID IN NUMBER
 ,P_PROC_ID IN NUMBER
 ,P_DATA_ENTRADA IN DATE
 )
 RETURN NUMBER
 IS
  nDocu_id            number(10) := 0;
  nContador           number(5);
  nProc_id            number(10)  := null;
  nDias               number(5)   := null;
  dDataInicio         date;
  dDataEntrada        date;

  dDataFacult         date;
  ndiasFac            number(5);
  dDataInicioLic      date;
  dDataFimLic         date;


   cursor c1 is
      select docu.docu_id,
             docu.data_inicio_vigencia
        from fep_documentos            docu,
             fep_processos               proc,
             fep_responsabilidades resp
      where  docu.proc_id = proc.proc_id
        and  proc.resp_id = resp.resp_id
        and  docu.tido_id  = p_tido_id
        and  resp.atan_id = p_atan_id
        and  docu.situacao not in ('B','T','O','C','X','H','K')
   union all -- processos de integradora
      select distinct docu.docu_id,
             docu.data_inicio_vigencia
        from fep_documentos                    docu,
             fep_processos                       proc,
             fep_empreend_processos epro,
             fep_responsabilidades        resp
      where  docu.proc_id = proc.proc_id
        and  proc.proc_id = epro.proc_id
        and  resp.resp_id = epro.resp_id
        and  resp.tipa_id not in(3,9,13)
        and  docu.tido_id  = p_tido_id
        and  resp.atan_id = p_atan_id
        and  docu.situacao not in ('B','T','O','C','X','H','K')
     order by
                2 desc, 1 desc;

   cursor c2 is
             select proc1.proc_id,
                    trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                    proc1.data_entrada
               from fep_processos proc1,
                    fep_responsabilidades resp1
               where proc1.resp_id = resp1.resp_id
                 and resp1.atan_id    = p_atan_id
                 and proc1.tido_id in (105 ) and  p_tido_id in ( 105 )
                 and proc1.situacao not in ( 'A','S','D')
                 and proc1.proc_id != p_proc_id
                 and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                 and not exists ( select null
                                    from fep_documentos docu2
                                   where docu2.proc_id = proc1.proc_id
                                     and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                     and docu2.tido_id in (105,5105))
     union all
             select proc1.proc_id,
                    trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                    proc1.data_entrada
               from fep_processos proc1,
                    fep_responsabilidades resp1
               where proc1.resp_id = resp1.resp_id
                 and resp1.atan_id    = p_atan_id
                 and proc1.tido_id in ( 110,115 ) and  p_tido_id in ( 110,115 )
                 and proc1.situacao not in ( 'A','S','D')
                 and proc1.proc_id != p_proc_id
                 and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                 and not exists ( select null
                                    from fep_documentos docu2
                                   where docu2.proc_id = proc1.proc_id
                                     and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                     and docu2.tido_id in (110,520, 115))
     union all
             select proc1.proc_id,
                    trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                    proc1.data_entrada
               from fep_processos proc1,
                    fep_responsabilidades resp1
              where proc1.resp_id = resp1.resp_id
                and resp1.atan_id    = p_atan_id
                and proc1.tido_id in ( 116 ) and  p_tido_id in (116 )
                and proc1.situacao not in ( 'A','S','D')
                and proc1.proc_id != p_proc_id
                and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                and not exists ( select null
                                   from fep_documentos docu2
                                  where docu2.proc_id = proc1.proc_id
                                    and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                    and docu2.tido_id in (116,5116))
     union all
             select proc1.proc_id,
                    trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                    proc1.data_entrada
               from fep_processos proc1,
                    fep_responsabilidades resp1
              where proc1.resp_id = resp1.resp_id
                and resp1.atan_id    = p_atan_id
                 and proc1.tido_id in ( 117 ) and  p_tido_id in (117 )
                 and proc1.situacao not in ( 'A','S','D')
                 and proc1.proc_id != p_proc_id
                 and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                 and not exists ( select null
                                    from fep_documentos docu2
                                   where docu2.proc_id = proc1.proc_id
                                     and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                     and docu2.tido_id in (117,5117))
     union all
             select proc1.proc_id,
                    trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                    proc1.data_entrada
               from fep_processos proc1,
                    fep_responsabilidades resp1
               where proc1.resp_id = resp1.resp_id
                 and resp1.atan_id    = p_atan_id
                 and proc1.tido_id in ( 118 ) and  p_tido_id in (118 )
                 and proc1.situacao not in ( 'A','S','D')
                 and proc1.proc_id != p_proc_id
                 and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                 and not exists ( select null
                                    from fep_documentos docu2
                                    where docu2.proc_id = proc1.proc_id
                                      and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                      and docu2.tido_id in (118,5118))
     union all
             select proc1.proc_id,
                    trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                    proc1.data_entrada
               from fep_processos proc1,
                    fep_responsabilidades resp1
              where proc1.resp_id = resp1.resp_id
                and resp1.atan_id    = p_atan_id
                and proc1.tido_id in ( 120,125 ) and  p_tido_id in ( 120, 125 )
                and proc1.situacao not in ( 'A','S','D')
                and proc1.proc_id != p_proc_id
                and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                and not exists ( select null
                                   from fep_documentos docu2
                                  where docu2.proc_id = proc1.proc_id
                                    and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                    and docu2.tido_id in (120,125,530))
     union all -- processos de integradoras com mais de 1 empreendimento
             select proc1.proc_id,
                    trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                    proc1.data_entrada
               from fep_processos           proc1,
                    fep_empreend_processos  epro1,
                    fep_responsabilidades   resp1
              where proc1.proc_id = epro1.proc_id
                and resp1.resp_id = epro1.resp_id
                and resp1.tipa_id not in(3,9,13)
--                 and proc1.resp_id is null
                and resp1.atan_id    = p_atan_id
                and proc1.tido_id in (105 ) and  p_tido_id in ( 105 )
                and proc1.situacao not in ( 'A','S','D')
                and proc1.proc_id != p_proc_id
                and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                and not exists ( select null
                                   from fep_documentos docu2
                                   where docu2.proc_id = proc1.proc_id
                                     and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                     and docu2.tido_id in (105,5105))
     union all -- processos de integradoras com mais de 1 empreendimento
             select proc1.proc_id,
                         trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                         proc1.data_entrada
               from fep_processos                      proc1,
        fep_empreend_processos epro1,
                         fep_responsabilidades        resp1
            where proc1.proc_id = epro1.proc_id
                 and resp1.resp_id = resp1.resp_id
                 and resp1.tipa_id not in(3,9,13)
                 and  resp1.atan_id    = p_atan_id
                 and proc1.tido_id in ( 110,115 ) and  p_tido_id in ( 110,115 )
                 and proc1.situacao not in ( 'A','S','D')
                 and proc1.proc_id != p_proc_id
                 and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                 and not exists ( select null
                                                 from fep_documentos docu2
                                              where docu2.proc_id = proc1.proc_id
                                                   and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                                   and docu2.tido_id in (110,115,520))
     union all -- processos de integradoras com mais de 1 empreendimento
             select proc1.proc_id,
                         trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                         proc1.data_entrada
               from fep_processos                      proc1,
        fep_empreend_processos epro1,
                         fep_responsabilidades        resp1
            where proc1.proc_id = epro1.proc_id
                 and resp1.resp_id = resp1.resp_id
                 and resp1.tipa_id not in(3,9,13)
                 and  resp1.atan_id    = p_atan_id
                 and proc1.tido_id in ( 116 ) and  p_tido_id in ( 116 )
                 and proc1.situacao not in ( 'A','S','D')
                 and proc1.proc_id != p_proc_id
                 and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                 and not exists ( select null
                                                 from fep_documentos docu2
                                              where docu2.proc_id = proc1.proc_id
                                                   and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                                   and docu2.tido_id in (116,5116))
     union all -- processos de integradoras com mais de 1 empreendimento
             select proc1.proc_id,
                         trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                         proc1.data_entrada
               from fep_processos                      proc1,
        fep_empreend_processos epro1,
                         fep_responsabilidades        resp1
            where proc1.proc_id = epro1.proc_id
                 and resp1.resp_id = resp1.resp_id
                 and resp1.tipa_id not in(3,9,13)
                 and  resp1.atan_id    = p_atan_id
                 and proc1.tido_id in ( 117 ) and  p_tido_id in ( 117 )
                 and proc1.situacao not in ( 'A','S','D')
                 and proc1.proc_id != p_proc_id
                 and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                 and not exists ( select null
                                                 from fep_documentos docu2
                                              where docu2.proc_id = proc1.proc_id
                                                   and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                                   and docu2.tido_id in (117,5117))
     union all -- processos de integradoras com mais de 1 empreendimento
             select proc1.proc_id,
                         trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                         proc1.data_entrada
               from fep_processos                      proc1,
        fep_empreend_processos epro1,
                         fep_responsabilidades        resp1
            where proc1.proc_id = epro1.proc_id
                 and resp1.resp_id = resp1.resp_id
                 and resp1.tipa_id not in(3,9,13)
                 and  resp1.atan_id    = p_atan_id
                 and proc1.tido_id in ( 118 ) and  p_tido_id in ( 118 )
                 and proc1.situacao not in ( 'A','S','D')
                 and proc1.proc_id != p_proc_id
                 and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                 and not exists ( select null
                                                 from fep_documentos docu2
                                              where docu2.proc_id = proc1.proc_id
                                                   and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                                   and docu2.tido_id in (118,5118))
     union all -- processos de integradoras com mais de 1 empreendimento
             select proc1.proc_id,
                         trunc(p_data_fim_vigencia) - trunc(proc1.data_entrada)  dias,
                         proc1.data_entrada
               from fep_processos                       proc1,
         fep_empreend_processos epro1,
                         fep_responsabilidades         resp1
            where proc1.proc_id = epro1.proc_id
                 and resp1.resp_id = epro1.resp_id
                 and resp1.tipa_id not in(3, 9,13)
--                 and proc1.resp_id is null
                 and resp1.atan_id    = p_atan_id
                 and proc1.tido_id in ( 120,125 ) and  p_tido_id in ( 120, 125 )
                 and proc1.situacao not in ( 'A','S','D')
                 and proc1.proc_id != p_proc_id
                 and (trunc(proc1.data_entrada) > trunc(p_data_entrada))
                 and not exists ( select null
                                                  from fep_documentos docu2
                                               where docu2.proc_id = proc1.proc_id
                                                    and docu2.situacao not in ( 'B','T','O','C','X','H','K')
                                                    and docu2.tido_id in (120,125,530))
         order by 3 desc;


  -- Sup 43558 - 11/12/2013 ( Malu )
  -- Tirar o tipo 17 - Solic de Anuencia da lista de docs obrig a estarem entregues
 -- tirar o tipo 144 também - Malu 13/01/2015
  -- cfme solic Chefe - SELI - Cláudia Bos Wolff

   cursor c3 is
      select count(*)
         from fep_irrig_ativ_solicitacoes  iras,
                    fep_irrig_solic_listas_ativ  slat
      where iras.proc_id = nProc_id
           and iras.ativo       = 'S'
           and iras.docu_id is null
           and iras.iras_id   = slat.iras_id
           and slat.ldol_id not in (17,144)
           and slat.dm_atendido = 'N'
           and slat.dm_situacao = 1;


 cursor c5 is
   select difa.data
     from fep_dias_facultativos difa
   order by difa.data;

 cursor c6 is
   select docu.data_inicio_vigencia,
                docu.data_fim_vigencia
     from fep_documentos docu
    where docu.docu_id =  p_docu_id;
begin

  open  c1;
  fetch  c1 into nDocu_id, dDataInicio;
  close c1;

 -- Verifica se tem Processo do mesmo tipo mais recente sem doc emitido,
 -- entrado entre 1 e 120 dias antes do fim de vigencia do último documento


-----------------------------------------------------------------------------------------------------------------------------------------
--     alterado para contar as 2 datas de inicio e entrada do proc de renovação  ( Malu 17/11/2010 )

-- SQL> select to_date('16/11/2010','dd/mm/rrrr') - to_date('20/07/2010','dd/mm/rrrr') from dual;
-- TO_DATE('16/11/2010','DD/MM/RRRR')-TO_DATE('20/07/2010','DD/MM/RRRR')
--                                                                 119
--neste caso ...   16/11/2010 - venceu   -- entrou com a renovação em 20/07/2010
-- a data menos a outra dá 119
--Arai Maria Aparecida dos Santos Paz - DL
-- Venceu à meia noite do dia 16, este é o problema.
-- marials
-- então o correto seríamos contar as 2 datas ?
-- ou seja ... fazemos a conta se maior q 118 ?
-- Arai Maria Aparecida dos Santos Paz - DL
-- Creio que sim. Esta é a minha opinião, mas o texto da 237 é dúbio.



-- Incluidos os documentos de LP e LI para prorrogação em 22/05/2012 ( Malu )  Sup 36824-DL
-----------------------------------------------------------------------------------------------------------------------------------------

  if nDocu_id is not null then
       open   c2;
       fetch   c2 into nProc_id, nDias, dDataEntrada;
       close   c2;
       if nProc_id is null  then   -- não tem
            nDocu_id := 0;
            return(nDocu_id);
       else
            if nDias   <  nDiasProrrogacao then

                ---- verifica se tem dias a descontar do periodo da licenca por datas facultativas
                ----                                  Corrigida a rotina em 16/08/2013 - Malu

                ndiasFac := 0;
                open c6;
                fetch c6 into dDataInicioLic, dDataFimLic;
                close c6;
                if dDataInicioLic is not null and dDataFimLic is not null then

                          ndiasFac := 0;
                          open c5;
                          loop
                                     fetch c5 into dDataFacult ;
                                     if c5%notfound then
                                              close c5;
                                              exit;
                                     else
                                              if dDataFacult between dDataInicioLic and dDataFimLic then
                                                  ndiasFac := ndiasFac + 1;
                                               end if;
                                     end if;
                           end loop;

                            if  ndiasFac > 0 then
                                 nDias := nDias +  ndiasFac;
                            end if;

                end if;

                 -- Refaz a pergunta para verificar se continua menor que 119
                 if nDias   <  nDiasProrrogacao then
                         nDocu_id := 0;
                         return(nDocu_id);
                 end if;

           end if;

       end if;
  end if;

 -- Verifica se é documento do sistema de Irrigação
 -- e  tem pendência de documentos a serem entregues
 -- suporte 27488 - 04/05/2010 - Malu

  if nDocu_id > 0 then
       open  c3;
       fetch  c3 into nContador;
       close c3;
       if nContador > 0 then
              nDocu_id := 0;
       end if;
 end if;

  return(nDocu_id);

end;

PROCEDURE PR_PROC_ALT_SITUACAO
 IS
   nAtan_id      number(10);
   nProc_id      number(10);
   nCldo_id      number(3);
   nTido_id      number(5);
   dDataEntrada  date;
   vSituacao     varchar2(1);
   nContador     number(10);
   nAtualizar    number(1);
   dDataAtual    date;
   nDm_Origem    number(1);
   nSuperado     number(1);
   vUsuario      varchar2(30);

   cursor c1 is
      select resp.atan_id
        from fep_processos proc,
             fep_responsabilidades resp
       where proc.resp_id = resp.resp_id
       group by resp.atan_id
       order by resp.atan_id;

   cursor c2 is
      select proc.proc_id,
             proc.tido_id,
             trunc(proc.data_entrada),
             sucd.cldo_id,
             proc.situacao,
             proc.dm_origem
        from fep_processos              proc,
             fep_responsabilidades      resp,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
       where proc.resp_id = resp.resp_id
         and proc.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and sucd.cldo_id in ( 1,2,3,4,5,6)
         and resp.atan_id = nAtan_id
         and proc.situacao != 'A'
         and not exists ( select null
                            from fep_aux_proc_cond_restr prcr
                           where prcr.proc_id = proc.proc_id
                             and prcr.dm_ativo = 'S' )
         and not exists ( select null
                            from fep_documentos             docu,
                                 fep_docs_setores_acordo    scac,
                                 fep_tipos_documentos       tid1,
                                 fep_sub_classes_documentos suc1
                          where  docu.proc_id = proc.proc_id
                            and  docu.docu_id = scac.docu_id
                            and  docu.tido_id = tid1.tido_id
                            and  docu.tido_id not in (2160)
                            and  tid1.sucd_id = suc1.sucd_id
                            and  suc1.cldo_id in ( 1,2,3,4,5,6)
                            and  docu.situacao in ( 'C','T','K' ))
       order by proc.data_entrada,
                proc.proc_id;

   cursor c3 is
      select count(*)
        from fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
       where docu.proc_id = nProc_id
         and docu.tido_id = tido.tido_id
         and docu.tido_id not in (2160)
         and tido.sucd_id = sucd.sucd_id
         and docu.situacao not in ( 'B','T','O','C','K' )
         and sucd.cldo_id in ( 1,2,3,4,5,6);

   cursor c4 is
      select count(*)
        from fep_processos              proc,
             fep_responsabilidades      resp
       where proc.resp_id  = resp.resp_id
         and resp.atan_id  = nAtan_id
         and proc.proc_id != nProc_id
         and proc.tido_id  = nTido_id
         and proc.tido_id not in ( 400,106,107,116,117 )
         and trunc(proc.data_entrada) > dDataEntrada;


  cursor c5 is
     select proc.proc_id
       from fep_processos proc,
                 fep_solic_integradoras soin,
                 fep_solic_int_documentos sold,
                 fep_documentos docu
   where   proc.proc_id = soin.proc_id
        and   soin.soin_id = sold.soin_id
        and   sold.docu_id = docu.docu_id
        and   docu.tido_id not in (2160)
        and   docu.situacao = 'E'
        and   proc.situacao not in ( 'D', 'A' );

begin

  --Rotina implantada em 04/10/2006 por Malu, conforme INFORMAÇÃO DL 012/2006

  -- suporte 47715 - Clauren - DL    ( alteração:  Malu 20/01/2015 )
  -- Solicito a retirada do status SUPERADO dos processos de solicitação  'Autorização Geral'
  -- (tipo de documento 400), tendo em vista que este documento não consta na O.S nº 36/2007-DT.


  -- Sup 54089 - Clauren - DL     (Alteração:  Malu 22/11/2016 )
  -- Conforme O.S. Nº 36/2007-DT, o status SUPERADO no BD, deverá ser utilizado para LP (tipo doc 100),  LI (tipo doc 110) e LO (tipo doc 120).
  -- Portanto conforme informação acima, solicito  que para LPA(tipo doc 106), LPMA(tipo doc 107) e LIA (tipo doc 116) e LIMA (tipo doc 117)
  --  não seja validado no BD o  status SUPERADO, tendo em vista estes tipos de doc não constarem na O.S. 36/2007-DT.

  -- desconsiderar a emissão de documentos tipo 2160   ( Malu 18/092025 )


   select sysdate into dDataAtual from dual;

   open c1;
   loop
      fetch c1 into nAtan_id;
      if c1%notfound then
         close c1;
         exit;
      else
         open c2;
         loop
           fetch c2 into nProc_id, nTido_id, dDataEntrada, nCldo_id, vSituacao, nDm_origem;
           if c2%notfound then
              close c2;
              exit;
           else

              nAtualizar := 0;

              -- P - Apensado
              -- A - Arquivado
              -- F - Cobrança-Fema
              -- I - Aguarda Complementação
              -- J - Juntado
              -- D - Documento Emitido
              -- S - Superado
              -- O - Aguarda Interveniente - FUNAI
              -- Q - Aguarda Interveniente - FUND PALMARES
              -- N - Aguarda Interveniente - IBAMA
              -- M - Aguarda Interveniente - UC
              -- Z - Aguarda Assinaturas / Publicação

              if vSituacao in ( 'P','A','F','I','J','D','S','O','Q','N','M','Z' ) then
                 null; -- não altera a situação
              else


                 -- Demais situações
                    -- E - Em Andamento
                    -- R - Em Elaboracao Parecer
                    -- L - Em Análise
                    -- D - Documento Emitido
                    -- S - Superado

                 -- Verifica se tem documento licenciatório emitido,
                 -- não importa status e nem classe do processo

                 open  c3;
                 fetch c3 into nContador;
                 close c3;

                 if vSituacao in ( 'E','L','R','Z' ) then
                    if nContador > 0 then   -- Emitiu documento licenciatório, exceto B,T,O,C
                       vSituacao := 'D';    -- Documento Emitido
                       nAtualizar := 1;
                    else
                       -- Não tem documento licenciatório, mas é processo licenciatório
                       if vSituacao = 'E' then
                          if nCldo_id in ( 1,2,3,4,5,6) then
                             if nDm_origem = 3 then
                        --        vSituacao := 'R';  -- Em Elaboração Parecer
                                vSituacao := 'L';  -- Em Análise
                             else
                                vSituacao := 'L';  -- Em Análise
                             end if;
                             nAtualizar := 1;
                          end if;
                       end if;

                       -- Não tem documento licenciatório, e não é processo licenciatório
                       if vSituacao in ('L','R') then
                          if nCldo_id not in ( 1,2,3,4,5,6) then
                             vSituacao := 'E';  -- Em Andamento
                             nAtualizar := 1;
                          end if;
                       end if;

                    end if;
                 end if;
                 if nAtualizar = 1 then
                    vUsuario := 'ROT AUT DIARIA1-ALT SIT';
                 end if;

                 nSuperado := 0;
                 if vSituacao in ('L','R') and nDm_origem != 3  then   --   Em análise, verifica se tem processo do mesmo tipo mais recente
                      --- exceto para tipos 400, 106, 107, 116, 117

                    open  c4;
                    fetch c4 into nContador;
                    close c4;
                    if nContador > 0 then
                       vSituacao  := 'S';   -- Superado
                       nSuperado := 1;
                       vUsuario := 'ROT AUT DIARIA2-ALT SIT';
                    end if;
                 end if;

              end if;

              if nAtualizar = 1 or nSuperado = 1 then
                 begin
                    update fep_processos
                       set situacao             = vSituacao,
                           data_atualizacao     = dDataAtual,
                           operador_atualizacao = vUsuario
                     where proc_id = nProc_id;
                 end;
              end if;

           end if;
         end loop;
      end if;
   end loop;

 -- Faz a atualizacao para os processos de integradoras
 -- não altera processos já arquivados ( Malu 29/12/2025 )
  open c5;
  loop
     fetch c5 into nProc_id;
     if c5%notfound then
        close c5;
        exit;
    else
         begin
              update fep_processos
                     set situacao                = 'D',
                            data_atualizacao     = dDataAtual,
                            operador_atualizacao = 'ROT AUT DIARIA3-ALT SIT'
               where proc_id = nProc_id;
         end;
    end if;
  end loop;

end;
FUNCTION FC_ANOS_VALID_DOCU
 (P_DOCU_ID IN NUMBER
 )
 RETURN NUMBER
 IS
  dDataInicio            date := null;
  dDataFim               date := null;
  dDataCalc             date := null;
  nAnosValidade    number(5);

   cursor c1 is
       select docu.data_inicio_vigencia,
                    docu.data_fim_vigencia
           from fep_documentos docu
        where docu.docu_id = p_docu_id;
BEGIN

   nAnosValidade := null;

   open  c1;
   fetch  c1 into dDataInicio, dDataFim;
   close c1;

   if dDataInicio is not null and
      dDataFim     is not null then

      dDataCalc := (add_months(dDataInicio,12)) + 1;
      if  dDataFim  <  dDataCalc   then
          nAnosValidade := 1;
     end if;

     if nAnosValidade is null then
          dDataCalc := (add_months(dDataInicio,24)) + 1;
          if  dDataFim  <  dDataCalc   then
               nAnosValidade := 2;
          end if;
    end if;

     if nAnosValidade is null then
         dDataCalc := (add_months(dDataInicio,36)) + 1;
         if  dDataFim  <  dDataCalc   then
               nAnosValidade := 3;
          end if;
    end if;

     if nAnosValidade is null then
         dDataCalc := (add_months(dDataInicio,48)) + 1;
         if  dDataFim  <  dDataCalc   then
               nAnosValidade := 4;
          end if;
    end if;

     if nAnosValidade is null then
         dDataCalc := (add_months(dDataInicio,60)) + 1;
          if  dDataFim  <  dDataCalc   then
               nAnosValidade := 5;
          end if;
    end if;

  end if;

   return(nAnosValidade);

END;
FUNCTION FC_VALOR_PAGO_AI
 (P_PROC_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nValorPago     number(11,2) := 0;

   cursor c1 is
      select sum(nvl(hipa.valor_pago,0))
        from fep_historicos_cobrancas  hicb,
             fep_historicos_pagamentos hipa
       where hicb.hicb_id = hipa.hicb_id
         and hicb.mocb_id in ( 5,8 )
         and hicb.proc_id = p_proc_id;
begin
   open  c1;
   fetch c1 into nValorPago;
   close c1;
   if nValorPago is null then
       nValorPago := 0;
   end if;
   return(nValorPago);
end;
FUNCTION FC_DISPLAY_PROC_INTERNET
 (P_PROC_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
    nAtan_id        number(10);
--    nProc_id        number(10);
    dDataEntrada    date;
--    dDataEntrada1   date;
    nTido_id        number(5);
--    nTido_id1       number(5);
    vSituacaoProc   varchar2(1);
--    nDocu_id        number(10);
    vListar         varchar2(1)   := 'N';
--    nContador     number(5)  := 0;
   nCldo_id          number(3);

    cursor c1 is
       SELECT resp.atan_id
             ,proc.data_entrada
             ,proc.tido_id
             ,proc.situacao
             ,sucd.cldo_id
         FROM fep_processos              proc
             ,fep_tipos_documentos       tido
             ,fep_sub_classes_documentos sucd
             ,fep_responsabilidades      resp
        WHERE resp.resp_id = proc.resp_id
          AND proc.tido_id = tido.tido_id
          AND tido.sucd_id = sucd.sucd_id
          AND proc.proc_id = p_proc_id
       UNION
       SELECT resp.atan_id
             ,proc.data_entrada
             ,proc.tido_id
             ,proc.situacao
             ,sucd.cldo_id
         FROM fep_processos              proc
             ,fep_tipos_documentos       tido
             ,fep_sub_classes_documentos sucd
             ,fep_responsabilidades      resp
             ,fep_empreend_processos     epro
        WHERE proc.tido_id = tido.tido_id
          AND tido.sucd_id = sucd.sucd_id
          AND proc.proc_id = p_proc_id
          AND epro.resp_id = resp.resp_id
          AND epro.proc_id = proc.proc_id;
       /*
       select resp.atan_id,
                    proc.data_entrada,
                    proc.tido_id,
                   proc.situacao,
                   sucd.cldo_id
         from fep_processos         proc,
                   fep_tipos_documentos tido,
                   fep_sub_classes_documentos sucd,
                   fep_responsabilidades resp
        where resp.resp_id = proc.resp_id
            and  proc.tido_id = tido.tido_id
            and tido.sucd_id = sucd.sucd_id
             and proc.proc_id = p_proc_id;
      */

/*    cursor c11 is
       select docu.docu_id
         from fep_documentos docu
        where docu.proc_id = p_proc_id
          and docu.tido_id in ( 100,110 )
          and docu.situacao = 'E'
          and exists ( select null
                         from fep_responsabilidades resp1,
                                   fep_processos               proc1,
                                   fep_documentos           docu1
                        where resp1.atan_id = nAtan_id
                             and resp1.resp_id = proc1.resp_id
                             and proc1.proc_id = docu1.proc_id
                             and docu1.tido_id = 120
                             and docu1.situacao = 'E' );

    cursor c2 is
       select docu.docu_id
         from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where docu.proc_id = p_proc_id
          and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id
          and ((sucd.cldo_id between 1 and 6) OR
               (sucd.cldo_id = 8 and sucd.sucd_id not in (80,81,82)))
          and docu.situacao  = 'E';

    cursor c3 is
       select proc.proc_id,
              proc.data_entrada,
              proc.tido_id
         from fep_processos              proc,
              fep_responsabilidades      resp,
              fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where resp.resp_id = proc.resp_id
          and proc.proc_id = docu.proc_id
          and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id
          and ((sucd.cldo_id between 1 and 6) OR
               (sucd.cldo_id = 8 and sucd.sucd_id not in (80,81,82)))
          and resp.atan_id   = nAtan_id
          and proc.situacao != 'A'
          and proc.tido_id not in ( 101,102,103,104,111,112,113,114)
     order by docu.data_emissao desc;

     cursor c4 is
         select count(*)
             from fep_processos proc,
                       fep_tipos_documentos    tido,
                       fep_sub_classes_documentos sucd
           where proc.proc_id = p_proc_id
               and proc.tido_id = tido.tido_id
               and tido.sucd_id = sucd.sucd_id
               and (sucd.cldo_id between 1 and 6)
              and not exists ( select null
                                               from fep_documentos docu1,
                                                         fep_tipos_documentos    tido1,
                                                         fep_sub_classes_documentos sucd1
                                           where  docu1.proc_id = proc.proc_id
                              and   docu1.tido_id = tido1.tido_id
                                               and    tido1.sucd_id = sucd1.sucd_id
                                               and  (sucd1.cldo_id between 1 and 6) );

     cursor c5 is
         select count(*)
             from fep_documentos docu
          where docu.proc_id = p_proc_id;
*/
begin

/*
  if p_proc_id = 164653 then
     vListar := 'N';
     return(vListar);
 end if;
*/

  -- Acha o Empreendimento do Processo, Data de Entrada e Situação
  open   c1;
  fetch  c1 into nAtan_id, dDataEntrada, nTido_id, VsituacaoProc, nCldo_id;
  close c1;

 -- Conforme INFORMAÇÃO DL 017-2006 de 05/10/2006 -         ( alterado por Malu em 05/10/2006 - 18:00 )
--     1) Todos os processos de documento licenciatório de um empreendimento (com todas as situações atuais);

  if nCldo_id in (1,2,3,4,5,6 ) then
      vListar := 'S';
      return(vListar);
 end if;

  return(vListar);

/*


  -- Encontrou no Processo Documento de LP(100) ou LI(110) Em Vigor
  -- e tem Outro Processo com Documento de LO(120) em Vigor
  -- não listar o Processo de LP ou LI

  open  c11;
  fetch  c11 into nDocu_id;
  close c11;
  if nDocu_id is not null then
     vListar := 'N';
     return(vListar);
  end if;

  -- Encontrou Documento em Vigor no Processo - deve listar o Processo
  -- exceto no caso acima

  open  c2;
  fetch  c2 into nDocu_id;
  close c2;

  if nDocu_id is not null then
     vListar := 'S';
     return(vListar);
  end if;

  -- Verifica o processo mais recente com Documento, independente da situação do documento ou processo
  -- exceto de ampliação
  open   c3;
  fetch  c3 into nProc_id, dDataEntrada1, nTido_id1;
  close c3;

  if nProc_id = p_proc_id then
     vListar := 'S';
     return(vListar);
  end if;

  -- Processo não pode estar arquivado

  if vSituacaoProc != 'A' then

    -- Verifica se processo do contexto tem data mais recente que a Data de entrada do processo do último
    -- documento emitido
      if dDataEntrada > dDataEntrada1 then
        vListar := 'S';
        return(vListar);
     end if;

  -- se processo é Licenciatório e Documentos Emitidos não são Licenciatórios - então lista o Processo
     open c4;
     fetch c4 into nContador;
    close c4;
    if nContador > 0 then
         vListar := 'S';
         return(vListar);
    end if;

    -- se empreendimento não tem nenhum processo com documento emitido, então lista o processo
     open c5;
     fetch c5 into nContador;
    close c5;
    if nContador = 0 then
         vListar := 'S';
         return(vListar);
    end if;

  end if;

   return(vListar);

  */

end;
FUNCTION FC_EXISTE_PROC_POSTERIOR
 (P_PROC_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nAtan_id     number(10);
  dDataEntrada date;
  nTido_id     number(5);
  nContador    number(5);

  cursor c1 is
     select resp.atan_id,
            proc.data_entrada,
            proc.tido_id
       from fep_processos proc,
            fep_tipos_documentos tido,
            fep_sub_classes_documentos sucd,
            fep_responsabilidades resp
      where proc.proc_id = p_proc_id
        and proc.resp_id = resp.resp_id;

  cursor c2 is
     select count(*)
       from fep_processos         proc,
            fep_responsabilidades resp
      where proc.resp_id = resp.resp_id
        and resp.atan_id = nAtan_id
        and proc.proc_id != p_proc_id
        and proc.tido_id = nTido_id
        and proc.data_entrada > dDataEntrada
        and proc.situacao in ( 'E','I')
        and proc.proc_item_type is null;
begin
   open  c1;
   fetch c1 into nAtan_id,dDataEntrada,nTido_id;
   close c1;

   open  c2;
   fetch c2 into nContador;
   close c2;

   return(nContador);
end;
FUNCTION FC_PROC_IMPACTO_LOCAL
 (P_PROC_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
vImpactoLocal varchar2(1) := 'N';


    cursor c1 is
       select rapo.impacto_local
         from fep_processos proc,
              fep_responsabilidades resp,
              fep_atividades_antropicas ata1,
              fep_ramos_portes rapo
        where proc.proc_id = p_proc_id
          and proc.resp_id = resp.resp_id
          and resp.atan_id = ata1.atan_id
          and ata1.raat_id = rapo.raat_id
          and substr(busca_porte(ata1.raat_id, ata1.medida_porte,null),1,1) = rapo.porte;
begin
  open  c1;
  fetch c1 into vImpactoLocal;
  close c1;
  return(vImpactoLocal);
end;
FUNCTION FC_SOLIC_PENDENTE_MP
 (P_MPSO_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
nContador    NUMBER(5);
   CURSOR c1 IS
      SELECT COUNT(*)
        FROM fep_mp_documentos mpdo
       WHERE mpdo.mpso_id = p_mpso_id
         AND dm_atendido = 'N';
BEGIN
   OPEN  c1;
   FETCH c1 INTO nContador;
   CLOSE c1;
   IF nContador = 0 THEN
      RETURN('N');
   ELSE
      RETURN('S');
   END IF;
END;
FUNCTION FC_PROCESSO_MP
 (P_NUMERO IN NUMBER
 ,P_ORIG_ID IN NUMBER
 ,P_ANO IN NUMBER
 ,P_DV IN NUMBER
 )
 RETURN VARCHAR2
 IS
nContador    number(3);
   vSimNao      varchar2(3);

   cursor c1 is
    select count(*)
      from fep_mp_processos mppr
     where mppr.numero   = p_numero
       and mppr.orig_id  = p_orig_id
       and mppr.ano      = p_ano
       and mppr.dv       = p_dv;

   cursor c2 is
    select count(*)
      from fep_processos proc
     where proc.numero   = p_numero
       and proc.orig_id  = p_orig_id
       and proc.ano      = p_ano
       and proc.dv       = p_dv
       and proc.aspr_id          = 6771
       and proc.dm_origem_fluxos = 'S';

BEGIN
   -- Verifica se é Processo de Ministério Público
   OPEN  c1;
   fetch c1 into nContador;
   close c1;
   if nContador = 0 then
      OPEN  c2;
      fetch c2 into nContador;
      close c2;
      if nContador = 0 then
         vSimNao := 'Não';
      else
         vSimNao := 'Sim'; -- processos DEMJ vindos do fluxo ( Malu 04/02/2022 )
      end if;
   else
      vSimNao := 'Sim';
   end if;
   return(vSimNao);
END;
FUNCTION FC_ALTERACAO_FROTA
 (P_PROC_ID IN NUMBER -- (TG) Não utilizado: estudar retirada...
 ,P_MEDIDA_PORTE IN NUMBER
 )
 RETURN VARCHAR2
 IS
vMensagem     varchar2(1000)  := null;
   nRaat_id      number(7,2)     := null;
   nMedidaPorte  number(12,4)    := null;
   vPorteOld     varchar2(1)     := null;
   vPorteNew     varchar2(1)     := null;

   cursor c1 is
     select ata1.raat_id,
            ata1.medida_porte
       from fep_processos proc,
            fep_responsabilidades resp,
            fep_atividades_antropicas ata1
      where proc.resp_id = resp.resp_id
        and resp.atan_id = ata1.atan_id;
begin

   open  c1;
   fetch c1 into nRaat_id, nMedidaPorte;
   close c1;

   if nRaat_id is null then
      vMensagem := 'Empreendimento não encontrado.';
      return(vMensagem);
   else
      vPorteOld := busca_porte(nRaat_id, nMedidaPorte, null);
      vPorteNew := busca_porte(nRaat_id, p_medida_porte, null);
   end if;

   if vPorteOld = vPorteNew then
      null;
   else
       /*
      vMensagem := 'Com o número de veículos informados altera o Porte do Empreendimento e ' ||
                   'a solicitação não pode ser Alteração de Frota.';
      */
     null;
   end if;

   return(vMensagem);

end;
FUNCTION FC_LOCAL_LABORATORIO
 (P_MUNI_ID IN NUMBER
 ,P_TIDO_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
vMensagem     varchar2(1000)  := null;
   nLocalizacao  number(1);
   vUnfe_id      varchar2(2);

   cursor c1 is
     select muni.localizacao,
            muni.unfe_id
       from fep_municipios muni
      where muni.muni_id = p_muni_id;
begin

    --- 220 POA-CERTIFICADO DE CADASTRO LABORATÓRIO ANÁLISES AMBIENTAIS
    --- 221 RMPA-CERTIFICADO DE CADASTRO LABORATÓRIO ANÁLISES AMBIENTAIS
    --- 222 INTERIOR E OUTROS-CERTIFICADO DE CADASTRO LABORATÓRIO ANÁLISES AMBIENTAIS

    if p_tido_id not in ( 220,221,222 ) then
       return(vMensagem);
    end if;

    open  c1;
    fetch c1 into nLocalizacao, vUnfe_id;
    close c1;

    if vUnfe_id != 'RS' then
       nLocalizacao := 3;
    end if;

    if nLocalizacao = 1 then
       if p_tido_id = 220 then
          null;
       else
          vMensagem := 'Atenção: Pela localização do Laboratório, O Tipo de Documento a ser solicitado deve ser: ' ||
                       'POA-CERTIFICADO DE CADASTRO LABORATÓRIO ANÁLISES AMBIENTAIS';

       end if;
    end if;

    if nLocalizacao = 2 then
       if p_tido_id = 221 then
          null;
       else
          vMensagem := 'Atenção: Pela localização do Laboratório, O Tipo de Documento a ser solicitado deve ser: ' ||
                       'RMPA-CERTIFICADO DE CADASTRO LABORATÓRIO ANÁLISES AMBIENTAIS';
       end if;
    end if;

    if nLocalizacao = 3 then
       if p_tido_id = 222 then
          null;
       else
          vMensagem := 'Atenção: Pela localização do Laboratório, O Tipo de Documento a ser solicitado deve ser: ' ||
                       'INTERIOR E OUTROS-CERTIFICADO DE CADASTRO LABORATÓRIO ANÁLISES AMBIENTAIS';
       end if;
    end if;

    return(vMensagem);

end;
FUNCTION FC_DIAS_MP_SOLIC
 (P_DATA_OFICIO IN DATE
 ,P_DATA_PRAZO IN DATE
 ,P_DM_ATENDIDO IN VARCHAR2
 )
 RETURN NUMBER
 IS
nDias        number(10)  := 0;
    dDataIni     date;
    dDataFim     date;
    dDataAtual   date;
begin


   if p_dm_atendido = 'N' then
      select sysdate into dDataAtual from dual;
      dDataIni := p_data_oficio;
      dDataFim := p_data_prazo;
      if dDataFim is null then
         dDataFim := dDataIni + 30;
      end if;
      nDias := dDataFim - dDataAtual;
   end if;

   return(nDias);

end;
FUNCTION FC_EXISTE_INDEF_LIC
 (P_ATAN_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nContador        number(10)  := 0;


    cursor c1 is
    select  count(*)
        from fep_responsabilidades resp,
             fep_processos         proc,
             fep_documentos        docu,
             fep_tipos_documentos  tido
       where resp.atan_id = p_atan_id
         and resp.resp_id = proc.resp_id
         and proc.proc_id = docu.proc_id
         and docu.tido_id = tido.tido_id
         and tido.descricao like 'INDEFERIMENTO DE LIC%'
         and exists (
                select null
                   from fep_responsabilidades resp1,
                        fep_processos         proc1,
                        fep_documentos        docu1,
                        fep_tipos_documentos  tido1
                  where resp1.atan_id = resp.atan_id
                    and resp1.resp_id = proc1.resp_id
                    and proc1.proc_id = docu1.proc_id
                    and docu1.tido_id = tido1.tido_id
                    and tido1.descricao like 'LICENÇA%'
                    and docu1.data_emissao > docu.data_emissao );
BEGIN

   open  c1;
   fetch c1 into nContador;
   close c1;
   return(nContador);

END;
FUNCTION FC_PROC_DOCUMENTO
 (P_DOCU_ID IN NUMBER
 )
 RETURN NUMBER
 IS
   nProc_id    number(10);

   cursor c1 is
       select prdc.proc_id
         from fep_processos_documentos prdc
      where prdc.docu_id = p_docu_id;
begin
   open  c1;
   fetch c1 into nProc_id;
   close c1;
   return(nProc_id);
end;
FUNCTION FC_PARECER_COBRANCA
 (P_TIDO_PARECER_ID IN NUMBER
 ,P_EIARIMA IN VARCHAR2
 )
 RETURN NUMBER
 IS
  nTido_id                        number(5)  := null;
  nTido_id_parecer       number(5);

  cursor c1 is
     select tidm.tido_id_documento
      from   fep_tipos_docs_emissoes         tidm,
                  fep_tipos_documentos                tido,
                  fep_sub_classes_documentos sucd
     where tidm.tido_id_parecer        = nTido_id_parecer
          and p_eiarima                            = 'N'
          and tidm.tido_id_documento = tido.tido_id
          and tido.sucd_id                        = sucd.sucd_id
          and sucd.cldo_id in (1,2,3,4,5,6,102,202)
       order by
                  tidm.tido_id_documento;
BEGIN


  nTido_id_parecer   :=  p_tido_parecer_id;


  --  suporte 26655 - Thais - Arrecadação
  --  Solicito que seja incluido na lista de documentos que têm que ter
  --  pagamento os indeferimentos de licenças (exemplo doc 530).
  --                                                          Malu 09/03/2010

  --  1240 - PARECER PARA INDEFERIMENTO DE ISENÇÃO DE LICENCIAMENTO
  --  1241 - PARECER PARA INDEFERIMENTO DE LICENÇA PRÉVIA
  --  1242 - PARECER PARA INDEFERIMENTO DE LICENÇA DE INSTALAÇÃO
  --  1243 - PARECER PARA INDEFERIMENTO DE LICENÇA DE OPERAÇÃO
  --  1244 - PARECER PARA INDEFERIMENTO DE AUTORIZAÇÃO
  --  1245 - PARECER PARA INDEFERIMENTO DE CADASTRAMENTO DE LABORATÓRIO
  --  1246 - PARECER PARA INDEFERIMENTO DE CERTIFICADO DE CADASTRO AGROTÓXICO
  --  1247 - PARECER PARA INDEFERIMENTO DE LICENÇA ÚNICA
  --  1248 - PARECER PARA INDEFERIMENTO DE LICENÇA ÚNICA DE INSTALAÇÃO E OPERAÇÃO
  --  12581 - PARECER INDEF LICENÇA PRÉVIA E DE INSTALAÇÃO DE ALTERAÇÃO

  -- os indeferimentos serão cobrados pelo custo da licença respectiva concedida

  if
             nTido_id_parecer  = 1240 then
             nTido_id_parecer := 1220;    -- PARECER PARA DECLARAÇÃO DE ISENÇÃO DE LICENCIAMENTO
 elsif
            nTido_id_parecer  = 1241 then
            nTido_id_parecer := 1200;    -- PARECER PARA LICENÇA PRÉVIA
 elsif
            nTido_id_parecer  = 1242 then
            nTido_id_parecer := 1201;    -- PARECER PARA LICENÇA DE INSTALAÇÃO
 elsif
            nTido_id_parecer  = 1243 then
            nTido_id_parecer := 1202;    --  PARECER PARA LICENÇA DE OPERAÇÃO
 elsif
            nTido_id_parecer  = 1244 then
            nTido_id_parecer := 1230;    -- PARECER PARA AUTORIZAÇÃO GERAL
 elsif
            nTido_id_parecer  = 1245 then
            nTido_id_parecer := 1212;    --  PARECER PARA CERTIFICADO DE CADASTRO LABORATÓRIO ANÁLISES AMBIENTAIS POA
 elsif
            nTido_id_parecer  = 1246 then
            nTido_id_parecer := 12171;   -- PARECER PARA CADASTRO DE PRODUTO AGROTOXICO CLASSE TOX I
 elsif
            nTido_id_parecer  = 1247 then
            nTido_id_parecer := 1204;   --  PARECER PARA LICENÇA ÚNICA
 elsif
            nTido_id_parecer  = 1248 then
            nTido_id_parecer := 1205;   -- PARECER PARA LICENÇA ÚNICA DE INSTALAÇÃO E OPERAÇÃO
 elsif
            nTido_id_parecer  = 12581 then
            nTido_id_parecer := 12181;   -- PARECER LICENÇA PRÉVIA E DE INSTALAÇÃO DE ALTERAÇÃO
 end if;


  if p_eiarima = 'N' then
      OPEN    c1;
      FETCH   c1   INTO   nTido_id;
      CLOSE  c1;
  else
       if         nTido_id_parecer  = 1200 then
                      nTido_id := 105;
      elsif    nTido_id_parecer  = 1201 then
                      nTido_id := 115;
      elsif    nTido_id_parecer  = 1202 then
                     nTido_id := 125;
      end if;
  end if;

  RETURN(nTido_id);

END;
FUNCTION FC_ULT_PROC_TIDO
 (P_ATAN_ID IN NUMBER
 ,P_PROC_ID IN NUMBER
 ,P_DATA_ENTRADA IN DATE
 ,P_TIDO_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
nContador  number(3);
    cursor c1 is
       select count(*)
         from fep_responsabilidades resp,
              fep_processos         proc
        where resp.atan_id  = p_atan_id
          and resp.resp_id  = proc.resp_id
          and proc.tido_id  = p_tido_id
          and proc.proc_id != p_proc_id
          and proc.data_entrada > p_data_entrada;
begin
      open  c1;
      fetch c1 into nContador;
      close c1;
      if nContador > 0 then
         return('N');
      else
         return('S');
      end if;
    end;
FUNCTION FC_DATA_VIGOR
 (P_DOCU_ID IN NUMBER
 )
 RETURN DATE
 IS
  dDataVigor    date  := null;

  cursor c1 is
     select tpl.data
       from tpl_logs tpl
      where tpl.tabela = 'FEP_DOCUMENTOS'
        and tpl.campo  = 'SITUACAO'
        and tpl.chave  = p_docu_id
        and substr(tpl.conteudo_atual,1,1) = 'E'
      order by tpl.tlog_id desc;

  cursor c2 is
     select docu.data_atualizacao
       from fep_documentos docu
      where docu.docu_id = p_docu_id;
begin
   open  c1;
   fetch c1 into dDataVigor; -- Data em Vigor
   close c1;
   if dDataVigor  is null then
      open  c2;
      fetch c2 into dDataVigor;
      close c2;
   end if;
   return(dDataVigor);
end;
FUNCTION FC_AI_INCLUIR_RESP
 (P_DOCU_ID IN NUMBER
 ,P_RESP_ID IN NUMBER
 )
 RETURN NUMBER
 IS
   dDataInfracao    date;
   nResp_id             number(10) := null;

   cursor c1 is
      select trunc(auin.data_infracao)
        from fep_documentos       docu,
             fep_autos_infracoes  auin
       where  docu.docu_id = auin.docu_id
            and   docu.docu_id = p_docu_id;

    cursor c2 is
      select resp.resp_id
        from fep_responsabilidades resp
       where resp.resp_id = p_resp_id
         AND (( trunc(resp.data_inicio) >  dDataInfracao ) OR
                   ( trunc(data_inicio) <= dDataInfracao   AND data_fim IS NULL ) OR
                   ((dDataInfracao BETWEEN trunc(data_inicio) AND trunc(data_fim))
                                      AND trunc(data_fim) IS NOT NULL));
begin
   open  c1;
   fetch c1 into dDataInfracao;
   close c1;

   open  c2;
   fetch c2 into nResp_id;
   close c2;

   if nResp_id is null then
      return(0);
   else
      return(1);
   end if;
end;
FUNCTION FC_INFRACAO_AI
 (P_DOCU_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
vInfracao    varchar2(1000) := null;
  vDescricao   varchar2(80)   := null;
  nContador    number(5)      := 0;

  cursor c1 is
    select infr.descricao
      from fep_motivos_ai moai,
           fep_infracoes  infr
     where moai.docu_id = p_docu_id
       and moai.infr_id = infr.infr_id;
begin
   open  c1;
   loop
     fetch c1 into vDescricao;
     if c1%notfound then
        close c1;
        exit;
     else
        nContador := nContador + 1;
        if nContador = 1 then
           vInfracao := vDescricao;
        else
           vInfracao := vInfracao || ' / ' || vDescricao;
        end if;
     end if;
   end loop;
   return(vInfracao);

end;
FUNCTION FC_AI_INCLUIR
 (P_TIPO IN NUMBER
 ,P_VALOR_PARAMETRO IN VARCHAR2
 ,P_DOCU_ID IN NUMBER
 )
 RETURN NUMBER
 IS
   nIncluir                  number(1) := 0;
   nNumero              number(14);
   nContador           number(5);
   vNome                  varchar2(100);
  nAtan_id               number(10);
   nTamanho           number(3);
   dDataInfracao    date;

  cursor c0 is
     select   trunc(auin.data_infracao)
       from   fep_autos_infracoes  auin
    where  auin.docu_id = p_docu_id;

  cursor c1 is
     select   resp.atan_id
       FROM  fep_documentos              docu,
                    fep_processos                 proc,
                    fep_responsabilidades  resp
      WHERE docu.docu_id   = p_docu_id
          AND   docu.proc_id    = proc.proc_id
          AND    proc.resp_id    = resp.resp_id;

   CURSOR c2 IS
     SELECT COUNT(*)
       FROM  fep_responsabilidades  resp,
                    fep_pessoas                     pess
      WHERE  resp.atan_id    = nAtan_id
          AND    resp.pess_id   = pess.pess_id
          AND ( pess.cpf      = nNumero OR
                     pess.cpf2    = nNumero OR
                     pess.cgc     = nNumero OR
                     pess.cgc2  = nNumero )
         AND resp.tipa_id not in (3,9,13)
         AND (( trunc(resp.data_inicio) >  dDataInfracao ) OR
                   ( trunc(data_inicio) <= dDataInfracao   AND data_fim IS NULL ) OR
                   ((dDataInfracao BETWEEN trunc(data_inicio) AND trunc(data_fim))
                                      AND trunc(data_fim) IS NOT NULL));

   CURSOR c4 IS
     SELECT COUNT(*)
       FROM  fep_responsabilidades  resp,
                    fep_pessoas                     pess
      WHERE  resp.atan_id    = nAtan_id
          AND    resp.pess_id   = pess.pess_id
          AND    resp.pess_id = pess.pess_id
        AND pess.razao_social LIKE vNome
        AND resp.tipa_id not in (3,9,13)
         AND (( trunc(resp.data_inicio) >  dDataInfracao ) OR
                   ( trunc(data_inicio) <= dDataInfracao   AND data_fim IS NULL ) OR
                   ((dDataInfracao BETWEEN trunc(data_inicio) AND trunc(data_fim))
                                      AND trunc(data_fim) IS NOT NULL));
BEGIN

  OPEN   c0;
  FETCH  c0 INTO dDataInfracao;
  CLOSE c0;

  OPEN   c1;
  FETCH  c1 INTO nAtan_id;
  CLOSE c1;

  IF p_tipo = 2 THEN -- CPF / CNPJ
     SELECT LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(p_valor_parametro,'.',''),'/',''),'-','')))
          INTO nNumero
        FROM dual;
     OPEN  c2;
     FETCH c2 INTO nContador;
     CLOSE c2;
     IF nContador > 0 THEN
        nIncluir := 1;
     END IF;
  END IF;

  IF p_tipo = 4 THEN -- NOME

      vNome := UPPER(p_valor_parametro);
      vNome  := FC_ALTERA_ACENTUACAO(vNome);
      SELECT LENGTH(vNome) INTO nTamanho FROM dual;
      IF SUBSTR(vNome,1,1) != '%' THEN
         vNome := '%' || vNome;
      END IF;
      IF SUBSTR(vNome,nTamanho,1) != '%' THEN
         vNome := vNome || '%';
      END IF;
      SELECT REPLACE(vNome,' ','%') INTO vNome    FROM dual;

     OPEN  c4;
     FETCH c4 INTO nContador;
     CLOSE c4;
     IF nContador > 0 THEN
        nIncluir := 1;
     END IF;
  END IF;

  RETURN(nIncluir);

END;
FUNCTION FC_ULT_DECISAO_AI
 (P_PROC_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nDocu_id    number(10);
   cursor c1 is
     select docu.docu_id
       from fep_documentos docu
      where docu.tido_id in ( 800,801,810,820 )
        and docu.situacao = 'E'
        and docu.proc_id = p_proc_id
     order by docu.data_emissao;
begin
   open  c1;
   fetch c1 into nDocu_id;
   close c1;
   return(nDocu_id);
end;
FUNCTION FC_TECNICO_VIGOR
 (P_DOCU_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
  vUsuario     varchar2(30) := null;
  vNomePessoa  varchar2(45) := null;

  cursor c1 is
     select docu.oper_tecn_vigor
       from fep_documentos docu
      where docu.docu_id  = p_docu_id;

  cursor c2 is
     select aux.nome
       from fep_aux_func_ultimos aux
      where aux.username = vUsuario;

  cursor c3 is
     select docu.operador_atualizacao
       from fep_documentos docu
      where docu.docu_id = p_docu_id;
begin
   open  c1;
   fetch c1 into vUsuario; -- procura em tpl_logs
   close c1;
   if vUsuario is null then
      open  c3;
      fetch c3 into vUsuario; -- se não encontrar em logs - coloca o operador de atualização de documento
     close c3;
  end if;

   if vUsuario is not null then
      open  c2;
      fetch c2 into vNomePessoa;
      close c2;
      if vNomePessoa is null then
         vNomePessoa := vUsuario;
      end if;
   end if;
   return(vNomePessoa);
end;
FUNCTION FC_QUEM_ASSINA
 (P_DOCU_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nSeto_id            NUMBER(10)  := NULL;
   nSucd_id            NUMBER(10);
   nCldo_id            NUMBER(3);
   nTido_id            NUMBER(5);
   vPortePotencial     VARCHAR2(2);
   vSinpli             VARCHAR2(1) := NULL;

   CURSOR c1 IS
       SELECT SUBSTR(SUBSTR(busca_porte(ata1.raat_id, ata1.medida_porte,NULL),1,1) ||
              raat.potencial,1,2)                                           PortePotencial,
              docu.tido_id                                                  tido_id,
              sucd.sucd_id                                                  sucd_id,
              sucd.cldo_id                                                  cldo_id,
              DECODE(proc.proc_item_type,'SINPLI','S','N')                  sinpli
         FROM fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd,
              fep_processos              proc,
              fep_responsabilidades      resp,
              fep_atividades_antropicas  ata1,
              fep_ramos_atividades       raat
        WHERE docu.docu_id = p_docu_id
          AND docu.tido_id = tido.tido_id
          AND tido.sucd_id = sucd.sucd_id
          AND docu.proc_id = proc.proc_id
          AND proc.resp_id = resp.resp_id
          AND resp.atan_id = ata1.atan_id
          AND ata1.raat_id = raat.raat_id;
BEGIN

   OPEN  c1;
   FETCH c1 INTO vPortePotencial, nTido_id, nSucd_id, nCldo_id, vSinpli;
   CLOSE c1;

   IF nTido_id = 340 THEN          -- Alteração de Frota
      nSeto_id := 228;            -- SEAMB
   END IF;

   IF nSeto_id IS NULL THEN
      IF vSinpli = 'S' THEN        -- Processo SINPLI
         nSeto_id := 2;            -- Diretoria Técnica
      END IF;
   END IF;

   IF nSeto_id IS NULL THEN
      IF nCldo_id IN ( 3,4 ) OR    -- 3-Declaração / 4-Autorização
         nSucd_id  = 41      THEN  -- MTR
         nSeto_id := 2;            -- Diretoria Técnica
      END IF;
   END IF;

   IF nSeto_id IS NULL THEN
      IF vPortePotencial IN ( 'MM','MA','GM','EM' ) THEN
         nSeto_id := 2;   -- Diretoria Técnica
      ELSIF
         vPortePotencial IN ( 'GA','EA' )           THEN
         nSeto_id := 1;   -- Presidencia
      ELSE
         nSeto_id := 22;  -- Departamento de Controle
      END IF;
   END IF;


   RETURN(nSeto_id);

END;
FUNCTION FC_NRO_PROCESSO
 (P_PROC_ID NUMBER
 )
 RETURN NUMBER
 IS
nProcesso       number(15);

cursor  c1  is
        select    lpad(proc.numero,7,0)  ||
                  lpad(proc.orig_id,4,0) ||
                  lpad(proc.ano,2,0)     ||
                  proc.dv processo
            from  fep_processos proc
          where   proc.proc_id = p_proc_id;
begin
  open  c1;
  fetch c1  into  nProcesso;
  close c1;
  return(nProcesso);
end;
FUNCTION FC_PROC_AGROTOX_VALIDO (P_PROC_ID IN number
                                ,P_ATAN_ID IN number) RETURN VARCHAR2 IS

  nProc_id number(10);
  vSitProc varchar2(1);
  vSimNao  varchar2(1)  := 'S';
  nCont    number(3);

  ----- proc_id 432694 -- processo que foi entrado errado pelo SOL - solicitado para ser desconsiderado por Leonardo Rosito ( Malu 23/01/2018 )
  cursor c1 is
   select proc.proc_id, proc.situacao
     from fep_processos         proc,
          fep_responsabilidades resp
    where resp.atan_id = p_atan_id
      and resp.resp_id = proc.resp_id
      and proc.tido_id in ( 230,231,232,233,234,235,236 )
      and proc.proc_id != 432694
    order by proc.data_entrada desc,
             proc.proc_id      desc;

  cursor c2 is
   select count(*)
     from fep_documentos docu
    where docu.proc_id = p_proc_id
      and docu.tido_id in (230,231,232,233,234,235,236,
                           5230,5231,5232,5233,5234,5236,
                           560,840,850);

  cursor c3 is
   select count(*)
     from fep_documentos docu
    where docu.proc_id = p_proc_id
      and docu.tido_id in (5230,5231,5232,5233,5234,5236, 560,840,850)
      and docu.situacao IN  ('E','H','C','T','K');

  cursor c4 is
   select count(*)
     from fep_documentos docu
    where docu.proc_id = p_proc_id
      and docu.tido_id in (230,231,232,233,234,235,236)
      and docu.situacao in ('E','G','H','C','T','K');

  cursor c_Lib_Jud is
   select 1 Achou_Liveracao, prju.data_fim
     from fep_proc_libera_judiciais prju
    where prju.proc_id = p_proc_id;
  lr_Lib_Jud c_Lib_Jud%RowType;

begin

  -- Chamado 31277 (05/04/2022): retirar Processos 213220 e 232296 da lista da Internet Agrotóxicos, conforme conversa com Gianfranco
  if (p_proc_id in (213220, 232296)) Then
    vSimNao := 'N';
    return(vSimNao);
  end if;

  -- procura último processo
  open  c1;
  fetch c1 into nProc_id, vSitProc;
  close c1;

  if nProc_id != p_proc_id then
     vSimNao := 'N';
     return(vSimNao);
  end if;

  -- Verifica se não tem documento
  open  c2;
  fetch c2 into nCont;
  close c2;

  if nCont = 0 then
    if vSitProc = 'A' then
       vSimNao := 'N';    -- arquivado sem documento - não é válido cfme Marta-SELCA em 07/08/2014
       return(vSimNao);
    else
       vSimNao := 'S';
       return(vSimNao);
    end if;

  else  -- Tem Documento...

    if vSitProc = 'A' then   -- Processo ARQUIVADO   -- Add no Chamado 29992 por solicitação do Gianfranco

       Open c_Lib_Jud;
       Fetch c_Lib_Jud into lr_Lib_Jud;
       Close c_Lib_Jud;

       if (lr_Lib_Jud.Achou_Liveracao = 1) then      -- Tem liberação por ordem Judicial!
         vSimNao := 'N';    -- Proc Arquivado "LIBERADO POR ORDEM JUDICIAL" --> não é válido
         return(vSimNao);
       end if;

    end if;

  end if;

  open  c3;
  fetch c3 into nCont; -- tem documento de Indeferimento
  close c3;
  if nCont > 0 then
     vSimNao := 'S';
     return(vSimNao);
  end if;

  open  c4;
  fetch c4 into nCont; -- tem Certificado em Vigor
  close c4;
  if nCont > 0 then
     vSimNao := 'S';
     return(vSimNao);
  else
     vSimNao := 'N';
     return(vSimNao);
  end if;

  return(vSimNao);

end;
FUNCTION FC_VER_RAMO_AUT(P_PROC_ID IN number
                        ,P_TIDO_ID IN number) RETURN VARCHAR2 IS
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 17/09/2024
  | Purpose: Fechar cursores antes do final dos processos e foi reformatado o código desta function para
  |          melhor entendimento.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/

  vMensagem  varchar2(500) := null;
  nCont      number(4);
  dDataAtual date;
  --  dDataRef                    date := to_date('14/07/2011','dd/mm/rrrr');
  nCldo_id number(10);
  --  nTido_id                     number(5);
  nTido_id_licenca number(5);
  vAbreviatura     varchar2(15);
  nRaat_id         number(7, 2);
  vDmCondicao      varchar2(1);

  cursor c1 is
    select proc.resp_id
          ,nvl(proc.dm_libera_manual, 'N') dm_libera
          ,ata1.raat_id
          ,raat.grrm_id
          ,raat.dm_condicao_lic
          ,raat.dm_libera_manual
      from fep_processos             proc
          ,fep_responsabilidades     resp
          ,fep_atividades_antropicas ata1
          ,fep_ramos_atividades      raat
     where proc.proc_id = p_proc_id
       and proc.resp_id = resp.resp_id
       and resp.atan_id = ata1.atan_id
       and ata1.raat_id = raat.raat_id;
  r1 c1%rowtype;

  cursor c2 is
    select count(*)
      from fep_listas_cond_restricoes lcrs
          ,fep_tido_cond_restr        tilc
     where lcrs.raat_id = r1.raat_id
       and lcrs.data_fim_validade is null
       and lcrs.lcrs_id = tilc.lcrs_id
       and tilc.data_fim is null
       and tilc.tido_id = nTido_id_licenca;

  cursor c21 is
    select tido.abreviatura
      from fep_tipos_documentos tido
     where tido.tido_id = nTido_id_licenca;

  cursor c3 is
    select count(*)
      from fep_mp_processos mppr
     where mppr.proc_id = p_proc_id;

  cursor c4 is
    select count(*)
      from fep_solic_integradoras soin
     where soin.proc_id = p_proc_id;

  cursor c5 is
    select sucd.cldo_id
      from fep_tipos_documentos       tido
          ,fep_sub_classes_documentos sucd
     where tido.tido_id = nTido_id_licenca
       and tido.sucd_id = sucd.sucd_id;

  cursor c6 is
    select tidm.tido_id_documento
      from fep_tipos_docs_emissoes tidm
     where tidm.tido_id_parecer = nTido_id_licenca;

  cursor c7 is
    select tido.tido_id_origem
      from fep_tipos_documentos tido
     where tido.tido_id = nTido_id_licenca;
BEGIN

  if p_proc_id is null then
    RETURN(vMensagem);
  end if;

  SELECT trunc(SYSDATE)
    INTO dDataAtual
    FROM dual;

  OPEN c1;
  FETCH c1
    INTO r1;
  IF c1%notfound THEN
    open c3;
    fetch c3
      into nCont; --  Processo SEMJ
    close c3;
    if nCont > 0 then
    
      close c1; -- (TG) Adicionado
    
      RETURN(vMensagem);
    else
      open c4; --  Processos integradoras/silvicultura
      fetch c4
        into nCont;
      close c4;
      if nCont > 0 then
      
        close c1; -- (TG) Adicionado
      
        RETURN(vMensagem);
      else
        vMensagem := 'Erro: Processo não encontrado. Proc_Id ' || p_proc_id;
        CLOSE c1;
        RETURN(vMensagem);
      end if;
    end if;
  else
    vDmCondicao := r1.dm_condicao_lic;
  END IF;


  IF p_tido_id IN (360, 1226, 410, 1231) THEN
    vMensagem := 'Erro: Documentos de tipo 360 ou 410 e respectivos pareceres  - devem ser feitos por geração automática. Proc_Id ' || p_proc_id;
    CLOSE c1;
    RETURN(vMensagem);
  END IF;

  --   Suporte 45599 - DL - os pareceres   dos  documentos, cujo os codrams já estão automatizados, somente poderão ser gerados através de  geração automática.
  --                                                ( Malu 20/06/2014 )

  IF vDmCondicao = 'S' then
    -- Ramo que possui condição/restrição cadastrada
  
    -- Libera Geração Manual
    IF r1.dm_libera = 'S' THEN
      vMensagem := NULL;
      CLOSE c1;
      RETURN(vMensagem);
    END IF;
  
    IF p_tido_id IN (300, 1220, 310, 1221) THEN
      vMensagem := 'Erro: Documentos de tipo 300 ou 310 e respectivos pareceres  - devem ser feitos por geração automática. Proc_Id ' || p_proc_id;
      CLOSE c1;
      RETURN(vMensagem);
    END IF;
  
    if r1.dm_libera_manual = 'S' then
      CLOSE c1;
      RETURN(vMensagem);
    else
    
      ---------------------------------------------------------------
      -- Verifica a classe de documento
      ---------------------------------------------------------------
      nRaat_id         := r1.raat_id;
      nTido_id_licenca := p_tido_id;
    
      open c5;
      fetch c5
        into nCldo_id;
      close c5;
    
      if nCldo_id = 12 then
        -- parecer
        open c6;
        fetch c6
          into nTido_id_licenca; -- documento a emitir
        close c6;
      
        open c5;
        fetch c5
          into nCldo_id;
        close c5;
      end if;
    
      if nCldo_id = 5 then
        -- indeferimento
        open c7;
        fetch c7
          into nTido_id_licenca;
        close c7;
      end if;
    
    
      if nTido_id_licenca is not null then
      
        OPEN c2;
        FETCH c2
          INTO nCont;
        CLOSE c2;
      
        ---------------------------------------------------------------
        --- Se tem condicionante para Ramo e Tipo
        ---------------------------------------------------------------
      
        IF nCont > 0 THEN
        
        
          open c21;
          fetch c21
            into vAbreviatura;
          close c21;
        
          vMensagem := 'Erro: No Ramo Ativ: ' || ltrim(rtrim(to_char(nRaat_id, '99990.99'))) || ', o tipo doc: ' || nTido_id_licenca || '-' ||
                       vAbreviatura || ' e respectivos Indeferimentos e Pareceres devem ser feitos por Geração Automática.';
          CLOSE c1;
          RETURN(vMensagem);
        
        END IF;
        ---------------------------------------------------------------
      
      END IF;
    END IF;
  
  END IF;

  close c1; -- (TG) Adicionado

  RETURN(vMensagem);

END;
FUNCTION FC_VALIDA_DOCS_TRAB
 (P_PROC_ID IN number
 ,P_TIDO_ID IN number
 ,P_DOCU_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
--vSituacao       varchar2(1);
nCldo_id_lic    number(3)  := 0;
nTido_id_lic    number(5)  := null;
nCont           number(4);
nContSetores    number(4)  := 0;
vMsg    varchar2(400) := null;
nContSetor                number(2) := 0;
vSiglaSetor                varchar2(20);
nQtSetor                    number(2);
vSetores                    varchar2(200);


cursor  c1 is
        select  tidm.tido_id_documento
          from  fep_tipos_docs_emissoes  tidm
         where  tidm.tido_id_parecer = p_tido_id;

cursor  c2 is
    select  sucd.cldo_id
         from   fep_tipos_documentos       tido,
                                     fep_sub_classes_documentos sucd
         where  tido.sucd_id = sucd.sucd_id
                        and   tido.tido_id = nTido_id_lic;

--- 200-DL emite o Parecer e a Licença
cursor  c3 is
        select  count(*)
          from  fep_documentos docu
                  where   docu.proc_id  = p_proc_id
                      and   docu.situacao = 'B'
                      and        docu.docu_id != p_docu_id
                       and       docu.seto_id  not in(200, 201);

cursor  c4 is
        select  seto.sigla,
                                      count(*) qt
          from  fep_documentos docu,
                                     fep_setores    seto
         where  docu.proc_id  = p_proc_id
                        and   docu.situacao = 'B'
                        and      docu.seto_id  = seto.seto_id
                        and      docu.docu_id != p_docu_id
                        and      docu.seto_id  not in(200, 201)
                group by seto.sigla
                order by 1;
BEGIN

-- Suporte 32464 - Clauren - DL 29/06/2011
-- Em reunião realizada em 22/06/2011, com as Chefias do DCONT, DISA, DICOPI DASP e DL, foi  decidido:
-- os Pareceres de Licena/Documentos Licenciatrios,
-- somente poderão ser colocados em vigor no BD, se todos os documentos,
-- referente aquele processo administrativo,  inseridos BD , também,  estiverem em vigor.
-- Solicito a implantação no BD  do acima descrito.
-- Malu 29/06/2011

-- Alterado para dar a msg em que setor estão os documentos em TRABALHO   ( Malu - 14/07/2011 )

open  c1;
fetch c1 into nTido_id_lic;
close c1;

if  nTido_id_lic is not null then
  open  c2;
  fetch c2 into nCldo_id_lic;
  close c2;
end if;

if  nCldo_id_lic in (1,2,3,4,5,6) then
  open  c3;
  fetch c3 into nCont;
  close c3;
  if nCont > 0 then

       open c4;
       loop
          fetch c4 into vSiglaSetor, nQtSetor;
          if c4%notfound then
             close c4;
             exit;
          else
             nContSetor := nContSetor + 1;
             nContSetores := nContSetores + 1;
             if nContSetor = 1 then
                vSetores := vSiglaSetor || ': ' || nQtSetor;
             else
                vSetores := vSetores || ', ' || vSiglaSetor || ': ' || nQtSetor;
             end if;
          end if;
       end loop;

       if nCont = 1 then
          vMsg := 'Erro: Existe + Doc EM TRABALHO neste Processo no Setor ( ' || vSetores || ' ). ' ||
                'Este PARECER LIC não pode ser colocado EM VIGOR com esta pendência.';
       else
          if nContSetores = 1 then
             vMsg := 'Erro: Existem + Docs EM TRABALHO neste Processo no Setor ( ' || vSetores || ' ). ' ||
                     'Este PARECER LIC não pode ser colocado EM VIGOR com estas pendências.';
          else
             vMsg := 'Erro: Existem + Docs EM TRABALHO neste Processo nos Setores ( ' || vSetores || ' ). ' ||
                   'Este PARECER LIC não pode ser colocado EM VIGOR com estas pendências.';
          end if;
      end if;
    end if;
end if;

return(vMsg);

END;
FUNCTION FC_DICOPI_FUNC_PROD
 (P_RAAT_ID IN number
 )
 RETURN VARCHAR2
 IS


      vSolicita    varchar2(1)  := 'S';
begin

   -- Suporte 30480 de 20/01/2011
   -- Suporte 32776 de 25/07/2011
   -- Suporte 55147 de 31/10/2016

   -- 3121, 50 passou para  3114.10
   -- 3122,10   passou para 3116,10
   -- 3112.10 cfme solic Regina em 24/10/2017

    if p_raat_id in ( 3112.10, 3114.10, 3116.10,  3513.20, 3121.10,
                                  3130.11, 3130.12,
                                  3130.21, 3130.22,
                                  3130.31, 3130.32,
                                  3130.41, 3130.42,
                                  3130.51, 3130.52, 3130.60,
                                  4751.50 ) then
       vSolicita := 'N';
    end if;

    return(vSolicita);

end;
FUNCTION FC_LIB_DISPLAY_PDF
 (P_DOCU_ID IN number
 ,P_USUARIO IN varchar2
 )
 RETURN VARCHAR2
 IS
  nSeto_func    number(6);
  nSeto_proc    number(6);
  nCldo_proc    number(3);
  dDataFisica   date;
  vMsgNao       varchar2(100);
  vMsgSim       varchar2(100);
  nCont             number(2);

  cursor c1 is
     select auxf.seto_id
       from fep_aux_func_ultimos auxf
      where auxf.username = p_usuario;

  cursor c2 is
     select docu.seto_id,
            sucd.cldo_id,
            docu.data_assinatura_fisica
       from fep_documentos             docu,
            fep_tipos_documentos       tido,
            fep_sub_classes_documentos sucd
      where docu.docu_id = p_docu_id
        and docu.tido_id = tido.tido_id
        and tido.sucd_id = sucd.sucd_id;

 cursor c3 is
        SELECT count(*)
       FROM fep_aux_func_ultimos   aux,
            fep_acessos_pessoas    acpe,
            fep_acessos_parametros acpa
      WHERE aux.situacao IN (1,2)
        AND aux.pess_id = acpe.pess_id
        AND acpe.acpa_id = acpa.acpa_id
        AND acpa.parametro = 'DL_LIBERA_PESSOA'
        and aux.username = p_usuario;
begin

   vMsgNao := 'Atenção: Documento PDF ainda não foi assinado. Indisponível a visualização.';
   vMsgSim := null;

   open  c1;
   fetch c1 into nSeto_func;
   close c1;

   if nSeto_func is null then
      return('Atenção: Setor do funcionário não encontrado.');
   else
      -- libera para DL e DIS
      if nSeto_func in ( 200,201,33, 250 ) then
         return(vMsgSim);
      else

          open  c3;
          fetch  c3 into nCont;
          close c3;

          if nCont > 0 then
             return(vMsgSim);  -- funcionário emprestado a DL - pode ter acesso
          end if;

      end if;
   end if;

   if p_docu_id is not null then
       open  c2;
       fetch c2 into nSeto_proc, nCldo_proc, dDataFisica;
       close c2;
    end if;

   -- Verifica os documentos de licenciamento
   if dDataFisica is not null then  -- já assinado libera para todos setores
      return(vMsgSim);
   end if;

   if nCldo_proc not in (1,2,3,4,5,6,100,101,200,201) then
      return(vMsgSim);
   end if;

   if nSeto_proc in ( 222,2221,2222,2223 ) then    --- DICOPI
      if nSeto_func in ( 222,2221,2222,2223 ) then
         return(vMsgSim);
      else
         return(vMsgNao);
      end if;
   elsif nSeto_proc in ( 223,2231,2232,2233,2234 ) then    --- DISA
         if nSeto_func in ( 223,2231,2232,2233,2234 ) then
            return(vMsgSim);
         else
            return(vMsgNao);
         end if;
   else    --- DEMAIS SETORES
      if nSeto_func = nSeto_proc then
         return(vMsgSim);
      else
         return(vMsgNao);
      end if;
   end if;

   return('Não liberado.');

end;
PROCEDURE PR_GERA_TAB_PROR2090
 IS


   nCont          number(5);
   nQtTec         number(5);
   nSeto_id       number(6);

   vDtAtual       varchar2(8);
   dDataAtual     date;

   vDtAnterior    varchar2(8);
   dDataAnterior  date;

   vUsuario       varchar2(30);
   dData          date;

   cursor c0 is
      select count(*)
        from fep_aux_processos_passivos aux
       where aux.seto_id = nSeto_id
         and aux.operador_inclusao = vUsuario
         and aux.dm_tipo = 1;

  cursor c10 is
     select count(*) qt
       FROM FEP_AUX_FUNC_ULTIMOS AUX,
            FEP_FUNCIONARIOS_ORIGENS FUOR
      WHERE ( AUX.SITUACAO = 1 or
              AUX.SITUACAO = 2 AND  AUX.MOAF_ID IN ( 1, 11) )
        AND AUX.TIPO_REGISTRO = 'F'
        AND AUX.FUOR_ID = FUOR.FUOR_ID
        AND FUOR.CAFE_ID IN (1,2)
        and aux.seto_id = nSeto_id;

   cursor c1 is
      select count(*)  qt,
             proc.seto_id,
             seto.sigla,
             seto.nome
       from fep_processos proc,
            fep_tipos_documentos tido,
            fep_sub_classes_documentos sucd,
            fep_setores   seto
      where proc.seto_id = seto.seto_id
        and proc.tido_id = tido.tido_id
        and tido.sucd_id = sucd.sucd_id
        and sucd.cldo_id < 7
        and trunc(proc.data_entrada) < dDataAnterior
        and proc.situacao not in ( 'P','A','D','J','S' )
        and not exists ( select null
                           from fep_documentos docu1,
                                fep_tipos_documentos tido1,
                                fep_sub_classes_documentos sucd1
                          where docu1.proc_id = proc.proc_id
                            and docu1.tido_id = tido1.tido_id
                            and tido1.sucd_id = sucd1.sucd_id
                            and sucd1.cldo_id < 7 )
      group by
             proc.seto_id,
             seto.sigla,
             seto.nome
      order by 1;

    r1    c1%rowtype;


   cursor c2 is
      select count(*)  qt,
             proc.seto_id,
             seto.sigla,
             seto.nome
       from fep_processos proc,
            fep_tipos_documentos tido,
            fep_sub_classes_documentos sucd,
            fep_setores   seto
      where proc.seto_id = seto.seto_id
        and proc.tido_id = tido.tido_id
        and tido.sucd_id = sucd.sucd_id
        and sucd.cldo_id < 7
        and trunc(proc.data_entrada) > dDataAtual
        and proc.situacao not in ( 'P','A','D','J','S' )
        and not exists ( select null
                           from fep_documentos docu1,
                                fep_tipos_documentos tido1,
                                fep_sub_classes_documentos sucd1
                          where docu1.proc_id = proc.proc_id
                            and docu1.tido_id = tido1.tido_id
                            and tido1.sucd_id = sucd1.sucd_id
                            and sucd1.cldo_id < 7 )
      group by
             proc.seto_id,
             seto.sigla,
             seto.nome
      order by 1;

    r2    c2%rowtype;


   cursor c3 is
      select count(*)  qt,
             proc.seto_id,
             seto.sigla,
             seto.nome
       from fep_processos proc,
            fep_responsabilidades resp,
            fep_atividades_antropicas ata1,
            fep_municipios   muni,
            fep_tipos_documentos tido,
            fep_sub_classes_documentos sucd,
            fep_setores   seto
      where proc.seto_id = seto.seto_id
        and proc.tido_id = tido.tido_id
        and tido.sucd_id = sucd.sucd_id
        and proc.resp_id = resp.resp_id
        and resp.atan_id = ata1.atan_id
        and ata1.situacao = 1
        and ata1.muni_id = muni.muni_id
        and muni.licenciador = 'S'
        and decode(pck_cadastros.fc_impacto_regional(ata1.atan_id),'S',2, decode(
            fc_impacto_local(ata1.raat_id, substr(busca_porte(ata1.raat_id,ata1.medida_porte, null),1,1)),'S',1,2)) = 1
        and (fc_impacto_local(ata1.raat_id, substr(busca_porte(ata1.raat_id,ata1.medida_porte, null),1,1)) = 'S'
               or
             substr(pck_arr_bloquetos.fc_arr_convenio_muni
                  (ata1.muni_id,ata1.raat_id,substr(busca_porte(ata1.raat_id,ata1.medida_porte,null),1,1)),1,1) = 'S')
        and sucd.cldo_id < 7
        and proc.situacao not in ( 'P','A','D','J','S' )
        and not exists ( select null
                           from fep_documentos docu1,
                                fep_tipos_documentos tido1,
                                fep_sub_classes_documentos sucd1
                          where docu1.proc_id = proc.proc_id
                            and docu1.tido_id = tido1.tido_id
                            and tido1.sucd_id = sucd1.sucd_id
                            and sucd1.cldo_id < 7 )
      group by
             proc.seto_id,
             seto.sigla,
             seto.nome
      order by 1;
    r3    c3%rowtype;



   cursor c4 is
      select count(*)  qt,
             proc.seto_id,
             seto.sigla,
             seto.nome
       from fep_processos proc,
            fep_responsabilidades resp,
            fep_atividades_antropicas ata1,
            fep_municipios   muni,
            fep_tipos_documentos tido,
            fep_sub_classes_documentos sucd,
            fep_setores   seto
      where proc.seto_id = seto.seto_id
        and proc.tido_id = tido.tido_id
        and tido.sucd_id = sucd.sucd_id
        and proc.resp_id = resp.resp_id
        and resp.atan_id = ata1.atan_id
        and ata1.situacao = 1
        and ata1.muni_id = muni.muni_id
        and decode(pck_cadastros.fc_impacto_regional(ata1.atan_id),'S',2, decode(
            fc_impacto_local(ata1.raat_id, substr(busca_porte(ata1.raat_id,ata1.medida_porte, null),1,1)),'S',1,2)) = 2
        and sucd.cldo_id < 7
        and proc.situacao in ( 'V' )
        and not exists ( select null
                           from fep_documentos docu1,
                                fep_tipos_documentos tido1,
                                fep_sub_classes_documentos sucd1
                          where docu1.proc_id = proc.proc_id
                            and docu1.tido_id = tido1.tido_id
                            and tido1.sucd_id = sucd1.sucd_id
                            and sucd1.cldo_id < 7 )
      group by
             proc.seto_id,
             seto.sigla,
             seto.nome
      order by 1;
    r4    c4%rowtype;


   cursor c5 is
      select count(*)  qt,
             proc.seto_id,
             seto.sigla,
             seto.nome
       from fep_processos proc,
            fep_responsabilidades resp,
            fep_atividades_antropicas ata1,
            fep_municipios   muni,
            fep_tipos_documentos tido,
            fep_sub_classes_documentos sucd,
            fep_setores   seto
      where proc.seto_id = seto.seto_id
        and proc.tido_id = tido.tido_id
        and tido.sucd_id = sucd.sucd_id
        and proc.resp_id = resp.resp_id
        and resp.atan_id = ata1.atan_id
        and ata1.situacao = 1
        and ata1.muni_id = muni.muni_id
        and decode(pck_cadastros.fc_impacto_regional(ata1.atan_id),'S',2, decode(
            fc_impacto_local(ata1.raat_id, substr(busca_porte(ata1.raat_id,ata1.medida_porte, null),1,1)),'S',1,2)) = 2
        and sucd.cldo_id < 7
        and proc.situacao in ( 'I' )
        and not exists ( select null
                           from fep_documentos docu1,
                                fep_tipos_documentos tido1,
                                fep_sub_classes_documentos sucd1
                          where docu1.proc_id = proc.proc_id
                            and docu1.tido_id = tido1.tido_id
                            and tido1.sucd_id = sucd1.sucd_id
                            and sucd1.cldo_id < 7 )
        and not exists ( select null
                           from fep_irrig_ativ_solicitacoes iras
                          where iras.proc_id = proc.proc_id )
      group by
             proc.seto_id,
             seto.sigla,
             seto.nome
      order by 1;
    r5    c5%rowtype;


   cursor c6 is
      select count(*)  qt,
             proc.seto_id,
             seto.sigla,
             seto.nome
       from fep_processos proc,
            fep_responsabilidades resp,
            fep_atividades_antropicas ata1,
            fep_municipios   muni,
            fep_tipos_documentos tido,
            fep_sub_classes_documentos sucd,
            fep_setores   seto
      where proc.seto_id = seto.seto_id
        and proc.tido_id = tido.tido_id
        and tido.sucd_id = sucd.sucd_id
        and proc.resp_id = resp.resp_id
        and resp.atan_id = ata1.atan_id
        and ata1.situacao = 1
        and ata1.muni_id = muni.muni_id
        and decode(pck_cadastros.fc_impacto_regional(ata1.atan_id),'S',2, decode(
            fc_impacto_local(ata1.raat_id, substr(busca_porte(ata1.raat_id,ata1.medida_porte, null),1,1)),'S',1,2)) = 2
        and sucd.cldo_id < 7
        and proc.situacao in ( 'I' )
        and not exists ( select null
                           from fep_documentos docu1,
                                fep_tipos_documentos tido1,
                                fep_sub_classes_documentos sucd1
                          where docu1.proc_id = proc.proc_id
                            and docu1.tido_id = tido1.tido_id
                            and tido1.sucd_id = sucd1.sucd_id
                            and sucd1.cldo_id < 7 )
        and exists ( select null
                           from fep_irrig_ativ_solicitacoes iras
                          where iras.proc_id = proc.proc_id )
      group by
             proc.seto_id,
             seto.sigla,
             seto.nome
      order by 1;
    r6    c6%rowtype;
begin

   select user, sysdate into vUsuario, dData from dual;

   vDtAtual      := '3112' || to_char(to_number(to_char(sysdate,'rrrr') -  1));
   dDataAtual    := to_date(vDtAtual,'ddmmrrrr');

   vDtAnterior   := '0101' || to_char(sysdate,'rrrr');
   dDataAnterior := to_date(vDtAnterior,'ddmmrrrr');

   begin
      delete
        from fep_aux_processos_passivos
       where operador_inclusao = vUsuario
         and dm_tipo = 1;
                   commit;
   end;


   -- processos com entrada anterior ao ano atual
   open c1;
   loop
      fetch c1 into r1;
      if c1%notfound then
         close c1;
         exit;
      else
         nSeto_id := r1.seto_id;
         open  c0;
         fetch c0 into nCont;
         close c0;
         if nCont = 0 then

            open  c10;
            fetch c10 into nQtTec;
            close c10;

            begin
               insert into fep_aux_processos_passivos  (
                          SETO_ID,
                          SETO_SIGLA,
                          NOME,
                          qt_anos_ant,
                          qt_ano_atual,
                          QT_IMPLOCAL,
                          QT_VISTORIA,
                          QT_IRRIG_COMPL,
                          QT_OUTRO_COMPL,
                          QT_TECNICOS,
                          PROC_ID,
                          DM_TIPO,
                          OPERADOR_INCLUSAO,
                          DATA_INCLUSAO
                             ) values (
                          r1.SETO_ID,
                          r1.SIGLA,
                          r1.NOME,
                          r1.QT,
                          0,0,0,0,0,
                          nQtTec,
                          null,1,
                          vUsuario,
                          dData );
                  commit;
            end;
         else
            begin
              update fep_aux_processos_passivos
                 set qt_anos_ant = qt_anos_ant + r1.qt
               where seto_id = r1.seto_id
                 and operador_inclusao = vUsuario
                 and dm_tipo = 1;
                      commit;
            end;
         end if;
      end if;
   end loop;

   -- processos com entrada em 2010
   open c2;
   loop
      fetch c2 into r2;
      if c2%notfound then
         close c2;
         exit;
      else
         nSeto_id := r2.seto_id;
         open  c0;
         fetch c0 into nCont;
         close c0;
         if nCont = 0 then

            open  c10;
            fetch c10 into nQtTec;
            close c10;

            begin
               insert into fep_aux_processos_passivos (
                          SETO_ID,
                          SETO_SIGLA,
                          NOME,
                          qt_anos_ant,
                          qt_ano_atual,
                          QT_IMPLOCAL,
                          QT_VISTORIA,
                          QT_IRRIG_COMPL,
                          QT_OUTRO_COMPL,
                          QT_TECNICOS,
                          PROC_ID,
                          DM_TIPO,
                          OPERADOR_INCLUSAO,
                          DATA_INCLUSAO
                             ) values (
                          r2.SETO_ID,
                          r2.SIGLA,
                          r2.NOME,
                          0,
                          r2.QT,
                          0,0,0,0,
                          nQtTec,
                          null,1,
                          vUsuario,
                          dData );
                  commit;
            end;
         else
            begin
              update fep_aux_processos_passivos
                 set qt_ano_atual = qt_ano_atual + r2.qt
               where seto_id = r2.seto_id
                 and operador_inclusao = vUsuario
                 and dm_tipo = 1;
                      commit;
            end;
         end if;
      end if;
   end loop;


   -- processos de impacto local
   open c3;
   loop
      fetch c3 into r3;
      if c3%notfound then
         close c3;
         exit;
      else
         nSeto_id := r3.seto_id;
         open  c0;
         fetch c0 into nCont;
         close c0;
         if nCont > 0 then
            begin
              update fep_aux_processos_passivos
                 set qt_implocal = qt_implocal + r3.qt
               where seto_id = r3.seto_id
                 and operador_inclusao = vUsuario
                 and dm_tipo = 1;
                      commit;
            end;
         end if;
      end if;
   end loop;

   -- processos em vistoria
   open c4;
   loop
      fetch c4 into r4;
      if c4%notfound then
         close c4;
         exit;
      else
         nSeto_id := r4.seto_id;
         open  c0;
         fetch c0 into nCont;
         close c0;
         if nCont > 0 then
            begin
              update fep_aux_processos_passivos
                 set qt_vistoria = qt_vistoria + r4.qt
               where seto_id = r4.seto_id
                 and operador_inclusao = vUsuario
                 and dm_tipo = 1;
                      commit;
            end;
         end if;
      end if;
   end loop;


   -- processos ag documentos - não irrigante
   open c5;
   loop
      fetch c5 into r5;
      if c5%notfound then
         close c5;
         exit;
      else
         nSeto_id := r5.seto_id;
         open  c0;
         fetch c0 into nCont;
         close c0;
         if nCont > 0 then
            begin
              update fep_aux_processos_passivos
                 set qt_outro_compl = qt_outro_compl + r5.qt
               where seto_id = r5.seto_id
                 and operador_inclusao = vUsuario
                 and dm_tipo = 1;
                      commit;
            end;
         end if;
      end if;
   end loop;

   -- processos ag documentos - irrigante
   open c6;
   loop
      fetch c6 into r6;
      if c6%notfound then
         close c6;
         exit;
      else
         nSeto_id := r6.seto_id;
         open  c0;
         fetch c0 into nCont;
         close c0;
         if nCont > 0 then
            begin
              update fep_aux_processos_passivos
                 set qt_irrig_compl = qt_irrig_compl + r6.qt
               where seto_id = r6.seto_id
                 and operador_inclusao = vUsuario
                 and dm_tipo = 1;
                      commit;
            end;
         end if;
      end if;
   end loop;

end;
FUNCTION FC_AGRO_PRINCIPIO_ATIVO
 (P_PROC_ID IN number
 )
 RETURN VARCHAR2
 IS


   vPrincipio   varchar2(600) := null;

   cursor c1 is
      select decode(agro.principio_ativo,
                        null,agro.outro_principio_ativo,
                        agro.principio_ativo )
        from fep_agrotoxicos_processos agpr,
             fep_agrotoxicos           agro
       where agpr.proc_id = p_proc_id
         and agpr.agro_id = agro.agro_id;
begin
    open c1;
    fetch c1 into vPrincipio;
    close c1;

    return(vPrincipio);
 end;
FUNCTION FC_DIAS_TRAMIT_PROC
 (P_PROC_ID IN NUMBER
 )
 RETURN INTEGER
 IS
nDias_tramit  number(10);

cursor  docu  is
  select  nvl(decode(docu.tempo_tramlo_ren,null,nvl(docu.tempo_tramitacao,1),docu.tempo_tramlo_ren),0)  tempo
  from  fep_documentos  docu
  where docu.proc_id = p_proc_id;
begin
open  docu;
fetch docu  into  nDias_tramit;
close docu;

return(nDias_tramit);

end;

FUNCTION FC_PRCR_PROMOVER (P_PRCR_ID IN number) RETURN VARCHAR2 IS

  vFinalidade     varchar2(4000) := null;
  nTido_id        number(5)     := null;
  nTido_Descricao fep_tipos_documentos.Descricao%Type;
  vAtividade      varchar2(500);
  nProc_id        number(10);
  nRaat_id        number(7,2);
  nTipoAut        number(1);
  nAtan_id        number(10);
  nMedidaPorte    number(12,4);
  vVeiculos       varchar2(20);
  nTipoCercap     number(2);
  nCercap         number(10);
  vNomeAgrotox    varchar2(100);
  nDmTipoGas      number(1);
  vExpurgo        varchar2(1);
  nGrrm_id        number(10);
  nCldo_id        number(3);
  nQtAeronaves    number(5);
  nPrefixos       varchar2(150);
  nClasseDraga    number(1);
  vRaatDescricao  varchar2(150);
  nAspr_id        number(10);

  cursor c1 is
   SELECT prcr.tido_id_licenca,
          tido.descricao,
          prcr.descricao_atividade,
          prcr.dm_CVC_autorizacao,
          prcr.proc_id,
          sucd.cldo_id,
          proc.aspr_id
    FROM  fep_aux_proc_cond_restr    prcr,
          fep_tipos_documentos       tido,
          fep_sub_classes_documentos sucd,
          fep_processos              proc
    WHERE prcr.prcr_id = p_prcr_id
      and prcr.tido_id_licenca = tido.tido_id
      and prcr.proc_id = proc.proc_id
      and tido.sucd_id = sucd.sucd_id;

  cursor c2 is
   SELECT ata1.atan_id,
          ata1.medida_porte,
          ata1.raat_id,
          raat.grrm_id,
          nvl(ata1. dm_apl_agrot_expurgo, 'N') expurgo,
          raat.descricao
     FROM fep_processos             proc,
          fep_responsabilidades     resp,
          fep_atividades_antropicas ata1,
          fep_ramos_atividades      raat
    WHERE proc.proc_id = nProc_id
      and proc.resp_id = resp.resp_id
      and resp.atan_id = ata1.atan_id
      and ata1.raat_id = raat.raat_id;

  cursor c3 is
   select clre.tipo_cercap, clre.cercap
    from  fep_classes_residuos_ativ clre
    where clre.atan_id = nAtan_id;

  cursor c4 is
   SELECT agtx.nome_agrotoxico
    FROM  fep_agrotox_detalhes agtx
    WHERE agtx.atan_id = nAtan_id;

  cursor c5 is
   SELECT ptcb.dm_tipo_gas
    FROM  fep_postos_combustiveis ptcb
    WHERE ptcb.atan_id = nAtan_id;

  cursor c6 is
   select adet.qt_aeronaves, adet.aero_prefixos
    from  fep_ativ_det_energia adet
    where adet.atan_id = nAtan_id;

  CURSOR c7 IS
   SELECT atdr.dm_classe_draga
    FROM  fep_ativ_dragas atdr
    WHERE atdr.atan_id = nAtan_id;

begin

  open  c1;
  fetch c1 into nTido_id, nTido_Descricao, vAtividade, nTipoAut , nProc_id, nCldo_id, nAspr_id;
  close c1;

  if nTido_id is null then
    return (vFinalidade);
  else
    open  c2;
    fetch c2 into nAtan_id, nMedidaPorte,  nRaat_id, nGrrm_id, vExpurgo, vRaatDescricao;
    close c2;
  end if;

  if nTido_id = 400 and nAspr_id = 7071 then
     vFinalidade := 'A PROMOVER: SUBSTITUIÇÃO DE EQUIPAMENTO CONTENDO ÓLEO MINERAL ISOLANTE';
     return(vFinalidade);
  end if;

   -- Secretaria da Agricultura, Pecuária e Irrigação
   -- Certificado de Produtor Florestal
   if nTido_id IN( 260, 5940) then
      if nRaat_id = 126.10 then
         vFinalidade := 'A PROMOVER: SILVICULTURA DE EXÓTICAS';
      end if;
      if nRaat_id = 126.20 then
         vFinalidade := 'A PROMOVER: SILVICULTURA DE EXÓTICAS';
      end if;
      return (vFinalidade);
   end if;

   -- cfme solicitação Cristiano-DILAP  ( Malu - 06/08/2021 )
   if nTido_id IN ( 4240, 5920 ) then
      vFinalidade := 'A PROMOVER: AUTORIZAÇÃO PARA USO DE ÁREA CONVERTIDA';
      return (vFinalidade);
   end if;

   -- Licença Ambiental por Compromisso
   -- Cfme solicitação Roberta/Jorge - DL a Finalidade ( A PROMOVER ) deve ser a descrição do Ramo para LAC
   if nTido_id IN( 281, 282, 5930) then
      -- vFinalidade := 'A PROMOVER: LICENÇA AMBIENTAL POR COMPROMISSO';
      vFinalidade := 'A PROMOVER: ' || vRaatDescricao;
      return (vFinalidade);
    end if;

    -- Autorização para Desativação de Empreendimento
   if nTido_id IN( 4250) then
      vFinalidade := 'A PROMOVER: AUTORIZAÇÃO PARA DESATIVAÇÃO DE EMPREENDIMENTO';
      return (vFinalidade);
    end if;
    -- Indeferimento de Autorização para Desativação de Empreendimento -- Cátia Jardim - 23/01/23 - SUP 39974
    if nTido_id IN( 5950) then
      vFinalidade := 'A PROMOVER: INDEFERIMENTO DE AUTORIZAÇÃO PARA DESATIVAÇÃO DE EMPREENDIMENTO ';
      return (vFinalidade);
    end if;
    -- Declaração de Desativação  -- Cátia Jardim - 23/01/23 - SUP 39974
    if nTido_id IN( 2150) then
      vFinalidade := 'A PROMOVER: DECLARAÇÃO DE DESATIVAÇÃO';
      return (vFinalidade);
    end if;
  ----------------------------------------------------------------------------
  -- 123.20 - AVIAÇÃO AGRICOLA - cfme solic Marta-DIAGRO em 09/05/2016   ( Malu )

   if nRaat_id = 123.20 and nTido_id<>400 then
      vFinalidade := 'A PROMOVER: ';
      open  c6;
      fetch c6 into  nQtAeronaves,  nPrefixos;
      close c6;
      if nQtAeronaves is null or ntido_id=400 then
         vFinalidade := vFinalidade || vAtividade;
      else
         if nTido_id in ( 100 ) then
            vFinalidade := 'A PROMOVER A LICENÇA PRÉVIA RELATIVA À ATIVIDADE DE: ';
         elsif nTido_id in ( 110 ) then
            vFinalidade := 'A PROMOVER A INSTALAÇÃO RELATIVA À ATIVIDADE DE: ';
         elsif nTido_id in ( 120 ) then
            vFinalidade := 'A PROMOVER OPERAÇÃO RELATIVA À ATIVIDADE DE: ';
         elsif nTido_id in ( 181 ) then
            vFinalidade := 'A PROMOVER A LICENÇA PRÉVIA E DE INSTALAÇÃO PARA ALTERAÇÃO RELATIVA À ATIVIDADE DE: ';
         else
            vFinalidade := 'A PROMOVER: ';
         end if;
         vFinalidade := vFinalidade || 'AVIAÇÃO AGRÍCOLA PARA APLICAÇÃO DE AGROTÓXICOS, ';
         if nQtAeronaves = 1 THEN
            vFinalidade := vFinalidade || 'AERONAVE DE PREFIXO ' || nPrefixos;
         else
            vFinalidade := vFinalidade || 'AERONAVES DE PREFIXOS ' || nPrefixos;
         end if;
      end if;
      return (vFinalidade);
  end if;
  ----------------------------------------------------------------------------

   -- Utilizado para relatórios dos PDF de Geração Automática
   -- PROR1045 / PROR1055

   if    nTido_id in ( 100, 106, 107, 108, 390 ) then
         -- vFinalidade := 'A PROMOVER OS ESTUDOS E A VIABILIDADE RELATIVA À ATIVIDADE DE: ';
         -- Suporte 46631 - DL                    (Malu 01/10/2014)
         vFinalidade := 'RELATIVA À ATIVIDADE DE: ';
   elsif nTido_id in ( 110, 116, 117, 118 ) then
      vFinalidade := 'A PROMOVER A INSTALAÇÃO RELATIVA À ATIVIDADE DE: ';
   elsif nTido_id in ( 120 ) then
      vFinalidade := 'A PROMOVER A OPERAÇÃO RELATIVA À ATIVIDADE DE: ';
   elsif nTido_id in ( 181 ) then
      vFinalidade := 'A PROMOVER A INSTALAÇÃO RELATIVA À ATIVIDADE DE: ';
   elsif nTido_id in ( 220,221,222,224, 5220,5221,5222,5224 ) then
      vFinalidade := 'A REALIZAR ANÁLISE DE LABORATÓRIO DOS PARÂMETROS CADASTRADOS';
   elsif nTido_id in ( 225, 550 ) then
      vFinalidade := 'A REALIZAR ANÁLISE DE CADASTRO DE LABORATÓRIO';
   elsif nTido_id in ( 230,231,232,233,235,236) then
      vFinalidade := 'A PROMOVER A OPERAÇÃO RELATIVA À ATIVIDADE DE DISTRIBUIÇÃO E COMERCIALIZAÇÃO DO AGROTÓXICO: ';
   elsif nTido_id in ( 5230,5231,5232,5233,5234,5236) then
      vFinalidade := 'RELATIVA À ATIVIDADE DE DISTRIBUIÇÃO E COMERCIALIZAÇÃO DO AGROTÓXICO: ';
   elsif nTido_id in ( 400, 431,432 ) then
     vFinalidade := 'A PROMOVER: ';
   elsif nTido_id in ( 440,5330) then
      vFinalidade := 'A PROMOVER O MANEJO DE FAUNA SILVESTRE A FIM DE VIABILIZAR INSTALAÇÃO DO EMPREENDIMENTO: ';
   elsif nTido_id in ( 300 ) or (nTido_id between 800 and 899) then
     vFinalidade := 'PARA A ATIVIDADE DE: ';
   elsif nTido_id in ( 330 ) then
     vFinalidade := 'FINALIDADE DA DECLARAÇÃO: ';
   else
     vFinalidade := 'A PROMOVER: ';
   end if;


   --- se ja estiver preenchido - não alterar a descrição cfme solic Gian-DIAGRO ( Malu 18/06/2019 )
   IF nTido_id in (431,432) then
      IF vAtividade IS NOT NULL THEN
         vFinalidade := 'A PROMOVER: ' || vAtividade;
         return(vFinalidade);
      end if;
   end if;

   if nRaat_id not in ( 5710.10, 4710.10, 4710.11, 4710.12, 4710.20, 4710.30, 123.11, 123.12, 123.13, 123.14, 123.15, 123.16 )  then
      vFinalidade := vFinalidade || vAtividade;
   else
         if  nTido_id in (431,432) then  -- Remessa de Resíduos Sólidos para Fora do RS
             vFinalidade := vFinalidade || vAtividade;
          end if;
   end if;

    if  nTido_id in (431,432) then  -- Remessa de Resíduos Sólidos para Fora do RS
          if nGrrm_id != 3 then
              vFinalidade := replace( vFinalidade, 'INDUSTRIAIS ','');
       end if;
   end if;

   -- Certificados de Agrotóxicos
   if nRaat_id in ( 123.11, 123.12, 123.13, 123.14, 123.15, 123.16  ) and
      nTido_id not in (840,12101,850,12102,851,12111,852,12114,860,12103,870,12104,810,1252,880,12106) then
       open  c4;
       fetch c4 into vNomeAgrotox;
       close c4;
       vFinalidade := vFinalidade || vNomeAgrotox;
  end if;

    -- Transportes
   if nRaat_id  in ( 4710.10, 4710.11, 4710.12, 4710.20, 4710.30 )  then

        if trunc(nMedidaPorte) > 1 then
            if nRaat_id = 4710.30 then
                vVeiculos :=  trunc(nMedidaPorte)  || ' embarcações';
            else
                vVeiculos :=  trunc(nMedidaPorte)  || ' veículos';
            end if;
        else
            if nRaat_id = 4710.30 then
                vVeiculos :=  trunc(nMedidaPorte)  || ' embarcação';
            else
                vVeiculos :=  trunc(nMedidaPorte)  || ' veículo';
            end if;
        end if;

        open  c3;
        fetch c3 into  nTipoCercap, nCercap;
        close c3;

         if nRaat_id in ( 4710.11 ) then
                 vAtividade := 'coleta e transporte de óleo lubrificante usado ou contaminado, com ' || vVeiculos || ', no Estado do Rio Grande do Sul, com CERCAP nº '
                                          || nTipoCercap  || '.' || nCercap;
         elsif nRaat_id in ( 4710.12 ) then
                 vAtividade := 'coleta e transporte de resíduos de esgotamento sanitário, com ' || vVeiculos || ', no Estado do Rio Grande do Sul, com CERCAP nº '
                                          || nTipoCercap  || '.' || nCercap;
         elsif nRaat_id in ( 4710.20 ) then
                 vAtividade := 'transporte ferroviário de produtos e/ou resíduos perigosos, com ' || vVeiculos || ', no Estado do Rio Grande do Sul, com CERCAP nº '
                                          || nTipoCercap  || '.' || nCercap;
         elsif nRaat_id in ( 4710.30 ) then
                 vAtividade := 'transporte hidroviário de produtos e/ou resíduos perigosos, com ' || vVeiculos || ', no Estado do Rio Grande do Sul, com CERCAP nº '
                                          || nTipoCercap  || '.' || nCercap;
         else
                 vAtividade := 'transporte rodoviário de produtos e/ou resíduos perigosos, com ' || vVeiculos || ', no Estado do Rio Grande do Sul, com CERCAP nº '
                                          || nTipoCercap  || '.' || nCercap;
        end if;
        vFinalidade := vFinalidade || vAtividade;
  end if;

  -- Autorização Geral
   if nTido_id = 400 then

       if nRaat_id = 4751.30  then
           vFinalidade := 'A PROMOVER A ALTERAÇÃO RELATIVA À ATIVIDADE DE: ' || vAtividade;
       end if;
        --Portaria 372/2018
        --De  3510.30 Para 2611.30
        --Cátia Jardim - 30/04/2018
       if nRaat_id = 2611.30  then
           vFinalidade := 'A PROMOVER A INSTALAÇÃO DE: ' || vAtividade;
       end if;

       if nRaat_id = 123.20 then
          vFinalidade := 'A PROMOVER: ' || vAtividade;
       end if;

  end if;

  if nRaat_id = 4751.30  then
       if nTido_id = 106 then
           open  c5;
           fetch c5 into nDmTipoGas;
           close c5;
           if  nDmTipoGas in (1,2) then
                 vFinalidade := 'A PROMOVER ESTUDOS E PROJETOS PARA: ' || vAtividade;
           end if;
       end if;
  end if;

   if nTido_id in ( 181 ) then
       vFinalidade :=  vFinalidade || ' - ALTERAÇÃO/AMPLIAÇÃO';
  end if;

   -- Serviço de Aplicação de Agrotóxicos e Afins
   If  nRaat_id = 124.30  then
     If nAspr_id = 6851 Then -- ALEXANDERSS Dia: 12/08/2025 OS-63577 - Condição para retirada do texto "EXPURGO" quando o Assunto for "CONTROLE DE ORGANISMOS OU CONTAMINANTES EM CORPO HÍDRICO" 
       vFinalidade :=  vFinalidade;
     Else
       if vExpurgo = 'S' then
         vFinalidade :=  vFinalidade || ', COM EXPURGO';
       else
         vFinalidade :=  vFinalidade || ', SEM EXPURGO';
       end if;
     End If;
   End if;

  if nRaat_id in ( 111.41, 111.42 ) then
      vFinalidade := 'ATIVIDADE: IRRIGAÇÃO POR ASPERSÃO/LOCALIZADA DE CULTURAS AGRÍCOLAS';
  end if;

  -- Retirado o ramo 10730.00 -- Portaria 372/2018 --Cátia Jardim - 30/04/2018
  -- Ramos do Grupo 16 - Setor Responsável DASP
  IF nRaat_id in (  10430.00, 10430.10, 10440.00, 10450.00, 10460.00,
                    10710.00, 10720.00, 10740.00, 10750.00,
                    10760.00, 10770.00, 10780.00, 10830.00, 10860.00 ) then
    vFinalidade := 'A PROMOVER: ' || vAtividade;
  end if;

  -- SEMA
  IF nTido_id in ( 411,32411) then --
  /* -- LUIS RICARDO(DNA) - GLPI 44596
  -- 24/05/2023
  -- ALTERAÇÃO DO RETORNO DA VARIÁVEL vFinalidade: 'A PROMOVER: CADASTRO SISPASS - CRIADOR AMADOR DE PASSERIFORMES';
  */
    vFinalidade := 'A PROMOVER: AUTORIZAÇÃO PARA CRIAÇÃO AMADORA DE PASSERIFORMES';
  END IF;

  IF nTido_id in ( 421,32421) then
     vFinalidade := 'A PROMOVER: CADASTRO ENTIDADES ASSOCIATIVAS';
  END IF;

  if vFinalidade is null then
     IF nTido_id in ( 422,5870) then
        vFinalidade := 'A PROMOVER: ' ||
                       upper('Supressão de vegetação nativa em estágio inicial de regeneração '  ||
                             'natural ou de formação florestal com espécies pioneiras para uso ' ||
                             'alternativo do solo no bioma mata atlântica');
     END IF;
  end if;

  IF nTido_id in ( 451,32451) then
     vFinalidade := 'A PROMOVER: AUTORIZAÇÃO PRÉVIA PARA FAUNA SILVESTRE';
  END IF;

  IF nTido_id in ( 452,32452) then
     vFinalidade := 'A PROMOVER: AUTORIZAÇÃO DE INSTALAÇÃO DE FAUNA SILVESTRE';
  END IF;

  IF nTido_id in ( 453,32453) then
     vFinalidade := 'A PROMOVER: AUTORIZAÇÃO DE USO E MANEJO DE FAUNA SILVESTRE';
  END IF;

  IF nTido_id in ( 454,33140) then
     vFinalidade := 'A PROMOVER: AUTORIZAÇÃO DE TRANSPORTE/COLETA/CAPTURA/EXPOSIÇÃO DE FAUNA SILVESTRE';
  END IF;

  IF nTido_id in ( 461,33461) then
     vFinalidade := 'A PROMOVER: AUTORIZAÇÃO DE MELIPONÁRIO';
  END IF;

  IF nTido_id in ( 471,32471) then
     vFinalidade := 'A PROMOVER: AUTORIZAÇÃO TORNEIO DE CANTO';
  END IF;

  IF nTido_id in ( 481,32481) then
     vFinalidade := 'A PROMOVER: AUTORIZAÇÃO DO ÓRGÃO GESTOR DA UNIDADE DE CONSERVAÇÃO PARA LICENCIAMENTO AMBIENTAL';
  END IF;

  IF nTido_id in ( 482,32482) then
     vFinalidade := 'A PROMOVER: AUTORIZAÇÃO DO ÓRGÃO GESTOR DA UNIDADE DE CONSERVAÇÃO PARA LICENCIAMENTO AMBIENTAL';
  END IF;

  IF nTido_id in ( 491,4491) then
     vFinalidade := 'A PROMOVER: AUTORIZAÇÃO FLORESTAL';
  END IF;

  IF nTido_id in ( 2961,32961) then
     vFinalidade := 'A PROMOVER: TERMO DE AVERBAÇÃO DE RESERVA LEGAL';
  END IF;

  IF nTido_id in ( 2971,32971) then
     vFinalidade := 'A PROMOVER: TERMO DE AVERBAÇÃO DE SERVIDÃO AMBIENTAL';
  END IF;

  IF nTido_id in ( 4901,34901) then
     vFinalidade := 'A PROMOVER: TERMO DE REGULARIDADE';
  END IF;

  IF nTido_id in ( 5001,34001) then
     vFinalidade := 'A PROMOVER: TERMO DE QUITAÇÃO';
  END IF;

  IF nTido_id in ( 5200,3480) then
     vFinalidade := 'A PROMOVER: CONSERVAÇÃO DE CAMPOS NATIVOS';
  END IF;
   --dbms_output.put_line(nTido_id||' '||vFinalidade||' '||length(vFinalidade));

   if nTido_id in (840,12101,850,12102,851,12111,860,12103,870,12104,810,1252,880,12106) and
      vFinalidade='PARA A ATIVIDADE DE: ' then
      vFinalidade := vFinalidade || vAtividade;
   end if;

   if nTido_id in  (852,12114) then
      vFinalidade:='ATIVIDADE:';
      vFinalidade := vFinalidade || vAtividade;
   end if;

   -- Dragas para LAC
   if nTido_id = 281 and nRaat_id = 550 then
      open  c7;
      fetch c7 into nClasseDraga;
      close c7;
      if nClasseDraga = 1 then
         vFinalidade := 'A PROMOVER: DRAGAS CLASSE I';
      elsif nClasseDraga = 2 then
         vFinalidade := 'A PROMOVER: DRAGAS CLASSE II';
      end if;
   end if;


   return (vFinalidade);

end;
FUNCTION FC_PRCR_SETOR
 (P_PRCR_ID IN NUMBER
 )
 RETURN NUMBER
 IS
    nRaat_id      number(7,2)  := null;
    nProc_id      number(10)   := null;
    nSold_id      number(10);
    nSose_id      number(10);
    nAder_id      number(10);
    nResp_id      number(10);
    nTipoSolic    number(1);
    nSoin_id      number(10);
    nSeto_id      number(6);

   cursor c0 is
         select docu.seto_id
           from fep_documentos docu,
                     fep_aux_proc_cond_restr prcr
      where prcr.docu_id_licenca = docu.docu_id
          and  prcr.prcr_id                  = p_prcr_id;

    cursor c1 is
       select prcr.proc_id,
              prcr.sold_id,
              prcr.sose_id,
              prcr.ader_id,
              proc.resp_id
         from fep_aux_proc_cond_restr prcr,
              fep_processos           proc
        where prcr.prcr_id = p_prcr_id
          and prcr.proc_id = proc.proc_id;


    cursor c2 is
       select ata1.raat_id
         from fep_responsabilidades     resp,
              fep_atividades_antropicas ata1
        where resp.resp_id = nResp_id
          and resp.atan_id = ata1.atan_id;

    cursor c3 is
       select soin.tipo_solicitacao,
              soin.soin_id
         from fep_solic_int_documentos sold,
              fep_solic_integradoras   soin
        where sold.sold_id = nSold_id
          and sold.soin_id = soin.soin_id;

    cursor c5 is
       select sold.sold_id
         from fep_aux_decl_respons       ader,
              fep_solic_int_documentos   sold
        where ader.ader_id = nAder_id
          and ader.docu_id_licenca = sold.docu_id;
begin

  open  c0;
  fetch c0 into nSeto_id;
  close c0;

  if nSeto_id not in ( 151,160) then
      return(nSeto_id);
  end if;

  open  c1;
  fetch c1 into nProc_id, nSold_id, nSose_id, nAder_id, nResp_id;
  close c1;

  if nProc_id is null then
     return(nSeto_id);
  end if;

  if nResp_id is not null then
     open  c2;
     fetch c2 into nRaat_id;
     close c2;
     if nSold_id is null and nAder_id is null then
        return(nSeto_id);
     end if;
  end if;

  if nSold_id is not null then
     open  c3;
     fetch c3 into nTipoSolic, nSoin_id;
     close c3;
     if nTipoSolic = 1 then
        nRaat_id := 112.11;
     elsif nTipoSolic = 2 then
        nRaat_id := 114.11;
     end if;
  end if;

  if nAder_id is not null then
     open  c5;
     fetch c5 into nSold_id;
     close c5;

     if nSold_id is not null then
        open  c3;
        fetch c3 into nTipoSolic, nSoin_id;
        close c3;
        if nTipoSolic = 1 then
           nRaat_id := 112.11;
        elsif nTipoSolic = 2 then
           nRaat_id := 114.11;
        end if;
  end if;
end if;

  -- Se Santa Cruz, para Silvicultura - o chefe do setor libera
  if nSeto_id = 160 and nRaat_id in ( 126.10,126.20) then
     return(nSeto_id);
 end if;

  -- Se Santa Rosa, para Silvicultura e Suinocultura/Avicultura , o chefe do DASP libera
  if nSeto_id = 151 and nRaat_id in ( 112.11, 114.11,  126.10, 126.20) then
      nSeto_id := 225;
     return(nSeto_id);
 end if;

  return(nSeto_id);

end;
FUNCTION FC_AUX_INCLUI_COND
 (P_PRCR_ID IN NUMBER
 ,P_RAAT_ID IN NUMBER
 ,P_TIDO_ID IN NUMBER
 ,P_CVC_TROCA IN VARCHAR2
 ,P_CVC_REMOCAO IN VARCHAR2
 ,P_CLCR_ID IN NUMBER
 ,P_CORS_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS


   vSimNao    VARCHAR2(1) := 'S';
   nTipoAut   NUMBER(1);
   nCont      number(5);

   CURSOR c1 IS
      SELECT prcr.dm_CVC_autorizacao
         FROM fep_aux_proc_cond_restr prcr
       WHERE prcr.prcr_id = p_prcr_id;

   CURSOR c2 IS
    select count(*)
      from fep_condicoes_restricoes cors,
           fep_listas_cond_restricoes lcrs,
           fep_setores seto,
           fep_classes_cond_restricoes clcr,
           fep_tido_cond_restr tilc
      where cors.seto_id = seto.seto_id(+)
      and   cors.clcr_id = clcr.clcr_id
      and   cors.data_fim_validade is null
      and   cors.cors_id = lcrs.cors_id
      and   lcrs.data_fim_validade is null
      and   lcrs.raat_id = P_RAAT_ID
      and   lcrs.lcrs_id = tilc.lcrs_id
      and   lcrs.cors_id = P_CORS_ID
      and   tilc.data_fim is null
      and   tilc.tipo = 1;


BEGIN

   -- Função chamada na rotina PR_GERAR_TABELA_AXGE - Tabela: fep_aux_gera_cond_restr

   IF p_raat_id != 4751.30 THEN
      RETURN(vSimNao);
   END IF;
   IF p_tido_id != 400 THEN
      RETURN(vSimNao);
   END IF;

   -- Só executa para tipo 400 do ramo 4751.30 -- Posto de Combustivel - SEAMB
   OPEN  c1;
   FETCH c1 INTO nTipoAut;
   CLOSE c1;
   IF nTipoAut IS NULL THEN
      nTipoAut := 3; -- outro
   END IF;

   IF nTipoAut = 1 THEN   -- remocao
      IF (p_CVC_remocao IS NULL OR
           p_CVC_remocao = 'N' ) THEN
         vSimNao := 'N';
      END IF;
   ELSIF nTipoAut = 2 THEN  -- troca
      IF (p_CVC_troca IS NULL OR
           p_CVC_troca = 'N' ) THEN
         vSimNao := 'N';
      END IF;
   ELSE
      -- outro
      IF p_cors_id IN ( 112,1401 ) OR
         p_clcr_id = 19 THEN
         vSimNao := 'S';
      ELSE
         vSimNao := 'N';
      END IF;
   END IF;

   if vSimNao  = 'N' then
      open  c2;
      fetch c2 into nCont;
      close c2;
      if nCont > 0 then  -- padrao
          vSimNao := 'S';
      end if;
   end if;

   RETURN(vSimNao);

END;

----------------------------------------------------------------------------------------
-- Karina L. Schmidt - 29/12/2021
-- Foi Criada nova versão para cosiderar numeração nova para Tipos de Documentos (NOVOS)
-- ainda não cadastrados.
-- Esse ajuste tem origem à necessidade da maioria de novos registros na virada de ano,
-- já que a Numeração por Tipo de Documento é por ANO também.
-----------------------------------------------------------------------------------------
FUNCTION FNC_BUSCA_NRO_DOCU(P_ANO_DOCU IN number,
                            P_TIDO_ID  IN number,
                            P_SETO_ID  IN number) RETURN NUMBER IS

  nUltimo_numero fep_numeros_documentos.Ultimo_numero%Type := 0;
  nAno           fep_numeros_documentos.Ano%Type := p_ano_docu;
  nNudo_id       number      := 0;
  nSucd_id       number(10);
  nCldo_id       number(3);
  nSeto_id       number(6);

  Cursor c_ClasseDoc is
   select tido.sucd_id, sucd.cldo_id
    from  fep_tipos_documentos tido,
          fep_sub_classes_documentos sucd
    where tido.tido_id = p_tido_id
      and tido.sucd_id = sucd.sucd_id;
  pragma autonomous_transaction;

begin

  ---- Verifica Classe e SubClsse do Tipo do Documento ----
  open c_ClasseDoc;
  fetch c_ClasseDoc into nSucd_id, nCldo_id;
  close c_ClasseDoc;

  if nSucd_id is null then
    Raise_application_error(-20100, 'Não foi encontrada a classe para o tipo de documento ' ||p_tido_id||'. Verificar com a DL.');
  end if;

  ----------------------------------------------------------------------------------------------------------------------------------
  -- cldo_id = 300  DBIO-SEMA     305 = DBIO-SEMA - NEGATIVA    312 =  DBIO-SEMA - PARECER
  --        Se for Tipo de Documento Sema - não faz por setor - é geral   (Malu 10/08/2017)
  --
  -- parecer da subclasse 1215 - PARECER P/ TERMO DE REFERENCIA - é geral (Malu 08/11/2017 - Cfme Clauren-DL)
  -- Cldo 1200 - PARECER PARA TERMO DE ENCERRAMENTO - é geral (Malu 05/06/2019)
  ----------------------------------------------------------------------------------------------------------------------------------

  ---- Verifica SETOR conforme a Classe do Tipo de Documento ----
  nSeto_id    := p_seto_id;

  if nCldo_id in (300,305,312)  or  nSucd_id in (1200,1215) then
    nSeto_id := null;
  end if;

  IF nCldo_id = 25 then
    -------------------------------------------------------------------------
    -- POR SUB CLASSE GERAL (SEM ANO e SEM SETOR) Cldo_id: 25-NORMATIZAÇÃO --
    -------------------------------------------------------------------------
    BEGIN
      SELECT nudo.ultimo_numero + 1, nudo.nudo_id
       into  nUltimo_numero, nNudo_id
       FROM  fep_numeros_documentos nudo
       WHERE nudo.ano     is null
         AND nudo.seto_id is null
         AND nudo.sucd_id = nSucd_id
       FOR UPDATE;

      EXCEPTION
        WHEN No_Data_Found THEN
          -- Atualiza informações para inserção do registro da nova Numeração
          nUltimo_numero := 1;
          nNudo_id       := Null;
          nAno           := Null;
          nSeto_id       := null;

        WHEN OTHERS THEN
          Raise_application_error(-20105, 'Erro2: Erro ao buscar nº doc geral do Documento, onde "Tido_id" = '||p_tido_id||', "Sucd_id" = '||nSucd_id||', sem o ano. Avise a informática.');
     END;


  ELSIF nSeto_id is not null  then
    ---------------------------------------------------------------
    -- POR SETOR (COM ANO, SETOR e SUB CLASSE)                   --
    ---------------------------------------------------------------
    BEGIN
      SELECT nudo.ultimo_numero + 1, nudo.nudo_id
       into  nUltimo_numero, nNudo_id
       FROM  fep_numeros_documentos nudo
       WHERE nudo.ano     = p_ano_docu
         AND nudo.seto_id = nSeto_id
         AND nudo.sucd_id = nSucd_id
       FOR UPDATE;

      EXCEPTION
        WHEN No_Data_Found THEN
          -- Atualiza informações para inserção do registro da nova Numeração
          nUltimo_numero := 1;
          nNudo_id       := Null;
          nAno           := p_ano_docu;
          --Raise_application_error(-20010, 'Numeração de Documentos não existe para o Tipo Documento: '||p_tido_id||', Setor: '||nseto_id||', Sub Classe: '||nSucd_id||', Ano: '||p_ano_docu||'.');

        WHEN OTHERS THEN
          Raise_application_error(-20110, 'Erro3: Erro ao buscar nº documento para o setor '||nseto_id||', do Ano de '||p_ano_docu||' e SubClasse '||nSucd_id||', com Tipo de Documento '||p_tido_id||'. Erro: '||SQLErrM||'. Avise a informática.');
     END;

  ELSE
    -------------------------------------------------
    -- GERAL (COM ANO, COM SIB CLASSE E SEM SETOR) --
    -------------------------------------------------
    BEGIN
      SELECT nudo.ultimo_numero + 1, nudo.nudo_id
       into  nUltimo_numero, nNudo_id
       FROM  fep_numeros_documentos nudo
       WHERE nudo.ano     = p_ano_docu
         AND nudo.seto_id is null
         AND nudo.sucd_id = nSucd_id
         FOR UPDATE;

      EXCEPTION
        WHEN No_Data_Found THEN
          -- Atualiza informações para inserção do registro da nova Numeração
          nUltimo_numero := 1;
          nNudo_id       := Null;
          nAno           := p_ano_docu;
          nSeto_id       := null;

        WHEN OTHERS THEN
           Raise_application_error(-20115, 'Erro4: Erro ao buscar nº doc geral. "Tido_id" = '||p_tido_id||', Ano: '||p_ano_docu||', "Sucd_id" = '||nSucd_id||'. Avise a informática.');
     END;
  END IF;


  if (nNudo_id is not null) then
    ---------------------------
    -- Ajusta nova numeração --
    ---------------------------
    BEGIN
      UPDATE fep_numeros_documentos nudo
         SET nudo.ultimo_numero = nUltimo_numero
       WHERE nudo.nudo_id = nNudo_id;

      EXCEPTION
        WHEN OTHERS THEN
          Raise_application_error(-20120, 'Erro5: Erro ao atualizar nro do documento - ' ||SQLERRM||'. Avise a informática.');
    END;
  else
    ---------------------------
    -- Insere nova numeração --
    ---------------------------
    Begin
      INSERT INTO fep_numeros_documentos (Nudo_Id, ano, seto_id, sucd_id, ultimo_numero)
       Values (Nudo_Seq.NextVal, nAno, nSeto_id, nSucd_id, nUltimo_numero);

      EXCEPTION
        WHEN OTHERS THEN
          Raise_application_error(-20125, 'Erro ao criar nova numeração para Documentos da Sub Classe '||nSucd_id||', Ano '||nAno||' e Setor '||nSeto_id||'. Erro: '||SQLERRM||'. Avise a informática.');
    End;
  End if;


  -----------------------
  -- SALVA Informações --
  -----------------------
  COMMIT;


  RETURN(nUltimo_numero);


end fnc_busca_nro_docu;

/*
FUNCTION FNC_BUSCA_NRO_DOCU(P_ANO_DOCU IN number,
                            P_TIDO_ID  IN number,
                            P_SETO_ID IN number) RETURN NUMBER IS

  nUltimo_nro  number      := 0;
  nNudo_id     number      := 0;
  nSucd_id     number(10)  := null;
  nCldo_id     number(3);
  nSeto_id     number(6);

  cursor c1 is
   select tido.sucd_id, sucd.cldo_id
    from  fep_tipos_documentos tido,
          fep_sub_classes_documentos sucd
    where tido.tido_id = p_tido_id
      and tido.sucd_id = sucd.sucd_id;

  pragma autonomous_transaction;

begin

   nSeto_id    := p_seto_id;

   open c1;
   fetch c1 into nSucd_id, nCldo_id;
   close c1;

   if nSucd_id is null then
     Raise_application_error(-20000, 'Não foi encontrada a classe para o tipo de documento "Tido_id" = ' ||p_tido_id||'. Verificar com a DL.');
   end if;

   ----------------------------------------------------------------------------------------------------------------------------------
   -- cldo_id = 300  DBIO-SEMA     305 = DBIO-SEMA - NEGATIVA    312 =  DBIO-SEMA - PARECER
   --        Se for Tipo de Documento Sema - não faz por setor - é geral   (Malu 10/08/2017)
   --
   -- parecer da subclasse 1215 - PARECER P/ TERMO DE REFERENCIA - é geral (Malu 08/11/2017 - Cfme Clauren-DL)
   -- Cldo 1200 - PARECER PARA TERMO DE ENCERRAMENTO - é geral (Malu 05/06/2019)
   ----------------------------------------------------------------------------------------------------------------------------------
   if nCldo_id in (300,305,312)  or  nSucd_id in (1200,1215) then
     nSeto_id := null;
   end if;

   IF nCldo_id = 25 then

     -- POR SUB CLASSE GERAL - SEM ANO - Cldo_id: 25-NORMATIZAÇÃO

     BEGIN
       SELECT nudo.ultimo_numero + 1, nudo.nudo_id
        into  nUltimo_nro, nNudo_id
        FROM  fep_numeros_documentos nudo
        WHERE nudo.ano     is null
          AND nudo.seto_id is null
          AND nudo.sucd_id = nSucd_id
          FOR UPDATE;
     EXCEPTION
        WHEN OTHERS THEN
           Raise_application_error(-20000, 'Erro2: Erro ao buscar nº doc geral. ' ||
                                            'Tido_id: ' || p_tido_id ||
                                            ' / Sucd_id: ' || nSucd_id ||
                                            '. Avise a informática.');
     END;


   ELSIF nSeto_id is not null  then

     -- POR SETOR

     BEGIN
       SELECT  nudo.ultimo_numero + 1
                     , nudo.nudo_id
           into  nUltimo_nro
                    , nNudo_id
         FROM fep_numeros_documentos nudo
        WHERE nudo.ano     = p_ano_docu
          AND nudo.seto_id = nSeto_id
          AND nudo.sucd_id = nSucd_id
          FOR UPDATE;
     EXCEPTION
        WHEN No_Data_Found THEN
           Raise_application_error(-20010, 'Erro6: Numeração de Documentos não existe para o Tipo Documento: '||p_tido_id||' do Setor: '||nseto_id||', Sub Classe: '||nSucd_id||', Ano: '||p_ano_docu||'.');
        WHEN OTHERS THEN
           Raise_application_error(-20000, 'Erro3: Favor abrir chamado informando:' || chr(10) || 'Erro ao buscar nº doc por setor.' ||
                                            ' Tido_id: ' || p_tido_id ||
                                            ' / Ano: ' || p_ano_docu ||
                                            ' / Seto_id: ' || nseto_id ||
                                            ' / Sucd_id: ' || nSucd_id || '.');
     END;

   ELSE

     -- GERAL

     BEGIN
       SELECT nudo.ultimo_numero + 1
             ,nudo.nudo_id
         into nUltimo_nro
             ,nNudo_id
         FROM fep_numeros_documentos nudo
        WHERE nudo.ano     = p_ano_docu
          AND nudo.seto_id is null
          AND nudo.sucd_id = nSucd_id
          FOR UPDATE;
     EXCEPTION
        WHEN OTHERS THEN
           Raise_application_error(-20000, 'Erro4: Erro ao buscar nº doc geral. ' ||
                                         'Tido_id: ' || p_tido_id || ' / Ano: ' || p_ano_docu || '  / Sucd_id: ' || nSucd_id ||
                                         '. Avise a informática.');
     END;
  END IF;


  BEGIN
    UPDATE fep_numeros_documentos nudo
       SET nudo.ultimo_numero = nUltimo_nro
     WHERE nudo.nudo_id = nNudo_id;
                     COMMIT;
  EXCEPTION
        WHEN OTHERS THEN
           Raise_application_error(-20000, 'Erro5: Erro ao atualizar nro documento ' || SQLERRM || '. Avise a informática.');
  END;

  RETURN(nUltimo_nro);


end fnc_busca_nro_docu;
*/
------------------------------------------------------------------------------------------------------------------------------
FUNCTION FC_SIT_CAD_AGROTOXICO (P_PROC_ID IN number) RETURN VARCHAR2 IS

  vSitCadastro    varchar2(30)  := null;
  vSitProc        varchar2(1)   := null;
  vSitDocu        varchar2(1)   := null;
  nCldo_id        number(5);

  cursor c1 is
   select proc.situacao
    from  fep_processos proc
    where proc.proc_id = p_proc_id;

  cursor c2 is
    select docu.situacao,
           sucd.cldo_id
      from fep_documentos             docu,
           fep_tipos_documentos       tido,
           fep_sub_classes_documentos sucd
     where docu.proc_id = p_proc_id
       and docu.tido_id = tido.tido_id
       and tido.sucd_id = sucd.sucd_id
       and docu.situacao not in ('B')
       and sucd.cldo_id in (1,2,3,4,5,6)
     order by docu.data_inicio_vigencia desc;

  cursor c_lib_proc is
   select 1 Achou_Liveracao, prju.data_fim
     from fep_proc_libera_judiciais prju
    where prju.proc_id = p_proc_id; --      and prju.data_fim is null;
  lr_lib_proc c_lib_proc%RowType;

begin
  ---------------------------------------------------------------------
  -- Processo liberados por Ordem Judicial

  -- Conforme solicitação Marta - SELCA     ( Malu 31/07/2014 )
  --        Proc_id: 204651 - Processo: 017145 0567 08 2
  --       Proc_id: 228001 - Processo: 002902 0567 10 1

  -- Suporte 46155 - SELCA - Marta                ( Malu 14/08/2014 )
  --        Proc_id: 232306  -   Processo: 006398 0567 10 4
  --        Proc_id: 232399  -   Processo: 006420 0567 10 8
  --        Proc_id: 234545  -   Processo: 008534 0567 10 3

  -- Suporte 46602 - SELCA - Gianfranco              ( Malu 29/09/2014 )
  --        Proc_id: 278075  -    Processo: 007485 0567 12 6
  --        Proc_id: 278388  -    Processo: 007515 0567 12 1
  --        Proc_id (396707, 396745, 396765 ) Alexandre

  -- Suporte 57336 - DIAGRO - Gianfranco              ( Malu 18/04/2017 )
  --        Proc_id: 400026  -    Processo: 5475-0567/16-2

-- Suporte 59038 - DIAGRO - Gianfranco              ( Alexandre 22/08/2017 )
  --        Proc_id: 393089  -    Processo: 4680-0567/16-0

-- Suporte 59668 - DIAGRO - Gianfranco              ( Malu-Catia 11/10/2017 )
  --        Proc_id: 202862 -    Processo:  15349-0567/08-5

  open c_lib_proc;
  fetch c_lib_proc into lr_lib_proc;      --nachou;  -- libera sim ou não
  close c_lib_proc;

  if (lr_lib_proc.achou_liveracao = 1) and (lr_lib_proc.Data_Fim is null) then     -- nachou = 1 then
     vSitCadastro := 'Liberado por Ordem Judicial';
     return(vSitCadastro);
  end if;


  /* if p_proc_id in (  202862, 204651, 228001,  232306,  232399, 234545, 278075, 278388, 396707, 396745, 396765, 400026 ,393089 ) then
           vSitCadastro := 'Liberado por Ordem Judicial';
          return(vSitCadastro);
   end if;*/

    ---------------------------------------------------------------------
    -- Sup 53544 - Marta - DIAGRO - 01/06/2016

    -- Solicitamos a alteração da lista na internet de "agrotóxicos com solicitação de cadastro no RS"
    -- no quesito "situação" da situação "com solicitação" para "em análise".
   ---------------------------------------------------------------------

  open  c1;
  fetch c1 into vSitProc;  -- Processo
  close c1;

    if vSitProc = 'I' then
       vSitCadastro := 'Aguarda Complementação';
       return(vSitCadastro);
    end if;

    if vSitProc = 'B' then
       vSitCadastro := 'Suspenso';
       return(vSitCadastro);
    end if;

    open  c2;
    fetch c2 into vSitDocu, nCldo_id; -- Documento
    close c2;

    if vSitDocu is not null then
       -- tem documentos licenciatório emitido

       if nCldo_id = 5 then
           if vSitDocu = 'E' then
                  vSitCadastro := 'Indeferido';
           else
                  -- vSitCadastro := 'Com Solicitação';
                   vSitCadastro := 'Em Análise';
           end if;
       else

           if vSitDocu in ('U','D','A','F','S','G','R') then
              vSitCadastro := initcap(substr(pck_cadastros.fc_descricao_dominio(
                                        'DM_SITUACAO_DOCU',
                                         vSitDocu,0),1,25));
           elsif vSitDocu in ( 'H','C','K','T' ) then     -- Doc Pendentes ( DL - Ag Ciencia Chefia - Agu Publicação
                  -- vSitCadastro := 'Com Solicitação';
                  vSitCadastro := 'Em Análise';
           else
                  vSitCadastro := 'Deferido';
           end if;

       end if;

       return(vSitCadastro);

    end if;

    if vSitCadastro is null then
       if vSitProc in ('J','A','J','S') then
          vSitCadastro := initcap(substr(pck_cadastros.fc_descricao_dominio(
                                 'DM_SITUACAO_PROC',
                                  vSitProc,0),1,25));
       else
            -- vSitCadastro := 'Com Solicitação';
             vSitCadastro := 'Em Análise';

       end if;
    end if;

    return(vSitCadastro);

end;
FUNCTION FC_DOCU_BLOQUEIA_MANUAL
 (P_PROC_ID IN number
 ,P_TIDO_ID IN number
 ,P_DM_GERAUT IN varchar2
 )
 RETURN VARCHAR2
 IS


  vLiberaManual     varchar2(1)     := 'N';
  vMsg                       varchar2(200) := null;
  vGerAut                  varchar2(1)     := 'N';
  nCldo_id                number(3);
  nRaat_id                number(7,2);
  nErro                      number(1) := 0;
  vAbreviatura        varchar2(10);

  cursor c1 is
     select proc.dm_libera_manual
       from fep_processos proc
      where proc.proc_id = p_proc_id;

  cursor c2 is
     select tido.dm_geraut,
                 tido.abreviatura,
                  sucd.cldo_id
       from fep_tipos_documentos tido,
                 fep_sub_classes_documentos sucd
      where sucd.sucd_id = tido.sucd_id
           and  tido.tido_id     = p_tido_id;

  cursor c3 is
     select ata1.raat_id
       from fep_atividades_antropicas ata1,
                 fep_responsabilidades        resp,
                 fep_processos                      proc
      where ata1.atan_id = resp.atan_id
           and resp.resp_id = proc.resp_id
           and proc.proc_id = p_proc_id;
begin

  open  c1;
  fetch c1 into vLiberaManual;
  close c1;
  if vLiberaManual is null then
     vLiberaManual := 'N';
  end if;

  open  c2;
  fetch c2 into vGerAut,  vAbreviatura, nCldo_id ;
  close c2;
  if vGerAut is null then
     vGerAut := 'N';
  end if;

  -- Suporte 38785-DL  ( Malu 05/10/2012 )
  if vLiberaManual = 'N' then
     if  vGerAut = 'S'  and p_dm_geraut = 'N' then
         vMsg := 'Erro: Tipo de Documento: ' || p_tido_id || ' deve ser emitido por Geração Automática, cfme solicitação DL.';
         return(vMsg);
     end if;
  end if;

  open  c3;
  fetch  c3 into nRaat_id;
  close c3;

 -- Suporte 39854-DL ( Malu 15/01/2013 )
 -- Suporte 40410-DL ( Ani 01/03/2013)
  nErro := 0;
  if vLiberaManual = 'N' then

        --Portaria 372/2018
        --De 3510.30 Para 2611.30
        --De 3510.23 Para 3510.53
        --De 3510.22 Para 3510.52
        --Cátia Jardim - 30/04/2018
         if nRaat_id in ( 3510.52, 3510.53 ) then
                if  p_tido_id in ( 120, 1202, 530, 1243,  400, 1230 ) then
                       nErro := 1;
               end if;
         end if;

         if nRaat_id in ( 2611.30 ) then
                if  p_tido_id in ( 400, 1230 ) then
                       nErro := 1;
               end if;
         end if;
         if nErro = 1 then
             vMsg := 'Erro: Tipo de Documento: ' || p_tido_id || '-' ||  vAbreviatura || ' deve ser emitido por Geração Automática para o Ramo ' || nRaat_id || ', cfme solicitação DL.';
             return(vMsg);
        end if;

  end if;

  return(vMsg);

end;
FUNCTION FC_RAMO_LIC_SUSP_DT
 (P_PROC_ID IN number -- (TG) Não utilizado: estudar retirada...
 ,P_RAAT_ID IN number -- (TG) Não utilizado: estudar retirada...
 ,P_TIDO_ID IN number -- (TG) Não utilizado: estudar retirada...
 )
 RETURN VARCHAR2
 IS



--    nSucd_id     number(10);
--    nCldo_id     number(3);
--    nRaat_id     number(7,2);
    vMensagem    varchar2(200) := null;

/*    cursor c1 is
       select ata1.raat_id
         from fep_processos             proc,
              fep_responsabilidades     resp,
              fep_atividades_antropicas ata1
        where proc.proc_id = p_proc_id
          and proc.resp_id = resp.resp_id
          and resp.atan_id = ata1.atan_id;

    cursor c2 is
       select sucd.sucd_id,
              sucd.cldo_id
         from fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where tido.tido_id = p_tido_id
          and tido.sucd_id = sucd.sucd_id;
*/
begin

/*
   if p_raat_id is not null then
      nRaat_id := p_raat_id;
   else
      if p_proc_id is not null then
         open  c1;
         fetch c1 into nRaat_id;
         close c1;
      end if;
   end if;


   if nRaat_id is not null then
      if nRaat_id in ( 530.12, 530.13 ) then
         open  c2;
         fetch c2 into nSucd_id, nCldo_id;
         close c2;
         if nCldo_id in (1,2,3,4,5,6) or nSucd_id = 120 then
            vMensagem := 'Por determinação do Diretor Técnico, pareceres e documentos licenciatórios para os ramos 530,12 e 530,13 estão suspensos. (Sup 40354-DL 26/02/2013)';
         end if;
      end if;
   end if;
*/

 --   Suporte 40495 - DL - Clauren em 07/03/2013
 --   Conforme determinação do Diretor Técnico solicito a liberação de pareceres e documentos licenciatórios dos codram´s 530.12 e 530.13.
 --                                                                                                   ( alterado em 07/03/2013 por Malu )

   return(vMensagem);

end;
FUNCTION FC_BLOQUEIA_PROCESSO
 (P_ATAN_ID NUMBER
 ,P_TIDO_ID NUMBER
 )
 RETURN VARCHAR2
 IS
nRaat_id  number(7,2);
nCldo_id   number(10);
vMsg  varchar2(200);

cursor  atan  is
  select  atan.raat_id
  from  fep_atividades_antropicas atan
  where atan.atan_id = p_atan_id;

cursor    sucd  is
  select  sucd.cldo_id
    from    fep_tipos_documentos                tido,
                                     fep_sub_classes_documentos sucd
                  where      tido.tido_id = P_TIDO_ID
                  and           tido.sucd_id = sucd.sucd_id;
begin
  vMsg := null;
  open  atan;
  fetch atan  into  nRaat_id;
  close   atan;

    open    sucd;
    fetch   sucd into nCldo_id;
    close   sucd;

    --Portaria 372/2018
    --De 111.40 Para 111.41,111.42
    --Cátia Jardim - 30/04/2018

  if  nRaat_id  in(111.30, 111.40, 111.41, 111.42)  and
    nCldo_id in(1,2,3,4,5,6)  then
    vMsg := 'Erro: Processo do ramo de atividade ' || nRaat_id || ' tipo de documento ' ||  p_tido_id || ' deve ser incluido somente através do sistema de Licenciamento da Irrigação.';
  end if;

  if  nRaat_id  in(126.10, 126.20)  and
    p_tido_id   in(100, 151, 120)     then
    vMsg := 'Erro: Processo do ramo de atividade ' || nRaat_id || ' tipo de documento ' || p_tido_id || ' deve ser incluido somente através do sistema de Licenciamento da Silvicultura.';
  end if;

    return(vMsg);
end;
FUNCTION FC_TIDO_OUTROS_GERAUT
 (P_RAAT_ID IN number
 ,P_TIDO_PARECER IN NUMBER
 )
 RETURN VARCHAR2
 IS

   vSimNao         VARCHAR2(1) := 'N';
--   nGrupoAut       number(2);
   nCldo_id_lic    number(3);
   nTido_id_lic    number(5);
   nCont           number(5);

   CURSOR c1 IS
    SELECT  suc1.cldo_id        cldo_id_licenca,
            tid1.tido_id           tido_id_licenca
       FROM fep_tipos_documentos        tido,
            fep_sub_classes_documentos  sucd,
            fep_tipos_docs_emissoes     tidm,
            fep_tipos_documentos        tid1,
            fep_sub_classes_documentos  suc1
      WHERE
            tido.sucd_id = sucd.sucd_id
        AND tido.tido_id = tidm.tido_id_parecer
        AND tidm.tido_id_documento = tid1.tido_id
        AND tid1.sucd_id = suc1.sucd_id
        and tido.tido_id  = p_tido_parecer;


   CURSOR c2 IS
         select count(*)
            from fep_condicoes_restricoes   cors,
                      fep_listas_cond_restricoes lcrs,
                      fep_tido_cond_restr        tilc
         where cors.data_fim_validade is null
              and   cors.cors_id = lcrs.cors_id
              and   lcrs.data_fim_validade is null
              and   lcrs.raat_id = p_raat_id
              and   lcrs.lcrs_id = tilc.lcrs_id
              and   tilc.data_fim is null
              and   tilc.tido_id = nTido_id_lic;
BEGIN

   --dbms_output.put_line('raat_id ' || p_raat_id || ' tido_id ' || p_tido_parecer);

  open  c1;
  fetch  c1 into  nCldo_id_lic,  nTido_id_lic;
  close c1;

   if  nCldo_id_lic IN (5,305) then  -- Indeferimento
         vSimNao := 'S';
         RETURN(vSimNao);
   end if;



   -- Verifica se tem condicionantes informadas para:
   --     300 - Declaração Isenção Licenciamento   ( Malu 21/01/2013 )
   --     330 - Declaração Geral                                     ( Malu 17/04/2013 )
   --     390 - Termo de Encerramento                        ( Malu 05/06/2017 )
   --     400 - Autorização Geral                                    ( Malu 17/04/2013 )

   IF nTido_id_lic in ( 300,330,390,400 ) then
      open  c2;
      fetch  c2 into  nCont;  -- se existe condição para o Ramo/Tipo
      close c2;
       if nCont > 0 then
              vSimNao := 'N';
              RETURN(vSimNao);
       end if;
  end if;

   IF nTido_id_lic in ( 300,310,320,330,390,400,431,432,2110,2150 ) then
      vSimNao := 'S';
       RETURN(vSimNao);
   END IF;

   RETURN(vSimNao);

END;
FUNCTION FC_VALIDA_FUNC_DICOP
 (P_USUARIO VARCHAR2
 ,P_RAAT_ID NUMBER
 ,P_TIDO_ID NUMBER
 )
 RETURN VARCHAR2
 IS
nGrrm_id    number(10);
nPess_id    number(10);
nSeto_id    number(06);
nCont_seto    number(1)   :=0;
--nRaat_id    number(7,2);
nCont   number(1)   :=0;
vMsg    varchar2(200)           := null;

cursor    acpa  is
  select  count(*)
          from  fep_acessos_parametros      acpa,
                fep_acessos_pessoas         acpe,
                v_rhu_funcionarios_ultimo vful
        where       acpa.parametro = 'LIBERA_FUNC_PARECER_DICOPI'
          and acpa.acpa_id  = acpe.acpa_id
          and   acpe.pess_id  = vful.pess_id
          and  vful.situacao = 1
          and  vful.username = p_usuario;

cursor      raat  is
  select  raat.grrm_id
  from  fep_ramos_atividades raat
  where raat.raat_id = p_raat_id;

cursor  vful  is
  select  vful.pess_id, vful.seto_id
  from  v_rhu_funcionarios_ultimo  vful
  where vful.username = p_usuario
  and vful.situacao = 1;

cursor    seto    is
  select  count(*)
  from    fep_setores       seto,
          fep_enderecos     ende,
          fep_municipios    muni
  where   seto.data_extincao is null
  and     seto.ende_id = ende.ende_id
  and     ende.muni_id = muni.muni_id
  and     ende.muni_id = 4314902
  and     seto.seto_id = nSeto_id;
begin
--  Chamado de suporte
--  Solicito que os técnicos ou funcionários lotados em todas as Regionais da FEPAM, com acesso ao sitema Oracle sejam
--  desabilitados para inserir no banco de dados pareceres técnicos de licenciamento (1200,1201,1202,1203,1204,1205,1206 e 1207),
--  de todos os ramos de atividades industriais ou de atividades vinculdas as indústrias que são de competência de licenciamento da DICOPI.
--  Habilitações para executar estes trabalhos somente poderão ser liberadas com a autorização desta chefia ou da chefia da DICOPI.

  open  vful;
  fetch vful  into  nPess_id,  nSeto_id;
  close vful;
  -- Verifica se o usuário está cadastrado
  if  nPess_id    is null then
    vMsg := 'Usuário não cadastrado.';
  elsif p_tido_id in(1200,1201,1202,1203,1204,1205,1206, 1207)  then
    -- verifica se o funcionário é da DICOPI(seto_id = 222, 2222, 2221, 2223)

    open  raat;
    fetch raat  into  nGrrm_id;
    close raat;

    if  nGrrm_id    = 3 then
      -- Ramo de Aitivdade = Industria
      if  nSeto_id not in( 22, 222, 2222, 2221, 2223,
                               227, 2271, 2272,
                               250, 33 ,260,260,26020,26021 ) then
          -- Funcionário não lotado na DICOPI, SELMI, SELAI, SEFIND

        -- Verifica se o funcionário tem autorização especial para gerar os documentos
        open  acpa;
        fetch acpa  into  nCont;
        close acpa;
        if  nCont = 0 then
                      open    seto;
                      fetch   seto  into  nCont_seto;
                      close   seto;
                      if    nCont_seto = 0        then
                    --vMsg := 'Para ramo de Indústria, o técnico não está autorizado a emitir Parecer para este Tipo de Documento. ( cfme sup 41054-Dicopi em 28/05/2013 ).';
            vMsg := null;
                      end   if;
        end if;
      end if;
    end if;
  end if;

  return(vMsg);

end;
FUNCTION FC_PRCR_120DIAS
 (P_PRCR_ID IN number
 )
 RETURN VARCHAR2
 IS


   vSimNao     varchar2(1)    := 'N';
   nTido_id    number(5);

   cursor c1 is
      select docu.tido_id
        from fep_aux_proc_cond_restr prcr,
             fep_documentos          docu,
             fep_tipos_documentos    tido
       where prcr.prcr_id         = p_prcr_id
         and prcr.docu_id_licenca = docu.docu_id
         and docu.tido_id         = tido.tido_id;
begin
  open  c1;
  fetch c1 into nTido_id;
  close c1;

  if nTido_id in (110,116,117,118,120,151) then
     vSimNao := 'S';
  end if;

  if  vSimNao = 'S' then
      -- Para transportadora não lista, cfme solic Chefe SEPP - André Milanez   ( Malu 03/10/2013 )
      if pck_processos.fc_prcr_ramo(p_prcr_id) in ( 4710.10, 4710.11,4710.12, 4710.20, 4710.30 ) then
           vSimNao := 'N';
      end if;
  end if;

  return(vSimNao);

end;
FUNCTION FC_PRCR_PERIODO_VIG
 (P_PRCR_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS


  nDocu_id     NUMBER(10)   := NULL;
  dDataIni     DATE;
  dDataFim     DATE;
  vDataIniVig  VARCHAR2(20) := NULL;
  vDataFimVig  VARCHAR2(20) := NULL;
  vPeriodo     VARCHAR2(60);

  CURSOR c1 IS
     SELECT prcr.docu_id_licenca,
            SUBSTR(TO_CHAR(docu.data_inicio_vigencia,'dd/mm/rrrr'),1,10),
            SUBSTR(TO_CHAR(docu.data_fim_vigencia,   'dd/mm/rrrr'),1,10)
       FROM fep_aux_proc_cond_restr prcr,
            fep_documentos          docu
      WHERE prcr.prcr_id         = p_prcr_id
        AND prcr.docu_id_licenca = docu.docu_id
        AND prcr.docu_id_licenca IS NOT NULL;


  CURSOR c2 IS
    SELECT prcr.data_inicio_vigencia,
           prcr.data_fim_vigencia
      FROM fep_aux_proc_cond_restr prcr
     WHERE prcr.prcr_id          = p_prcr_id;
BEGIN

  OPEN  c1;
  FETCH c1 INTO nDocu_id, vDataIniVig, vDataFimVig;
  CLOSE c1;
  IF nDocu_id IS NULL THEN
     OPEN  c2;
     FETCH c2 INTO dDataIni, dDataFim;
     CLOSE c2;
     vDataIniVig :=  SUBSTR(TO_CHAR(dDataIni,'dd/mm/rrrr'),1,10);
     vDataFimVig :=  SUBSTR(TO_CHAR(dDataFim,'dd/mm/rrrr'),1,10);
  END IF;

  vPeriodo := vDataIniVig || ' à ' || vDataFimVig;

  RETURN(vPeriodo);

END;
FUNCTION FC_PRCR_DISPLAY_DTVIG
 (P_DATA_FIM_VIGENCIA IN DATE
 )
 RETURN VARCHAR2
 IS


   vData         VARCHAR2(50);
   vMes          VARCHAR2(20);
   nDia          NUMBER(02);
   nMes          NUMBER(02);
   nAno          NUMBER(04);

   CURSOR c1 IS
      SELECT DECODE(nMes,01,' de janeiro de ',
                         02,' de fevereiro de ',
                         03,' de março de ',
                         04,' de abril de ',
                         05,' de maio de ',
                         06,' de junho de ',
                         07,' de julho de ',
                         08,' de agosto de ',
                         09,' de setembro de ',
                         10,' de outubro de ',
                         11,' de novembro de ',
                         12,' de dezembro de ')
       FROM dual;
BEGIN

   nDia := TO_NUMBER(TO_CHAR(p_data_fim_vigencia,'dd'));
   nMes := TO_NUMBER(TO_CHAR(p_data_fim_vigencia,'mm'));
   nAno := TO_NUMBER(TO_CHAR(p_data_fim_vigencia,'rrrr'));

   OPEN  c1;
   FETCH c1 INTO vMes;
   CLOSE c1;

   vData := TO_CHAR(nDia,'09') || vMes || nAno;
   RETURN(vData);
END;


FUNCTION FC_PRCR_TRANSPORTAR (P_PRCR_ID IN number) RETURN VARCHAR2 IS

  vTransportar       varchar2(500) := null;

  nAtan_id           number(10);
  nProc_id           number(10);
  nTipoCercap        number(2);
  nRaat_id           number(7,2);
  nTipo              number(1);
  nTclr_id           number(10);
  vCodigo            varchar2(5);
  vClasses           varchar2(50);
  vClasseResiduo     varchar2(3);
  nCont1             number(2);
  nCont2             number(2);
  nTamanho           number(3);
  nDiminuir          number(3);
  vClasse_p1         varchar2(40);
  vClasse_p2         varchar2(10);

  cursor c1 is
   select prcr.proc_id,
          pck_processos.fc_prcr_ramo(prcr.prcr_id)
     from fep_aux_proc_cond_restr prcr
    where prcr.prcr_id = p_prcr_id;

  CURSOR c2 IS
   SELECT resp.atan_id
     FROM fep_processos         proc,
          fep_responsabilidades resp
    WHERE proc.proc_id = nProc_id
      and proc.resp_id = resp.resp_id;

  CURSOR c3 IS
   SELECT clre.tipo_cercap
     FROM fep_classes_residuos_ativ clre
    WHERE clre.atan_id = nAtan_id;

/*
    CURSOR c4 IS
       SELECT tclr.tclr_id,
              tclr.codigo
         FROM fep_classes_residuos_ativ   clre,
              fep_classes_transportadoras cltr,
              fep_tipos_classes_residuos  tclr
        WHERE clre.atan_id  = nAtan_id
          and clre.clre_id  = cltr.clre_id
          and cltr.tclr_id  = tclr.tclr_id
          and tclr.tipo_reg = nTipo
        order by 1;
*/

--- alterado para a nova tabela de classes em 03/11/2015 - Malu/Werner
  CURSOR c4 IS
   SELECT tclr.tclr_id, tclr.codigo
     from fep_classes_residuos_ativ            clre,
          fep_sub_classes_residuos_ativ   sclt,
          fep_tipos_sub_classes_residuos tscl,
          fep_tipos_classes_residuos           tclr
    where clre.atan_id  = nAtan_id
      and clre.clre_id  = sclt.clre_id
      and sclt.tscl_id  = tscl.tscl_id
      and tscl.tscl_id  = tclr.tscl_id
      and tclr.tipo_reg = nTipo
      and (sclt.data_exclusao is null or sclt.data_exclusao>sysdate)
    group by  tclr.tclr_id, tclr.codigo
    order by  1;
begin

  ----------------------------------------------------------------------------------------
  -- Função para ser utilizada report LO de Transportes - ramos 4710.10, 4710.20 e 4710.30
  -- PROR1045 e PROR1055   coluna: PARA TRANSPORTAR               ( Malu 03/10/2013 )
  -- mais 4710.11       ( Malu - em 02/06/2015 )
  -- mais 4710.12       ( Cátia - em 14/11/2017 )
  ----------------------------------------------------------------------------------------

  open  c1;
  fetch c1 into nProc_id, nRaat_id;
  close c1;

  if nRaat_id is null or
    nRaat_id not in ( 4710.10, 4710.11, 4710.12, 4710.20, 4710.30 ) then
    return(vTransportar);
  end if;

  if nRaat_id in ( 4710.11 ) then
     vTransportar := 'Óleo Lubrificante Usado ou Contaminado - OLUC, classificado como  RESÍDUO CLASSE I, ' ||
                     'para fins de destinação, conforme normas NBR 10.004 e NBR 13.221 da ABNT e como ' ||
                     'substância CLASSE 9, conforme Resolução n° 5998, de 03/11/2022, ' ||   -- Chamado 45135 por Karina L. S.: foi trocada a data de 20/09/2022
--                   'substância CLASSE 9, conforme Resolução n° 5947, de 01/06/2021, ' ||   -- Chamado 44975 por Karina L. S.
--                   'substância CLASSE 9, conforme Resolução n° 5232, de 14/12/2016, ' ||   -- Chamado 26058 por Karina L. S.
                     'da Agência Nacional de Transportes  Terrestres - ANTT, para fins de transporte.';
     return(vTransportar);

  elsif nRaat_id in ( 4710.12 ) then
    vTransportar := 'Resíduo oriundo do esgotamento sanitário, classificado para fins de transporte '||
                    'como substância CLASSE 6, conforme Resolução n° 5998, de 03/11/2022 '||   -- Chamado 45135 por Karina L. S.: foi trocada a data de 20/09/2022
--                  'como substância CLASSE 6, conforme Resolução n° 5947, de 01/06/2021 '||   -- Chamado 44975 por Karina L. S.
--                  'como substância CLASSE 6, conforme Resolução n° 5.232, de 16/12/2016 '||  -- Chamado 26058 por Karina L. S.
                    'da Agência Nacional de Transportes  Terrestres - ANTT.';

    return(vTransportar);

  else

    open  c2;
    fetch c2 into nAtan_id;
    close c2;

    if nAtan_id is not null then
      open  c3;
      fetch c3 into nTipoCercap;
      close c3;
    else
      return(vTransportar);
    end if;

    vClasses := null;
    nCont1   := 0;
    nTipo    := 1; -- Classe

    if nTipoCercap in (10,30) then

      open c4;
      loop

        fetch c4 into nTclr_id, vCodigo;
        if c4%notfound then
          close c4;
          exit;
        else
          nCont1 := nCont1 + 1;
          if nCont1 = 1 then
            vClasses := nTclr_id;
          else
            vClasses := Vclasses || ', ' || nTclr_id;
          end if;
        end if;
      end loop;
    end if;

    if nCont1 > 0 then

      vTransportar := 'PRODUTOS ';

      if nCont1 = 1 then
        vTransportar := vTransportar || 'CLASSE: ';
      else
        vTransportar := vTransportar || 'CLASSES: ';
      end if;

      -- Substitui a última virgula das classes por e
      if nCont1 > 1 then
        nTamanho := length(vClasses);
        if nTclr_id > 9 then  -- última classe com 2 dígitos ( exemplo: 1, 2, 10 )
          nDiminuir := 4;
        else
          nDiminuir := 3;    -- última classe com 1 dígito  ( exemplo: 2, 3, 9 )
        end if;

        vClasse_p1 := substr(vClasses,1,nTamanho - nDiminuir);
        vClasse_p2 := ' e ' || nTclr_id;
        vClasses   := vClasse_p1 || vClasse_p2;

      end if;

      if nRaat_id in ( 4710.30 ) then
        vTransportar := vTransportar || vClasses ||', conforme Classificação da ONU';  -- ' (classificação ONU)';  --Karina 30/05/2023 Chamado 44520
      else
        vTransportar := vTransportar || vClasses ||', conforme Resolução nº 5998, de 03/11/2022, '||  -- CS  Karina: trocada data de 20/09/2022  -- 5947, de 01/06/2021, '|| --Chamado 44975 por Karina L. S.     ', conforme Resolução nº 5232, de 14/12/2016, ' || -- Chamado 25650: Troquei devido à mudança de Resolução
                                                   'da Agência Nacional de Transportes Terrestres - ANTT';
      end if;

      if nTipoCercap = 10 then
-- Karina 29/05/2023: CHamado 44520: retirar esta descrição para o Ramo 4710.30
--          if nRaat_id in ( 4710.30 ) then
--                vTransportar := vTransportar||' para fins de destinação, conforme norma NBR 10.004 da ABNT.';
--            else
               vTransportar := vTransportar || '.';
--          end if;
      end if;
    end if;

    vClasses := null;
    nCont2   := 0;
    nTipo    := 2; -- Resíduos

    if nTipoCercap in (20,30) then

      open c4;
      loop
        fetch c4 into nTclr_id, vCodigo;
        if c4%notfound then
          close c4;
          exit;
        else
          vClasseResiduo := null;
          if vCodigo = 'R1' then
            vClasseResiduo := 'I';
          elsif
            vCodigo = 'R2' then
            vClasseResiduo := 'II';
          elsif
            vCodigo = 'R3' then
            vClasseResiduo := 'III';
          end if;

          nCont2 := nCont2 + 1;
          if nCont2 = 1 then
            vClasses := vClasseResiduo;
          else
            vClasses := Vclasses || ', ' || vClasseResiduo;
          end if;
        end if;
      end loop;

      if nCont2 > 0 then
        if nTipoCercap = 20 then    -- somente resíduos
          if nRaat_id in ( 4710.30 ) then
            vTransportar := 'RESÍDUOS CLASSE '||vClasses||', conforme NBR 10004 da ABNT.';   --' para fins de destinação, conforme norma NBR 10.004 da ABNT.';  -- Chamado 44520: ajustei descrição
          else
            vTransportar := 'RESÍDUOS CLASSE '||vClasses ||', conforme Resolução nº 5998, de 03/11/2022, ' || -- CS 45135 Karina: trocamos a data de 20/09/2022; --5947, de 01/06/2021, ' || -> Karina  --', conforme Resolução nº 5232, de 14/12/2016, ' || -- Chamado 25650 - Comentei devido à mudança por Resolução
                            'da Agência Nacional de Transportes Terrestres - ANTT' ||
                            ' e normas NBR 10004 e NBR 13221, da ABNT.';
          end if;
        else
          if nCont1 > 0 then
            vTransportar := vTransportar || ' e ';
          end if;
          if nRaat_id in ( 4710.30 ) then
            vTransportar := vTransportar || 'RESÍDUOS CLASSE ' || vClasses ||', conforme NBR 10004 da ABNT.';   --' para fins de destinação, conforme norma NBR 10.004 da ABNT.'; -- Chamado 44520: ajustei descrição
          else
            vTransportar := vTransportar || 'RESÍDUO PERIGOSO  (Classe '||vClasses||', ABNT NBR 10.004:2004)';
          end if;
        end if;
      end if;
    end if;

   end if;

   return(vTransportar);

end;

PROCEDURE PR_PRCR_INSERT_CORS_ID
 (P_CORS_ID IN NUMBER
 ,P_PRCR_ID IN NUMBER
 )
 IS
    /*----------------------------------------------------------------------------------------------------
    | Author.: Tiago Gabriel (DNA)
    | Updated: 17/09/2024
    | Purpose: Fechar cursores antes do final dos processos.
    | Tiket..: GLPI-55403 / FP-1337
    +----------------------------------------------------------------------------------------------------*/


    nRaat_id       number(7,2);
    nLcrs_id       NUMBER(10);
    nCors_id       NUMBER(10);
    nLcrsTipo      NUMBER(1);
    nDmSolo        NUMBER(1);
    nTido_id_Prcr  NUMBER(5);
    nDm_grupo_aut  number(2);


    nInclui     NUMBER(1);
    vUsuario    VARCHAR2(30);
    dDataAtual  DATE;
    nTipo       NUMBER(1);
    nContador   NUMBER(2);
    nContinua   NUMBER(1) := 1;

    vRaat_id_cors   NUMBER(7,2);

    cursor c0 is
       select prcr.tido_id_licenca,
              pck_processos.fc_prcr_ramo(p_prcr_id) ramo
         from fep_aux_proc_cond_restr prcr
        where prcr.prcr_id = p_prcr_id;


    CURSOR c1 IS
       SELECT lcrs.lcrs_id,
              tilc.tipo,
              cors.dm_solo,
              lcrs.cors_id
         FROM fep_listas_cond_restricoes lcrs,
              fep_condicoes_restricoes   cors,
              fep_tido_cond_restr        tilc
        WHERE lcrs.raat_id = vRaat_id_cors
          AND lcrs.cors_id = cors.cors_id
          AND lcrs.data_fim_validade IS NULL
          AND cors.data_fim_validade IS NULL
          AND lcrs.cors_id = p_cors_id
          AND lcrs.lcrs_id = tilc.lcrs_id
          AND tilc.data_fim IS NULL
          AND tilc.tido_id = nTido_id_Prcr
          AND NOT EXISTS ( SELECT NULL
                             FROM fep_aux_cond_restr_especiais cree
                            WHERE cree.lcrs_id = lcrs.lcrs_id
                              AND cree.prcr_id = p_prcr_id )
        ORDER BY 1;

    -- verifica se tem para incluir cors_id 503
    CURSOR c2 IS
       SELECT COUNT(*)
         FROM fep_aux_param_padroes      papd,
              fep_param_padroes_emissoes ppem
        WHERE papd.prcr_id    = p_prcr_id
          AND papd.dm_incluir = 'S'
          AND papd.ppem_id    = ppem.ppem_id
          AND ppem.dm_ativo   = 'S'
          AND ppem.para_id    IN (9,14);

    -- verifica se tem para incluir cors_id 797
    CURSOR c3 IS
       SELECT COUNT(*)
         FROM fep_aux_param_padroes      papd,
              fep_param_padroes_emissoes ppem
        WHERE papd.prcr_id    = p_prcr_id
          AND papd.dm_incluir = 'S'
          AND papd.ppem_id    = ppem.ppem_id
          AND ppem.dm_ativo   = 'S'
          AND ppem.para_id    IN (15);

    CURSOR c4 IS
       SELECT raat.dm_grupo_aut
         FROM fep_ramos_atividades raat
        WHERE raat.raat_id = nRaat_id;
BEGIN

 open  c0;
 fetch c0 into nTido_id_Prcr, nRaat_id;
 close c0;

 if nRaat_id is not null then
    open  c4;
    fetch c4 into nDm_grupo_aut;
    close c4;
 end if;

 IF nTido_id_Prcr = 431 THEN
    vRaat_id_cors :=  1010.10;  -- onde estão as condições do documento 431
 ELSE
    vRaat_id_cors :=  nRaat_id;
 END IF;

 SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;
 vUsuario := vUsuario || '-' || 'AUTOM.';

 IF p_cors_id = 503 THEN
    OPEN  c2;
    FETCH c2 INTO nContador;
    CLOSE c2;
    IF nContador = 0 THEN  -- inclui se tiver parâmetros 9 e/ou 14
       nContinua := 0;
    END IF;
 END IF;

 IF p_cors_id = 797 THEN
    OPEN  c3;
    FETCH c3 INTO nContador;
    CLOSE c3;
    IF nContador = 0 THEN  -- inclui se tiver parâmetro 15
       nContinua := 0;
    END IF;
 END IF;

 IF nContinua = 1 THEN

    OPEN c1;
    LOOP
       FETCH c1 INTO nLcrs_id, nLcrsTipo, nDmSolo, nCors_id;
       IF c1%notfound THEN
          CLOSE c1;
          EXIT;
       ELSE
          IF nLcrsTipo = 1 THEN   -- Padrão
             nTipo  := 2;         -- Excluir condição
          ELSE
             nTipo  := 1;         -- Incluir condição
          END IF;

          nInclui := 1;   -- Incluir

          -------------------------------------
          --- para as licenças de LP/LI da Dicopi
          --- os técnicos que deverão fazer a inclusão de condições
          ---                 Malu 21/06/2012
          IF nInclui = 1 THEN
             IF nDm_grupo_aut = 1 THEN
                IF nTido_id_Prcr IN ( 100,106,107,108,110,116,117,118) AND nCors_id != 112 THEN
                   nInclui := 0;
                END IF;
             END IF;
          END IF;
          -------------------------------------


          IF nInclui = 1 THEN
             BEGIN
                INSERT INTO fep_aux_cond_restr_especiais
                           (
              CREE_ID,
              PRCR_ID,
          LCRS_ID,
          TIPO_COND_RESTR,
          DM_IGNORAR,
          DATA_INCLUSAO,
              OPERADOR_INCLUSAO,
              DATA_ATUALIZACAO,
              OPERADOR_ATUALIZACAO
                            ) VALUES (
              cree_seq.nextval,
              p_prcr_id,
              nLcrs_id,
              nTipo,
                                      'N',
              dDataAtual,
              vUsuario,
              dDataAtual,
              vUsuario  );
                       COMMIT;
             EXCEPTION
                WHEN OTHERS THEN

                    -- (TG) Adicionado: o rise não fecha o cursor
                    if c1%isOpen then
                      close c1;
                    end if;

                    raise_application_error(-20001, 'Erro_1: Inclusão em fep_aux_cond_restr_especiais. >> '
                                      || SQLCODE || ' - ' || SQLERRM );
             END;
          END IF;
       END IF;
    END LOOP;

 END IF;
END;
PROCEDURE PR_PRCR_PONTUACAO
 (P_PRCR_ID IN NUMBER
 )
 IS
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 17/09/2024
  | Purpose: Fechar cursores antes do final dos processos.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/


   nContador          NUMBER(10)      := 0;
   nAtualiza          NUMBER(1)       := 0;
   vDescricaoNova     VARCHAR2(2000);

   vDescricao_ant     VARCHAR2(2000);
   nCors_id_ant       NUMBER(10);
   nSeq_classe_ant    NUMBER(10);
   nAcrl_id_ant       NUMBER(10);
   nTam_ant           NUMBER(5);
   vUlt_caracter_ant  VARCHAR2(1) := NULL;
   nOrigem_ant        NUMBER(1);

   vDescricao_atu     VARCHAR2(2000);
   nCors_id_atu       NUMBER(10);
   nSeq_classe_atu    NUMBER(10);
   nAcrl_id_atu       NUMBER(10);
   nTam_atu           NUMBER(5);
   vUlt_caracter_atu  VARCHAR2(1) := NULL;
   nOrigem_atu        NUMBER(1);

   CURSOR c1 IS
       SELECT
              clcr.sequencia          seq_classe,
              cors.sequencia          seq_01,
              cors.sequencia_sub      seq_02,
              cors.cors_id            cors_id,
              LENGTH(acrl.cors_descricao) tam,
              SUBSTR(acrl.cors_descricao,LENGTH(acrl.cors_descricao),1) vlr_ult,
              acrl.cors_descricao     cors_descricao,
              acrl.acrl_id            acrl_id,
              1                       origem
         FROM
              fep_aux_proc_cond_restr           prcr,
              fep_aux_cond_restr_par_lic        acrl,
              fep_condicoes_restricoes          cors,
              fep_listas_cond_restricoes        lcrs,
              fep_classes_cond_restricoes       clcr
        WHERE
              prcr.prcr_id    = p_prcr_id
         AND  prcr.prcr_id    = acrl.prcr_id
         AND  acrl.lcrs_id    = lcrs.lcrs_id
         AND  lcrs.cors_id    = cors.cors_id
         AND  cors.clcr_id    = clcr.clcr_id
         AND  lcrs.dm_licenca = 'S'
         AND  acrl.lcrs_id   IS NOT NULL
    UNION ALL
       SELECT
              clcr.sequencia          seq_classe,
              crpr.sequencia          seq_01,
              crpr.sequencia_sub      seq_02,
              TO_NUMBER(NULL)         cors_id,
              LENGTH(acrl.cors_descricao) tam,
              SUBSTR(acrl.cors_descricao,LENGTH(acrl.cors_descricao),1) vlr_ult,
              acrl.cors_descricao     cors_descricao,
              acrl.acrl_id            acrl_id,
              2                       origem
         FROM
              fep_aux_proc_cond_restr           prcr,
              fep_aux_cond_restr_par_lic        acrl,
              fep_aux_cond_restr_proc           crpr,
              fep_classes_cond_restricoes       clcr
        WHERE
              prcr.prcr_id    = p_prcr_id
         AND  prcr.prcr_id    = acrl.prcr_id
         AND  acrl.crpr_id    = crpr.crpr_id
         AND  crpr.clcr_id    = clcr.clcr_id
         AND  crpr.dm_licenca = 'S'
         AND  acrl.crpr_id   IS NOT NULL
      ORDER BY
              1,2,3;

   r1   c1%rowtype;
BEGIN

   OPEN c1;
   LOOP
      FETCH c1 INTO r1;
      IF c1%notfound THEN
         CLOSE c1;
         EXIT;
      ELSE
         nContador := nContador + 1;

         IF nContador = 1 THEN
            vDescricao_ant       := r1.cors_descricao;
            nCors_id_ant         := r1.cors_id;
            nAcrl_id_ant         := r1.acrl_id;
            nSeq_classe_ant      := r1.seq_classe;
            nTam_ant             := r1.tam;
            vUlt_caracter_ant    := r1.vlr_ult;
            nOrigem_ant          := r1.origem;

         ELSE
            -- guarda o valor lido no registro anterior
            vDescricao_ant       := vDescricao_atu;
            nCors_id_ant         := nCors_id_atu;
            nSeq_classe_ant      := nSeq_classe_atu;
            nAcrl_id_ant         := nAcrl_id_atu;
            nTam_ant             := nTam_atu;
            vUlt_caracter_ant    := vUlt_caracter_atu;
            nOrigem_ant          := nOrigem_atu;
         END IF;

         vDescricao_atu       := r1.cors_descricao;
         nCors_id_atu         := r1.cors_id;
         nSeq_classe_atu      := r1.seq_classe;
         nAcrl_id_atu         := r1.acrl_id;
         nTam_atu             := r1.tam;
         vUlt_caracter_atu    := r1.vlr_ult;
         nOrigem_atu          := r1.origem;

         nAtualiza := 0;

         -- a atualização sempre é em referencia ao registro lido anterior

         -- Todos os registros anteriores a classe de Renov Licença -- Com vistas à renovação da LIC ...
         -- os registros com descrição terminada em ponto, devem ser alterados para ponto e vírgula
         -- somente a sequencia anterior ao cors_id 99 que deve ser terminada com ponto
         -- exceto os itens terminados com dois pontos que devem ser deixados como estão
         --             cfme solicitação Regina - Sedapi   em 23/06/2004    -  Malu

         IF vUlt_caracter_ant IN (';','.') THEN
            IF nSeq_classe_atu = 800  THEN
               -- se o anterior foi terminado com ; alterar para .
               IF vUlt_caracter_ant = ';' THEN
                  vDescricaoNova := SUBSTR(vDescricao_ant,1,nTam_ant - 1) || '.';
                  nAtualiza  := 1;
               END IF;
            ELSE
               -- se o anterior foi terminado com . alterar para ;
               IF vUlt_caracter_ant = '.' THEN
                  vDescricaoNova := SUBSTR(vDescricao_ant,1,nTam_ant - 1) || ';';
                  nAtualiza  := 1;
               END IF;
            END IF;
         END IF;

         IF nCors_id_ant = 867 THEN
            vDescricaoNova := REPLACE(vDescricaoNova,';','.');
         END IF;

         IF nOrigem_ant  = 2 THEN
            nAtualiza  := 0;
         END IF;

         IF nAtualiza = 1 THEN
            BEGIN
               UPDATE fep_aux_cond_restr_par_lic
                  SET cors_descricao = vDescricaoNova
                WHERE acrl_id = nAcrl_id_ant;
                       commit;
            EXCEPTION
                WHEN OTHERS THEN

                    -- (TG) Adicionado: o rise não fecha o cursor
                    if c1%isOpen then
                      close c1;
                    end if;

                    raise_application_error(-20001, 'Erro_4: At pontuação em fep_aux_cond_restr_par_lic  >> '
                                                 || SQLCODE || ' - ' || SQLERRM );
            END;
         END IF;

         IF nSeq_classe_atu = 800 THEN   --- registro limite para parar de atualizar
            CLOSE c1;
            EXIT;
         END IF;

      END IF;
   END LOOP;
END;
PROCEDURE PR_PRCR_VIG_DOCUMENTO
 (P_PRCR_ID IN NUMBER
 )
 IS


    dDataAtual           DATE;
    vUsuario             VARCHAR2(30);
    nAtan_id             number(10);
    nRaat_id             number(7,2);
    nProc_id             number(10);
    dDataVctoAtual       date;

    dDataIni             DATE  := NULL;
    dDataFim             DATE  := NULL;
    dDataIniVigNovo      DATE  := NULL;
    dDataFimVigNovo      DATE  := NULL;
    nDocu_rev            NUMBER(10);
    dDataFimVigAtual     DATE  := NULL;
    vDataInf             VARCHAR2(1);
    vDataFimInf          VARCHAR2(1);
    nTidoRevogado        NUMBER(5);
    vDmGeraPend          VARCHAR2(1);
    nProc_id_rev         NUMBER(10);
    nTido_id_docu        NUMBER(5);
    nTido_id_prcr        NUMBER(5);
    nQtAnos              NUMBER(2);
    nQtMeses             NUMBER(3);
    dDataFimLO           DATE  := NULL;
    dDataAnuenciaRSI     DATE  := NULL;


   CURSOR c1 IS
       SELECT prcr.proc_id         proc_id,
              prcr.tido_id_licenca prcr_tido_id,
              prcr.data_inicio_vigencia,
              prcr.data_fim_vigencia,
              prcr.dm_data_fim_inf,
              prcr.docu_id_revogado,
              docu.data_fim_vigencia,
              docu.tido_id,
              docu.proc_id proc_rev,
              prcr.dm_gera_lic_pendente,
              docu.tido_id         docu_tido_id,
              prcr.dm_anos_LI
         FROM fep_aux_proc_cond_restr prcr,
              fep_documentos          docu
        WHERE prcr.prcr_id          = p_prcr_id
          AND prcr.docu_id_revogado = docu.docu_id(+);


   CURSOR c2 IS
       SELECT resp.atan_id,
              ata1.raat_id
         FROM fep_processos             proc,
              fep_responsabilidades     resp,
              fep_atividades_antropicas ata1
        WHERE proc.proc_id = nProc_id
          AND proc.resp_id = resp.resp_id
          AND resp.atan_id = ata1.atan_id;


   CURSOR c21 IS
       SELECT docu.data_fim_vigencia
         FROM fep_responsabilidades  resp,
              fep_processos          proc,
              fep_documentos         docu
        WHERE resp.atan_id  = nAtan_id
          AND resp.resp_id  = proc.resp_id
          AND proc.proc_id  = docu.proc_id
          AND docu.tido_id  = 120
          AND docu.situacao = 'E';

   CURSOR c22 IS
       SELECT arsi.data_anuencia
         FROM fep_aux_prcr_destinos_rsi arsi
        WHERE arsi.prcr_id  = p_prcr_id;

   CURSOR c23 IS
       SELECT docu.data_fim_vigencia
         FROM fep_responsabilidades  resp,
              fep_processos          proc,
              fep_documentos         docu
        WHERE resp.atan_id  = nAtan_id
          AND resp.resp_id  = proc.resp_id
          AND proc.proc_id  = docu.proc_id
          AND docu.tido_id  = 120
          AND docu.situacao IN ('G','E');


   CURSOR c3 IS
     SELECT docu.data_fim_vigencia     data_fim_vigencia
       FROM fep_processos               proc,
            fep_responsabilidades       resp,
            fep_documentos                    docu
      WHERE proc.resp_id  = resp.resp_id
        AND proc.proc_id  = docu.proc_id
        AND docu.tido_id  = nTido_id_prcr
         and docu.situacao = 'E'
        AND resp.atan_id  = nAtan_id
      ORDER BY
            docu.data_emissao DESC;
BEGIN

      -- conforme Consema 332/2016 - as licenças ( Classe 1 ) terão prazo de 5 anos   ( Malu 21/12/2016 )


       SELECT SYSDATE, USER INTO dDataAtual, vUsuario FROM dual;

       dDataIniVigNovo := NULL;
       dDataFimVigNovo := NULL;

       OPEN  c1;
       FETCH c1 INTO nProc_id, nTido_id_prcr,
                     dDataIni, dDataFim, vDataInf, nDocu_rev, dDataFimVigAtual, nTidoRevogado,
                     nProc_id_Rev, vDmGeraPend, nTido_id_docu, nQtAnos;
       CLOSE c1;

       open  c2;
       fetch c2 into nAtan_id, nRaat_id;
       close c2;

       vDataFimInf := vDataInf;

       -- Data de inicio de vigencia
       IF vDmGeraPend = 'S' THEN  -- Fica pendente até lic atual vencer
          open  c3;
          fetch c3 into dDataVctoAtual;
          close c3;
          dDataIniVigNovo := dDataVctoAtual + 1;
       END IF;
       IF dDataIniVigNovo IS NULL THEN
          dDataIniVigNovo := TRUNC(dDataAtual);
       END IF;

       -- Data de fim de vigência
       IF vDataFimInf IS NULL THEN
          vDataFimInf := 'N';
       END IF;
       IF vDataFimInf = 'S' AND dDataFim IS NULL THEN
          vDataFimInf := 'N';
       END IF;

       IF vDataFimInf = 'S' AND dDataFim IS NOT NULL THEN
          dDataFimVigNovo := dDataFim; -- mantem o informado
       ELSE
          IF dDataFimVigAtual IS NOT NULL AND
             nTidoRevogado NOT IN (500,510,520,530,540,5106,5107,5108,5116,5117,5118,5431) THEN -- Revogação - mantem mesma data do Doc Revogado
             IF nTido_id_docu = nTido_id_prcr THEN  -- mesmo tipo de documento
                IF nProc_id_Rev = nProc_id THEN     -- mesmo processo, mantem a data fim
                   dDataFimVigNovo := dDataFimVigAtual;
                   vDataFimInf := 'S';
                END IF;
             END IF;
          END IF;
       END IF;

       IF vDataFimInf = 'N' THEN -- Data não informada pelo técnico

          IF nTido_id_prcr = 431 THEN   -- RSI para Fora do Estado - RS
             OPEN  c21;
             FETCH c21 INTO dDataFimLO; -- procura se tem LO em Vigor na FEPAM
             CLOSE c21;

             OPEN  c22;
             FETCH c22 INTO dDataAnuenciaRSI; -- procura a data de anuencia
             CLOSE c22;

             -- Coloca o prazo menor
             IF dDataFimLO IS NOT NULL THEN
                IF dDataFimLO < dDataAnuenciaRSI THEN
                   dDataFimVigNovo := dDataFimLO;
                ELSE
                   dDataFimVigNovo := dDataAnuenciaRSI;
                END IF;
             ELSE
                dDataFimVigNovo := dDataAnuenciaRSI;
             END IF;
          END IF;

          -- certificados labs: 2 anos
          IF nRaat_id = 5710.10 THEN  -- laboratórios
             dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,24);
          ELSE

             IF nTido_id_prcr IN (100,106,107,108) THEN -- LP e LP de Ampliação
--                dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,24); -- data atual + 2 anos
                  dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,60); -- data atual + 5 anos - Resolução 332/2016
             END IF;

             IF nTido_id_prcr IN (110,116,117,118) THEN -- LI e LI Ampliação
                IF nRaat_id = 4751.30 THEN  -- Postos
                   IF nTido_id_prcr IN (110 ) THEN -- LI
--                      dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,48); -- data atual + 4 anos
                        dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,60); -- data atual + 5 anos - Resolução 332/2016
                   ELSE
--                      dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,24); -- data atual + 2 anos
                         dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,60); -- data atual + 5 anos - Resolução 332/2016
                  END IF;
                ELSE
                   --IF nQtAnos IS NULL THEN
                   --   raise_application_error(-20001, 'Erro: Faltou informar o número de anos para a LI. Verifique em Dados Geração.');
                  -- ELSE
                  --    nQtMeses := nQtAnos * 12;
                        nQtMeses := 60;    -- Resolução 332/2016
                        dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,nQtMeses); -- data atual + 5 anos
                   --END IF;
                END IF;
             END IF;

             IF nTido_id_prcr in ( 120, 151)  THEN -- LO
--                dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,48); -- data atual + 4 anos
                  dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,60); -- data atual + 5 anos
             END IF;

             IF nTido_id_prcr = 171 THEN -- LPI
                dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,60); -- data atual + 5 anos
             END IF;

             IF nTido_id_prcr IN (400) THEN -- Autorização Geral
                dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo,12); -- data atual + 1 ano
             END IF;

          END IF;

       END IF;

       IF nTido_id_prcr = 380 THEN -- Declaração Alt Extração Mineral
          OPEN  c23;
          FETCH c23 INTO dDataFimLO; -- procura se tem LO em Vigor na FEPAM
          CLOSE c23;
          dDataFimVigNovo := dDataFimLO;
       END IF;

       IF nTido_id_prcr = 431 THEN
          IF dDataFimVigNovo IS NULL THEN
             raise_application_error(-20001, 'Erro: Não foi possivel gerar a Data de Fim de Vigência para o documento 431-RSI. Verifique.');
          ELSE
             IF dDataFimVigNovo  < TRUNC(SYSDATE)       OR
                dDataFimVigNovo  < TRUNC(SYSDATE) + 5  THEN
                raise_application_error(-20001, 'Erro: Data de Fim de Vigência da Autorização de RSI já vencida ou com prazo de validade de menos de 5 dias. Verifique.');
             END IF;
          END IF;
       END IF;

       IF dDataIniVigNovo > dDataFimVigNovo THEN
          raise_application_error(-20001, 'Erro1:  Data Fim Vig: ' || substr(to_date(dDataFimVigNovo,'dd/mm/rrrr'),1,10)  || ' é menor que Data Inicio: ' ||
                                                                                                                    substr(to_date(dDataIniVigNovo,   'dd/mm/rrrr'),1,10)  || '. Verifique.');
       ELSE
          IF dDataIniVigNovo > TRUNC(dDataAtual) THEN
             IF vDmGeraPend = 'S' THEN  -- Pendente
                NULL;
             ELSE
                raise_application_error(-20001, 'Erro2:  Data Início Vig: ' || substr(to_date(dDataIniVigNovo,   'dd/mm/rrrr'),1,10)  ||
                                                                              ' maior que Data Atual e não informada como Pendente. Verifique.');
             END IF;
          END IF;
       END IF;

       ----------------------------------------------------------------------------------
       -- Atualiza a Data de Vigencia do Documento
       BEGIN
             UPDATE fep_aux_proc_cond_restr
                SET data_inicio_vigencia   =  dDataIniVigNovo,
                    data_fim_vigencia      =  dDataFimVigNovo,
                    dm_data_fim_inf        =  vDataFimInf,
                     data_atualizacao      = sysdate,
                     operador_atualizacao = SUBSTR(user||'PR_PRCR_VIG_DOCUMENTO',1,30)
              WHERE prcr_id           =  p_prcr_id;
                         commit;
          EXCEPTION
                WHEN OTHERS THEN
                    raise_application_error(-20001, 'Erro: Atualização Datas Vencimento em fep_aux_proc_cond_restr. >> '
                                      || SQLCODE || ' - ' || SQLERRM );

       END;
       ----------------------------------------------------------------------------------

END;

PROCEDURE PR_PRCR_COND_RESTR (P_PRCR_ID IN number) IS
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 17/09/2024
  | Purpose: Fechar cursores antes do final dos processos.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/


  nCont           number(4);
  nCont_Transp    number(3);
  dDataAtual      date;
  vUsuario        varchar2(30);
  nProc_id        number(10);
  nAtan_id        number(10);
  vOrdemJudicial  varchar2(1500);


  nRaat_id              number(7,2);
  nDocuRevogado         number(10);
  nTidoRevogado         number(5);
  vCorsDescricao        varchar2(2000);
  vDocumentoRevogado    varchar2(120)  := NULL;
  dDataFimVigAtual      date;
  vRevogacao            varchar2(2000) := NULL;
  dDataFimVigNovo       date;
  vPeriodoValidade      varchar2(60)   := NULL;
  nTido_id_Prcr         number(5);
  nTido_id_Sose         number(5);

  nSequencia            number(5);
  nSequenciaSub         number(5);
  nLcrs_id              number(10);
  nCors_id              number(10);
  nCrpr_id              number(10);
  vLcrsDescricao        varchar2(2000);
  nIncluidos            number(3);

  vNomeTecnico          varchar2(135);
  vTelefoneTecnico      varchar2(30);
  vTelCelTecnico        varchar2(30);
  vTelEmpreendedor      varchar2(30);
  vTelefEmergencia         varchar2(200);
  vMotivoRevogacao      varchar2(500);
  nSose_id              number(10);
  vDataFim627           varchar2(10);
  nMedidaPorte          number(12,4);

  dDtFim_Docu          date;
  dDtFim_Prcr          date;
  nDocu_id_par         number(10);
  nDocu_id_lic         number(10);

  cursor c1 is
   SELECT COUNT(*)
     FROM fep_aux_cond_restr_par_lic acrl
    WHERE acrl.prcr_id = p_prcr_id;

  cursor c2 is
   SELECT cors.sequencia,
          cors.sequencia_sub,
          lcrs.lcrs_id    lcrs_id,
          cors.cors_id    cors_id,
          TO_NUMBER(NULL) crpr_id,
          cors.descricao
     FROM fep_listas_cond_restricoes lcrs,
          fep_condicoes_restricoes   cors,
          fep_tido_cond_restr        tilc
    WHERE lcrs.raat_id = nRaat_id
      AND lcrs.cors_id = cors.cors_id
      AND lcrs.data_fim_validade IS NULL
      AND cors.data_fim_validade IS NULL
      AND cors.clcr_id != 55
      AND DECODE(tilc.tipo,NULL,lcrs.tipo,tilc.tipo) = 1         -- Padrao
      AND lcrs.lcrs_id = tilc.lcrs_id
      AND tilc.data_fim IS NULL
      AND tilc.tido_id = nTido_id_Prcr
      AND NOT EXISTS ( SELECT NULL
                         FROM fep_aux_cond_restr_especiais cree
                        WHERE cree.lcrs_id         = lcrs.lcrs_id
                          AND cree.tipo_cond_restr = 2
                          AND cree.prcr_id         = p_prcr_id )  -- excluir condição
  UNION ALL
   SELECT cors.sequencia,
          cors.sequencia_sub,
          lcrs.lcrs_id    lcrs_id,
          cors.cors_id    cors_id,
          TO_NUMBER(NULL) crpr_id,
          cors.descricao
     FROM fep_listas_cond_restricoes lcrs,
          fep_condicoes_restricoes   cors,
          fep_tido_cond_restr        tilc
    WHERE lcrs.raat_id = nRaat_id
      AND lcrs.cors_id = cors.cors_id
      AND lcrs.data_fim_validade IS NULL
      AND cors.data_fim_validade IS NULL
      AND DECODE(tilc.tipo,NULL,lcrs.tipo,tilc.tipo) = 2               -- Opcional
      AND cors.cors_id NOT IN (112)  -- Revogado
      AND cors.clcr_id != 55
      AND lcrs.lcrs_id = tilc.lcrs_id
      AND tilc.data_fim IS NULL
      AND tilc.tido_id = nTido_id_Prcr
      AND EXISTS ( SELECT NULL
                         FROM fep_aux_cond_restr_especiais cree
                        WHERE cree.lcrs_id         = lcrs.lcrs_id
                          AND cree.tipo_cond_restr = 1
                          AND cree.dm_ignorar      = 'N'
                          AND cree.prcr_id         = p_prcr_id )  -- incluir condição
  UNION ALL
   SELECT
          cors.sequencia,
          cors.sequencia_sub,
          lcrs.lcrs_id    lcrs_id,
          cors.cors_id    cors_id,
          TO_NUMBER(NULL) crpr_id,
          vRevogacao
     FROM fep_listas_cond_restricoes   lcrs,
          fep_condicoes_restricoes     cors,
          fep_tido_cond_restr          tilc,
          fep_aux_proc_cond_restr      prcr
    WHERE lcrs.raat_id         = nRaat_id
      AND lcrs.cors_id         = cors.cors_id
      AND prcr.prcr_id         = p_prcr_id
      AND prcr.docu_id_revogado IS NOT NULL
      AND cors.cors_id         = 112     -- Documento Revogado
      AND cors.clcr_id != 55
      AND lcrs.lcrs_id = tilc.lcrs_id
      AND tilc.data_fim IS NULL
      AND tilc.tido_id = nTido_id_Prcr
      AND EXISTS ( SELECT NULL
                         FROM fep_aux_cond_restr_especiais cree
                        WHERE cree.lcrs_id         = lcrs.lcrs_id
                          AND cree.tipo_cond_restr = 1
                          AND cree.dm_ignorar      = 'N'
                          AND cree.prcr_id         = p_prcr_id )  -- incluir condição
    ORDER BY 1,2;


  cursor c3 is
   SELECT docu.tido_id,
          cors.descricao,
          SUBSTR(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
                  REPLACE(REPLACE(REPLACE(REPLACE(INITCAP(tido.descricao),
                          ' Fora Rs',' Fora RS'),
                          ' Iii',' III'),
                          ' Ii',' II'),
                          ' Iv',' IV'),
                          ' E ',' e '),
                          'Eia/','EIA/'),
                          ' Para ',' para '),
                          ' De ',' de '),
                          ' Do ',' do ') || ' Nº ' ||
                        (LPAD(docu.numero,5,'0') || '/' ||
                        LTRIM(RTRIM(TO_CHAR(docu.ano,'0000'))) || ', de ' ||
                        SUBSTR(TO_CHAR(docu.data_inicio_vigencia,'dd/mm/rrrr'),1,10)),1,120)  documento,
          TRUNC(docu.data_fim_vigencia)
     FROM fep_documentos               docu,
          fep_tipos_documentos         tido,
          fep_listas_cond_restricoes   lcrs,
          fep_condicoes_restricoes     cors,
          fep_tido_cond_restr          tilc
    WHERE docu.docu_id   = nDocuRevogado
      AND docu.tido_id   = tido.tido_id
      AND lcrs.cors_id   = cors.cors_id
      AND lcrs.lcrs_id   = tilc.lcrs_id
      AND tilc.data_fim  IS NULL
      AND tilc.tido_id   = nTido_id_Prcr
      AND lcrs.cors_id   = 112;

  CURSOR c4 IS
   SELECT prcr.proc_id,
          prcr.docu_id_revogado,
          prcr.motivo_revogacao,
          prcr.sose_id,
          pck_processos.fc_prcr_ramo(prcr.prcr_id) ramo,
          prcr.tido_id_licenca
     FROM fep_aux_proc_cond_restr prcr
    WHERE prcr.prcr_id  = p_prcr_id;

  -- Acha a data de fim de vigência para cors_id = 116
  CURSOR c41 IS
   SELECT prcr.data_fim_vigencia,
          substr(to_char(prcr.data_fim_vigencia,'dd/mm/rrrr'),1,10) fim_vig
     FROM fep_aux_proc_cond_restr prcr
    WHERE prcr.prcr_id     = p_prcr_id;

  -- Acha o empreendimento do processo
  CURSOR c42 IS
   SELECT resp.atan_id, ata1.medida_porte
    FROM  fep_processos proc,
          fep_responsabilidades resp,
          fep_atividades_antropicas ata1
    WHERE proc.proc_id = nProc_id
      and proc.resp_id = resp.resp_id
      and resp.atan_id = ata1.atan_id;

  -- Acha o tipo de solicitação para transportadora
  CURSOR c43 IS
   SELECT sose.tido_id
     FROM fep_solic_seamb sose
    WHERE sose.sose_id = nSose_id;

  -- Nome do Resp Técnico e telefones
  cursor c51 is
   SELECT  pess.razao_social || ' - (Cad ' || pess.pess_id || ')' resp_tecnico ,
          pess.telefone,
          pess.telefone_celular
     FROM fep_pessoas pess,
          fep_responsabilidades resp
    WHERE resp.pess_id = pess.pess_id
      and resp.tipa_id = 9
      and resp.atan_id = nAtan_id
      and resp.data_fim is null;

  -- Telefone do Empreendedor
  cursor c52 is
   SELECT pess.telefone
    FROM  fep_pessoas pess,
          fep_atividades_antropicas ata1
    WHERE ata1.atan_id = nAtan_id
      and ata1.pess_id = pess.pess_id;

  ------------------------------------------
  -- CS 48444  30/03/2025  Karina L. Schmidt
  -- Conforme Tatiane, quando o Tipo CERCAP do Empdor for 10 (clre.tipo_cercap), 
  -- as Condicionantes de Resíduos Perigosos deverão ser desconsideradas no Documento, 
  -- mesmo que existam Resíduos Perigosos (R1) registrados para o Empreendedor que não foram exlcuídos (logicamente)
  -- 10=Produtos Perigosos (Classes); 20=Resíduos Perigosos (Resíduos); 30=Produtos e Resíduos Perigosos
  Cursor cResidPerig is -- c61 is
   select count(*)
     from fep_classes_residuos_ativ      clre,
          fep_sub_classes_residuos_ativ  sclt,
          fep_tipos_sub_classes_residuos tscl
    where clre.clre_id = sclt.clre_id
      and sclt.tscl_id = tscl.tscl_id
      and clre.tipo_cercap in (20, 30)  -- Tipo CERCAP permite Carga de Resíduos
      and clre.atan_id = nAtan_id
      and Nvl(sclt.data_exclusao, Sysdate) >= Trunc(Sysdate) -- exclusão lógica
      and tscl.codigo = 'R1';  -- Resíduos Perigosos

----------------------------------------------------------------------------------------------
-- verifica se tem Transporte de Explosivos
/*
 cursor c62 is
       select count(*)
          from fep_classes_residuos_ativ   clre,
                    fep_classes_transportadoras cltr,
                    fep_tipos_classes_residuos  tclr
         where clre.atan_id = nAtan_id
             and clre.clre_id = cltr.clre_id
             and cltr.tclr_id = tclr.tclr_id
             and tclr.codigo  = 'C1' ;
*/
  -- após a conversão
  cursor c62 is
   select count(*)
    from  fep_classes_residuos_ativ      clre,
          fep_sub_classes_residuos_ativ  sclt,
          fep_tipos_sub_classes_residuos tscl,
          fep_tipos_classes_residuos     tclr
    where clre.atan_id  = nAtan_id
      and clre.clre_id  = sclt.clre_id
      and sclt.tscl_id  = tscl.tscl_id
      and tscl.tscl_id  = tclr.tscl_id
      and sclt.data_exclusao is null           -- CS 48444
      and Nvl(tclr.codigo,tscl.Codigo)   = 'C1';
----------------------------------------------------------------------------------------------


------------------------------------------------------
-- verifica se tem Transporte de Materiais Radioativos
/*
 cursor c63 is
       select count(*)
          from fep_classes_residuos_ativ   clre,
                    fep_classes_transportadoras cltr,
                    fep_tipos_classes_residuos  tclr
         where clre.atan_id = nAtan_id
             and clre.clre_id = cltr.clre_id
             and cltr.tclr_id = tclr.tclr_id
             and tclr.codigo  = 'C7' ;
*/

-- após a conversão
  cursor c63 is
   select count(*)
     from fep_classes_residuos_ativ      clre,
          fep_sub_classes_residuos_ativ  sclt,
          fep_tipos_sub_classes_residuos tscl,
          fep_tipos_classes_residuos     tclr
    where clre.atan_id  = nAtan_id
      and clre.clre_id  = sclt.clre_id
      and sclt.tscl_id  = tscl.tscl_id
      and tscl.tscl_id  = tclr.tscl_id
      and sclt.data_exclusao is null           -- CS 48444
      and Nvl(tclr.codigo,tscl.Codigo)  = 'C7';

  cursor c7 is
   select prcr.docu_id_parecer,
          prcr.docu_id_licenca,
          trunc(docu.data_fim_vigencia) fim_vig_docu,
          trunc(prcr.data_fim_vigencia) fim_vig_prcr
    from  fep_documentos          docu,
          fep_aux_proc_cond_restr prcr
    where prcr.docu_id_licenca = docu.docu_id
      and prcr.prcr_id         = p_prcr_id;
------------------------------------------------------

  ------------------------------------------
  -- CS 48444  30/03/2025  Karina L. Schmidt
  -- Lista de Condicionantes específicas --
  Cursor cListaCond (pTipo_Cond in Number)is
   Select cors.cors_id          
    From  fep_listas_cond_restricoes lcrs,
          fep_condicoes_restricoes   cors,
          fep_tido_cond_restr        tilc
    Where lcrs.cors_id = cors.cors_id
      and lcrs.lcrs_id = tilc.lcrs_id
      and lcrs.data_fim_validade IS NULL
      and cors.data_fim_validade IS NULL
      and tilc.data_fim IS NULL
      and tilc.tido_id = nTido_id_Prcr
      and lcrs.raat_id = nRaat_id
      and Nvl(tilc.tipo,lcrs.tipo) = pTipo_Cond -- 1=Padrão e 2=Opcional
      and cors.clcr_id = 179;     -- Classe de Condicionantes "Resíduos Perigosos"

  rListaCond cListaCond%RowType;

Begin

  SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;

  ---------------------------------------------------------------------------------
  -- Verifica se já tem geração anterior
  ---------------------------------------------------------------------------------
  open  c1;
  fetch c1 into nCont;
  close c1;

  if nCont > 0 then

    -- exclui as condições e restricoes
    BEGIN
      
      DELETE
        FROM fep_aux_cond_restr_par_lic acrl
       WHERE acrl.prcr_id = p_prcr_id;
      
      commit;
      
      EXCEPTION
        WHEN OTHERS THEN
          raise_application_error(-20001, 'Erro_1: Exclusão de fep_aux_cond_restr_par_lic. >> '|| SQLERRM );
    END;

    -- exclui as condições especiais que foram geradas automaticamente
    BEGIN

      DELETE
        FROM fep_aux_cond_restr_especiais cree
       WHERE cree.prcr_id = p_prcr_id
         AND cree.operador_atualizacao LIKE '%-AUT%';
      
      commit;
    
      EXCEPTION
        WHEN OTHERS THEN
          raise_application_error(-20001, 'Erro_2: Excl fep_aux_cond_restr_especiais - Ger Aut  >> '||SQLERRM );
    END;

  end if;

  ---------------------------------------------------------------------------------
  -- Tipo de documento a ser emitido e o empreendimento do processo
  ---------------------------------------------------------------------------------
  open  c4;
  fetch c4 into nProc_id, nDocuRevogado, vMotivoRevogacao, nSose_id, nRaat_id, nTido_id_Prcr;
  close c4;

  OPEN  c42;
  FETCH c42 INTO nAtan_id, nMedidaPorte;
  CLOSE c42;

  ---------------------------------------------------------------------------------
  -- Verifica de tem documento a revogar informado
  ---------------------------------------------------------------------------------
  IF nDocuRevogado IS NOT NULL THEN

    if nSose_id is not null and vMotivoRevogacao is null then
      open  c43;
      fetch c43 into nTido_id_sose;
      close c43;
      if nTido_id_sose = 340 then
        vMotivoRevogacao := 'Alteração de Frota - Transportadora';
      else
        vMotivoRevogacao := 'Atualização de Licença - Transportadora';
      end if;

      BEGIN
        UPDATE fep_aux_proc_cond_restr
        SET motivo_revogacao  =  vMotivoRevogacao
        WHERE prcr_id         =  p_prcr_id;
              
        commit;
              
        EXCEPTION
          WHEN OTHERS THEN
            raise_application_error(-20001, 'Erro: Atualização Motivo Revogação Transportadoras. >> '||SQLERRM);
      END;
    end if;

    OPEN  c3;
    FETCH c3 INTO nTidoRevogado,
                  vCorsDescricao,
                  vDocumentoRevogado,
                  dDataFimVigAtual;
    CLOSE c3;
         
    vRevogacao := REPLACE(vCorsDescricao,'[LIC_ANTERIOR]',vDocumentoRevogado);
    pck_processos.pr_prcr_insert_cors_id(112,p_prcr_id); -- inclui condição revogação
      
  END IF;

  ---------------------------------------------------------------------------------
  -- Datas de Vigência da Licença
  ---------------------------------------------------------------------------------

  pck_processos.pr_prcr_vig_documento(p_Prcr_id); -- atualiza as Datas Prcr

  -- verifica se a data fim de vigencia gravada no Docu_id = 01/01/0001
  --                      Malu/Catia     29/01/2020
  open  c7;
  fetch c7 into nDocu_id_par, nDocu_id_lic, dDtFim_Docu, dDtFim_Prcr;
  close c7;

  if nDocu_id_lic is not null then
    if dDtFim_Docu = to_date('01/01/0001','dd/mm/rrrr') and
       dDtFim_Prcr > dDtFim_Docu then
      -- corrige Parecer
      BEGIN
        update fep_documentos
          set data_fim_vigencia    = dDtFim_Prcr,
              data_atualizacao     = sysdate,
              operador_atualizacao = 'CORR DATA 01010001'
        where docu_id =  nDocu_id_par;
        
        commit;
      
        EXCEPTION
          WHEN OTHERS THEN
            raise_application_error(-20001, 'Erro1: Corr Data 01/01/0001 fep_documentos p_prcr_id: '||p_prcr_id|| SQLERRM );
      END;

      -- corrige Licença
      BEGIN
        update fep_documentos
           set data_fim_vigencia    = dDtFim_Prcr,
               data_atualizacao     = sysdate,
               operador_atualizacao = 'CORR DATA 01010001'
        where docu_id =  nDocu_id_lic;
        
        commit;
        
        EXCEPTION
          WHEN OTHERS THEN
            raise_application_error(-20001, 'Erro2: Corr Data 01/01/0001 fep_documentos p_prcr_id: '||p_prcr_id||SQLERRM );
      END;

    end if;
  end if;

  OPEN  c41;
  FETCH c41 INTO dDataFimVigNovo, vDataFim627;
  CLOSE c41;
  vPeriodoValidade := pck_processos.fc_prcr_periodo_vig(p_prcr_id);

  -------------------------------------------------------------------------------------
  -- rotina para incluir as condicionantes 7561 ou 7562 - CTF para transportes
  --                                             Malu  14/01/2020
  -------------------------------------------------------------------------------------
  if nRaat_id in ( 4710.10, 4710.11, 4710.12, 4710.20, 4710.30 ) then
    begin
      pck_proc_prof0825.pr_gera_ctf_transporte(p_prcr_id);
      commit;
    end;
  end if;

  --------------------------------------
  --  verifica Para Transporte
  --------------------------------------
  if nRaat_id in ( 4710.10, 4710.20, 4710.30 ) then

    nCont_Transp := 0;
    
    -- Busca identificar se o Empreendimento tem registro de Residuo Perigoso (R1) (atual, sem data fim)
    open  cResidPerig; --c61;
    fetch cResidPerig into nCont_Transp;  -- Transporte de Resíduos Perigosos - R1
    close cResidPerig; --c61;

    ------------------------------------------------------------------------------------------------------------------
    --               CS 48444 Karina L. Schmidt  27/03/2025
    -- Trata da geração das Condicionantes de "Resíduos Perigosos" (Clcr_Id = 179)
    -- quando o Empreendimento tiver CERCAP <> 10 e tiver incluído Carga de Resíduo Perigoso (R1) no Especialista
    -- Neste caso, deveremos inserir as Conds Especiais quando a Condicionante for Opcional, para que ela 
    -- seja inserida à lista de Condicionantes do Documento.
    -- A Condicionante que for padrão, será inserida à lista de Conds do Documento, automaticamente, caso existir.
    -------------------------------------------------------------------------------------------------------------------
--    if nRaat_id = 4710.10 then

    if (Nvl(nCont_Transp, 0) > 0) then
      -- Lista de Condicionantes de "Residuos Perigosos" (Classe 179)
      Open cListaCond(2);  -- 2 = Tipo Condicionante Opcional
      Loop
        Fetch cListaCond into rListaCond;
        Exit When cListaCond%NotFound;
          
        pck_processos.pr_prcr_insert_cors_id(rListaCond.Cors_Id, p_prcr_id);
        
      End loop;
      Close cListaCond;

    else -- caso o Empreendimento não tenha Resíduos Perigosos...
        
      -- não podemos imprimir as Condicionantes desta Classe (179). Então, incluímos elas como Conds Especias para que 
      -- sejam descartadas da Lista, automaticamente.
      Open cListaCond(1);  -- 1 = Tipo Condicionante Padrão
      Loop
        Fetch cListaCond into rListaCond;
        Exit When cListaCond%NotFound;
          
        pck_processos.pr_prcr_insert_cors_id(rListaCond.Cors_Id, p_prcr_id);
        
      End loop;
      Close cListaCond;
        
    end if;

/*    elsif (Nvl(nCont_Transp, 0) > 0) then

      pck_processos.pr_prcr_insert_cors_id(3445, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(3266, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(3265, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(3267, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(7715, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(7716, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(7717, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(7718, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(7719, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(7720, p_prcr_id);
    end if;
*/
    nCont_Transp := 0;
    open  c62;
    fetch  c62 into nCont_Transp;  -- Transporte de Explosivos - C1
    close c62;

    if nCont_Transp > 0 then
      pck_processos.pr_prcr_insert_cors_id(3270, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(3272, p_prcr_id);
    end if;

    nCont_Transp := 0;
    open  c63;
    fetch  c63 into nCont_Transp;  -- Transporte de Materiais Radioativos - C7
    close c63;

    if nCont_Transp > 0 then
      pck_processos.pr_prcr_insert_cors_id(3271, p_prcr_id);
      pck_processos.pr_prcr_insert_cors_id(3273, p_prcr_id);
    end if;

    --- verifica se tem Ordem Judicial para Incluir  ( Malu 26/10/2015 )
    vOrdemJudicial  := pck_proc_assinat.fc_prcr_ordem_judicial(nProc_id,  p_prcr_id);

    if vOrdemJudicial is not null then
      pck_processos.pr_prcr_insert_cors_id(3420, p_prcr_id);
    end if;

  end if;

  ---------------------------------------------------------------------------------
  --  C O N D I C O E S    E    R E S T R I C O E S
  ---------------------------------------------------------------------------------
--dbms_output.put_line('antes c2 nRaat_id='|| nRaat_id||' nTido_id_Prcr='||nTido_id_Prcr||' p_prcr_id='||p_prcr_id);
  OPEN c2;
  LOOP
    
    FETCH c2 INTO nSequencia, nSequenciaSub, nLcrs_id, nCors_id, nCrpr_id, vLcrsDescricao;
    IF c2%notfound THEN
      CLOSE c2;
      EXIT;
    ELSE
--dbms_output.put_line('dentro  c2'||nCors_id);

      IF nCors_id = 116 THEN -- Data de Fim de Vigência
        vLcrsDescricao := REPLACE(vLcrsDescricao,'[DATA_FIM]','até ' || pck_processos.fc_prcr_display_dtvig(dDataFimVigNovo));
      
      elsif nCors_id IN (189,1401) THEN  -- Período de Validade
        vLcrsDescricao := REPLACE(vLcrsDescricao,'[PERIODO_VALIDADE]', vPeriodoValidade);

      elsif nCors_id in (619,3256) THEN -- Técnico
        open  c51;
        fetch c51 into vNomeTecnico, vTelefoneTecnico, vTelCelTecnico;
        close c51;

        open  c52;
        fetch c52 into vTelEmpreendedor;
        close c52;

        vTelefEmergencia := pck_processos.fc_prcr_tel_emerg_transp(nAtan_id);

        vLcrsDescricao := REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(vLcrsDescricao, '[RESPTEC]', vNomeTecnico),
                                                                                  '[CELULARRESPTEC]', vTelCelTecnico),
                                                                                  '[TELEFONERESPTEC]', vTelefoneTecnico),
                                                                                  '[TELEFEMPREENDEDOR]', vTelEmpreendedor),
                                                                                  '[TELEF_EMERGENCIA]', vTelefEmergencia);
--dbms_output.put_line('vTelefEmergencia'||vTelefEmergencia||' '||vLcrsDescricao);

      elsif nCors_id = 620 then
        if nMedidaPorte =  1 then
          vLcrsDescricao := 'a placa do veículo, objeto desta licença, encontra-se em documento anexo, cuja cópia deverá ser mantida no veículo licenciado, para fins de fiscalização;';
        end if;
      elsif nCors_id = 627 THEN -- Data de Fim de Vigência
        vLcrsDescricao := REPLACE(vLcrsDescricao,'[FIMVIG]',vDataFim627);

      elsif nCors_id = 1406 THEN -- Data de Fim de Vigência
        vLcrsDescricao := REPLACE(vLcrsDescricao,'[DATA_FIM]',pck_processos.fc_prcr_display_dtvig(dDataFimVigNovo));

      elsif nCors_id = 3420 THEN -- Texto
        -- Ordem Judicial
        vLcrsDescricao := REPLACE(vLcrsDescricao,'[ORDEM_JUDICIAL]',vOrdemJudicial);
      end if;

      ---------------------------------------------------------------------------------------
      BEGIN

        INSERT INTO fep_aux_cond_restr_par_lic (ACRL_ID,
                                                PRCR_ID,
                                                LCRS_ID,
                                                CORS_DESCRICAO,
                                                DATA_INCLUSAO,
                                                OPERADOR_INCLUSAO,
                                                DATA_ATUALIZACAO,
                                                OPERADOR_ATUALIZACAO,
                                                CRPR_ID,
                                                CORS_ID_ANTERIOR,
                                                CORS_ID_ATUAL,
                                                DM_ALT_REDACAO)
         VALUES ( acrl_seq.nextval,
                  p_Prcr_id,
                  nLcrs_id,
                  vLcrsDescricao,
                  dDataAtual,
                  vUsuario,
                  dDataAtual,
                  vUsuario,
                  nCrpr_id,
                  null,
                  nCors_id,
                  'N' );

        commit;

        nIncluidos := nIncluidos + 1;

        EXCEPTION
          WHEN OTHERS THEN
            -- (TG) Adicionado: o rise não fecha o cursor
            if c2%isOpen then
              close c2;
            end if;
            raise_application_error(-20001, 'Erro_3: Inclusao em fep_aux_cond_restr_par_lic  >> '||SQLERRM );
      END;

    END IF;
  END LOOP;

  --------------------------------------------------------------------------------------
  IF nIncluidos > 0 THEN
    pck_processos.pr_prcr_pontuacao(p_Prcr_id);  -- verifica a pontuacao
  END IF;
  --------------------------------------------------------------------------------------

  commit;

end;

PROCEDURE PR_PRCR_INSERT_AMLC(P_PRCR_ID IN NUMBER
                             ,P_LINHA IN NUMBER
                             ,P_MOTIVO IN VARCHAR2
                             ,P_DATA_INCL IN DATE
                             ,P_OPER_INCL IN VARCHAR2
                             ,P_TIPO_REG IN NUMBER
                             ,P_DM_PARECER IN VARCHAR2
                             ,P_DM_LICENCA IN VARCHAR2)  IS
BEGIN

      BEGIN
        INSERT INTO fep_aux_motivos_implocal (
                   AMLC_ID,
                   PRCR_ID,
                   LINHA,
                   TEXTO,
                   DATA_INCLUSAO,
                   OPERADOR_INCLUSAO,
                   DATA_ATUALIZACAO,
                   OPERADOR_ATUALIZACAO,
                   DM_TIPO_REG,
                   DM_LICENCA,
                   DM_PARECER
                    ) VALUES (
                   amlc_seq.nextval,
                   p_prcr_id,
                   p_linha,
                   p_motivo,
                   p_data_incl,
                   p_oper_incl,
                   p_data_incl,
                   p_oper_incl,
                   p_tipo_reg,
                   p_dm_licenca,
                    p_dm_parecer  );

                          commit;
       EXCEPTION
             WHEN OTHERS THEN
                     raise_application_error(-20001, 'Erro: Incl em fep_aux_motivos_implocal - ' ||
                                                     'pr_prcr_insert_AMLC  >> ' ||
                                                      SQLCODE || ' - ' || SQLERRM );
       END;

END;
PROCEDURE PR_PRCR_DECISAO_ADM
 (P_PRCR_ID IN number
 )
 IS


   vUsuario              varchar2(30);
   dDataAtual          date;
   nDocu_id_rev     number(10);
   nTido_id_rev      number(5);
   nTido_id_lic        number(5);
   nSose_id             number(10);
   nLinha                  number(5)  := 0;
   vTexto                  varchar2(2000);
   nTido_id_sose  number(5);
   nTipoSolic           number(1);
   vAltRT                   varchar2(1);
   vMotivoRev         varchar2(500);
   nCont                    number(3);
   nTipoReg             number(1);
   nMotivo                number(1);
   vProcesso          varchar2(20);
   vLicenca             varchar2(15);
   vParecerDA       varchar2(15);
   vDataEmissao   varchar2(10);
   dDataFimVal      date;
   vValidade            varchar2(20);
   vDmParecer      varchar2(1);
   vDmLicenca      varchar2(1);
   vdescricao_tido  fep_tipos_documentos.descricao%type;

   cursor c1 is
      select prcr.docu_id_revogado,
                   docu.tido_id tido_id_rev,
                   prcr.tido_id_licenca,
                   prcr.sose_id,
                   doc1.numero || '/' || doc1.ano parecer_DA,
                   tido.descricao     descricao_tido
        from fep_aux_proc_cond_restr prcr,
                  fep_documentos docu,
                  fep_documentos doc1,
                  fep_tipos_documentos tido
       where prcr.docu_id_revogado = docu.docu_id(+)
            and prcr.docu_id_parecer   = doc1.docu_id(+)
            and prcr.prcr_id = p_prcr_id
            and tido.tido_id=docu.tido_id;

   cursor c2 is
      select sose.tido_id,
             sose.dm_tipo_solic_seamb tipo_solic,
             decode(sose.dm_alteracao_RT,null,'N',sose.dm_alteracao_RT)  alt_RT
        from fep_solic_seamb sose
       where sose.sose_id = nSose_id;

   cursor c3 is
      select count(*)
        from fep_aux_motivos_implocal amlc
       where amlc.prcr_id = p_prcr_id;

   cursor c4 is
      select substr(lpad(proc.numero,6,0)  || '-' ||
             lpad(proc.orig_id,4,0) || '/' ||
             lpad(proc.ano,2,0)     || '-' ||
             (proc.dv) ,1,16) processo,
             docu.numero || '/' || docu.ano  documento,
             substr(to_char(docu.data_emissao,'dd/mm/rrrr'),1,10) data_emissao,
             docu.data_fim_vigencia
        from fep_documentos docu,
             fep_processos  proc
       where docu.docu_id = nDocu_id_rev
         and docu.proc_id = proc.proc_id;
begin

   select user, sysdate into vUsuario, dDataAtual from dual;

   open  c1;
   fetch c1 into nDocu_id_rev, nTido_id_rev, nTido_id_lic, nSose_id, vParecerDA,vdescricao_tido;
   close c1;

   if nDocu_id_rev is not null and nTido_id_rev in ( 120,151)  then

      ----------------------------------------------------------------------------------
      -- DA de Revogação de LO para Fontes Móveis ( Ramos 4710.10 / 4710.20 / 4710.30 )
      --       usada em: pck_net_processos.SP_PRCR_UPD                 Malu 08/10/2013
      ----------------------------------------------------------------------------------
      if nSose_id is not null then
         open  c2;
         fetch c2 into nTido_id_sose, nTipoSolic, vAltRT;
         close c2;

         if nTido_id_sose in (140,340) then
            if nTipoSolic = 4 then
               nMotivo          := 1;
               vMotivoRev := 'por não estar mais transportando produtos perigosos';
            elsif
               nTipoSolic = 3 and vAltRT = 'S' then
               nMotivo := 2;
               vMotivoRev := 'falta de Responsável Técnico';
            else
               nMotivo := 1;
               vMotivoRev := 'não estar mais transportando produtos perigosos';
            end if;

            begin
              UPDATE fep_aux_proc_cond_restr
                 SET motivo_revogacao = vMotivoRev,
                 data_atualizacao     = dDataAtual,
                 operador_atualizacao = vUsuario
               WHERE prcr_id = p_prcr_id;
                   commit;
            end;


            open  c3;
            fetch c3 into nCont;
            close c3;
            if nCont > 0 then
               begin
                  delete from fep_aux_motivos_implocal where prcr_id = p_prcr_id;
                  commit;
               end;
            end if;

            open  c4;
            fetch c4 into vProcesso, vLicenca, vDataEmissao, dDataFimVal;
            close c4;
            if vLicenca is not null then
               if dDataFimVal is null then
                  vValidade := 'por tempo indeterminado,';
               else
                  vValidade :=  'até ' || substr(to_char(dDataFimVal,'dd/mm/rrrr'),1,10);
               end if;
            end if;
            -------------------------------------------------------------------------------------------------
            -- LINHAS DO PARECER DA DECISÃO ADMINISTRATIVA
            -------------------------------------------------------------------------------------------------
            vDmParecer := 'S';
            vDmLicenca := 'N';

            nLinha := nLinha + 10;
            vTexto := 'Conforme o que consta no referido processo administrativo, recomendo a REVOGAÇÃO ' ||
                              'da '||vdescricao_tido||' nº ' ||  vLicenca || ', emitida em ' || vDataEmissao ||
                              ' e válida ' || vValidade || ', por ';
            if nMotivo = 1 then
                vTexto := vTexto ||  'solicitação da Empresa, por ' ||  vMotivoRev || '.';
            else
                vTexto := vTexto ||  vMotivoRev || '.';
            end if;

            nTipoReg := 1;
            pck_processos.pr_prcr_insert_AMLC(p_prcr_id,nLinha,vTexto,dDataatual,vUsuario,nTipoReg, vDmParecer, vDmLicenca);

            -------------------------------------------------------------------------------------------------
            -- LINHAS DA DECISÃO ADMINISTRATIVA
            -------------------------------------------------------------------------------------------------
            vDmParecer := 'N';
            vDmLicenca := 'S';

            nLinha := nLinha + 10;
            vTexto := 'Conforme os autos do processo administrativo nº ' || vProcesso ||
                      ', Parecer Técnico nº ' || vParecerDA || ', ' ||
                      'recomenda-se a REVOGAÇÃO da '||vdescricao_tido||' nº ' ||
                      vLicenca || ', emitida em ' || vDataEmissao ||
                      ' e válida ' || vValidade || ', por ';
                      if nMotivo = 1 then
                          vTexto := vTexto || 'solicitação da Empresa, ' || vMotivoRev || '.';
                      else
                          vTexto := vTexto ||  vMotivoRev || '.';
                      end if;
            nTipoReg := 1;
            pck_processos.pr_prcr_insert_AMLC(p_prcr_id,nLinha,vTexto,dDataatual,vUsuario,nTipoReg, vDmParecer, vDmLicenca);

            nLinha := nLinha + 10;
            vTexto := 'Isto posto, julgo: ';
            nTipoReg := 2;
            pck_processos.pr_prcr_insert_AMLC(p_prcr_id,nLinha,vTexto,dDataatual,vUsuario,nTipoReg, vDmParecer, vDmLicenca);

            nLinha := nLinha + 10;
            vTexto := 'REVOGADA a '||vdescricao_tido||' nº ' || vLicenca ||
                              ', com o cessamento da vigência da mesma a partir desta data.';
            nTipoReg := 2;
            pck_processos.pr_prcr_insert_AMLC(p_prcr_id,nLinha,vTexto,dDataatual,vUsuario,nTipoReg, vDmParecer, vDmLicenca);

         end if;
      end if;
      ----------------------------------------------------------------------------------

   end if;

end;
FUNCTION FC_AI_DIAS_NAO_JULGA
 (P_DOCU_ID IN number
 ,P_DATA_FINAL IN date
 )
 RETURN NUMBER
 IS


nDias               number(8) := 0;
--dData               date;
dData_fim_exigencia date;
dData_ciencia       date;
dData_lavratura     date;
dData_defesa        date;

cursor docu is
       select trunc(docu.data_conhecimento) data_ciencia,
              trunc(docu.data_emissao) data_lavratura,
              trunc(auin.data_defesa) data_defesa
       from   fep_documentos           docu,
              fep_autos_infracoes      auin
       where  docu.docu_id = p_docu_id
       and    docu.docu_id = auin.docu_id(+);
-- docu_id = 579426
cursor ai     is
       select trunc(codo.data_fim_prazo) data_fim_exigencia
       from   fep_documentos           docu,
              fep_motivos_ai           moai,
              fep_condicoes_documentos codo
       where  docu.docu_id = p_docu_id
       and    moai.docu_id = docu.docu_id
       and    codo.docu_id_determinado  = moai.docu_id
       order by codo.data_fim_prazo desc;
--       r_ai   ai% rowtype;
begin
--  (data do dia -[ (data de ciência + data de advertência + 20d) + 10d]
--  se a data de ciência(docu.data_conhecimento) e a data de advertência não estiverem preenchidas,
--  usa zero na fórmula, aí caí em data da lavratura + 30dias
      open  docu;
      fetch docu into dData_ciencia, dData_lavratura, dData_defesa;
      close docu;

      open  ai;
      fetch ai into dData_fim_exigencia;
      close ai;

-- Se data_fim_prazo exigência diferente de null e for <> do prazo da defesa
--    calcula nº dias entre data_execução e maior data_fim prazo exigências(diferente de prazo de defesa) + 10d
--    contar em , 30d(mesmo se for negativo;
      if  dData_fim_exigencia is not null then
          if  dData_fim_exigencia <> dData_defesa then
              nDias := p_data_final - (dData_fim_exigencia + 10);
          end if;
      end if;

      if  dData_fim_exigencia is null then
          if  dData_defesa is not null then
              nDias := p_data_final - (dData_defesa + 10);
          end if;
      end if;

      if  dData_defesa is null then
          nDias := p_data_final - (dData_lavratura + 10);
      end if;

--      if   dData_ciencia   is null or
--           ddata_lavratura is null then
--           nDias := p_data_final -((dData_lavratura + 30) + 10);
--      else
--           nDias := to_char(p_data_final,'rrrrmmdd') - ((to_char(dData_ciencia,'rrrrmmdd') + to_char(dData_fim_exigencia,'rrrrmmdd') + 20) + 10);
--      end  if;
      return(nDias);


end;
FUNCTION FC_PROC_IMA_ANO
 (P_ANO IN NUMBER
 ,P_ORDENACAO IN NUMBER
 ,P_SUCD_ID_LIC IN NUMBER
 ,P_SUCD_ID NUMBER
 )
 RETURN NUMBER
 IS
    /*----------------------------------------------------------------------------------------------------
    | Author.: Tiago Gabriel (DNA)
    | Updated: 17/09/2024
    | Purpose: Fechar cursores antes do final dos processos.
    | Tiket..: GLPI-55403 / FP-1337
    +----------------------------------------------------------------------------------------------------*/

--nAno_entrada      number(4); -- (TG) Não utilizada
nDias_emitidos    number(10) := 0;
--nTotal_emitidos   number(10) := 0; -- (TG) Não utilizada
nDias_pendentes   number(10) := 0;
nTotal_pendentes  number(10) := 0;
--nDias_atendidos   number(10) := 0; -- (TG) Não utilizada
nTotal_atendidos  number(10) := 0;
nIma              number(20) := 0;

cursor proc_emit is
        select    sum(proc.tempo_tram)  dias_emitidos,
      count(*) total_emit
       from       aux_proc_pendentes proc
       where    proc.ano_lic = p_ano
       and         proc.cldo_id_lic < 7
       and      ((proc.sucd_id_lic = p_sucd_id and p_sucd_id_lic  in(10,11,12))  or
                        (proc.cldo_id_lic in(2,3,4,5,6) and p_ordenacao = 6))
       union all
       select    sum(proc.tempo_tram)  dias_emitidos,
       count(*) total_emit
       from       aux_proc_pendentes proc
       where    proc.ano_lic = p_ano
       and         p_ordenacao = 4
       and         proc.sucd_id_lic = 12
       and         proc.dm_renovacao = 'N'  or proc.dm_renovacao is null
       union all
       select    sum(proc.tempo_tram)  dias_emitidos,
       count(*) total_emit
       from       aux_proc_pendentes proc
       where    proc.ano_lic = p_ano
       and         p_ordenacao = 5
       and         proc.sucd_id_lic = 12
       and         proc.dm_renovacao = 'S' ;
       r_proc_emit proc_emit%rowtype;

cursor proc_pend is
          select sum(to_date('3112' || p_ano,'ddmmrrrr') - proc.data_entrada)  dias_pendentes,
                      count(*) total_pend
          from   aux_proc_pend_anomes proc
         where  proc.ano_pen = p_ano
         and       proc.mes_pen = 12
         and       proc.cldo_id_lic < 7
         and      ((proc.sucd_id = p_sucd_id and p_sucd_id  in(10,11,12))  or
                        (proc.cldo_id in(2,3,4,5,6) and p_ordenacao = 6))
         union all
         select sum(to_date('3112' || p_ano,'ddmmrrrr') - proc.data_entrada)  dias_pendentes,
                      count(*) total_pend
          from   aux_proc_pend_anomes proc
         where  proc.ano_pen = p_ano
         and       proc.mes_pen = 12
         and       proc.cldo_id = 3
         and       p_ordenacao = 4    and  proc.dm_renovacao = 'N'
         union all
         select sum(to_date('3112' || p_ano,'ddmmrrrr') - proc.data_entrada)  dias_pendentes,
                      count(*) total_pend
          from   aux_proc_pend_anomes proc
         where  proc.ano_pen = p_ano
         and       proc.mes_pen = 12
         and       proc.cldo_id = 3
         and       p_ordenacao = 5    and  proc.dm_renovacao = 'S';
       r_proc_pend proc_pend%rowtype;

cursor proc_atend is
       select sum(proc.tempo_tram)  dias_atendidos,
                    count(*) total_atend
       from    aux_proc_pendentes proc
       where  proc.ano_entrada =p_ano
       and       proc.ano_lic = p_ano
       and       proc.cldo_id < 7
       and    ((proc.sucd_id_lic = p_sucd_id and p_sucd_id_lic  in(10,11,12))  or
                      (proc.cldo_id_lic in(2,3,4,5,6) and p_ordenacao = 6))
       union all
       select    sum(proc.tempo_tram)  dias_emitidos,
       count(*) total_emit
       from       aux_proc_pendentes proc
       where    proc.ano_lic = p_ano
       and         p_ordenacao = 4
       and         proc.sucd_id_lic = 12
       and         proc.dm_renovacao = 'N'  or proc.dm_renovacao is null
       union all
       select    sum(proc.tempo_tram)  dias_emitidos,
       count(*) total_emit
       from       aux_proc_pendentes proc
       where    proc.ano_lic = p_ano
       and         p_ordenacao = 5
       and         proc.sucd_id_lic = 12
       and         proc.dm_renovacao = 'S' ;
        r_proc_atend proc_atend%rowtype;
begin
 -- IMA - Idade Média de Acervo no ano
 --  = (soma dos dias para conceder ou negar um doclic(data_assinatura) + soma dos dias dos processos pendentes) / (soma de solicitações atendidas no ano e das pendentes)

--   nAno_entrada := p_ano;
--    nDias_emitidos := 0;
/*
   open  proc_emit;
    loop
          fetch proc_emit into r_proc_emit;
          if    proc_emit%notfound then
                close proc_emit;
                exit;
          else
                nDias_emitidos  := nDias_emitidos + r_proc_emit.dias_emitidos;
                nTotal_emitidos := nTotal_emitidos + r_proc_emit.total_emit;
          end     if;
    end loop;

    nDias_pendentes := 0;
    open  proc_pend;
    loop
          fetch proc_pend into r_proc_pend;
          if    proc_pend%notfound then
                close proc_pend;
                exit;
          else
               nDias_pendentes := nDias_pendentes + r_proc_pend.dias_pendentes;
               nTotal_pendentes := nTotal_pendentes + r_proc_pend.total_pend;
          end     if;
    end loop;

    nDias_atendidos  := 0;
    nTotal_atendidos := 0;
    open  proc_atend;
    loop
          fetch proc_atend into r_proc_atend;
          if    proc_atend%notfound then
                close proc_atend;
                exit;
          else
               nDias_atendidos :=  nDias_atendidos  + r_proc_atend.dias_atendidos;
               nTotal_atendidos := nTotal_atendidos + r_proc_atend.total_atend;
          end     if;
    end loop;
*/
   open  proc_emit;
   fetch proc_emit into r_proc_emit;
   nDias_emitidos  := r_proc_emit.dias_emitidos;
   --nTotal_emitidos := r_proc_emit.total_emit; -- (TG) Não utilizada

   close proc_emit; -- (TG) Adicionado

   --nDias_pendentes := 0; -- (TG) Variável inicializada novamente abaixo
   --nTotal_pendentes := 0; -- (TG) Variável inicializada novamente abaixo
   open  proc_pend;
   fetch proc_pend into r_proc_pend;
   nDias_pendentes :=  r_proc_pend.dias_pendentes;
   nTotal_pendentes :=  r_proc_pend.total_pend;

   close proc_pend; -- (TG) Adicionado

    --nDias_atendidos  := 0; -- (TG) Variável inicializada novamente abaixo
    --nTotal_atendidos := 0; -- (TG) Variável inicializada novamente abaixo
    open  proc_atend;
    fetch proc_atend into r_proc_atend;
    close proc_atend;
    --nDias_atendidos :=   r_proc_atend.dias_atendidos; -- (TG) Não utilizada
    nTotal_atendidos :=  r_proc_atend.total_atend;

    nIma := to_number(trunc( ((nDias_emitidos + nDias_pendentes)/(nTotal_atendidos + nTotal_pendentes))));
    return(nIma);
end;
FUNCTION FC_PROC_TEMPO_MEDIO
 (P_ANO IN number
 ,P_TIDO_DESCRICAO IN varchar2
 ,P_TIPO IN number
 ,P_ORDENACAO IN number -- (TG) Não utilizado: estudar retirada...
 ,P_USUARIO IN varchar2
 )
 RETURN NUMBER
 IS
    /*----------------------------------------------------------------------------------------------------
    | Author.: Tiago Gabriel (DNA)
    | Updated: 17/09/2024
    | Purpose: Fechar cursores antes do final dos processos.
    | Tiket..: GLPI-55403 / FP-1337
    +----------------------------------------------------------------------------------------------------*/

--nAno_entrada      number(4);
--nMes_entrada    number(2);
nDias_emitidos    number(10) := 0;
nTotal_emitidos   number(10) := 0;
nDias_pendentes   number(10) := 0;
nTotal_pendentes  number(10) := 0;
nDias_atendidos   number(10) := 0;
nTotal_atendidos  number(10) := 0;
nTempo_medio      number(10) := 0;
--nIma              number(20) := 0;
-- p_tipo = 1 emitidos
-- p_tipo = 2 atendidos
-- p_tipo = 3 pendentes
cursor proc_emit is
             select sum(docu.data_assinat_fisica - proc.data_entrada)  dias_emitidos,
                          count(proc.proc_id) total_emit,
                          proc.tido_descricao
             from   fep_aux_proc_relat_5anos proc,
                         fep_aux_docu_relat_5anos docu
             where  proc.ano_entrada = p_ano
             and       proc.proc_id = docu.proc_id
             and       docu.tido_descricao = p_tido_descricao
--             and       proc.ordenacao = p_ordenacao
             and      docu.cldo_id in(1,2,3,4,5,6)
             and      docu.situacao in('E','G','V')
             and      to_number(to_char( docu.data_assinat_fisica,'rrrr')) = p_ano
             and      docu.usuario = p_usuario
             group  by proc.tido_descricao;
             r_proc_emit proc_emit%rowtype;


cursor proc_atend is
              select sum(docu.data_assinat_fisica - proc.data_entrada)  dias_atendidos,
                           count(proc.proc_id) total_atend,
                           proc.tido_descricao
               from   fep_aux_proc_relat_5anos proc,
                           fep_aux_docu_relat_5anos docu
               where  proc.ano_entrada = p_ano
               and    proc.proc_id = docu.proc_id
--               and    proc.ordenacao = p_ordenacao
               and    docu.tido_descricao = p_tido_descricao
               and    docu.cldo_id in(1,2,3,4,5,6)
               and    docu.situacao in('E','G','V')
               and    docu.usuario = p_usuario
               and    to_number(to_char(docu.data_assinat_fisica,'rrrr')) = to_number(to_char(proc.data_execucao,'rrrr'))
               and    not exists(select 1
                                              from    fep_aux_docu_relat_5anos docu2
                                             where  docu2.proc_id = proc.proc_id
                                              and    docu2.cldo_id in(1,2,3,4,5,6)
                                              and    docu2.situacao in('E','G','V')
                                              and    docu2.tido_id = docu.tido_id
                                              and    docu2.docu_id < docu.docu_id)
                group  by proc.tido_descricao;
                r_proc_atend proc_atend%rowtype;

cursor proc_pend is
               select sum(proc.data_execucao - proc.data_entrada)  dias_pendentes,
              count(proc.proc_id) total_pend,
              proc.tido_descricao
       from   fep_aux_proc_relat_5anos proc
       where  proc.ano_entrada = p_ano
       and    proc.tido_descricao = p_tido_descricao
--       and    proc.ordenacao = p_ordenacao
       and    proc.cldo_id in(1,2,3,4,5,6)
       and    proc.usuario = p_usuario
       and    not exists(select 1
                                       from    fep_aux_docu_relat_5anos docu
                                       where  docu.cldo_id in(1,2,3,4,5,6)
                                       and     proc.proc_id = docu.proc_id
                                       and     docu.situacao in('E','G','V')
                                       and     docu.data_assinat_fisica <= proc.data_execucao)
       group  by proc.tido_descricao;
       r_proc_pend proc_pend%rowtype;
begin
 -- se tipo 1 = emitidos
 -- soma dos dias para conceder ou negar um doclic / soma de solicitações atendidas no ano

    if  p_tipo = 1 then  -- processos emitidos
        open  proc_emit;
        loop
              fetch proc_emit into r_proc_emit;
              if    proc_emit%notfound then
                    close proc_emit;
                    exit;
              else
                    nDias_emitidos  := nDias_emitidos + r_proc_emit.dias_emitidos;
                    nTotal_emitidos := nTotal_emitidos + r_proc_emit.total_emit;
              end   if;
        end loop;
        if    nTotal_emitidos = 0 then
                nTotal_emitidos := 1;
        end if;
        nTempo_medio := trunc(nDias_emitidos / nTotal_emitidos);
        return(nTempo_medio);
    end if;

 -- se tipo 2 = emitidos - processos atendidos
    if  p_tipo = 2               then
        open  proc_atend;
        loop
          fetch proc_atend into r_proc_atend;
          if    proc_atend%notfound then
                close proc_atend;
                exit;
          else
               nDias_atendidos :=  nDias_atendidos  + r_proc_atend.dias_atendidos;
               nTotal_atendidos := nTotal_atendidos + r_proc_atend.total_atend;
          end     if;
        end loop;
        if     nTotal_atendidos = 0 then
                 nTotal_atendidos := 1;
        end if;
        nTempo_medio := trunc(nDias_atendidos / nTotal_atendidos);
        return(nTempo_medio);
     end if;

    if  p_tipo = 3            then -- processos pendentes
        open  proc_pend;
        loop
          fetch proc_pend into r_proc_pend;
          if    proc_pend%notfound then
                close proc_pend;
                exit;
          else
               nDias_pendentes := nDias_pendentes + r_proc_pend.dias_pendentes;
               nTotal_pendentes := nTotal_pendentes + r_proc_pend.total_pend;
          end     if;
        if     nTotal_pendentes = 0 then
                nTotal_pendentes := 1;
        end if;
          nTempo_medio := trunc(nDias_pendentes / nTotal_pendentes);

          close proc_pend; -- (TG) Adicionado

          return(nTempo_medio);
       end loop;
    end if;


end;
FUNCTION FC_PROC_RENOV_TIDO
 (P_PROC_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
begin
declare
nTotal  number(10) := 0;

cursor  proc  is
  select  count(*)
  from  fep_processos                proc,
                                      fep_responsabilidades resp
  where   proc.proc_id = p_proc_id
  and     proc.resp_id = resp.resp_id
                   and            exists(select 1
                                                    from    fep_processos               proc2,
                                                                 fep_responsabilidades resp2,
                                                                 fep_documentos             docu2
                                                     where resp2.atan_id = resp.atan_id
                                     and     resp2.resp_id =  proc2.resp_id
                    and     proc2.proc_id = docu2.proc_id
                                                     and      docu2.tido_id   =  proc.tido_id
                                                     and      docu2.situacao <> 'B'
                                                     and      trunc(proc2.data_entrada) < trunc(proc.data_entrada));

begin
  open  proc;
  fetch proc  into  nTotal;
  close proc;
  if  nTotal  > 0 then
    return('S');
  else
    return('N');
  end if;
end;
end;
FUNCTION FC_PROC_SUPERADO
 (P_PROC_ID IN number
 ,P_DATA_INICIO IN date
 )
 RETURN DATE
 IS
dData     date;
--
-- tabela de auditoria de 2010 a 2013
cursor audit is
       select trunc(tpl.data)
       from   tpl_logs_ate_2013 tpl
       where  tpl.tabela = 'FEP_PROCESSOS'
       and    tpl.chave = p_proc_id
       and    tpl.campo = 'SITUACAO'
       and    substr(tpl.conteudo_atual,1,1) = 'S'
       and    trunc(tpl.data) > p_data_inicio;

-- tabela de auditoria de 2003 a 2010
cursor audit1 is
       select trunc(tpl.data)
       from   tpl_logs_ate_2010 tpl
       where  tpl.tabela = 'FEP_PROCESSOS'
       and    tpl.chave = p_proc_id
       and    tpl.campo = 'SITUACAO'
       and    substr(tpl.conteudo_atual,1,1) = 'S'
       and    trunc(tpl.data) > p_data_inicio;

cursor audit2 is
       select trunc(tpl.data)
       from   tpl_logs tpl
       where  tpl.tabela = 'FEP_PROCESSOS'
       and    tpl.chave = p_proc_id
       and    tpl.campo = 'SITUACAO'
       and    substr(tpl.conteudo_atual,1,1) = 'S'
       and    trunc(tpl.data) > p_data_inicio;
begin
       open  audit;
       fetch audit into dData;
       close audit;

       if    dData is null    then
             open  audit1;
             fetch audit1 into dData;
             close audit1;
       end   if;

       if    dData is null    then
             open  audit2;
             fetch audit2 into dData;
             close audit2;
       end   if;
       return(dData);
end;
FUNCTION FC_TEMPO_MEDIO_ATEND
 (P_ANO_ENTRADA IN NUMBER
 ,P_ORDENACAO IN NUMBER
 )
 RETURN NUMBER
 IS
nTotal number(10);

-- Processos atendidos
-- cálculo do tempo médio para os processos atendidos no ano = (soma dos dias
--  de tramitação dos processos atendidos no ano) / (soma dos processos  atendidos no ano)
-- "processo atendido no ano = (processo com ano_entrada ? ano_informado) e (situação_processo ? pendente em 31/12/ano_informado 23h59);
-- "dias de tramitação de um processos atendido no ano = (data_processo em que situação_processo alterou para ? pendente) - (data_entrada_processo)

cursor  proc is
    select  trunc(to_number(trunc(sum(proc.tempo_tram) / count(*))))  total_atendidos
  from     aux_proc_pendentes proc
  where  proc.ano_entrada = p_ano_entrada
    and       proc.cldo_id_lic in(1,2,3,4,5,6)
    and       proc.ordenacao = p_ordenacao
    and       proc.ano_lic = p_ano_entrada
  union all
  select  trunc(to_number(trunc(sum(proc.tempo_tram) / count(*))))  total_atendidos
    from     aux_proc_pendentes proc
    where  proc.ano_entrada = p_ano_entrada
    and       proc.cldo_id = 1
    and       proc.ano_lic = p_ano_entrada
    and       decode(proc.dm_renovacao,'N',4,5) = p_ordenacao;
begin
        open  proc;
         fetch proc into nTotal;
         close proc;
         return(nTotal);
end;
FUNCTION FC_TEMPO_MEDIO_PEND
 (P_ANO_ENTRADA IN NUMBER
 ,P_ORDENACAO IN NUMBER
 ,P_DM_RENOVACAO IN VARCHAR2
 )
 RETURN NUMBER
 IS
nTotal number(10);

-- Processos pendentes
-- cálculo do tempo médio para os processos pendentes no ano = (soma dos dias de tramitação dos processos pendentes no ano) / (soma dos processos pendentes no ano)
-- "processo pendente no ano = (processo com ano_entrada ? ano_informado) e (situação_processo = pendente em 31/12/ano_informado 23h59);
-- "dias de tramitação de um processos atendido no ano = (data_processo em que situação_processo alterou para = pendente) - (data_entrada_processo)

cursor proc is
             select trunc(to_number(trunc(sum( to_date('3112' || p_ano_entrada,'ddmmrrrr') - trunc(proc.data_entrada) ) / count(proc.proc_id))))   total_pendentes
             from   aux_proc_pend_anomes proc
             where  proc.ano_pen = p_ano_entrada
             and    proc.mes_pen = 12
             and    proc.cldo_id < 7
             and    proc.ordenacao = p_ordenacao
/*
             union all
             select    trunc(to_number(trunc(sum( to_date('3112' || p_ano_entrada,'ddmmrrrr') - trunc(proc.data_entrada) ) / count(proc.proc_id))))   total_pendentes
             from      aux_proc_pend_anomes proc
             where   proc.ano_pen = p_ano_entrada
             and        proc.mes_pen = 12
             and        proc.sucd_id = 12
             and        p_ordenacao = 4
             and        proc.dm_renovacao = 'N'
            union all
             select    trunc(to_number(trunc(sum( to_date('3112' || p_ano_entrada,'ddmmrrrr') - trunc(proc.data_entrada) ) / count(proc.proc_id))))   total_pendentes
             from      aux_proc_pend_anomes proc
             where   proc.ano_pen = p_ano_entrada
             and        proc.mes_pen = 12
             and        proc.sucd_id = 12
             and        p_ordenacao = 5
             and        proc.dm_renovacao = 'S'
*/
              union all
             select    trunc(to_number(trunc(sum( to_date('3112' || p_ano_entrada,'ddmmrrrr') - trunc(proc.data_entrada) ) / count(proc.proc_id))))   total_pendentes
             from      aux_proc_pend_anomes proc
             where   proc.ano_pen = p_ano_entrada
             and        proc.mes_pen = 12
             and        proc.sucd_id = 12
             and        p_ordenacao in(4,5)
             and        proc.dm_renovacao is not null
             and        proc.dm_renovacao = p_dm_renovacao ;
begin
        open  proc;
         fetch proc into nTotal;
         close proc;
         return(nTotal);
end;
PROCEDURE PR_GERA_PROC_PEND
 (P_ANO_REF IN number
 ,P_NRO_ANOS IN number
 ,P_RELATORIO IN VARCHAR2
 ,P_USUARIO IN VARCHAR2
 )
 IS
dDataAtual       date;
 nAnoAtual        number(4);
 nMesAtual        number(2);

 nAnoRef          number(4)   := p_ano_ref;
 nAno_arqsup      number(4);
 nMes_arqsup      number(2);
 nTempoTram       number(5);
 nCont            number(5)   := 0;
 nAno_lic         number(4);
 nMes_lic         number(2);
dData_assinat_fis   date;
 nTido_id_lic     number(5);
 nCldo_id_lic     number(3);
 nSucd_id_lic     number(10);
 nGravar          number(1);
 nQtPen_2009      number(6);
 nQtPen_2010      number(6);
 nQtPen_2011      number(6);
 nQtPen_2012      number(6);
 nQtPen_2013      number(6);
 nQtPen_2014      number(6);
 nQtPen_2015      number(6);
 nQtPen_2016      number(6);
 vDmRenovacao     varchar2(1);
 vTido_Descricao  varchar2(50);
 nOrdenacao       number(2);
 nProc_id         number(10);
vUsuario            varchar2(30);

 nAnoProc         number(4);
 nMesProc         number(2);
 nCont_ano        number(1);
 nCont_mes        number(1);
 nMes             number(2);
 nAno             number(4);
 nGravar_mes      number(1);


cursor c1 is
   select
           proc.proc_id,
           to_number(to_char(proc.data_entrada,'rrrr')) ano_entr,
           to_number(to_char(proc.data_entrada,'mm'))   mes_entr,
           proc.situacao,
           proc.tido_id,
           sucd.cldo_id,
           tido.sucd_id,
           proc.nro_docs_lic,
           to_number(to_char(proc.data_arquivamento,'rrrr')) ano_arq,
           to_number(to_char(proc.data_arquivamento,'mm'))   mes_arq,
           to_number(to_char(proc.data_atualizacao,'rrrr'))  ano_sup,
           to_number(to_char(proc.data_atualizacao,'mm'))    mes_sup,
            trunc(proc.data_entrada) data_entrada,
             proc.seto_id,
             atan.raat_id
  from  fep_processos                               proc,
             fep_tipos_documentos                 tido,
             fep_sub_classes_documentos sucd,
             fep_responsabilidades                 resp,
             fep_atividades_antropicas          atan,
             aux_cad_relatorios                  care,
             aux_cad_relatorios                  care2
   where proc.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and to_number(to_char(proc.data_entrada,'rrrr')) < nAnoRef
         and nvl(to_number(to_char(proc.data_arquivamento,'rrrr')),nAnoRef) > (nAnoRef - p_nro_anos)
         and ((sucd.cldo_id = 1 and tido.sucd_id in (10,11,12))  or (sucd.cldo_id in (2,3,4,5,6)))
         and proc.resp_id = resp.resp_id
         and resp.tipa_id not in(3,9,13)
         and resp.atan_id = atan.atan_id
         and care.codigo = proc.seto_id
         and p_relatorio = 'PROR2140'
         and care.tipo_registro = 1
         and care.usuario = p_usuario
         and care.nome_relatorio = p_relatorio
         and care.selecionado = 'S'
         and care2.codigo2 = atan.raat_id
         and care2.tipo_registro = 4
         and care2.usuario = p_usuario
         and care2.nome_relatorio = p_relatorio
         and care2.selecionado = 'S'
    union all -- pror2130(todos)
   select
             proc.proc_id,
             to_number(to_char(proc.data_entrada,'rrrr')) ano_entr,
             to_number(to_char(proc.data_entrada,'mm'))   mes_entr,
             proc.situacao,
             proc.tido_id,
             sucd.cldo_id,
             tido.sucd_id,
             proc.nro_docs_lic,
             to_number(to_char(proc.data_arquivamento,'rrrr')) ano_arq,
             to_number(to_char(proc.data_arquivamento,'mm'))   mes_arq,
             to_number(to_char(proc.data_atualizacao,'rrrr'))  ano_sup,
             to_number(to_char(proc.data_atualizacao,'mm'))    mes_sup,
            trunc(proc.data_entrada) data_entrada,
             proc.seto_id,
             atan.raat_id
  from  fep_processos                               proc,
             fep_tipos_documentos                 tido,
             fep_sub_classes_documentos sucd,
             fep_responsabilidades                 resp,
             fep_atividades_antropicas          atan
   where proc.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and to_number(to_char(proc.data_entrada,'rrrr')) < nAnoRef
         and nvl(to_number(to_char(proc.data_arquivamento,'rrrr')),nAnoRef) > (nAnoRef - p_nro_anos)
         and ((sucd.cldo_id = 1 and tido.sucd_id in (10,11,12))  or (sucd.cldo_id in (2,3,4,5,6)))
         and proc.resp_id = resp.resp_id
         and resp.tipa_id not in(3,9,13)
         and resp.atan_id = atan.atan_id
         and p_relatorio = 'PROR2130'
    union all
    select distinct
           proc.proc_id,
           to_number(to_char(proc.data_entrada,'rrrr')) ano_entr,
           to_number(to_char(proc.data_entrada,'mm'))   mes_entr,
           proc.situacao,
           proc.tido_id,
           sucd.cldo_id,
           tido.sucd_id,
           proc.nro_docs_lic,
           to_number(to_char(proc.data_arquivamento,'rrrr')) ano_arq,
           to_number(to_char(proc.data_arquivamento,'mm'))   mes_arq,
           to_number(to_char(proc.data_atualizacao,'rrrr'))  ano_sup,
           to_number(to_char(proc.data_atualizacao,'mm'))    mes_sup,
            trunc(proc.data_entrada) data_entrada,
             proc.seto_id,
             atan.raat_id
  from  fep_processos                                proc,
             fep_tipos_documentos                 tido,
             fep_sub_classes_documentos sucd,
             fep_empreend_processos          epro,
             fep_responsabilidades                 resp,
             fep_atividades_antropicas          atan,
             aux_cad_relatorios                  care,
             aux_cad_relatorios                  care2
     where proc.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and to_number(to_char(proc.data_entrada,'rrrr')) < nAnoRef
         and nvl(to_number(to_char(proc.data_arquivamento,'rrrr')),nAnoRef) > (nAnoRef - p_nro_anos)
         and ((sucd.cldo_id = 1 and tido.sucd_id in (10,11,12))  or (sucd.cldo_id in (2,3,4,5,6)))
         and proc.resp_id is null
         and proc.proc_id = epro.proc_id
         and epro.resp_id = resp.resp_id
         and resp.tipa_id not in(3,9,13)
         and resp.atan_id = atan.atan_id
         and p_relatorio = 'PROR2140'
         and care.codigo = proc.seto_id
         and care.tipo_registro = 1
         and care.usuario = p_usuario
         and care.nome_relatorio = p_relatorio
         and care.selecionado = 'S'
         and care2.codigo2 = atan.raat_id
         and care2.tipo_registro = 4
         and care2.usuario = p_usuario
         and care2.nome_relatorio = p_relatorio
         and care2.selecionado = 'S'
    union all -- PROR2130 (TODOS)
    select distinct
           proc.proc_id,
           to_number(to_char(proc.data_entrada,'rrrr')) ano_entr,
           to_number(to_char(proc.data_entrada,'mm'))   mes_entr,
           proc.situacao,
           proc.tido_id,
           sucd.cldo_id,
           tido.sucd_id,
           proc.nro_docs_lic,
           to_number(to_char(proc.data_arquivamento,'rrrr')) ano_arq,
           to_number(to_char(proc.data_arquivamento,'mm'))   mes_arq,
           to_number(to_char(proc.data_atualizacao,'rrrr'))  ano_sup,
           to_number(to_char(proc.data_atualizacao,'mm'))    mes_sup,
            trunc(proc.data_entrada) data_entrada,
             proc.seto_id,
             atan.raat_id
  from  fep_processos                                proc,
             fep_tipos_documentos                 tido,
             fep_sub_classes_documentos sucd,
             fep_empreend_processos          epro,
             fep_responsabilidades                 resp,
             fep_atividades_antropicas          atan
     where proc.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and to_number(to_char(proc.data_entrada,'rrrr')) < nAnoRef
         and nvl(to_number(to_char(proc.data_arquivamento,'rrrr')),nAnoRef) > (nAnoRef - p_nro_anos)
         and ((sucd.cldo_id = 1 and tido.sucd_id in (10,11,12))  or (sucd.cldo_id in (2,3,4,5,6)))
         and proc.resp_id is null
         and proc.proc_id = epro.proc_id
         and epro.resp_id = resp.resp_id
         and resp.tipa_id not in(3,9,13)
         and resp.atan_id = atan.atan_id
         and p_relatorio = 'PROR2130';
     r1    c1%rowtype;

 cursor c2 is
    select
                to_number(to_char(docu.data_emissao,'rrrr'))           ano_emis,
                to_number(to_char(docu.data_emissao,'mm'))             mes_emis,
               to_number(to_char(docu.data_assinatura_fisica,'rrrr')) ano_fis,
                to_number(to_char(docu.data_assinatura_fisica,'mm'))   mes_fis,
               decode(docu.tempo_tramlo_ren,null,nvl(docu.tempo_tramitacao,1),docu.tempo_tramlo_ren) tempo_tram,
               docu.tido_id,
               sucd.cldo_id,
               tido.sucd_id,
              trunc(docu.data_emissao) data_emissao,
              trunc(docu.data_assinatura_fisica) data_assinat_fis
    from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
     where docu.proc_id = nProc_id
       and docu.tido_id = tido.tido_id
       and tido.sucd_id = sucd.sucd_id
       and ((sucd.cldo_id = 1 and tido.sucd_id in (10,11,12))  or (sucd.cldo_id in (2,3,4,5,6)))
       and docu.situacao not in('B','C','T')
      order by docu.data_emissao,
               docu.docu_id;
     r2    c2%rowtype;

/* (TG) Não utilizado
cursor docu_ai is
          select  docu.proc_id,
                        docu.docu_id,
                        docu.tido_id,
                        to_number(to_char(docu.data_emissao, 'rrrr')) ano_emissao,
                        trunc(docu.data_emissao) data_emissao,
                        trunc(docu.data_assinatura_fisica)  data_assinat_fisica,
                        docu.situacao situacao,
                        sucd.cldo_id,
                        proc.data_entrada,
                        to_number(to_char(proc.data_entrada,'rrrr')) ano_entrada,
                        proc.resp_id
          from    fep_documentos                           docu,
                        fep_tipos_documentos                tido,
                        fep_sub_classes_documentos sucd,
                                     fep_processos                               proc
          where   docu.proc_id = proc.proc_id
                  and            docu.proc_id = nProc_id
                   and           docu.tido_id in(700,1251,800,801)
          and     docu.tido_id = tido.tido_id
          and     tido.sucd_id = sucd.sucd_id
          and     sucd.cldo_id in(7,8,12);*/
--          r_docu_ai docu_ai%rowtype;
begin
     select user into vUsuario from dual;

     begin
             delete  from aux_proc_pendentes
             where  relatorio = p_relatorio
             and       usuario =  p_usuario;
             commit;
     end;

     begin
             delete from aux_proc_pend_anomes
             where  relatorio = p_relatorio
             and       usuario =  p_usuario;
             commit;
     end;

     select sysdate into dDataAtual from dual;
     nAnoAtual := to_number(to_char(dDataAtual,'rrrr'));
     nMesAtual := to_number(to_char(dDataAtual,'mm'));

     open c1;
     loop
        fetch c1 into r1;
        if c1%notfound then
            close c1;
            commit;
            exit;
        else

           nGravar       := 1;
           nProc_id      := r1.proc_id;

           nAno_arqsup   := null;
           nMes_arqsup   := null;
           nAno_lic      := null;
           nMes_lic      := null;
           nTempoTram    := null;
           nTido_id_lic  := null;
           nCldo_id_lic  := null;
           nSucd_id_lic  := null;
           nQtPen_2009   := 0;
           nQtPen_2010   := 0;
           nQtPen_2011   := 0;
           nQtPen_2012   := 0;
           nQtPen_2013   := 0;
           nQtPen_2014   := 0;
           nQtPen_2015   := 0;
           nQtPen_2016   := 0;
           vDmRenovacao  := null;

           if      r1.sucd_id = 10 then
                    vTido_Descricao := 'Licença Prévia';
                   nOrdenacao := 1;
           elsif  r1.sucd_id = 11 then
                       vTido_Descricao := 'Licença de Instalação';
                      nOrdenacao := 2;
           elsif   r1.sucd_id = 12 then
                       vTido_Descricao := 'Licença de Operação';
                       nOrdenacao := 3;
           elsif   r1.cldo_id in(2,3,4,5,6) then
                       vTido_Descricao := 'Demais DocLic';
                       nOrdenacao := 6;
            elsif   r1.tido_id = 700 then
                       vTido_Descricao := 'Autos de Infração';
                       nOrdenacao := 7;
           end     if;

           if r1.situacao = 'A' then
              nAno_arqsup := r1.ano_arq;
              nMes_arqsup := r1.mes_arq;
           elsif r1.situacao = 'S' then
              nAno_arqsup := r1.ano_sup;
              nMes_arqsup := r1.mes_sup;
           end if;

           if r1.nro_docs_lic > 0 then
              open  c2;
              fetch c2 into r2;
              if c2%found then
                 if r2.ano_fis is not null then
                    nAno_lic := r2.ano_fis;
                    nMes_lic := r2.mes_fis;
                    dData_assinat_fis := r2.data_assinat_fis;
                 else
                    nAno_lic := r2.ano_emis;
                    nMes_lic := r2.mes_emis;
                     dData_assinat_fis := r2.data_emissao;
                 end if;
                 nTempoTram    := r2.tempo_tram;
                 nTido_id_lic  := r2.tido_id;
                 nCldo_id_lic  := r2.cldo_id;
                 nSucd_id_lic  := r2.sucd_id;
              end if;
              close c2;
           end if;

           -- verifica o ano de emissão do documento Lic
           if nAno_lic is not null then
              if nAno_lic <  (nAnoRef - p_nro_anos) then
                 nGravar := 0;
              end if;
           end if;

           -- verifica os arquivados ou superados
           if nGravar = 1 then
              if nAno_arqsup <  (nAnoRef - p_nro_anos) then
                 nGravar := 0;
              end if;
           end if;

           if nGravar = 1 then
              if r1.tido_id in (120,125) then
                 vDmRenovacao := pck_processos.fc_proc_renov_tido(r1.proc_id);
              end if;

              -------------------------------------------------------------------------------------
              -- Pendencia em 31/12 do ano
              -------------------------------------------------------------------------------------

              if r1.ANO_ENTR = 2009 then
                 nQtPen_2009   := 1;
                 nQtPen_2010   := 1;
                 nQtPen_2011   := 1;
                 nQtPen_2012   := 1;
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2010 then
                 nQtPen_2010   := 1;
                 nQtPen_2011   := 1;
                 nQtPen_2012   := 1;
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2011 then
                 nQtPen_2011   := 1;
                 nQtPen_2012   := 1;
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2012 then
                 nQtPen_2012   := 1;
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2013 then
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2014 then
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;


              elsif r1.ANO_ENTR = 2015 then
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;


              elsif r1.ANO_ENTR = 2016 then
                 nQtPen_2016   := 1;
              end if;

              -------------------------------------------------------------------------------------
              -- Verifica o ano de atendimento
              -------------------------------------------------------------------------------------

              if nAno_lic is not null then

                 if nAno_lic < 2010 then
                    nQtPen_2009   := 0;
                    nQtPen_2010   := 0;
                    nQtPen_2011   := 0;
                    nQtPen_2012   := 0;
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2011 then
                    nQtPen_2010   := 0;
                    nQtPen_2011   := 0;
                    nQtPen_2012   := 0;
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2012 then
                    nQtPen_2011   := 0;
                    nQtPen_2012   := 0;
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2013 then
                    nQtPen_2012   := 0;
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2014 then
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2015 then
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2016 then
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2017 then
                    nQtPen_2016   := 0;
                  end if;


              else

                  -------------------------------------------------------------------------------------
                  -- Verifica o ano de arquivamento ou superado
                  -------------------------------------------------------------------------------------
                  if nAno_arqsup is not null then

                     if nAno_arqsup < 2010 then
                        nQtPen_2009   := 0;
                        nQtPen_2010   := 0;
                        nQtPen_2011   := 0;
                        nQtPen_2012   := 0;
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2011 then
                        nQtPen_2010   := 0;
                        nQtPen_2011   := 0;
                        nQtPen_2012   := 0;
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                      elsif nAno_arqsup < 2012 then
                        nQtPen_2011   := 0;
                        nQtPen_2012   := 0;
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                      elsif nAno_arqsup < 2013 then
                        nQtPen_2012   := 0;
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2014 then
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2015 then
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2016 then
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2017 then
                        nQtPen_2016   := 0;
                     end if;

                  end if;

              end if;


              begin
               insert into aux_proc_pendentes (
       PROC_ID,
       ANO_ENTRADA,
       MES_ENTRADA,
                                       DM_RENOVACAO,
       TIDO_ID,
       CLDO_ID,
                      SUCD_ID,
       ANO_LIC,
       MES_LIC,
       SIT_PROC,
       ANO_ARQ_SUP,
       MES_ARQ_SUP,
       TEMPO_TRAM,
                                                        NRO_DOCS_LIC,
                            TIDO_ID_LIC,
                            CLDO_ID_LIC,
                            SUCD_ID_LIC,
       QT_PEN_2009,
       QT_PEN_2010,
       QT_PEN_2011,
       QT_PEN_2012,
       QT_PEN_2013,
       QT_PEN_2014,
       QT_PEN_2015,
       QT_PEN_2016,
       TIDO_DESCRICAO,
                             ORDENACAO,
                                                         DATA_EMISSAO,
       SETO_ID,
                                                         RAAT_ID,
                                                         RELATORIO,
                                                         USUARIO,
                                                         DATA_ASSINAT_FIS,
       DATA_ENTRADA
                                                    )    values   (
                             r1.proc_id,
       r1.ano_entr,
       r1.mes_entr,
                             vDmRenovacao,
       r1.tido_id,
       r1.cldo_id,
                             r1.sucd_id,
       nAno_lic,
       nMes_lic,
       r1.situacao,
       nAno_arqsup,
                           nMes_arqsup,
       nTempoTram,
                            r1.nro_docs_lic,
                            nTido_Id_lic,
                            nCldo_id_lic,
                      nSucd_id_lic,
                      nQtPen_2009,
                      nQtPen_2010,
                      nQtPen_2011,
                      nQtPen_2012,
                      nQtPen_2013,
                      nQtPen_2014,
                      nQtPen_2015,
                      nQtPen_2016,
                            vTido_Descricao,
                            nOrdenacao,
      r2.data_emissao,
                                                         r1.seto_id,
                                                        r1.raat_id,
                                        p_relatorio,
                                                        p_usuario,
                                                       dData_assinat_fis,
                                                      r1.data_entrada);

             end;

            ----------------------------------------------------------------------------
            -- inclui os documentos de Autos de Infração
           ----------------------------------------------------------------------------

             -----------------------------------------------------------------------------
             -- verifica o ano e mes a incluir
             -----------------------------------------------------------------------------
--       if  r1.tido_id <>  700  then
             nAnoProc     :=  r1.ano_entr;
             nMesProc     :=  r1.mes_entr;
             nGravar_mes  :=  0;

             nMes         :=  0;
             nAno         :=  (nAnoRef - p_nro_anos) - 1;

             nCont_ano    :=  1;

             ------------------------------------------
             -- inicio loop ano
             ------------------------------------------
             while nCont_ano = 1 loop

                  nAno := nAno + 1;
                  nMes := 0;

                  nCont_mes  :=  1;

                  if nAnoProc > nAno then
                      nCont_mes := 0;
                   end if;

                   if nCont_mes = 1 then
                      if nAno_Lic is not null then
                         if nAno_Lic < nAno then
                            nCont_mes := 0;
                         end if;
                      end if;
                   end if;

                   if nCont_mes = 1 then
                      if nAno_arqsup is not null then
                         if nAno_arqsup < nAno then
                            nCont_mes := 0;
                         end if;
                      end if;
                   end if;

                   ------------------------------------------
                   -- inicio loop mes
                   ------------------------------------------
                   while nCont_mes = 1 loop

                         nMes         := nMes + 1;
                         nGravar_mes  := 1;

                         if nAnoProc = nAno then
                            if nMesProc > nMes then
                               nGravar_mes := 0;
                            end if;
                         end if;

                         if nGravar_mes = 1 then
                            if nAno_Lic = nAno then
                               if nMes_lic <= nMes then
                                  nGravar_mes := 0;
                               end if;
                            end if;
                         end if;

                         if nGravar_mes = 1 then
                            if nAno_arqsup = nAno then
                               if nMes_arqsup <= nMes then
                                  nGravar_mes := 0;
                               end if;
                            end if;
                         end if;


                         if nGravar_mes = 1 then

                            begin
                               insert into aux_proc_pend_anomes (
                          PROC_ID,
                      ANO_ENTRADA,
                    MES_ENTRADA,
                                                DM_RENOVACAO,
                    TIDO_ID,
                    CLDO_ID,
                                               SUCD_ID,
                    ANO_LIC,
                    MES_LIC,
                    SIT_PROC,
                    ANO_ARQ_SUP,
                    MES_ARQ_SUP,
                    TEMPO_TRAM,
                                                                      NRO_DOCS_LIC,
                                                                     TIDO_ID_LIC,
                                                                     CLDO_ID_LIC,
                                                                     SUCD_ID_LIC,
                                           TIDO_DESCRICAO,
                                                                    ORDENACAO,
                                                                    ANO_PEN,
                                                                    MES_PEN,
                                                                    QT_PEN,
                  DATA_ENTRADA,
                                                                    SETO_ID,
                                                                    RAAT_ID,
                                                                    RELATORIO,
                                                                    USUARIO
                                                   ) values (
                                                                      r1.proc_id,
                    r1.ano_entr,
                    r1.mes_entr,
                                                                     vDmRenovacao,
                    r1.tido_id,
                    r1.cldo_id,
                                                                      r1.sucd_id,
                    nAno_lic,
                    nMes_lic,
                    r1.situacao,
                    nAno_arqsup,
                                              nMes_arqsup,
                     nTempoTram,
                                                                       r1.nro_docs_lic,
                                                                       nTido_Id_lic,
                                                            nCldo_id_lic,
                                                                nSucd_id_lic,
                                                                       vTido_Descricao,
                                                                       nOrdenacao,
                                                                       nAno,
                                                                       nMes,
                                                                      1,
                                                                      r1.DATA_ENTRADA,
                                                                      r1.seto_id,
                                                                      r1.raat_id,
                                                                      p_relatorio,
                                                                      p_usuario );
                            end;
                         end if;

                         ------------------------
                         if nMes = 12 then
                            nCont_mes := 0;
                         else
                            if nAno = nAnoAtual then
                               if nMes = nMesAtual then
                                  nCont_mes := 0;
                               end if;
                            end if;
                         end if;
                         ------------------------

                   end loop; -- fim loop dos meses

                   -----------------------
                   if nAnoRef = nAno then
                      nCont_ano := 0;
                   else
                      if nAno = nAnoAtual then
                         nCont_ano := 0;
                      end if;
                   end if;
                   -----------------------

             end loop;  -- fim loop dos anos

 --          end if; -- tipo de documento
             -----------------------------------------------------------------------------
             nCont := nCont + 1;
             if nCont > 5000 then
                commit;
                nCont := 0;
             end if;
             -----------------------------------------------------------------------------

           end if;
        end if;
     end loop;
end;
PROCEDURE PR_GERA_PROC_PEND_AI
 (P_ANO_REF NUMBER
 ,P_NRO_ANOS NUMBER
 ,P_RELATORIO IN VARCHAR2 -- (TG) Não utilizado: estudar retirada...
 ,P_USUARIO IN VARCHAR2
 )
 IS
dDataAtual       date;
 --nAnoAtual        number(4); -- (TG) Não utilizada
 --nMesAtual        number(2); -- (TG) Não utilizada

 nAnoRef          number(4)   := p_ano_ref;
 nAno_arqsup      number(4);
 nMes_arqsup      number(2);
 nTempoTram       number(5);
 nCont            number(5)   := 0;
 nAno_lic         number(4);
 nMes_lic         number(2);
 nTido_id_lic     number(5);
 nCldo_id_lic     number(3);
 nSucd_id_lic     number(10);
 nGravar          number(1);
 nQtPen_2009      number(6);
 nQtPen_2010      number(6);
 nQtPen_2011      number(6);
 nQtPen_2012      number(6);
 nQtPen_2013      number(6);
 nQtPen_2014      number(6);
 nQtPen_2015      number(6);
 nQtPen_2016      number(6);
 vDmRenovacao     varchar2(1);
 vTido_Descricao  varchar2(50);
 nOrdenacao       number(2);
 nProc_id         number(10);

-- nAnoProc         number(4);
-- nMesProc         number(2);
-- nCont_ano        number(1);
-- nCont_mes        number(1);
-- nMes             number(2);
-- nAno             number(4);
-- nGravar_mes      number(1);


cursor c1 is
   select
           proc.proc_id,
           to_number(to_char(proc.data_entrada,'rrrr')) ano_entr,
           to_number(to_char(proc.data_entrada,'mm'))   mes_entr,
           proc.situacao,
           proc.tido_id,
           sucd.cldo_id,
           tido.sucd_id,
           proc.nro_docs_lic,
           to_number(to_char(proc.data_arquivamento,'rrrr')) ano_arq,
           to_number(to_char(proc.data_arquivamento,'mm'))   mes_arq,
           to_number(to_char(proc.data_atualizacao,'rrrr'))  ano_sup,
           to_number(to_char(proc.data_atualizacao,'mm'))    mes_sup,
            trunc(proc.data_entrada) data_entrada
  from  fep_processos              proc,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
     where proc.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and to_number(to_char(proc.data_entrada,'rrrr')) < nAnoRef
         and nvl(to_number(to_char(proc.data_arquivamento,'rrrr')),nAnoRef) > (nAnoRef - p_nro_anos)
         and proc.tido_id = 700;
     r1    c1%rowtype;

 cursor c2 is
    select
                to_number(to_char(docu.data_emissao,'rrrr'))           ano_emis,
                to_number(to_char(docu.data_emissao,'mm'))             mes_emis,
               to_number(to_char(docu.data_assinatura_fisica,'rrrr')) ano_fis,
                to_number(to_char(docu.data_assinatura_fisica,'mm'))   mes_fis,
               decode(docu.tempo_tramlo_ren,null,nvl(docu.tempo_tramitacao,1),docu.tempo_tramlo_ren) tempo_tram,
               docu.tido_id,
               sucd.cldo_id,
               tido.sucd_id,
              trunc(docu.data_emissao) data_emissao
    from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
     where docu.proc_id = nProc_id
       and docu.tido_id = tido.tido_id
       and tido.sucd_id = sucd.sucd_id
       and ((sucd.cldo_id = 1 and tido.sucd_id in (10,11,12))  or (sucd.cldo_id in (2,3,4,5,6,7)))
      order by docu.data_emissao,
               docu.docu_id;
     r2    c2%rowtype;

cursor docu_ai is
          select  docu.proc_id,
                        docu.docu_id,
                        docu.tido_id,
                        to_number(to_char(docu.data_emissao, 'rrrr')) ano_emissao,
                        trunc(docu.data_emissao) data_emissao,
                        trunc(docu.data_assinatura_fisica)  data_assinat_fisica,
                        docu.situacao situacao,
                        sucd.cldo_id,
                        proc.data_entrada,
                        to_number(to_char(proc.data_entrada,'rrrr')) ano_entrada,
                        proc.resp_id
          from    fep_documentos                           docu,
                        fep_tipos_documentos                tido,
                        fep_sub_classes_documentos sucd,
                                     fep_processos                               proc
          where   docu.proc_id = proc.proc_id
                  and            docu.proc_id = nProc_id
                   and           docu.tido_id in(700,1251,800,801)
          and     docu.tido_id = tido.tido_id
          and     tido.sucd_id = sucd.sucd_id
          and     sucd.cldo_id in(7,8,12);
          r_docu_ai docu_ai%rowtype;
begin

     begin
             delete from fep_aux_docu_relat_5anos;
             commit;
     end;

     select sysdate into dDataAtual from dual;
     --nAnoAtual := to_number(to_char(dDataAtual,'rrrr')); -- (TG) Não utilizada
     --nMesAtual := to_number(to_char(dDataAtual,'mm')); -- (TG) Não utilizada

     open c1;
     loop
        fetch c1 into r1;
        if c1%notfound then
            close c1;
            commit;
            exit;
        else

           nGravar       := 1;
           nProc_id      := r1.proc_id;

           nAno_arqsup   := null;
           nMes_arqsup   := null;
           nAno_lic      := null;
           nMes_lic      := null;
           nTempoTram    := null;
           nTido_id_lic  := null;
           nCldo_id_lic  := null;
           nSucd_id_lic  := null;
           nQtPen_2009   := 0;
           nQtPen_2010   := 0;
           nQtPen_2011   := 0;
           nQtPen_2012   := 0;
           nQtPen_2013   := 0;
           nQtPen_2014   := 0;
           nQtPen_2015   := 0;
           nQtPen_2016   := 0;
           vDmRenovacao  := null;

           if      r1.sucd_id = 10 then
                    vTido_Descricao := 'Licença Prévia';
                   nOrdenacao := 1;
           elsif  r1.sucd_id = 11 then
                       vTido_Descricao := 'Licença de Instalação';
                      nOrdenacao := 2;
           elsif   r1.sucd_id = 12 then
                       vTido_Descricao := 'Licença de Operação';
                       nOrdenacao := 3;
           elsif   r1.cldo_id in(2,3,4,5,6) then
                       vTido_Descricao := 'Demais DocLic';
                       nOrdenacao := 6;
            elsif   r1.tido_id = 700 then
                       vTido_Descricao := 'Autos de Infração';
                       nOrdenacao := 7;
           end     if;

           if r1.situacao = 'A' then
              nAno_arqsup := r1.ano_arq;
              nMes_arqsup := r1.mes_arq;
           elsif r1.situacao = 'S' then
              nAno_arqsup := r1.ano_sup;
              nMes_arqsup := r1.mes_sup;
           end if;

           if r1.nro_docs_lic > 0 then
              open  c2;
              fetch c2 into r2;
              if c2%found then
                 if r2.ano_fis is not null then
                    nAno_lic := r2.ano_fis;
                    nMes_lic := r2.mes_fis;
                 else
                    nAno_lic := r2.ano_emis;
                    nMes_lic := r2.mes_emis;
                 end if;
                 nTempoTram    := r2.tempo_tram;
                 nTido_id_lic  := r2.tido_id;
                 nCldo_id_lic  := r2.cldo_id;
                 nSucd_id_lic  := r2.sucd_id;
              end if;
              close c2;
           end if;

           -- verifica o ano de emissão do documento Lic
           if nAno_lic is not null then
              if nAno_lic <  (nAnoRef - p_nro_anos) then
                 nGravar := 0;
              end if;
           end if;

           -- verifica os arquivados ou superados
           if nGravar = 1 then
              if nAno_arqsup <  (nAnoRef - p_nro_anos) then
                 nGravar := 0;
              end if;
           end if;

           if nGravar = 1 then
              if r1.tido_id in (120,125) then
                 vDmRenovacao := pck_processos.fc_proc_renov_tido(r1.proc_id);
              end if;

              -------------------------------------------------------------------------------------
              -- Pendencia em 31/12 do ano
              -------------------------------------------------------------------------------------

              if r1.ANO_ENTR = 2009 then
                 nQtPen_2009   := 1;
                 nQtPen_2010   := 1;
                 nQtPen_2011   := 1;
                 nQtPen_2012   := 1;
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2010 then
                 nQtPen_2010   := 1;
                 nQtPen_2011   := 1;
                 nQtPen_2012   := 1;
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2011 then
                 nQtPen_2011   := 1;
                 nQtPen_2012   := 1;
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2012 then
                 nQtPen_2012   := 1;
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2013 then
                 nQtPen_2013   := 1;
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;

              elsif r1.ANO_ENTR = 2014 then
                 nQtPen_2014   := 1;
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;


              elsif r1.ANO_ENTR = 2015 then
                 nQtPen_2015   := 1;
                 nQtPen_2016   := 1;


              elsif r1.ANO_ENTR = 2016 then
                 nQtPen_2016   := 1;
              end if;

              -------------------------------------------------------------------------------------
              -- Verifica o ano de atendimento
              -------------------------------------------------------------------------------------

              if nAno_lic is not null then

                 if nAno_lic < 2010 then
                    nQtPen_2009   := 0;
                    nQtPen_2010   := 0;
                    nQtPen_2011   := 0;
                    nQtPen_2012   := 0;
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2011 then
                    nQtPen_2010   := 0;
                    nQtPen_2011   := 0;
                    nQtPen_2012   := 0;
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2012 then
                    nQtPen_2011   := 0;
                    nQtPen_2012   := 0;
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2013 then
                    nQtPen_2012   := 0;
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2014 then
                    nQtPen_2013   := 0;
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2015 then
                    nQtPen_2014   := 0;
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2016 then
                    nQtPen_2015   := 0;
                    nQtPen_2016   := 0;

                  elsif nAno_lic < 2017 then
                    nQtPen_2016   := 0;
                  end if;


              else

                  -------------------------------------------------------------------------------------
                  -- Verifica o ano de arquivamento ou superado
                  -------------------------------------------------------------------------------------
                  if nAno_arqsup is not null then

                     if nAno_arqsup < 2010 then
                        nQtPen_2009   := 0;
                        nQtPen_2010   := 0;
                        nQtPen_2011   := 0;
                        nQtPen_2012   := 0;
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2011 then
                        nQtPen_2010   := 0;
                        nQtPen_2011   := 0;
                        nQtPen_2012   := 0;
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                      elsif nAno_arqsup < 2012 then
                        nQtPen_2011   := 0;
                        nQtPen_2012   := 0;
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                      elsif nAno_arqsup < 2013 then
                        nQtPen_2012   := 0;
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2014 then
                        nQtPen_2013   := 0;
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2015 then
                        nQtPen_2014   := 0;
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2016 then
                        nQtPen_2015   := 0;
                        nQtPen_2016   := 0;

                     elsif nAno_arqsup < 2017 then
                        nQtPen_2016   := 0;
                     end if;

                  end if;

              end if;


              begin
               insert into aux_proc_pendentes (
       PROC_ID,
       ANO_ENTRADA,
       MES_ENTRADA,
                                       DM_RENOVACAO,
       TIDO_ID,
       CLDO_ID,
                      SUCD_ID,
       ANO_LIC,
       MES_LIC,
       SIT_PROC,
       ANO_ARQ_SUP,
       MES_ARQ_SUP,
       TEMPO_TRAM,
                                                        NRO_DOCS_LIC,
                            TIDO_ID_LIC,
                            CLDO_ID_LIC,
                            SUCD_ID_LIC,
       QT_PEN_2009,
       QT_PEN_2010,
       QT_PEN_2011,
       QT_PEN_2012,
       QT_PEN_2013,
       QT_PEN_2014,
       QT_PEN_2015,
       QT_PEN_2016,
       TIDO_DESCRICAO,
                            ORDENACAO,
                       DATA_EMISSAO,
                       SETO_ID,
                                                         RAAT_ID,
                                                         RELATORIO,
                                                         USUARIO
                                                    )    values   (
                             r1.proc_id,
       r1.ano_entr,
       r1.mes_entr,
                             vDmRenovacao,
       r1.tido_id,
       r1.cldo_id,
                             r1.sucd_id,
       nAno_lic,
       nMes_lic,
       r1.situacao,
       nAno_arqsup,
                           nMes_arqsup,
       nTempoTram,
                            r1.nro_docs_lic,
                            nTido_Id_lic,
                            nCldo_id_lic,
                      nSucd_id_lic,
                      nQtPen_2009,
                      nQtPen_2010,
                      nQtPen_2011,
                      nQtPen_2012,
                      nQtPen_2013,
                      nQtPen_2014,
                      nQtPen_2015,
                      nQtPen_2016,
                            vTido_Descricao,
                            nOrdenacao,
      r2.data_emissao,
                                                        null,
      null,
      'PROR2130',
      p_usuario );

             end;

            ----------------------------------------------------------------------------
            -- inclui os documentos de Autos de Infração
           ----------------------------------------------------------------------------
          if   r1.tido_id = 700 then
            open  docu_ai;
            loop
                        fetch docu_ai into r_docu_ai;
                        if   docu_ai% notfound then
                             close  docu_ai;
                             exit;
                        else
                            begin
                        insert into  FEP_AUX_DOCU_RELAT_5ANOS
                                               (PROC_ID,
                                                DOCU_ID,
                                                ANO_ENTRADA_PROC,
                                                ANO_EMISSAO_DOCU,
                                                DATA_EMISSAO,
                                                DATA_ASSINAT_FISICA,
                                                TIDO_ID,
                                                CLDO_ID,
                                                SITUACAO,
                                                DM_RENOVACAO,
                                                DM_PRIMEIRA_LIC,
                                                NRO_DIAS_AI,
                                                TIDO_DESCRICAO,
                                                ORDENACAO,
                                                data_entrada_proc)
                                        values
                                               (r_docu_ai.proc_id,
                                                r_docu_ai.docu_id,
                                                r_docu_ai.ano_entrada,
                                                r_docu_ai.ano_emissao,
                                                r_docu_ai.data_emissao,
                                                r_docu_ai.data_assinat_fisica,
                                                r_docu_ai.tido_id,
                                                r_docu_ai.cldo_id,
                                                r_docu_ai.situacao,
                                                'N',
                                                'N',
                                                to_number(null),
                                                vTido_Descricao,
                                                nOrdenacao,
                                                r_docu_ai.data_entrada);
                           end;
                        end if;
              end loop;
            end if;

              -----------------------------------------------------------------------------
             nCont := nCont + 1;
             if nCont > 5000 then
                commit;
                nCont := 0;
             end if;
             -----------------------------------------------------------------------------

           end if;
        end if;
     end loop;
end;
FUNCTION FC_PROC_PEND_PERCENT
 (P_ANO_INICIO IN NUMBER
 ,P_ANO_FINAL IN NUMBER
 ,P_ORDEM IN NUMBER
 ,P_SUCD_ID IN NUMBER -- (TG) Não utilizado: estudar retirada...
 ,P_SUCD_ID_LIC IN NUMBER
 ,P_USUARIO IN VARCHAR2
 ,P_RELATORIO IN VARCHAR2
 ,P_TIPO IN VARCHAR2
 )
 RETURN NUMBER
 IS
nTotal_anofim   number(10) := 0;
nTotal_ano15    number(10) := 0;
nTotal_acum     number(15,6) := 0;
nCont_ano         number(1) := 0;
vPercentual       number(5,2);
nAno                    number(4);
nMes_atual       number(2);

-- PROCESSOS EMITIDOS
CURSOR C1 IS
select count(*) total
from aux_proc_pendentes aux,
          aux_cad_relatorios care,
          aux_cad_relatorios care1
where  aux.ano_lic between p_ano_inicio and p_ano_final - 1
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.sucd_id_lic = p_sucd_id_lic
and    aux.sucd_id_lic in(10,11,12);

CURSOR C1D IS
select count(*) total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_lic between p_ano_inicio and p_ano_final - 1
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id_lic IN(2,3,4,5,6);

CURSOR C11 IS
select count(*) total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_lic = p_ano_final
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.sucd_id_lic = p_sucd_id_lic
and    aux.sucd_id_lic in(10,11,12);

CURSOR C11D IS
select count(*) total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_lic = p_ano_final
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id_lic IN(2,3,4,5,6);

cursor c111 is
select distinct aux.ano_lic total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_lic between p_ano_inicio and p_ano_final - 1
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.sucd_id_lic = p_sucd_id_lic
and    aux.sucd_id_lic in(10,11,12);

CURSOR C111D IS
select distinct aux.ano_lic total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_lic between p_ano_inicio and p_ano_final - 1
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id_lic IN(2,3,4,5,6);

-- PROCESSOS PROTOCOLADOS
CURSOR C2 IS
select count(*) total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_entrada between p_ano_inicio and p_ano_final - 1
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id < 7;

CURSOR C22 IS
select count(*) total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_entrada = p_ano_final
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id < 7;

cursor c222 is
select distinct aux.ano_entrada total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_entrada between p_ano_inicio and p_ano_final - 1
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id < 7;

-- PROCESSOS ATENDIDOS
CURSOR C3 IS
select count(*) total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_lic between p_ano_inicio and p_ano_final - 1
and    aux.ano_lic= aux.ano_entrada
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id_lic < 7;

CURSOR C33 IS
select count(*) total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_lic = p_ano_final
and    aux.ano_lic= aux.ano_entrada
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id_lic < 7;

cursor c333 is
select distinct aux.ano_entrada total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_lic between p_ano_inicio and p_ano_final - 1
and    aux.ano_lic = aux.ano_entrada
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id_lic < 7;


-- PROCESSOS PENDENTES
CURSOR C4 IS
select count(*) total
from   aux_proc_pend_anomes aux,
       aux_cad_relatorios   care,
       aux_cad_relatorios   care1
where  aux.ano_pen between p_ano_inicio and p_ano_final - 1
and    aux.mes_pen = 12
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id < 7;

CURSOR C44 IS
select count(*) total
from   aux_proc_pend_anomes aux,
       aux_cad_relatorios   care,
       aux_cad_relatorios   care1
where  aux.ano_pen = p_ano_final
and    aux.mes_pen = nMes_atual
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id < 7;

cursor c444 is
select distinct aux.ano_pen total
from   aux_proc_pend_anomes aux,
       aux_cad_relatorios   care,
       aux_cad_relatorios   care1
where  aux.ano_pen between p_ano_inicio and p_ano_final - 1
and    aux.mes_pen = 12
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id
and    aux.cldo_id < 7;

-- TODOS PROCESSOS EMITIDOS
CURSOR C5 IS
select count(*) total
from   aux_proc_pendentes aux,
             aux_cad_relatorios care,
             aux_cad_relatorios care1
where  aux.ano_lic between p_ano_inicio and p_ano_final - 1
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id;

CURSOR C55 IS
select count(*) total
from   aux_proc_pendentes aux,
       aux_cad_relatorios care,
       aux_cad_relatorios care1
where  aux.ano_lic = p_ano_final
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id;

cursor c555 is
select distinct aux.ano_lic total
from   aux_proc_pendentes aux,
             aux_cad_relatorios care,
             aux_cad_relatorios care1
where  aux.ano_lic between p_ano_inicio and p_ano_final - 1
and    care.tipo_registro = 1
and    care.usuario = p_usuario
and    care.nome_relatorio = p_relatorio
and    care.selecionado = 'S'
and    care.codigo = aux.seto_id
and    care1.tipo_registro = 4
and    care1.usuario = p_usuario
and    care1.nome_relatorio = p_relatorio
and    care1.selecionado = 'S'
and    care1.codigo2 = aux.raat_id;
begin
       select to_number(to_char(sysdate,'mm')) into nMes_atual from dual;
       nTotal_ano15  := 0;
       nTotal_acum   := 0;
       nTotal_anofim := 0;
       vPercentual   := null;
       nCont_ano     := 0;
       nAno          := 0;
       if p_tipo = 'EMITIDO'  then

         if p_ordem <> 4 then
          open  c111;
          loop
              fetch c111 into nAno;
              if c111%notfound then
                 close c111;
                 exit;
              else
                 nCont_ano := nCont_ano + 1;
              end if;
          end loop;
          open  c1;
          fetch c1 into nTotal_ano15;
          close c1;

          if  nCont_ano = 0 then
              nTotal_acum := 1;
          else
              nTotal_acum := nTotal_ano15 / nCont_ano;
          end if;
          open  c11;
          fetch c11 into nTotal_anofim;
          close c11;
          if nTotal_anofim = 0 then
             return(0);
          end if;
          vPercentual := round(((nTotal_anofim / nTotal_acum) * 100),1) ;
     --     DBMS_OUTPUT.put_line('nAno ' || nAno ||  '  nTotal_ano15 ' || nTotal_ano15 || ' nTotal_acum ' || nTotal_acum || '  nTotal_anofim ' || nTotal_anofim);
       else
          open  c111D;
          loop
              fetch c111D into nAno;
              if c111D%notfound then
                 close c111D;
                 exit;
              else
                 nCont_ano := nCont_ano + 1;
              end if;
          end loop;
          open  c1D;
          fetch c1D into nTotal_ano15;
          close c1D;

          if  nCont_ano = 0 then
              nTotal_acum := 1;
          else
              nTotal_acum := nTotal_ano15 / nCont_ano;
          end if;
          open  c11D;
          fetch c11D into nTotal_anofim;
          close c11D;
          if nTotal_anofim = 0 then
             return(0);
          end if;
          vPercentual := round(((nTotal_anofim / nTotal_acum) * 100),1) ;
    --      DBMS_OUTPUT.put_line('nAno ' || nAno ||  '  nTotal_ano15 ' || nTotal_ano15 || ' nTotal_acum ' || nTotal_acum || '  nTotal_anofim ' || nTotal_anofim);
        end if;

       end if;

       -- Processos protocolados
       if p_tipo = 'PROTOCOLADO'  then
          open  c222;
          loop
              fetch c222 into nAno;
              if c222%notfound then
                 close c222;
                 exit;
              else
                 nCont_ano := nCont_ano + 1;
              end if;
          end loop;

          open  c2;
          fetch c2 into nTotal_ano15;
          close c2;
          if  nCont_ano = 0 then
              nTotal_acum := 1;
          else
              nTotal_acum := TRUNC(nTotal_ano15 / nCont_ano);
          end if;

          open  c22;
          fetch c22 into nTotal_anofim;
          close c22;
          if nTotal_anofim = 0 then
             return(0);
          end if;
          vPercentual := round(((nTotal_anofim / nTotal_acum) * 100),1) ;
       end if;

       -- Processos atendidos
       if p_tipo = 'ATENDIDO'  then
          open  c333;
          loop
              fetch c333 into nAno;
              if c333%notfound then
                 close c333;
                 exit;
              else
                 nCont_ano := nCont_ano + 1;
              end if;
          end loop;

          open  c3;
          fetch c3 into nTotal_ano15;
          close c3;
          if  nCont_ano = 0 then
              nTotal_acum := 1;
          else
              nTotal_acum := TRUNC(nTotal_ano15 / nCont_ano);
          end if;

          open  c33;
          fetch c33 into nTotal_anofim;
          close c33;
          if nTotal_anofim = 0 then
             return(0);
          end if;
          vPercentual := round(((nTotal_anofim / nTotal_acum) * 100),1) ;
       end if;

       -- Processos pendentes
       if p_tipo = 'PENDENTE'  then
          open  c444;
          loop
              fetch c444 into nAno;
              if c444%notfound then
                 close c444;
                 exit;
              else
                 nCont_ano := nCont_ano + 1;
              end if;
          end loop;

          open  c4;
          fetch c4 into nTotal_ano15;
          close c4;
          if  nCont_ano = 0 then
              nTotal_acum := 1;
          else
              nTotal_acum := TRUNC(nTotal_ano15 / nCont_ano);
          end if;

          open  c44;
          fetch c44 into nTotal_anofim;
          close c44;
          if nTotal_anofim = 0 then
             return(0);
          end if;
          vPercentual := round(((nTotal_anofim / nTotal_acum) * 100),1) ;
       end if;

       -- Total Processos emitidos
       if p_tipo = 'TOTALLIC'  then
          open  c555;
          loop
              fetch c555 into nAno;
              if c555%notfound then
                 close c555;
                 exit;
              else
                 nCont_ano := nCont_ano + 1;
              end if;
          end loop;

          open  c5;
          fetch  c5 into nTotal_ano15;
          close c5;
          if  nCont_ano = 0 then
              nTotal_acum := 1;
          else
              nTotal_acum := TRUNC(nTotal_ano15 / nCont_ano);
          end if;

          open  c55;
          fetch  c55 into nTotal_anofim;
          close c55;
          if nTotal_anofim = 0 then
             return(0);
          end if;
          vPercentual := round(((nTotal_anofim / nTotal_acum) * 100),1) ;
       end if;

       return(vPercentual);

end;
PROCEDURE PR_PRCR_INDEF_SOSE
 (P_PRCR_ID IN number
 )
 IS


   vUsuario              varchar2(30);
   dDataAtual            date;
   nSose_id              number(10);
   vMotivoIndef          varchar2(255);
   nCont                 number(3);
   nLinha                number(5)  := 0;
   vTexto                varchar2(2000);
   nTipoReg              number(1);
   vDmParecer            varchar2(1);
   vDmLicenca            varchar2(1);
   vProcesso               varchar2(16);

   cursor c1 is
      select prcr.sose_id,
                   sose.motivo_indeferimento,
                   substr(lpad(proc.numero,6,0)  || '-' ||
                         lpad(proc.orig_id,4,0) || '/' ||
                          lpad(proc.ano,2,0)     || '-' ||
                           (proc.dv) ,1,16) processo
        from fep_aux_proc_cond_restr prcr,
                  fep_solic_seamb         sose,
                   fep_processos             proc
       where prcr.sose_id         = sose.sose_id
         and    prcr.proc_id         = proc.proc_id
         and    prcr.tido_id_licenca = 530
         and    prcr.prcr_id         = p_prcr_id;

   cursor c21 is
      select count(*)
        from fep_aux_cond_restr_informacoes ainf
       where ainf.prcr_id = p_prcr_id;

   cursor c22 is
      select count(*)
        from fep_aux_motivos_implocal amlc
       where amlc.prcr_id = p_prcr_id;
begin

   select user, sysdate into vUsuario, dDataAtual from dual;

   open  c1;
   fetch c1 into nSose_id, vMotivoIndef, vProcesso;
   close c1;

   if nSose_id is not null and vMotivoIndef is not null then

      ----------------------------------------------------------------------------------
      -- Indeferimento de LO para Fontes Móveis ( Ramos 4710.10 / 4710.20 / 4710.30 )
      --       usada em: pck_net_processos.SP_PRCR_UPD                 Malu 08/05/2014
      ----------------------------------------------------------------------------------

      open  c21;
      fetch c21 into nCont;
      close c21;
      if nCont > 0 then
         begin
           delete from fep_aux_cond_restr_informacoes where prcr_id = p_prcr_id;
             commit;
         end;
      end if;

      open  c22;
      fetch c22 into nCont;
      close c22;
      if nCont > 0 then
         begin
           delete from fep_aux_motivos_implocal where prcr_id = p_prcr_id;
             commit;
         end;
      end if;

      -------------------------------------------------------------------------------------------------
      -- Informações do Indeferimento
      -------------------------------------------------------------------------------------------------
      nLinha     := nLinha + 10;
      vTexto      :=  'Com base nos autos do Processo Administrativo nº ' || vProcesso ||
                              ' foi identificado o seguinte: ' ;

       begin
             insert into fep_aux_cond_restr_informacoes (
       AINF_ID, PRCR_ID,
       LINHA,  TEXTO,
       DATA_INCLUSAO, OPERADOR_INCLUSAO,
       DATA_ATUALIZACAO, OPERADOR_ATUALIZACAO,
       CORS_ID_ORIGEM
                                                 ) Values (
       ainf_seq.nextval, p_prcr_id,
       nLinha,  vTexto ,
       dDataatual, vUsuario,
       dDataatual, vUsuario,
       null );
                                                 commit;

      end;

      nLinha     := nLinha + 10;
      vTexto      :=   vMotivoIndef;

       begin
             insert into fep_aux_cond_restr_informacoes (
       AINF_ID, PRCR_ID,
       LINHA,  TEXTO,
       DATA_INCLUSAO, OPERADOR_INCLUSAO,
       DATA_ATUALIZACAO, OPERADOR_ATUALIZACAO,
       CORS_ID_ORIGEM
                                                 ) Values (
       ainf_seq.nextval, p_prcr_id,
       nLinha,  vTexto ,
       dDataatual, vUsuario,
       dDataatual, vUsuario,
       null );
                                                 commit;

      end;
      nLinha     := 0;

      -------------------------------------------------------------------------------------------------
      -- Motivo do Indeferimento
      -------------------------------------------------------------------------------------------------

      nLinha     := nLinha + 10;
      vTexto     := vMotivoIndef;
      nTipoReg   := 1;
      vDmParecer := 'S';
      vDmLicenca := 'N';

      pck_processos.pr_prcr_insert_AMLC(p_prcr_id, nLinha, vTexto, dDataatual, vUsuario, nTipoReg, vDmParecer, vDmLicenca);

   end if;

end;

FUNCTION FC_COMB_TQCB_TRR
 (P_ATAN_ID IN number
 ,P_TQCB_ID IN number
 )
 RETURN VARCHAR2
 IS


   vDescricao     VARCHAR2(500) := NULL;
   vCombustivel   VARCHAR2(50);
   nContador      NUMBER(3)     := 0;


   CURSOR c1 IS
      SELECT tpcb.descricao
        FROM fep_postos_combustiveis    ptcb,
             fep_tanques_combustiveis   tqcb,
             fep_tanques_tipos_comb     tqtc,
             fep_tipos_combustiveis     tpcb
       WHERE ptcb.atan_id = p_atan_id
         AND ptcb.ptcb_id = tqcb.ptcb_id
         AND tqcb.tqcb_id = p_tqcb_id
         AND tqcb.data_desativacao IS NULL
         AND tqcb.data_remocao     IS NULL
         AND tqcb.tqcb_id = tqtc.tqcb_id
         AND tqtc.tpcb_id = tpcb.tpcb_id
       GROUP BY
             tpcb.descricao
       ORDER BY 1;
BEGIN

      OPEN c1;
  LOOP
         FETCH c1 INTO vCombustivel;
         IF c1%notfound THEN
            CLOSE c1;
            EXIT;
         ELSE
            nContador := nContador + 1;
            IF nContador = 1 THEN
             vDescricao := vCombustivel;
            ELSE
             vDescricao := vDescricao || ', ' || vCombustivel;
            END IF;
       END IF;
  END LOOP;

      RETURN(vDescricao);

END;
FUNCTION FC_PATH_PNLA_DOC
 (P_DOCU_ID IN number
 )
 RETURN VARCHAR2
 IS


  vArquivo                    varchar2(300);
  vPathFilePDF             varchar2(150);
  vFilePDF                     varchar2(150);
  nDocu_id                   number(10);
  vSituacaoDocu        varchar2(1);
  vAssinaturaDigital   varchar2(1);
  nAnoAssinatura       number(4);
  vExistePDF                 varchar2(1);

  CURSOR c1 IS
     SELECT docu.docu_id,
            docu.situacao,
            docu.dm_assinatura_digital,
            to_number(to_char(docu.data_assinatura_fisica,'rrrr')),
            docu.dm_pdf_ant2006
       FROM fep_documentos                   docu
      WHERE docu.docu_id = p_docu_id;

  CURSOR c2 IS
     SELECT par1.description
       FROM tpl_parameters par1
      WHERE par1.parameter_name = 'PATH_PDF_LICENCA';

  CURSOR c3 IS
     SELECT par1.description
       FROM tpl_parameters par1
      WHERE par1.parameter_name = 'PATH_PDF_LICENCA_DIG';
BEGIN

    OPEN  c1;
    FETCH c1 INTO nDocu_id, vSituacaoDocu, vAssinaturaDigital, nAnoAssinatura, vExistePDF;
    CLOSE c1;

    -- So dá display dos documentos que estiverem em vigor/vencido/revogado/prorrogado

    IF   vSituacaoDocu IN ('A','F','S','E','G','R','D','U','V')   THEN
          IF  vAssinaturaDigital = 'N' THEN
              OPEN  c2;
              FETCH c2 INTO vPathFilePDF;
              CLOSE c2;
         ELSE
              OPEN  c3;
              FETCH c3 INTO vPathFilePDF;
              CLOSE c3;
         END IF;

         IF   vPathFilePDF   IS NOT NULL THEN
              IF    vAssinaturaDigital = 'N' THEN
                     if  vExistePDF = 'S' then
                             vFilePDF    :=  nDocu_id || '.pdf';
                     else
                            RETURN(vArquivo);  -- não existe PDF para o documento anterior a 2006
                     end if;
              ELSE
                 if length( nDocu_id)>= 7 then

                    vFilePDF    :=  nAnoAssinatura || '/' || LPAD(nDocu_id,7,0) || '_signed.pdf';
                 else
                    vFilePDF    :=  nAnoAssinatura || '/' || LPAD(nDocu_id,6,0) || '_signed.pdf';
                 end if;

                  --  vFilePDF    :=  nAnoAssinatura || '/' || LPAD(nDocu_id,6,0) || '_signed.pdf';
              END IF;

              vArquivo   := vPathFilePDF || vFilePDF;

        END IF;

    END IF;

    RETURN(vArquivo);

END;
FUNCTION FC_PRCR_QT_CLASSE90
 (P_PRCR_ID IN number
 )
 RETURN NUMBER
 IS


  nCont         number(3)      := 0;
  nCont1        number(3)      := 0;
  nCont2        number(3)      := 0;


  cursor c01 is
     select count(*)
       from fep_aux_cond_restr_par_lic   acrl,
            fep_listas_cond_restricoes   lcrs,
            fep_tido_cond_restr          tilc,
            fep_aux_proc_cond_restr      prcr,
            fep_condicoes_restricoes     cors
      where cors.clcr_id = 90
        and cors.cors_id = lcrs.cors_id
        and lcrs.lcrs_id = acrl.lcrs_id
        and lcrs.lcrs_id = tilc.lcrs_id
        and prcr.prcr_id = p_prcr_id
        and tilc.tido_id = prcr.tido_id_licenca
        and decode(tilc.dm_parecer,null,lcrs.dm_parecer, tilc.dm_parecer) = 'S'
        and acrl.prcr_id = p_prcr_id;

  cursor c02 is
     select count(*)
       from fep_aux_cond_restr_par_lic  acrl,
            fep_aux_cond_restr_proc     crpr
      where crpr.clcr_id    = 90
        and crpr.crpr_id    = acrl.crpr_id
        and crpr.dm_parecer = 'S'
        and crpr.prcr_id    = p_prcr_id;
begin

  open  c01;
  fetch c01 into nCont1;
  close c01;
  open  c02;
  fetch c02 into nCont2;
  close c02;

  nCont := nCont1 + nCont2;

  return(nCont);

end;
PROCEDURE PR_PROC_SIT_DOCSCOMPL
 (P_DPCO_ID IN number
 ,P_DOCM_ID IN number
 )
 IS

 vUsuario            varchar2(30);
 dDataAtual        date;

  nProc_id          number(10);
  vSituacao        varchar2(1);
  vSimNao          varchar2(1);

  cursor c1 is
     select proc.proc_id,
            proc.situacao,
            docm.dm_altera_sit_proc
       from fep_processos                 proc,
            fep_detalhes_procs_compls     dpco,
            fep_documentos_complementares docm
      where dpco.dpco_id = p_dpco_id
        and dpco.proc_id = proc.proc_id
        and docm.docm_id = p_docm_id;
begin

   -- Suporte 46186 - Dirtec               (Malu 29/09/2014)
   -- Solicitado pelo Diretor Técnico em 19/11/2014 para que se altere de Agu Complementação para Aguardando Análise ( e não Em Análise )

   -- Altera situação do processo que está Aguardando Complementação
   -- se receber juntada de documento

   select user, sysdate into vUsuario, dDataAtual from dual;

   open  c1;
   fetch c1 into nProc_id, vSituacao, vSimNao;
   close c1;

   if nProc_id is not null then
      if vSituacao = 'I' and vSimNao = 'S' then
         begin
            update fep_processos
                   set situacao                           = 'W',
                          data_situacao                =  dDataAtual,
                          data_atualizacao           =  dDataAtual,
                          operador_atualizacao  = vUsuario || ' - COMPL DOCS'
             where proc_id = nProc_id;
         end;
      end if;
   end if;

end;
FUNCTION FC_AGROT_ATAN
 (P_AGRO_ID IN number
 )
 RETURN NUMBER
 IS


    nAtan_id   number(10);

    cursor c1 is
       select resp.atan_id
         from fep_agrotoxicos_processos  agpr,
              fep_processos              proc,
              fep_responsabilidades      resp
        where agpr.agro_id = p_agro_id
          and agpr.proc_id = proc.proc_id
          and proc.resp_id = resp.resp_id;
begin
   open  c1;
   fetch c1 into nAtan_id;
   close c1;
   return(nAtan_id);
end;
FUNCTION FC_QUEM_LICENCIA
 (P_PROC_ID IN number
 )
 RETURN NUMBER
 IS


    vQuemLic       number(1) := 0;

    nProc_id       number(10);
    nResp_id       number(10);
    nAtan_id       number(10);
    vLibProcLocal  varchar2(1);

    nMedidaPorte   number(12,4);
    nRaat_id       number(7,2);
    nMuni_id       number(7);
    vDmMaisMunic   varchar2(1);
    vDmUCEstadual  varchar2(1);
    vDmUCFederal   varchar2(1);
    vPorte         varchar2(1);

    vConvenio      varchar2(1);
    vImpLocal      varchar2(1);
    vLicenciador  varchar2(1);

    cursor c1 is
       select proc.proc_id,
                   proc.resp_id,
                   resp.atan_id,
                   proc.dm_lib_implocal
         from fep_processos         proc,
              fep_responsabilidades resp
        where proc.proc_id = p_proc_id
          and proc.resp_id = resp.resp_id(+);

    cursor c2 is
       select ata1.medida_porte,
              ata1.raat_id,
              ata1.muni_id,
              ata1.dm_mais_munic,
              ata1.dm_uc_estadual,
              ata1.dm_uc_federal
         from fep_atividades_antropicas ata1
        where ata1.atan_id = nAtan_id;

    cursor c3 is
       select muni.licenciador
         from fep_municipios muni
        where muni.muni_id = nMuni_id;
begin

   -- Função que verifica onde deve ser emitido documento licenciatório do processo
   --                                   ( Malu 14/10/2014 )


   --- quem licencia
   ---    0 - Não encontrado
   ---    1 - Local
   ---    2 - Regional - FEPAM
   ---    3 - Federal  - IBAMA

   open  c1;
   fetch c1 into nProc_id, nResp_id, nAtan_id, vLibProcLocal;
   close c1;

   if nProc_id is null then
      return(vQuemLic);
   end if;

   if nResp_id is null then
      vQuemLic := 2; -- REGIONAL - FEPAM
      return(vQuemLic);
   end if;

   open  c2;
   fetch c2 into nMedidaPorte,
                 nRaat_id,
                 nMuni_id,
                 vDmMaisMunic,
                 vDmUCEstadual,
                 vDmUCFederal;
   close c2;

   if vDmUCFederal = 'S' then
      vQuemLic := 3;  -- FEDERAL - IBAMA
      return(vQuemLic);
   end if;

   -- vLibProcLocal - processo que mesmo sendo de impacto local, chefia libera para gerar na Fepam no cad processo
   if vDmMaisMunic  = 'S' or
      vDmUCEstadual = 'S' or
      vLibProcLocal = 'S' then
      vQuemLic := 2;  -- REGIONAL - FEPAM
      return(vQuemLic);
   end if;

   vPorte        := busca_porte(nRaat_id, nMedidaPorte, null);
   vConvenio := pck_arr_bloquetos.fc_arr_convenio_muni(nMuni_id, nRaat_id, vPorte);

   if vConvenio = 'S' then
      vQuemLic := 1;  -- LOCAL
      return(vQuemLic);
   end if;

   vImpLocal := fc_impacto_local(nRaat_id, vPorte);   -- verifica pelo porte do ramo

   if vImpLocal = 'S' then
           open  c3;
           fetch  c3 into  vLicenciador;  -- verifica se municipio é licenciador
           close c3;
           if  vLicenciador = 'S' then
                 vQuemLic := 1;  -- LOCAL
          else
                 vQuemLic := 2;  -- REGIONAL - FEPAM
          end if;
   else
          vQuemLic := 2;  -- REGIONAL - FEPAM
   end if;

   return(vQuemLic);

end;
FUNCTION FC_PROC_LIBERA_WORD
 (P_SETO_ID_DOC IN number
 ,P_TIDO_ID IN number
 ,P_USUARIO IN varchar2
 )
 RETURN VARCHAR2
 IS



    vSimNao         varchar2(1)    := 'N';
    vUsuario        varchar2(30)   := p_usuario;
    nSeto_id_func   number(6);
    nCldo_id        number(3);
    nCont           number(3);


    CURSOR c1 IS
       SELECT vful.seto_id
         FROM v_rhu_funcionarios_ultimo vful
        WHERE vful.username = vUsuario;

    CURSOR c2 IS
       SELECT sucd.cldo_id
         FROM fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        WHERE tido.tido_id = P_tido_id
          and tido.sucd_id = sucd.sucd_id;


    cursor c3 is
       SELECT count(*)
         FROM fep_aux_func_ultimos   aux,
              fep_acessos_pessoas    acpe,
              fep_acessos_parametros acpa
        WHERE aux.situacao IN (1,2)
          AND aux.pess_id   = acpe.pess_id
          AND acpe.acpa_id   = acpa.acpa_id
          AND acpa.parametro = 'DL_LIBERA_PESSOA'
          and aux.username   = vUsuario;
begin

  -- Função criada em função da alteração de setores feita em outubro/2014    ( Malu 23/10/2014 )
  -- Utilizada no PROF0100

   OPEN  c1;
   FETCH c1 INTO nSeto_id_func;
   CLOSE c1;

   -- DL ou DIS - visualizam qualquer documenton em Trabalho
   if nSeto_id_func in (200,201,33,250)  then
      vSimNao := 'S';
      return(vSimNao);
   else
      open  c3;
      fetch c3 into nCont; -- verifica se é emprestado a DL
      close c3;
      if nCont > 0 then
         vSimNao := 'S';
         return(vSimNao);
      end if;
   end if;


   OPEN  c2;
   FETCH c2 INTO nCldo_id;
   CLOSE c2;

   -- Classes Licenciatórias
   if nCldo_id not in (1,2,3, 4,5,6) then
         vSimNao := 'S';
         return(vSimNao);
   else
      if nSeto_id_func = p_seto_id_doc then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- DMIN - Selem - Profem
      if  nSeto_id_func in ( 221,2211, 2212, 226, 22, 2,260,2601 ) and
          p_seto_id_doc in ( 221,2211, 2212, 226,2601 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- DICOPI - Selmi - Selai
      if  nSeto_id_func in ( 222, 2221, 2222, 227, 2271, 2272, 22, 2 ,260,2602,26020,26021 ) and
          p_seto_id_doc in ( 222, 2221, 2222, 227, 2271, 2272,2602, 26020,26021 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SEPP
      if  nSeto_id_func in ( 2225, 228, 2052, 205, 22, 2,230,260 ) and
         p_seto_id_doc in ( 2225, 228, 2052,230 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- DASP
      if  nSeto_id_func in ( 225, 202, 2 ) and
         p_seto_id_doc in ( 225, 202 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SELC
      if  nSeto_id_func in ( 2251, 2021, 202, 2,2025 ) and
         p_seto_id_doc in ( 2251, 2021 ,2025) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SELACA
      if  nSeto_id_func in ( 2252, 2022, 202, 2 ,2026) and
         p_seto_id_doc in ( 2252, 2022,2026 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SELCA
      if  nSeto_id_func in ( 2253, 2023, 202, 2 ,2027) and
         p_seto_id_doc in ( 2253, 2023,2027 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SELI
      if  nSeto_id_func in ( 2254, 2024, 202, 2,2028 ) and
         p_seto_id_doc in ( 2254, 2024 ,2028) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- DEQAMB
      if  nSeto_id_func in ( 21, 203, 2 ,235) and
         p_seto_id_doc in ( 21, 203 ,235) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SERLI / SERG / SERU / GEOFEPAM
      if  nSeto_id_func in ( 2101, 2102, 2103, 2104, 2031, 203, 2,235,2350 ) and
         p_seto_id_doc in ( 2101, 2102, 2103, 2104, 2031 ,2350) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- DISA / SES / SEGERS
      if  nSeto_id_func in ( 223, 2231, 2232, 2032, 203, 2,235,2604 ) and
         p_seto_id_doc in ( 223, 2231, 2232, 2032,2604 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SINF
      if  nSeto_id_func in ( 2234, 2033, 203, 2,235,2603 ) and
         p_seto_id_doc in ( 2234, 2033,2603 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SEGEN
      if  nSeto_id_func in ( 2233, 2034, 203, 2,235,2065 ) and
         p_seto_id_doc in ( 2233, 2034 ,2065) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- DELAB
      if  nSeto_id_func in ( 23, 204, 2 ,2055) and
         p_seto_id_doc in ( 23, 204 ,2055) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SAMOST
      if  nSeto_id_func in ( 2311, 2041, 204, 2 ,2055,20552) and
         p_seto_id_doc in ( 2311, 2041,20552 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- DIVQUIM
      if  nSeto_id_func in ( 232, 2042, 204, 2,2055,20550 ) and
         p_seto_id_doc in ( 232, 2042 ,20550) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- DIVBIO
      if  nSeto_id_func in ( 231, 2043, 204, 2 ,2055,20551) and
         p_seto_id_doc in ( 231, 2043,20551 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SEFIND
      if  nSeto_id_func in ( 2223, 2051, 205, 2,2054 ) and
         p_seto_id_doc in ( 2223, 2051,2054 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- SEMJ
      if  nSeto_id_func in ( 2001, 2053, 205, 2 ) and
         p_seto_id_doc in ( 2001, 2053 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;

      -- Arrecadação
      if  nSeto_id_func in ( 2001, 2053, 205, 2 ) and
         p_seto_id_doc in ( 2001, 2053 ) then
         vSimNao := 'S';
         return(vSimNao);
      end if;
   end if;

   return(vSimNao);

end;
FUNCTION FC_PROC_TOTAL_LIC
 (P_ANO IN number
 ,P_MES IN number
 ,P_CLDO IN NUMBER
 ,P_TIPO IN NUMBER
 ,P_INCLUIR_TRANSP IN VARCHAR2
 ,P_SETO_ID IN NUMBER
 )
 RETURN NUMBER
 IS


  nCont    number(6);

  cursor c1 is
     select count(*) qt
       from fep_processos                 proc,
                 fep_ramos_atividades   raat,
                 fep_tipos_documentos       tido,
                  fep_sub_classes_documentos sucd
      where tido.sucd_id = sucd.sucd_id
        and ((sucd.cldo_id  = p_cldo)
                               or
                  (p_cldo = 0 and sucd.cldo_id in (1,2,3,4) ))
        and tido.tido_id = proc.tido_id
        and to_number(to_char(proc.data_entrada,'rrrr')) = p_ano
        and to_number(to_char(proc.data_entrada,'mm'))   < p_mes + 1
        and ( ( proc.raat_id_proc not in ( 4710.10, 4710,20, 4710.30) and p_incluir_transp = 'N' )
                               or
                 ( p_incluir_transp = 'S' or p_incluir_transp is null   ) )
        and  proc.raat_id_proc = raat.raat_id
        and  (( raat.seto_id = p_seto_id and p_seto_id != 0)
                     or p_seto_id = 0 );



-- passivo atual
  cursor c2 is
     select count(*)
       from fep_processos              proc,
                 fep_ramos_atividades   raat,
                 fep_tipos_documentos       tido,
                 fep_sub_classes_documentos sucd
      where tido.sucd_id = sucd.sucd_id
        and ((sucd.cldo_id  = p_cldo)
                               or
                  (p_cldo = 0 and sucd.cldo_id in (1,2,3,4) ))
        and tido.tido_id = proc.tido_id
        and to_number(to_char(proc.data_entrada,'rrrr')) = p_ano
        and to_number(to_char(proc.data_entrada,'mm'))   < p_mes + 1
        and proc.situacao in ( 'W','I','G','V','F','L','E' )
        and not exists ( select null
                                        from fep_documentos docu1,
                                                  fep_tipos_documentos tido1,
                                                  fep_sub_classes_documentos sucd1
                                    where docu1.proc_id = proc.proc_id
                                         and docu1.tido_id = tido1.tido_id
                                         and tido1.sucd_id = sucd1.sucd_id
                                        and sucd1.cldo_id < 7
                                        and docu1.situacao not in ('B','C','T','K','H','O'))
        and ( ( proc.raat_id_proc not in ( 4710.10, 4710,20, 4710.30) and p_incluir_transp = 'N' )
                               or
                 ( p_incluir_transp = 'S' or p_incluir_transp is null   ) )
        and  proc.raat_id_proc = raat.raat_id
        and  (( raat.seto_id = p_seto_id and p_seto_id != 0)
                     or p_seto_id = 0 );


-- passivo por ano
  cursor c3 is
     select count(*)
       from fep_processos              proc,
                 fep_ramos_atividades   raat,
                 fep_tipos_documentos       tido,
                 fep_sub_classes_documentos sucd
      where tido.sucd_id = sucd.sucd_id
        and ((sucd.cldo_id  = p_cldo)
                               or
                  (p_cldo = 0 and sucd.cldo_id in (1,2,3,4) ))
        and tido.tido_id = proc.tido_id
        and to_number(to_char(proc.data_entrada,'rrrr')) = p_ano
        and to_number(to_char(proc.data_entrada,'mm'))   < p_mes + 1
        and proc.situacao in ( 'W','I','G','V','F','L','E','D','A','H' )
        and not exists ( select null
                           from fep_documentos docu1,
                                fep_tipos_documentos tido1,
                                fep_sub_classes_documentos sucd1
                          where docu1.proc_id = proc.proc_id
                            and docu1.tido_id = tido1.tido_id
                            and tido1.sucd_id = sucd1.sucd_id
                            and sucd1.cldo_id < 7
                            and to_number(to_char(docu1.data_emissao,'rrrr')) = p_ano
                            and docu1.situacao not in  ('B','C','T','K','H','O'))
        and ( ( proc.raat_id_proc not in ( 4710.10, 4710,20, 4710.30) and p_incluir_transp = 'N' )
                               or
                 ( p_incluir_transp = 'S' or p_incluir_transp is null   ) )
        and  proc.raat_id_proc = raat.raat_id
        and  (( raat.seto_id = p_seto_id and p_seto_id != 0)
                     or p_seto_id = 0 );
begin

   -- entrada de processos
    if p_tipo = 1 then
              open  c1;
              fetch  c1 into nCont;
              close c1;
               return(nCont);
     end if;

   -- processos pendentes do ano - na data atual
    if p_tipo = 2 then
              open  c2;
              fetch  c2 into nCont;
              close c2;
               return(nCont);
     end if;

   -- processos que foram atendidos em anos posteriores ao ano de entrada ou ainda pendente
    if p_tipo = 3 then
              open  c3;
              fetch  c3 into nCont;
              close c3;
               return(nCont);
     end if;

end;
PROCEDURE PR_PROC_TOTAL_LIC
 (P_TIPO_PESQUISA IN NUMBER
 ,P_ANO_INICIAL IN number
 ,P_ANO_FINAL IN number
 ,P_USUARIO IN varchar2
 ,P_INCLUIR_TRANSP IN VARCHAR2
 ,P_SETO_ID IN NUMBER -- (TG) Não utilizado: estudar retirada...
 ,P_RAAT_ID IN NUMBER -- (TG) Não utilizado: estudar retirada...
 ,P_CLDO_ID IN NUMBER
 )
 IS

   nAnoInicial           number(4);
   nAnoFinal             number(4);
   nAno                      number(4);
   nMes                     number(2);
   nTotMes               number(6);
   nAnoAtual            number(4);
   nMesAtual            number(2);
   nCldo_id                number(3);
    vCldoDescricao   varchar2(50);
   nSeto_id                number(6);
    vSiglaSetor          varchar2(50);


 cursor c0 is
       select  raat.seto_id,
                     seto.sigla
           from fep_processos proc,
                     fep_tipos_documentos tido,
                     fep_sub_classes_documentos sucd,
                     fep_ramos_atividades raat,
                     fep_setores seto
        where proc.tido_id = tido.tido_id
             and   tido.sucd_id = sucd.sucd_id
             and   ((sucd.cldo_id in ( 1,2,3,4,7 ) and p_cldo_id is null ) or ( sucd.cldo_id = p_cldo_id and p_cldo_id is not null ))
             and   to_number(to_char(proc.data_entrada,'rrrr')) between p_ano_inicial and p_ano_final
             and   proc.raat_id_proc = raat.raat_id(+)
             and   raat.seto_id = seto.seto_id(+)
             and   seto.tipo_setor != 9
             and   p_tipo_pesquisa = 1
         group by raat.seto_id,
                           seto.sigla
          union all
               select 0 seto_id,
                           'Todos Setores' sigla
                   from  dual
                where p_tipo_pesquisa = 0
         order by 1;


 cursor c1 is
       select cldo.cldo_id,
                    replace(initcap(cldo.descricao),' De ',' de ') descricao
          from fep_classes_documentos cldo
        where cldo_id in (1,2,3,4,7)
              and p_cldo_id is null
    union all
       select 0 cldo_id,
                    'Licença, Certificado, Declaração e Autorização' descricao
          from dual
       where p_cldo_id is null
    union all
       select cldo.cldo_id,
                    replace(initcap(cldo.descricao),' De ',' de ') descricao
          from fep_classes_documentos cldo
        where cldo_id = p_cldo_id
              and p_cldo_id is not null
       order by 1;
begin

   select to_number(to_char(sysdate,'rrrr')) into nAnoAtual from dual;
   select to_number(to_char(sysdate,'mm'))   into nMesAtual from dual;


   begin
      delete
        from fep_aux_proc_acum_lic
       where operador_inclusao = p_usuario;
               commit;
   end;

   nAnoInicial := p_ano_inicial;
   nAnoFinal   := p_ano_final;


   if nAnoInicial < 2000 then
      nAnoInicial := 2000;
   end if;

   if nAnoFinal   > 2020 then
      nAnoFinal   := 2020;
   end if;

open c0;
loop
    fetch c0 into nSeto_id, vSiglaSetor;
    if c0%notfound then
        close c0;
        exit;
    else

       -------------------------------------------------------------------------------------------------------
       --- Classe por Setor
       -------------------------------------------------------------------------------------------------------
       open c1;
       loop
       fetch c1 into nCldo_id, vCldoDescricao;
       if c1%notfound then
              close c1;
              exit;
       else
                nMes := 1;

                while nMes < 13 loop

                            -- Tipo 1 - entrada de processos
                            begin
                                  insert into fep_aux_proc_acum_lic
                                           ( cldo_id,cldo_descricao,tipo,dm_transporte,ate_mes,ano_2000,
                                             ano_2001, ano_2002, ano_2003, ano_2004, ano_2005, ano_2006,ano_2007,ano_2008,ano_2009,ano_2010,
                                             ano_2011, ano_2012, ano_2013, ano_2014, ano_2015, ano_2016,ano_2017,ano_2018,ano_2019,ano_2020,
                                             data_inclusao, operador_inclusao, raat_id, seto_id, sigla_setor )
                                      values
                                           ( nCldo_id,vCldoDescricao, 1,p_incluir_transp, nMes,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,sysdate, p_usuario,
                                             null, nSeto_id,vSiglaSetor);
                                                          commit;
                             end;

                             -- Tipo 2 - processos pendentes - sem docs licenciatórios
                             if nCldo_id != 7 then   -- AI
                                    begin
                                             insert into fep_aux_proc_acum_lic
                                                      ( cldo_id,cldo_descricao,tipo,dm_transporte,ate_mes,ano_2000,
                                                         ano_2001, ano_2002, ano_2003, ano_2004, ano_2005, ano_2006,ano_2007,ano_2008,ano_2009,ano_2010,
                                                         ano_2011, ano_2012, ano_2013, ano_2014, ano_2015, ano_2016,ano_2017,ano_2018,ano_2019,ano_2020,
                                                         data_inclusao, operador_inclusao, raat_id, seto_id, sigla_setor )
                                             values
                                                     ( nCldo_id,vCldoDescricao, 2,p_incluir_transp,nMes,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,sysdate, p_usuario,
                                                        null, nSeto_id,vSiglaSetor);
                                                                    commit;
                                     end;
                             end if;


                             -- Tipo 3 - processos pendentes - no final do ano - atendentes em anos posteriores a entrada
                             if nCldo_id != 7 then   -- AI
                                    begin
                                             insert into fep_aux_proc_acum_lic
                                                      ( cldo_id,cldo_descricao,tipo,dm_transporte,ate_mes,ano_2000,
                                                         ano_2001, ano_2002, ano_2003, ano_2004, ano_2005, ano_2006,ano_2007,ano_2008,ano_2009,ano_2010,
                                                         ano_2011, ano_2012, ano_2013, ano_2014, ano_2015, ano_2016,ano_2017,ano_2018,ano_2019,ano_2020,
                                                         data_inclusao, operador_inclusao, raat_id, seto_id, sigla_setor )
                                             values
                                                     ( nCldo_id,vCldoDescricao, 3,p_incluir_transp,nMes,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,sysdate, p_usuario,
                                                       null, nSeto_id,vSiglaSetor);
                                                                    commit;
                                     end;
                             end if;


                            nMes := nMes + 1;
                end loop;


               nAno := nAnoInicial;

               -----------------------------------------------------------------------------------
                while nAno < (nAnoFinal + 1) loop

                           nMes := 1;

                           -----------------------------------------
                           while nMes < 13 loop


                                     ---------------------------------------------------------------------------------------------------
                                     -- PROCESSOS COM ENTRADA NO ANO
                                     ---------------------------------------------------------------------------------------------------

                                      --nTotmes := 0; -- (TG) Variável inicializada na linha de baixo
                                      nTotMes := pck_processos.fc_proc_total_lic(nAno, nMes, nCldo_id, 1,p_incluir_transp, nSeto_id);

                                       ----------------------------------------
                                       if nAno = 2000 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2000 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2001 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2001 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2002 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2002 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2003 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2003 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2004 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2004 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2005 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2005 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2006 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2006 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2007 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2007 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2008 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2008 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2009 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2009 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2010 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2010 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;


                                       if nAno = 2011 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2011 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2012 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2012 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2013 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2013 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2014 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2014 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2015 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2015 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2016 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2016 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2017 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2017 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2018 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2018 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2019 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2019 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2020 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2020 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 1
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;



                                     ---------------------------------------------------------------------------------------------------
                                     -- PROCESSOS PENDENTES DO ANO - DE ACORDO COM DATA ATUAL
                                     ---------------------------------------------------------------------------------------------------

                                     IF nCldo_id != 7 then

                                      --nTotmes := 0; -- (TG) Variável inicializada na linha de baixo
                                      nTotMes := pck_processos.fc_proc_total_lic(nAno, nMes, nCldo_id, 2, p_incluir_transp, nSeto_id);

                                       ----------------------------------------
                                       if nAno = 2000 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2000 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2001 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2001 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2002 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2002 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2003 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2003 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2004 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2004 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2005 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2005 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2006 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2006 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2007 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2007 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2008 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2008 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2009 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2009 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2010 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2010 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;


                                       if nAno = 2011 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2011 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2012 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2012 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2013 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2013 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2014 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2014 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2015 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2015 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2016 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2016 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2017 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2017 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2018 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2018 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2019 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2019 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2020 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2020 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 2
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       end if;


                                     -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                     -- PROCESSOS PENDENTES DO FINAL DO ANO DE ENTRADA - ATENDENDIDOS EM ANOS POSTERIORES OU AINDA PENDENTES
                                     -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

                                     IF nCldo_id != 7 then

                                      --nTotmes := 0; -- (TG) Variável inicializada na linha de baixo
                                      nTotMes := pck_processos.fc_proc_total_lic(nAno, nMes, nCldo_id, 3, p_incluir_transp, nSeto_id);

                                       ----------------------------------------
                                       if nAno = 2000 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2000 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2001 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2001 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2002 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2002 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2003 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2003 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2004 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2004 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2005 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2005 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2006 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2006 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2007 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2007 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2008 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2008 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2009 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2009 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2010 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2010 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;


                                       if nAno = 2011 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2011 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2012 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2012 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2013 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2013 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2014 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2014 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2015 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2015 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2016 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2016 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2017 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2017 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2018 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2018 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2019 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2019 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       if nAno = 2020 then
                                                 begin
                                                     update fep_aux_proc_acum_lic
                                                            set ano_2020 = nTotMes
                                                      where ate_mes                    = nMes
                                                           and cldo_id                       = nCldo_id
                                                           and seto_id                       = nSeto_id
                                                           and tipo                              = 3
                                                           and operador_inclusao = p_usuario;
                                                                        commit;
                                                 end;
                                       end if;

                                       end if;

                                       ----------------------------------------

                                       nMes := nMes + 1;

                                       --if nAno = nAnoAtual then
                                       --       if nMes > nMesAtual then
                                       --              nMes := 13;
                                       --       end if;
                                       --end if;

                           end loop;
                           -----------------------------------------

                           nAno := nAno + 1;

                end loop;
               -----------------------------------------------------------------------------------

      end if;
  end loop; -- c1

  end if;   --- fim setor
  end loop;    -- fim loop setor (c0)


end;
PROCEDURE PR_PRCR_ESTR_ENERGIA
 (P_PRCR_ID IN number
 ,P_ATAN_ID IN number
 )
 IS


    vCodEstr0      varchar2(100);
    nLatitude0     number(11,8);
    nLongitude0    number(11,8);

    vCodEstr1      varchar2(100);
    nLatitude1     number(11,8);
    nLongitude1    number(11,8);

    vCodEstr2      varchar2(100);
    nLatitude2     number(11,8);
    nLongitude2    number(11,8);

    nContador      number(5);

    nAtce_id_codigo    number(10);
    nAtce_id                   number(10);


    cursor c1 is
       select  nvl(esen.atce_id,0) atce_id_codigo,
                     esen.atce_id
           from fep_ativ_estr_energia esen
         where esen.atan_id = p_atan_id
      group by nvl(esen.atce_id,0),
                        esen.atce_id
       order by 1;

    cursor c2 is
       select esen.cod_estrutura,
                    esen.latitude,
                    esen.longitude
         from fep_ativ_estr_energia esen
        where esen.atan_id = p_atan_id
             and nvl(esen.atce_id,0) = nAtce_id_codigo
        order by  esen.esen_id;
begin

   ------------------------------------------------------------------
   -- rotina chamada na package pck_processos - e chamada no PROR0825
   -- utiliza para os ramos 3510.22 e 123.20
   ------------------------------------------------------------------


   -- exclui o que estiver pendente
   begin
     delete
       from fep_aux_prcr_estr_energia
      where prcr_id = p_prcr_id;
               commit;
   end;

   open c1;
   loop

      fetch c1 into nAtce_id_codigo, nAtce_id;

      if c1%notfound then
              close c1;
              commit;
             exit;
      else

             ------------------------------------------------------------------------------------------------------------
             --- Linhas das Coordenadas
             ------------------------------------------------------------------------------------------------------------
              vCodEstr1     := null;
              nLatitude1    := null;
              nLongitude1 := null;

              vCodEstr2     := null;
              nLatitude2    := null;
              nLongitude2 := null;

              nContador   := 1;

              open c2;

              loop

                     fetch c2 into vCodEstr0, nLatitude0, nLongitude0;

                     if c2%notfound then
                           close c2;

                            if nContador > 1 then

                                    -- insere o que estiver pendente
                                   begin
                                          insert into fep_aux_prcr_estr_energia (
                                                        aest_id, prcr_id,
                                                        cod_estrutura1, latitude1, longitude1,
                                                        cod_estrutura2, latitude2, longitude2,
                                                       atce_id
                                                             ) values (
                                                       aest_seq.nextval, p_prcr_id,
                                                       vCodEstr1, nLatitude1, nLongitude1,
                                                       vCodEstr2, nLatitude2, nLongitude2,
                                                       nAtce_id );
                                                                               commit;
                                   end;

                        end if;

                       exit;

                   else

                       if nContador = 1 then
                               vCodEstr1   := vCodEstr0;
                               nLatitude1  := nLatitude0;
                               nLongitude1 := nLongitude0;

                       elsif nContador = 2 then

                              vCodEstr2   := vCodEstr0;
                              nLatitude2  := nLatitude0;
                              nLongitude2 := nLongitude0;

                                       begin
                                             insert into fep_aux_prcr_estr_energia (
                                                        aest_id, prcr_id,
                                                       cod_estrutura1, latitude1, longitude1,
                                                       cod_estrutura2, latitude2, longitude2,
                                                       atce_id
                                                             ) values (
                                                       aest_seq.nextval, p_prcr_id,
                                                       vCodEstr1, nLatitude1, nLongitude1,
                                                       vCodEstr2, nLatitude2, nLongitude2,
                                                       nAtce_id );
                                                                             commit;
                                      end;

                                      vCodEstr1   := null;
                                      nLatitude1  := null;
                                      nLongitude1 := null;

                                      vCodEstr2   := null;
                                      nLatitude2  := null;
                                      nLongitude2 := null;

                                      nContador   := 0;

                        end if;

                        nContador := nContador + 1;

                   end if;

             end loop; -- fim do loop c2
             ------------------------------------------------------------------------------------------------------------
      end if;
   end loop;   -- fim do loop c1

end;
PROCEDURE PR_PROC_AT_RAAT_PROC
 IS

  cursor c1 is
       select proc.proc_id, proc.raat_id_proc, pck_processos.FC_PROC_ATAN(proc.proc_id) atan,
       ata1.raat_id ramo_novo
  from fep_processos proc,
       fep_atividades_antropicas ata1
where    pck_processos.FC_PROC_ATAN(proc.proc_id) = ata1.atan_id
and       ata1.raat_id != proc.raat_id_proc
order by 4,3;

r1   c1%rowtype;

begin
  open c1;
  loop
     FETCH C1 INTO R1;
     IF C1%NOTFOUND THEN
        COMMIT;
        CLOSE C1;
        EXIT;
     ELSE
        begin
           update fep_processos
              set raat_id_proc = r1.ramo_novo,
                  data_atualizacao = sysdate,
                  operador_atualizacao = 'AUT-CORR RAMO PROC/ATAN'
            where proc_id = r1.proc_id;

                commit;
        end;
     end if;
  end loop;

end;

FUNCTION FC_PROC_TIPO_LO
 (P_PROC_ID IN NUMBER
 )
 RETURN NUMBER
 IS
nAtan_id                      number(10);
nTotal_lo_regulariz   number(3) := 0;
nTotal_lo_renov         number(3) := 0;

cursor  atan1   is
                select  resp.atan_id
                from    fep_processos                 proc,
            fep_responsabilidades   resp
                where   proc.proc_id = p_proc_id
  and proc.tido_id = 120
                and       proc.resp_id = resp.resp_id;

cursor  atan2   is
                select  resp.atan_id
                from    fep_processos                      proc,
    fep_empreend_processos epro,
            fep_responsabilidades        resp
                where   proc.proc_id = p_proc_id
  and proc.tido_id = 120
  and proc.proc_id = epro.proc_id
                and       epro.resp_id = resp.resp_id;

cursor  proc1   is    -- proc de regularização
                select  count(*)
                from    fep_processos                              proc,
            fep_responsabilidades                resp,
    fep_documentos                        docu
                where   proc.tido_id <> 120
  and proc.resp_id = resp.resp_id
                and       resp.atan_id = nAtan_id
  and proc.proc_id < p_proc_id
  and proc.proc_id = docu.proc_id
  and docu.tido_id in(100, 110)
                   and           docu.situacao  <> 'B'; -- Em Trabalho

cursor  proc11  is    -- proc de regularização integradoras
                select  nvl(count(*),0)
                from    fep_processos                              proc,
    fep_empreend_processos     epro,
            fep_responsabilidades                resp,
    fep_documentos                        docu
                where   proc.tido_id <> 120
  and proc.proc_id = epro.proc_id
                  and            epro.resp_id = resp.resp_id
                and       resp.atan_id = nAtan_id
  and proc.proc_id < p_proc_id
  and proc.proc_id = docu.proc_id
  and docu.tido_id in(100, 110)
                   and           docu.situacao  <> 'B'; -- Em Trabalho

cursor  proc2   is    -- renovação de LO
                select  nvl(count(*),0)
                from    fep_processos                 proc,
            fep_responsabilidades   resp,
    fep_documentos           docu
                where   proc.tido_id = 120
  and proc.resp_id = resp.resp_id
                and       resp.atan_id = nAtan_id
  and proc.proc_id < p_proc_id
  and proc.proc_id = docu.proc_id
  and docu.tido_id = 120
                   and           docu.situacao  <> 'B'; -- Em Trabalho

cursor  proc22  is  -- renovação de LO integradoras
                select  nvl(count(*),0)
                from    fep_processos                      proc,
    fep_empreend_processos epro,
            fep_responsabilidades        resp,
    fep_documentos                docu
                where   proc.tido_id = 120
  and proc.resp_id is null
  and proc.proc_id = epro.proc_id
                   and           epro.resp_id = resp.resp_id
                and       resp.atan_id = nAtan_id
  and proc.proc_id < p_proc_id
  and proc.proc_id = docu.proc_id
  and docu.tido_id = 120
                   and           docu.situacao  <> 'B'; -- Em Trabalho
begin
  -- quando retornar 0 - não é um processo de LO
  -- quando retornar 1 - LO de regularização
  -- quando retornar 2 - LO(normal, já tem processo licenciatório anterior diferente de LO)
  -- quando retornar 3 - LO de renovação(já possui LO anterior)

  open  atan1;
  fetch atan1 into  nAtan_id;
  close atan1;

  if  nAtan_id  is  null  then
    open  atan2;
    fetch atan2 into  nAtan_id;
    close atan2;
  end if;
  if  nAtan_id  is  null  then
    return(0);  -- não é um processo LO
  end if;

  -- verifica se já possui um processo licenciatório anterior diferente de LO(se não tem é regularização)
  open  proc1;
  fetch proc1   into  nTotal_lo_regulariz;
  close proc1;
  if  nTotal_lo_regulariz   = 0 then
    open  proc11;
    fetch proc11  into  nTotal_lo_regulariz;
    close proc11;
  end if;

  -- verifica se já possui um processo licenciatório de LO(renovação),
  open  proc2;
  fetch proc2   into  nTotal_lo_renov;
  close proc2;
  if  nTotal_lo_renov   = 0 then
    open  proc22;
    fetch proc22  into  nTotal_lo_renov;
    close proc22;
  end if;
  if  nTotal_lo_renov   = 0 then
    return(2);
  else
    return(3);
  end if;
end;
FUNCTION FC_PROC_POSSUI_OF1300
 (P_PROC_ID IN number
 )
 RETURN VARCHAR2
 IS

     nCont     number(5);
     vSimNao   varchar2(1) := null;

cursor c1 is
   select count(*)
      from fep_documentos docu
     where docu.proc_id = p_proc_id
       and docu.tido_id in(1300,3000,3500)
       and docu.situacao  in ('E' );
begin

   if p_proc_id is not null then
      open  c1;
      fetch c1 into nCont;
      close c1;

      if nCont > 0 then
         vSimNao := 'S';
      end if;
    end if;

    return(vSimNao);
end;

FUNCTION FC_PROC_RENOVACAO
 (P_TIPO IN number
 ,P_ATAN_ID IN number
 ,P_TIDO_ID IN number
 ,P_DATA_PROC_PRORR IN date
 )
 RETURN NUMBER
 IS


     nProc_id   number(10)  := null;
     nQuant     number(5);

     cursor c1 is
        select proc.proc_id
          from fep_processos         proc,
               fep_responsabilidades resp
         where proc.resp_id = resp.resp_id
           and resp.atan_id = p_atan_id
           and proc.tido_id = p_tido_id
           and trunc(proc.data_entrada) > p_data_proc_prorr
           and proc.situacao not in ('A','D','S','H','P','J')
           and not exists ( select null
                              from fep_documentos             docu1,
                                   fep_tipos_documentos       tido1,
                                   fep_sub_classes_documentos sucd1
                            where  docu1.proc_id = proc.proc_id
                              and  docu1.tido_id = tido1.tido_id
                              and  tido1.sucd_id = sucd1.sucd_id
                              and  sucd1.cldo_id < 7
                              and  docu1.situacao not in ('B','T','C','T','K' ))
    order by proc.data_entrada desc;


     cursor c2 is
        select count(*)
          from fep_processos         proc,
               fep_responsabilidades resp
         where proc.resp_id = resp.resp_id
           and resp.atan_id = p_atan_id
           and proc.tido_id = p_tido_id
           and trunc(proc.data_entrada) > p_data_proc_prorr
           and proc.situacao not in ('A','D','S','H','P','J')
           and not exists ( select null
                              from fep_documentos             docu1,
                                   fep_tipos_documentos       tido1,
                                   fep_sub_classes_documentos sucd1
                            where  docu1.proc_id = proc.proc_id
                              and  docu1.tido_id = tido1.tido_id
                              and  tido1.sucd_id = sucd1.sucd_id
                              and  sucd1.cldo_id < 7
                              and  docu1.situacao not in ('B','T','C','T','K' ));
begin

    -- Qual processo para a prorrogação
    if p_tipo = 1 then
       open c1;
       fetch c1 into nProc_id;
       close c1;
       return(nProc_id);
    end if;


    -- Quantos proc abertos após prorrogação
    if p_tipo = 2 then
       open  c2;
       fetch c2 into nQuant;
       close c2;
       return(nQuant);
    end if;


    return(nProc_id);
end;
FUNCTION FC_PRCR_NOME_ATIV
 (P_PRCR_ID IN number
 ,P_PROC_ID IN number
 ,P_ATAN_ID IN number
 )
 RETURN VARCHAR2
 IS


    --nLcrs_id          NUMBER(10); -- (TG) Não utilizada
    --vUsuario          VARCHAR2(30); -- (TG) Não utilizada
    --dDataAtual        DATE; -- (TG) Não utilizada
    vDescricaoAtan    VARCHAR2(500) := NULL;
    vCulturas         VARCHAR2(300) := NULL;
    vDescricaoAtiv    VARCHAR2(500) := NULL;
    vClasse_I         VARCHAR2(1);
    vClasse_IIA       VARCHAR2(1);
    vClasse_IIB       VARCHAR2(1);
    vIndustrial       VARCHAR2(1);
    vClasseResiduo    VARCHAR2(40);
    nDmTipoGas        NUMBER(1);
    nRaat_id          number(7,2);
    nGrupoAut         number(2);
    nTido_id          number(5);
    nAspr_id          number(4);
   vClasse_outros     varchar2(1);
   vClasse_outros_descr    varchar2(50);
   vDescricaoRaat    varchar2(150);

    cursor c0 is
       select ata1.raat_id,
                    raat.dm_grupo_aut,
                    raat.descricao
         from fep_atividades_antropicas ata1,
              fep_ramos_atividades      raat
        where ata1.atan_id = p_atan_id
          and ata1.raat_id = raat.raat_id;


    cursor c00 is
       select proc.tido_id,
              proc.aspr_id
         from fep_processos proc
        where proc.proc_id = p_proc_id;


    CURSOR c1 IS
       SELECT prcr.descricao_atividade
         FROM fep_aux_proc_cond_restr prcr
        WHERE prcr.prcr_id = p_prcr_id;

    CURSOR c2 IS
       SELECT
           SUBSTR(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
            REPLACE(REPLACE(
              ata1.descricao,
            'ACESSORIO'     ,'ACESSÓRIO'),
            'AGROPECUARIA'  ,'AGROPECUÁRIA'),
            'AGROTOXICO'    ,'AGROTÓXICO'),
            'ALUMINIO'      ,'ALUMÍNIO'),
            'ART '          ,'ARTEFATOS METÁLICOS '),
            'ASPERSAO'      ,'ASPERSÃO'),
            'BENEF '        ,'BENEFICIAMENTO '),
            'BERCARIO'      ,'BERÇÁRIO'),
            'CACAO'         ,'CAÇÃO'),
            'CALCADO'       ,'CALÇADO'),
            'CARVAO'        ,'CARVÃO'),
            'CLASSIFICACAO' ,'CLASSIFICAÇÃO'),
            'COMERCIO'      ,'COMÉRCIO'),
            'CONEXOES'      ,'CONEXÕES'),
            'CONSTRUCAO'    ,'CONSTRUÇÃO'),
            'COM TINGIM'    ,'COM TINGIMENTO'),
            'C/TING'        ,'COM TINGIMENTO'),
            'DE ACO'        ,'DE AÇO'),
            'CRIACAO '      ,'CRIAÇÃO '),
            'TERMINACAO '   ,'TERMINAÇÃO '),
            'DEPOSITO'      ,'DEPÓSITO'),
            'DOMESTICO'     ,'DOMÉSTICO'),
            'EM ACO'        ,'EM AÇO'),
            'ENG DE'        ,'ENGENHO DE'),
            'ESTRUT '       ,'ESTRUTURAS '),
            'ESTR '         ,'ESTRUTURAS '),
            'EXTRACAO'      ,'EXTRAÇÃO'),
            'FAB '          ,'FABRICAÇÃO '),
            'FABRICACAO'    ,'FABRICAÇÃO'),
            'FEIJAO'        ,'FEIJÃO'),
            'FUNDICAO'      ,'FUNDIÇÃO'),
            'GRAOS'         ,'GRÃOS'),
            'IMPRESSOES'    ,'IMPRESSÕES'),
            'IND '          ,'INDÚSTRIA '),
            'IRRIGACAO'     ,'IRRIGAÇÃO'),
            'LAPIDACAO'     ,'LAPIDAÇÃO'),
            'MARMORE'       ,'MÁRMORE'),
            'MECANICA'      ,'MECÂNICA'),
            'METALICA'      ,'METÁLICA'),
            'METALICO'      ,'METÁLICO'),
            'METALIZACAO'   ,'METALIZAÇÃO'),
            'METALURGICA'   ,'METALÚRGICA'),
            'MINERIO'       ,'MINÉRIO'),
            'MONT MAQ '     ,'MONTAGEM DE MÁQUINAS '),
            'MOVEIS'        ,'MÓVEIS'),
            ' NAO '         ,' NÃO '),
            'PARBOILIZACAO' ,'PARBOILIZAÇÃO'),
            'PECAS'         ,'PEÇAS'),
            'PLAST '        ,'PLÁSTICOS '),
            'PLASTICOS'     ,'PLÁSTICOS'),
            'PROD DE'       ,'PRODUÇÃO DE'),
            'PRODUCAO'      ,'PRODUÇÃO'),
            'RACOES'        ,'RAÇÕES'),
            'SELECAO'       ,'SELEÇÃO'),
            'SERVICO'       ,'SERVIÇO'),
            'SINALIZACAO'   ,'SINALIZAÇÃO'),
            'SUBSTANCIA'    ,'SUBSTÂNCIA'),
            'USO INDL'      ,'USO INDUSTRIAL'),
            'VACUO'         ,'VÁCUO'),
            'LABORATORIO'   ,'LABORATÓRIO'),
            'ANALISE'       ,'ANÁLISE'),
            'VALVULAS'      ,'VÁLVULAS'),
            'VINICOLA'      ,'VINÍCOLA'),
            'ACRILICO'      ,'ACRÍLICO'),
            'DECORACAO'     ,'DECORAÇÃO'),
            '0',''),'1',''),'2',''),'3',''),'4',''),
            '5',''),'6',''),'7',''),'8',''),'9',''),
            ' / ','/'),' /','/'),'/ ','/'),
            '- FILIAL',''),'- MATRIZ',''),
                             1,100)    descricao_atividade
         FROM fep_atividades_antropicas ata1
        WHERE ata1.atan_id  = p_atan_id;

    -- para documento = 431
    CURSOR c3 IS
       SELECT arsi.dm_classe_I,
              arsi.dm_classe_IIA,
              arsi.dm_classe_IIB,
              arsi.dm_industrial,
              arsi.dm_classe_outros,
              arsi.classe_outros
         FROM fep_aux_prcr_destinos_rsi arsi
        WHERE arsi.prcr_id = p_prcr_id;

    CURSOR c4 IS
       SELECT raat.descricao
         FROM fep_ramos_atividades raat
        WHERE raat.raat_id = nRaat_id;

    CURSOR c5 IS
       SELECT ptcb.dm_tipo_gas
         FROM fep_postos_combustiveis ptcb
        WHERE ptcb.atan_id = nRaat_id;


BEGIN

 open  c0;
 fetch c0 into nRaat_id, nGrupoAut, vDescricaoRaat;
 close c0;

 open  c00;
 fetch c00 into nTido_id, nAspr_id;
 close c00;

 IF nTido_id = 281 THEN  -- tido=281 - LAC
    return(vDescricaoRaat);
 END IF;

 IF nTido_id != 431 THEN  -- tido=431 sempre refaz a descrição
    OPEN  c1;
    FETCH c1 INTO vDescricaoAtiv;
    CLOSE c1;
 END IF;

 IF vDescricaoAtiv IS not NULL THEN

    return(vDescricaoAtiv); -- se já tem na tabela, deixa a que está

 else


    /* (TG) Variável não utilizada
    SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;
    vUsuario := vUsuario || '-' || 'AUTOM.';*/

    -- Ramos de Grupo 16 - setor Responsável DASP
    IF nRaat_id in (  10430.00, 10430.10, 10440.00, 10450.00, 10460.00,
                      10710.00, 10720.00, 10730.00, 10740.00, 10750.00,
                      10760.00, 10770.00, 10780.00, 10830.00, 10860.00 ) then
       vDescricaoAtiv := vDescricaoRaat;
       return(vDescricaoAtiv);
    end if;

    IF nTido_id = 431 THEN -- RSI

       OPEN  c3;
       FETCH c3 INTO vClasse_I, vClasse_IIA, vClasse_IIB, vIndustrial, vClasse_outros, vClasse_outros_descr;
       CLOSE c3;

       IF vClasse_I = 'S' THEN
          vClasseResiduo := 'I';
       END IF;

       IF vClasse_IIA = 'S' THEN
          IF vClasseResiduo IS NULL THEN
             vClasseResiduo := 'II - A';
          ELSE
             IF vClasse_IIB = 'S'  or vClasse_outros = 'S' THEN
                vClasseResiduo := vClasseResiduo || ', II - A';
             ELSE
                vClasseResiduo := vClasseResiduo || ' e II - A';
             END IF;
          END IF;
       END IF;

       IF vClasse_IIB = 'S' THEN
          IF vClasseResiduo IS NULL THEN
             vClasseResiduo := 'II - B';
          ELSE
             IF vClasse_outros = 'S' THEN
                vClasseResiduo := vClasseResiduo || ', II - B';
             ELSE
                vClasseResiduo   := vClasseResiduo || ' e II - B';
             END IF;
          END IF;
       END IF;

       IF vClasse_Outros = 'S' THEN
          IF vClasseResiduo IS NULL THEN
             vClasseResiduo     := vClasse_Outros_descr ;
          ELSE
             vClasseResiduo     := vClasseResiduo || ' e  ' || vClasse_Outros_descr;
           END IF;
       END IF;


       IF vClasseResiduo IS NOT NULL THEN
          IF vIndustrial = 'S' THEN
             vDescricaoAtan := 'REMESSA DE RESÍDUOS SÓLIDOS INDUSTRIAIS CLASSE ' || vClasseResiduo;
          ELSE
             vDescricaoAtan := 'REMESSA DE RESÍDUOS SÓLIDOS CLASSE ' || vClasseResiduo;
          END IF;
       END IF;

    ELSIF nGrupoAut = 5 AND     -- DMIN
          nRaat_id != 550.00       THEN    -- Dragas
          IF vDescricaoAtiv IS NULL THEN
             OPEN  c4;
             FETCH c4 INTO vDescricaoAtan; -- buscar do ramo
             CLOSE c4;
          END IF;
    ELSE
         OPEN  c2;
         FETCH c2 INTO vDescricaoAtan;
         CLOSE c2;

         IF nRaat_id IN ( 111.30, 111.41, 111.42 ) THEN
            vCulturas := pck_irrig_cadastro.fc_irrig_culturas(p_atan_id);
            vDescricaoAtan := vDescricaoAtan || ' DE ' || UPPER(vCulturas);
         ELSIF nRaat_id = 550.00 THEN
            --vDescricaoAtan := 'USO DE EQUIPAMENTO DE DRAGAGEM';
            -- Suporte 41666 ( Malu 05/07/2013 )
            vDescricaoAtan := 'EQUIPAMENTO DE DRAGA';
         END IF;

    END IF;

    -- LP PARA POSTOS DE COMBUSTIVEIS   28/09/2012 - Malu
    IF nRaat_id = 4751.30 THEN
       OPEN  c5;
       FETCH c5 INTO nDmTipoGas;
       CLOSE c5;

       IF nTido_id = 100 THEN
          -- 1 - GNC - Gás Natural Comprimido
          IF nDmTipoGas = 1 THEN
             vDescricaoAtan := 'COMÉRCIO VAREJISTA DE COMBUSTÍVEIS E SERVIÇOS e ' ||
                               'GÁS NATURAL VEICULAR COM ALIMENTAÇÃO POR CAMINHÃO FEIXE';
          END IF;
          -- 2 - GNV - Gás Natural Veicular
          IF nDmTipoGas = 2 THEN
             vDescricaoAtan := 'COMÉRCIO VAREJISTA DE COMBUSTÍVEIS E SERVIÇOS e ' ||
                               'GÁS NATURAL COMPRIMIDO COM ALIMENTAÇÃO POR GASODUTO';
          END IF;
          -- 3 - Não tem Gás
          IF nDmTipoGas = 3 THEN
             vDescricaoAtan := 'COMÉRCIO VAREJISTA DE COMBUSTÍVEIS E SERVIÇOS';
          END IF;
       END IF;

       IF nTido_id IN (106,181) THEN
          IF nDmTipoGas IN (1,2) THEN
             vDescricaoAtan := 'VIABILIZAR A AMPLIAÇÃO DA ATIVIDADE COMÉRCIO VAREJISTA DE COMBUSTÍVEIS ' ||
                               'COM INCLUSÃO DE ABASTECIMENTO DE ' ||
                               'GÁS NATURAL COMPRIMIDO (GNC) OU GÁS NATURAL VEICULAR (GNV)';
          END IF;
       END IF;

       IF nTido_id = 330 THEN
          IF nAspr_id = 5830 THEN
             vDescricaoAtan := 'APROVAÇÃO DO PLANO DE DESATIVAÇÃO DA ATIVIDADE';
          END IF;
       END IF;

    END IF;

    IF nRaat_id = 4750.20 THEN
       vDescricaoAtan := vDescricaoAtan || ' E AFINS';
    END IF;

    IF nGrupoAut  = 1 THEN -- DICOPI
       IF nTido_id IN (106,108,116,118,181,5181) THEN
          vDescricaoAtan := vDescricaoAtan || ' (AMPLIAÇÃO)';
       END IF;
       IF nTido_id IN (107,117) THEN
          vDescricaoAtan := vDescricaoAtan || ' (MODERNIZAÇÃO/AMPLIAÇÃO)';
       END IF;
    END IF;

    end if;

    return(vDescricaoAtan);

end;
PROCEDURE PR_PROC_GERA_DA880
 (P_PROC_ID_ARQUIVADO IN number
 ,P_DOCU_ID_PRORROGADO IN number
 ,P_USUARIO IN varchar2
 ,P_PRCR_ID_GERADO IN OUT number
 )
 IS



   nPrcr_id                number(10);
   nProc_id_prorr          number(10);
   vDoc_Prorr1             varchar2(120);
   vDoc_Prorr2             varchar2(200);
   vDoc_prorr3             varchar2(120);
   nSeto_id_assinatura     number(6);
   dDataAtual              date;
   vUsuario                varchar2(30);
   nPess_id_tecnico        number(10);
   nSeto_id_tecnico        number(6);
   vDescrAtividade         varchar2(500);
   nLinha                  number(5) := 0;
   vMotivoDA               varchar2(2000);
   vProcesso               varchar2(20);
   --vInformacaoPar          varchar2(2000); -- (TG) Não utilizada
   nAtan_id                number(10);

   nAnoEmissao             number(4);

   nDocu_id_Parecer        number(10);
   nNumero_Parecer         number(5);
   nDocu_id_DA             number(10);
   nNumero_DA              number(5);
   nDocu_id_Oficio         number(10);
   nNumero_Oficio          number(5);

   dDataIniVig             date;
   dDataFimVig             date;
   nTipoReg                number(1);
   vDmParecer              varchar2(1);
   vDmLicenca              varchar2(1);
   nContador               number(2);

   nScac_id_DA                     number(10);
   nSeto_id_emissor_DA   number(6);
   nSeto_01_DA                    number(6);

   cursor c0 is
      select count(*)
        from fep_aux_proc_cond_restr prcr
       where prcr.dm_ativo = 'S'
         and prcr.proc_id  = p_proc_id_arquivado
         and prcr.docu_id_licenca is null;

   cursor c00 is
      select count(*)
        from fep_aux_proc_cond_restr prcr
       where prcr.dm_ativo = 'S'
         and prcr.proc_id  = p_proc_id_arquivado
         and prcr.docu_id_licenca is not null;


   cursor c1 is
   select
          resp.atan_id,
          docu.proc_id,
          substr('DA REVOGAÇÃO PRORROGAÇÃO ' || tido.abreviatura || '  Nº ' ||
          docu.numero || '/' || docu.ano ,1,120)                        doc_prorr1,
          substr('REVOGAÇÃO DA PRORROGAÇÃO DA ' || tido.descricao || ' Nº ' ||
          docu.numero || '/' || docu.ano ,1,200)                        doc_prorr2,
          substr(tido.descricao || ' Nº ' ||
          docu.numero || '/' || docu.ano ,1,120)                        doc_prorr3
     from
          fep_documentos        docu,
          fep_tipos_documentos  tido,
          fep_processos         proc,
          fep_responsabilidades resp
    where
          docu.tido_id = tido.tido_id
      and docu.proc_id = proc.proc_id
      and proc.resp_id = resp.resp_id(+)
      and docu.docu_id = p_docu_id_prorrogado;


   cursor c2 is
   select
          substr(lpad(proc.numero,6,0)  || '-' ||
                 lpad(proc.orig_id,4,0) || '/' ||
                 lpad(proc.ano,2,0)     || '-' ||
                (proc.dv) ,1,16) processo
     from
          fep_processos   proc
    where
          proc.proc_id = p_proc_id_arquivado;


   CURSOR c3 IS
      SELECT aux.pess_id       pess_id,
             aux.seto_id       seto_id
        FROM fep_aux_func_ultimos    aux,
             dba_role_privs          ropr
       WHERE ropr.grantee      = aux.username
         AND ropr.granted_role = 'RL_GERACAO_DOC_AUT'
         AND ropr.grantee      = p_usuario;


  cursor c4 is
        select scac.scac_id,
                     scac.seto_id_emissor,
                     scac.seto_id_01
            from fep_docs_setores_acordo scac
         where scac.docu_id =  nDocu_id_DA;
begin



    select user, sysdate into vUsuario, dDataAtual from dual;
    vUsuario := p_usuario || '-DA880';

    ----------------------------------------------------------------------------
    --- desativa registro se já tiver começado a fazer a licença e não concluido
    ----------------------------------------------------------------------------
    open  c0;
    fetch c0 into nContador;
    close c0;
    if nContador > 0 then
          begin
             update fep_aux_proc_cond_restr
                set dm_ativo = 'N',
                    data_atualizacao = dDataAtual,
                    operador_atualizacao = vUsuario
              where dm_ativo = 'S'
                and proc_id  = p_proc_id_arquivado
                and docu_id_licenca is null;
                         commit;
          end;
    end if;

    ----------------------------------------------------------------------------
    -- Verifica se não tem registro ativo com documento emitido
    ----------------------------------------------------------------------------
    open  c00;
    fetch c00 into nContador;
    close c00;
    if nContador = 0 then

       open  c1;
       fetch c1 into nAtan_id, nProc_id_prorr, vDoc_prorr1, vDoc_prorr2, vDoc_prorr3;
       close c1;

       nSeto_id_assinatura := 2; --DIRTEC

       open  c2;
       fetch c2 into vProcesso;
       close c2;

       open  c3;
       fetch c3 into nPess_id_tecnico, nSeto_id_tecnico;
       close c3;

       vDescrAtividade := pck_processos.fc_prcr_nome_ativ(nPrcr_id, p_proc_id_arquivado, nAtan_id);

       ----------------------------------------------------------
       ---- cria o registro para geração do documento automático
       ----------------------------------------------------------

       SELECT prcr_seq.nextval INTO nPrcr_id  FROM dual;

       BEGIN
            INSERT INTO fep_aux_proc_cond_restr
                       (
       PRCR_ID,
       PROC_ID,
       PESS_ID_TECNICO,
       SETO_ID_TECNICO,
       DOCU_ID_PARECER,
       TIDO_ID_PARECER,
       DOCU_ID_LICENCA,
       TIDO_ID_LICENCA,
       OBSERVACAO,
       DM_ATIVO,
       DATA_INCLUSAO,
       OPERADOR_INCLUSAO,
       DATA_ATUALIZACAO,
       OPERADOR_ATUALIZACAO,
                         SETO_ID_ASSINATURA,
                         DM_LIBERA_ESPECIFICO,
       DATA_INICIO_VIGENCIA,
       DESCRICAO_ATIVIDADE,
                         DM_DATA_FIM_INF,
                         PROC_ID_ARQ_DA880,
                         DOCU_ID_OFICIO,
                         DOCU_ID_LIC_PRORR
                       ) VALUES (
       nPrcr_id,
       nProc_id_prorr,
       nPess_id_tecnico,
       nSeto_id_tecnico,
       nDocu_id_Parecer,
       12106,
       nDocu_id_DA,
       880,
       vDoc_prorr1,
       'S',
       dDataAtual,
       vUsuario,
       dDataAtual,
       vUsuario,
                         nSeto_id_assinatura,
                         'N',
       dDataAtual,
       vDescrAtividade,
                         'N',
                         p_proc_id_arquivado,
                         nDocu_id_Oficio,
                         p_docu_id_prorrogado
                       );

                              COMMIT;

      END;


      ----------------------------------------------------------------------------
      -- motivos: Corpo da DA - 880
      ----------------------------------------------------------------------------

      nLinha     := 0;

      vMotivoDA  := 'Conforme Lei Estadual nº 15.434, de 9 de janeiro de 2020, parágrafo 7º do artigo 54 e artigo 58, emite-se a ' || vDoc_prorr2 ||
                    ', visto o seguinte motivo:';
      nLinha     := nLinha + 10;
      nTipoReg   := 1;
      vDmParecer := 'S';
      vDmLicenca := 'S';
      pck_processos.pr_prcr_insert_AMLC(nPrcr_id, nLinha, vMotivoDA, dDataAtual, vUsuario, nTipoReg, vDmParecer,vDmLicenca);


      vMotivoDA  := null;
      nLinha     := nLinha + 10;
      nTipoReg   := 1;
      vDmParecer := 'S';
      vDmLicenca := 'S';
      pck_processos.pr_prcr_insert_AMLC(nPrcr_id, nLinha, vMotivoDA, dDataAtual, vUsuario, nTipoReg, vDmParecer,vDmLicenca);


      vMotivoDA  := 'Foi arquivado o processo administrativo nº ' || vProcesso ||
                    ' de renovação da ' || vDoc_prorr3 ||
                    ', por decurso de prazo de atendimento a complementações solicitadas.';
      nLinha     := nLinha + 10;
      nTipoReg   := 4;
      vDmParecer := 'S';
      vDmLicenca := 'S';
      pck_processos.pr_prcr_insert_AMLC(nPrcr_id, nLinha, vMotivoDA, dDataAtual, vUsuario, nTipoReg, vDmParecer,vDmLicenca);


      vMotivoDA  := 'Isto posto, julgo:';
      nLinha     := nLinha + 10;
      nTipoReg   := 2;
      vDmParecer := 'N';
      vDmLicenca := 'S';
      pck_processos.pr_prcr_insert_AMLC(nPrcr_id, nLinha, vMotivoDA, dDataAtual, vUsuario, nTipoReg, vDmParecer,vDmLicenca);


      vMotivoDA  := 'REVOGADA a PRORROGAÇÃO da ' || vDoc_prorr3 ||
                    ', com o cessamento da vigência da mesma a partir desta data.';
      nLinha     := nLinha + 10;
      nTipoReg   := 2;
      vDmParecer := 'N';
      vDmLicenca := 'S';
      pck_processos.pr_prcr_insert_AMLC(nPrcr_id, nLinha, vMotivoDA, dDataAtual, vUsuario, nTipoReg, vDmParecer,vDmLicenca);


      --------------------------------------------------------------------------------
      --- Gera o Parecer - Tido_id = 12106
      --------------------------------------------------------------------------------

      nAnoEmissao         := TO_NUMBER(TO_CHAR(SYSDATE,'rrrr'));
      SELECT docu_seq.nextval INTO nDocu_id_Parecer FROM dual;
      nNumero_Parecer     := pck_processos.fnc_busca_nro_docu(nAnoEmissao, 12106, nSeto_id_tecnico);
      dDataIniVig         := dDataAtual;
      dDataFimVig         := null;

      BEGIN
         INSERT INTO fep_documentos (
        DOCU_ID, NUMERO, ANO, TIDO_ID,  PROC_ID,
      DESCRICAO, DATA_EMISSAO, STATUS, SITUACAO,
      DATA_INICIO_VIGENCIA, DATA_FIM_VIGENCIA,
      DATA_INCLUSAO, DATA_ATUALIZACAO, OPERADOR_INCLUSAO, OPERADOR_ATUALIZACAO,
      RENOVAVEL, SETO_ID, ANO_EMISSAO,
      GERACAO_AUTOMATICA, DM_ASSINATURA_DIGITAL,
                        PESS_ID_EMISSOR, DM_RES052014
              ) VALUES (
        nDocu_id_parecer, nNumero_Parecer, nAnoEmissao, 12106, nProc_id_prorr,
      'Geração automática', dDataAtual, 1,'X',
      dDataIniVig, dDataFimVig,
      dDataAtual, dDataAtual, vUsuario, vUsuario,
      'N', nSeto_id_tecnico,  nAnoEmissao,
      'S', 'N',
                         nPess_id_tecnico, 'N'  );

                                commit;

      END;


      --------------------------------------------------------------------------------
      --- Gera a Decisão Administrativa - DA - Tido_id = 880
      --------------------------------------------------------------------------------

      SELECT docu_seq.nextval INTO nDocu_id_DA FROM dual;
      nNumero_DA          := pck_processos.fnc_busca_nro_docu(nAnoEmissao, 880, null);
      dDataIniVig         := dDataAtual;
      dDataFimVig         := null;

      BEGIN
         INSERT INTO fep_documentos (
        DOCU_ID, NUMERO, ANO, TIDO_ID,  PROC_ID,
      DESCRICAO, DATA_EMISSAO, STATUS, SITUACAO,
      DATA_INICIO_VIGENCIA, DATA_FIM_VIGENCIA, DOCU_ID_ORIGINA,
      DATA_INCLUSAO, DATA_ATUALIZACAO, OPERADOR_INCLUSAO, OPERADOR_ATUALIZACAO,
      RENOVAVEL, SETO_ID, ANO_EMISSAO,
      GERACAO_AUTOMATICA, DM_ASSINATURA_DIGITAL,
                        PESS_ID_EMISSOR, DM_RES052014
              ) VALUES (
        nDocu_id_DA, nNumero_DA, nAnoEmissao, 880, nProc_id_prorr,
      'Geração automática', dDataAtual, 1,'C',
      dDataIniVig, dDataFimVig, nDocu_id_parecer,
      dDataAtual, dDataAtual, vUsuario, vUsuario,
      'N', nSeto_id_tecnico,  nAnoEmissao,
      'S', 'N',
                         nPess_id_tecnico, 'N'  );

                                commit;

      END;



      --------------------------------------------------------------------------------
      --- Gera o Oficio de Aviso da Revogação da Prorrogação - Tido_id = 2900
      --------------------------------------------------------------------------------

      SELECT docu_seq.nextval INTO nDocu_id_Oficio FROM dual;
      nNumero_Oficio      := pck_processos.fnc_busca_nro_docu(nAnoEmissao, 2900, null);
      dDataIniVig         := dDataAtual;
      dDataFimVig         := null;

      BEGIN
         INSERT INTO fep_documentos (
        DOCU_ID, NUMERO, ANO, TIDO_ID,  PROC_ID,
      DESCRICAO, DATA_EMISSAO, STATUS, SITUACAO,
      DATA_INICIO_VIGENCIA, DATA_FIM_VIGENCIA, DOCU_ID_ORIGINA,
      DATA_INCLUSAO, DATA_ATUALIZACAO, OPERADOR_INCLUSAO, OPERADOR_ATUALIZACAO,
      RENOVAVEL, SETO_ID, ANO_EMISSAO,
      GERACAO_AUTOMATICA, DM_ASSINATURA_DIGITAL,
                        PESS_ID_EMISSOR, DM_RES052014
              ) VALUES (
        nDocu_id_Oficio, nNumero_Oficio, nAnoEmissao, 2900, nProc_id_prorr,
      'Geração automática', dDataAtual, 1,'C',
      dDataIniVig, dDataFimVig, nDocu_id_DA,
      dDataAtual, dDataAtual, vUsuario, vUsuario,
      'N', nSeto_id_tecnico,  nAnoEmissao,
      'S', 'N',
                         nPess_id_tecnico, 'N'  );

                                commit;

      END;


      ------------------------------------------------------------------------------
      -- Atualiza Tabela de Geração
      ------------------------------------------------------------------------------

       BEGIN

         UPDATE fep_aux_proc_cond_restr
            SET docu_id_parecer = nDocu_id_parecer,
                docu_id_licenca = nDocu_id_DA,
                docu_id_oficio  = nDocu_id_oficio
          WHERE prcr_id = nPrcr_id;

                        commit;
       END;


      -------------------------------------------------------------------------------
      -- Atualiza o histórico para Ciencia das Chefias    ( Malu 03/09/2013 )
      -------------------------------------------------------------------------------

      BEGIN
         pck_proc_assinat.pr_SCAC_inclusao(nPrcr_id, nDocu_id_Parecer, nDocu_id_DA);
                      commit;
      END;


      -------------------------------------------------------------------------------------------------------
      -- verifica se não gerou nenhum setor para fazer ciencia
      -- se sim, coloca o mesmo do setor emissor

      -- obs. esta alteração foi feita devido ao seguinte problema:
       -- está definido que quem assina estas DAs é a DIRTEC, quando o Rafael
       -- que é o atual chefe da DIRTEC fez o arquivamento, gerou o setor emissor,
       -- setor de ciencia e setor de assinatura tudo o mesmo, e então o fluxo
       -- não incluiu setor de ciência para nenhum setor.  ( Malu 17/09/2015 )
      -------------------------------------------------------------------------------------------------------
      open c4;
      fetch c4 into nScac_id_DA,   nSeto_id_emissor_DA, nSeto_01_DA;
      close c4;

      if nScac_id_DA    is not null   and
          nSeto_01_DA   is       null    then
           begin
                    update fep_docs_setores_acordo
                      set seto_id_01 = nSeto_id_emissor_DA,
                          Data_atualizacao = Sysdate,
                          Operador_Atualizacao = Substr(vUsuario, 1, 30)
                     where scac_id       = nScac_id_DA;
                                                 commit;
           end;
      end if;
      -------------------------------------------------------------------------------------------------------

      p_prcr_id_gerado := nPrcr_id;




   end if;

END;
FUNCTION FC_PROC_DOCU_PRORR
 (P_ATAN_ID IN number
 ,P_PROC_ID IN number
 ,P_TIDO_ID IN number
 )
 RETURN NUMBER
 IS



   nDocu_id    number(10);

   cursor c1 is
      select docu.docu_id
        from fep_responsabilidades resp,
             fep_processos         proc,
             fep_documentos        docu
       where resp.atan_id  = p_atan_id
         and resp.resp_id  = proc.resp_id
         and proc.proc_id  = docu.proc_id
         and docu.tido_id  = p_tido_id
         and docu.proc_id != p_proc_id
         and docu.situacao = 'G';
begin

   open  c1;
   fetch c1 into nDocu_id;
   close c1;

   return(nDocu_id);

end;
PROCEDURE PR_PRCR_GERA_AGROT_2800
 (P_PRCR_ID IN number
 )
 IS


     vUsuario                  VARCHAR2(30);
     dDataAtual              DATE;

     nProc_id                  number(10);
     nNumero                  NUMBER(5)   := NULL;
     nAnoEmissao         NUMBER(4);
     nSeto_id                   NUMBER(6)   := NULL;
     nTido_id                    number(5);
     nDocu_id                  number(10);
     dDataIniVig               date;
     nDocu_id_Comis    number(10)   := null;
      nCont                        number(3);
      nDocu_id_Existe   number(10);
      nDocu_id_func      number(10);

     cursor c1 is
        select prcr.proc_id,
                     prcr.seto_id_tecnico,
                     prcr.docu_id_comis_agrot
          from fep_aux_proc_cond_restr prcr
         where prcr.prcr_id = p_prcr_id
           and prcr.dm_ativo = 'S';


     cursor c2 is
        select docu.docu_id
          from fep_aux_proc_cond_restr prcr,
                    fep_documentos                   docu
         where prcr.prcr_id      = p_prcr_id
           and    prcr.dm_ativo  = 'S'
           and    prcr.proc_id     = docu.proc_id
           and    docu.tido_id     = 2800;


     cursor c3 is
        select count(*)
          from fep_documentos_funcionarios dofu
         where dofu.docu_id     = nDocu_id_func;
begin

   open  c1;
   fetch c1 into nProc_id, nSeto_id,  nDocu_id_Comis;
   close c1;

   open  c2;
   fetch  c2 into nDocu_id_Existe;
   close c2;
   if nDocu_id_existe is not null then
       nDocu_id_func :=  nDocu_id_Existe;
   end if;

   ----------------------------------------------------------------------
   -- incluir o documento tipo 2800 - Parecer Técnico Comissão Agrotóxico

   -- quando vai gerar no PROF0825 - se não tem o Paracer para Comissão
   -- estadual, gera o documento

   ----------------------------------------------------------------------
   if nProc_id                     is not  null  and
       nDocu_id_Comis     is          null  and
       nDocu_id_Existe     is          null  then

      select sysdate, user into dDataAtual, vUsuario from dual;
      vUsuario    := vUsuario || '-AUT';


      nAnoEmissao := TO_NUMBER(TO_CHAR(SYSDATE,'rrrr'));
      nTido_id    := 2800;
      nNumero     := pck_processos.fnc_busca_nro_docu(nAnoEmissao, nTido_id, null);

      dDataIniVig := dDataAtual;

      IF nNumero IS not NULL THEN

         SELECT docu_seq.nextval INTO nDocu_id FROM dual;
         IF nDocu_id IS not NULL THEN

           -- deixado como ger aut = N, se técnico resolver, pode gerar doc em word

            BEGIN
              INSERT INTO fep_documentos (
        DOCU_ID,NUMERO,ANO,TIDO_ID,PROC_ID,
      DESCRICAO,DATA_EMISSAO,
      STATUS, SITUACAO,DATA_INICIO_VIGENCIA,
                                                        PROTECAO,
                              DATA_INCLUSAO,DATA_ATUALIZACAO,
      OPERADOR_INCLUSAO,OPERADOR_ATUALIZACAO,
      RENOVAVEL,SETO_ID,ANO_EMISSAO,GERACAO_AUTOMATICA,
                                                        DM_ASSINATURA_DIGITAL,DM_VERIFICADO_PDF,DM_ORIGEM,DM_RES052014
                     ) VALUES (
        nDocu_id,nNumero,nAnoEmissao,nTido_id,nProc_id,
      'Geração automática',dDataAtual,
      1,'B',dDataIniVig,
                                                         'D',
      dDataAtual,dDataAtual,
      vUsuario,vUsuario,
                            'N',nSeto_id,nAnoEmissao,'N',
                                                       'N','N',1,'N' );

                         COMMIT;

            END;

            begin
                  update fep_aux_proc_cond_restr
                         set docu_id_comis_agrot = nDocu_id,
                                data_atualizacao = dDataAtual,
                                operador_atualizacao = vUsuario
                   where prcr_id = p_prcr_id
                        and docu_id_comis_agrot  is null
                        and dm_ativo = 'S';

                                          commit;
            end;

             nDocu_id_func := nDocu_id;

         END IF;
      END IF;
   END IF;

   ------------------------------------------------------------------------------------------------------
   -- Inclui os funcionarios da Fepam que assinam o parecer
   ------------------------------------------------------------------------------------------------------
    open c3;
    fetch c3 into nCont;
    close c3;

    if nCont = 0 then
        pck_processos.pr_prcr_ins_DOFU_2800( nDocu_id_func);
    end if;

end;
PROCEDURE PR_PRCR_INS_DOFU_2800
 (P_DOCU_ID IN number
 )
 IS
   nPess_id       number(10);
   nSeq           number(2);
   vTipoReg       varchar2(1);

  -- Conforme solicitação do Gian, constar somente a assinatura do técnico que está gerando o parecer
  -- Chamado 24276 - Cátia Jardim - 25/08/2021

   cursor c1 is
    select 1   seq,
           'A' tipo_reg,
            proc.pess_id_respondido
     from fep_documentos docu
         ,fep_processos proc
     where docu.proc_id = proc.proc_id
       and docu.docu_id =  P_DOCU_ID;

     /* select 1   seq,
             'A' tipo_reg,
             func.pess_id
        from fep_funcionarios func
       where func.pess_id = 171327
     union all
      select 2   seq,
             'V' tipo_reg,
             func.pess_id
        from fep_funcionarios func
       where func.pess_id = 90099
     union all
      select 3   seq,
             'V' tipo_reg,
             func.pess_id
        from fep_funcionarios func
       where func.pess_id = 123852
     order by 1;*/
BEGIN

  -- insere as pessoas que por padrão fazem os cadastros de agrotóxicos
  -- e assinam o Parecer para Comissão Estadual de Análise de Cadastro de Agrotóxicos
  --                                              ( Malu 17/07/2014 )
  open c1;
  loop
     fetch c1 into nSeq, vTipoReg, nPess_id;
     if c1%notfound then
        close c1;
        exit;
     else

        begin
           insert into fep_documentos_funcionarios (
                       DOFU_ID,
                                        PESS_ID,
                                        DOCU_ID,
                                        AVALIACAO,
                                       TIPO_AVALIACAO,
                                       ITEM_KEY,
                                       ITEM_TYPE,
                                       PASSO,
                                       STATUS
                       ) values (
                       DOFU_seq.nextval,
                                        nPess_id,
                                        p_docu_id,
                                        'N',
                                      vTipoReg,
                                     null,
                                    null,
                                    null,
                                   null );
                                                  commit;
        end;
     end if;
  end loop;

END;
FUNCTION FC_LIC_RENOVACAO
 (P_ATAN_ID IN number
 ,P_TIDO_ID IN number
 ,P_TIPO IN number
 ,P_PROC_ID IN NUMBER
 )
 RETURN NUMBER
 IS


nParametro     number(10)   := null;
nDocu_id       number(10);
dDataFim1      date         := null;
dDataFim2      date         := null;
dDataFim3      date         := null;
--dDataComp      date         := null; -- (TG) Não utilizada
dDataAtual     date         := trunc(sysdate);
nDias          number(10);
vGerarPort46         varchar2(1);

-- conforme solicitado pelo CristianoHP - liberar para todos os ramos
-- e não somente ( 3513.20, 3114.10 )
-- ter processo de renovação como LU - tendo a licença anterior como LO
--       função usada na rotina pck_processos.pr_gera_proc_port462015
--                     Malu 10/01/2019

cursor c1 is
select docu1.docu_id,
       docu1.data_fim_vigencia,
       decode(docu1.dm_data_extendida_pandemia,
                  'S',docu1.data_fim_vigencia,
                  prcr.data_fim_vigencia) data_fim,
       decode(docu1.dm_data_extendida_pandemia,
                  'S',docu1.data_fim_vigencia,
                  scac.data_fim_vig2)     data_fim_vig2
  from fep_processos             proc1,
       fep_responsabilidades     resp1,
       fep_atividades_antropicas ata1,
       fep_documentos            docu1,
       fep_aux_proc_cond_restr   prcr,
       fep_docs_setores_acordo   scac
 where proc1.resp_id = resp1.resp_id
   and proc1.proc_id = docu1.proc_id
   and ((docu1.tido_id = p_tido_id) or
        (docu1.tido_id in ( 125,126) and p_tido_id = 120 ) or
        (docu1.tido_id in ( 120,126) and p_tido_id = 151 ) or
        (docu1.tido_id in (230,231,232,233,235,236) and
             p_tido_id in (230,231,232,233,235,236) and
           proc1.raat_id_proc in (123.11,123.12,123.13,123.14,123.15,123.16))
       )
   and resp1.atan_id = p_atan_id
   and resp1.atan_id = ata1.atan_id
   and docu1.geracao_automatica = 'S'
   and docu1.situacao in ( 'E','V','T','G' )
   and docu1.docu_id = prcr.docu_id_licenca(+)
   and docu1.docu_id = scac.docu_id(+)
order by
       docu1.data_inicio_vigencia desc;


cursor c2 is
select proc.dm_gera_port46
   from fep_processos proc
 where proc.proc_id = p_proc_id;


cursor c3 is
select docu1.docu_id,
       docu1.data_fim_vigencia    data_fim_vigencia
  from fep_processos proc1,
       fep_responsabilidades resp1,
       fep_atividades_antropicas ata1,
       fep_documentos docu1
 where proc1.resp_id = resp1.resp_id
   and proc1.proc_id = docu1.proc_id
   and ((docu1.tido_id = p_tido_id) or
        (docu1.tido_id in ( 125,126) and p_tido_id = 120 ) or
        (docu1.tido_id in ( 120,126) and p_tido_id = 151 ) or
        (docu1.tido_id in (230,231,232,233,235,236) and
             p_tido_id in (230,231,232,233,235,236) and
           proc1.raat_id_proc in (123.11,123.12,123.13,123.14,123.15,123.16))
        )
   and resp1.atan_id = p_atan_id
   and resp1.atan_id = ata1.atan_id
   and docu1.situacao in ( 'E','V','T','G' )
order by
       docu1.data_inicio_vigencia desc;
begin

   -- Documento anterior é automático

   open  c1;
   fetch c1 into nDocu_id, dDataFim1, dDataFim2, dDataFim3;
   close c1;

   if nDocu_id is not null then
      if p_tipo = 1 then
         nParametro := nDocu_id; -- retorna o documento gerado
      else
        
         nDias := null;
         
         -----------------------------------------------------------
         -- verifica se data_fim_documento  >  data_fim da ciencia
         -- extendida a data de fim de vigencia devido as enchentes
         -- SUP 47468 PORT FEP 340/2023
         --                                  ( Malu 08/11/2023 )
         -----------------------------------------------------------
         if dDataFim1 is not null and dDataFim3 is not null then
            if dDataFim1 > dDataFim3 then
               --dDataComp := dDataFim1; -- (TG) Não utilizada
               nDias :=  dDataFim1 - dDataAtual;
            end if;
         end if;
         
         if nDias is null then
            if dDataFim3 is not null then
               --dDataComp := dDataFim3; -- (TG) Não utilizada
               nDias :=  dDataFim3 - dDataAtual;
            elsif
               dDataFim2 is not null then
               --dDataComp := dDataFim2; -- (TG) Não utilizada
               nDias :=  dDataFim2 - dDataAtual;
            elsif
               dDataFim1 is not null then
               --dDataComp := dDataFim1; -- (TG) Não utilizada
               nDias :=  dDataFim1 - dDataAtual;
            end if;
         end if;

         nParametro := nDias; -- retorna o nro dias de vencimento

       end if;

  else

     --- Quando processo é liberado para gerar pela portaria 46/2015 - e documento anterior é manual
      open  c2;
      fetch  c2 into vGerarPort46;
      close c2;
      if vGerarPort46 = 'S' then

            open  c3;
            fetch c3 into nDocu_id, dDataFim1;
            close c3;

            if nDocu_id is not null then
                         if p_tipo = 1 then
                              nParametro := nDocu_id; -- retorna o documento gerado
                       else
                             if  dDataFim1 is not null then
                                 --dDataComp := dDataFim1; -- (TG) Não utilizada
                                 nDias :=  dDataFim1 - dDataAtual;
                            end if;

                            nParametro := nDias; -- retorna o nro dias de vencimento

                       end if;
             end if;

        end if;

   end if;

   return(nParametro);

end;

FUNCTION FC_VENC_ULT_LO_AUT
 (P_DOCU_ID IN number
 )
 RETURN DATE
 IS

  dDataVencAnt   DATE   := NULL;

  nDocu_id       NUMBER(10);
  dDataFim1      DATE         := NULL;
  dDataFim2      DATE         := NULL;
  dDataFim3      DATE         := NULL;
  --dDataComp      DATE         := NULL; -- (TG) Não utilizada
  vDmExtendida   varchar2(1);
  vSituacao      varchar2(1);
  
cursor c0 is
    SELECT docu.docu_id,
           docu.data_fim_vigencia,
           scac.data_fim_vig2      data_fim_scac
      FROM fep_documentos           docu,
           fep_docs_setores_acordo  scac
     WHERE docu.docu_id = p_docu_id
       AND docu.docu_id = scac.docu_id;
       
r0   c0%rowtype;

CURSOR c1 IS
    SELECT docu1.docu_id,
           nvl(docu1.dm_data_extendida_pandemia,'N') dm_extendida,
           docu1.situacao,
           docu1.data_fim_vigencia,
           decode(docu1.dm_data_extendida_pandemia,
                  'S',docu1.data_fim_vigencia,
                      prcr.data_fim_vigencia)  data_fim,
           decode(docu1.dm_data_extendida_pandemia,
                  'S',docu1.data_fim_vigencia,
                      scac.data_fim_vig2)      data_fim_vig2
      FROM fep_documentos           docu1,
           fep_aux_proc_cond_restr  prcr,
           fep_docs_setores_acordo  scac
     WHERE docu1.docu_id = p_docu_id
       AND docu1.docu_id = prcr.docu_id_licenca(+)
       AND docu1.docu_id = scac.docu_id(+);

CURSOR c2 IS
    SELECT docu1.docu_id,
           docu1.data_fim_vigencia,
           (prcr.data_fim_vigencia + 30)  data_fim,
           (scac.data_fim_vig2 + 30)      data_fim_vig2
      FROM fep_documentos           docu1,
           fep_aux_proc_cond_restr  prcr,
           fep_docs_setores_acordo  scac
     WHERE docu1.docu_id = p_docu_id
       AND docu1.docu_id = prcr.docu_id_licenca(+)
       AND docu1.docu_id = scac.docu_id(+);

CURSOR c3 IS
    SELECT docu1.docu_id,
           docu1.data_fim_vigencia,
           (prcr.data_fim_vigencia)  data_fim,
           (scac.data_fim_vig2)      data_fim_vig2
      FROM fep_documentos           docu1,
           fep_aux_proc_cond_restr  prcr,
           fep_docs_setores_acordo  scac
     WHERE docu1.docu_id = p_docu_id
       AND docu1.docu_id = prcr.docu_id_licenca(+)
       AND docu1.docu_id = scac.docu_id(+);


BEGIN
  
   -----------------------------------------------------------
   -- verifica se data_fim_documento  >  data_fim da ciencia
   -- extendida a data de fim de vigencia devido as enchentes
   -- SUP 47468 PORT FEP 340/2023
   --                                  ( Malu 08/11/2023 )
   -----------------------------------------------------------
   open c0;
   fetch c0 into r0;
   if c0%found then
      if r0.data_fim_vigencia > r0.data_fim_scac then
         dDataVencAnt := r0.data_fim_vigencia;
         close c0;
         return(dDataVencAnt);
      end if;
   end if;
   close c0;
   ----------------------------------------------------------
   

   OPEN  c1;
   FETCH c1 INTO nDocu_id, vDmExtendida, vSituacao, dDataFim1, dDataFim2, dDataFim3;
   CLOSE c1;

   IF nDocu_id IS NOT NULL THEN
      IF dDataFim3 IS NOT NULL THEN
         dDataVencAnt := dDataFim3;
      ELSIF
         dDataFim2 IS NOT NULL THEN
         dDataVencAnt := dDataFim2;
      ELSIF
         dDataFim1 IS NOT NULL THEN
         dDataVencAnt := dDataFim1;
      END IF;
   END IF;

   IF vSituacao    = 'G'   and
      vDmExtendida = 'S'   and
      dDataVencAnt is null and
      nDocu_id is not null then

       OPEN  c2;
       FETCH c2 INTO nDocu_id, dDataFim1, dDataFim2, dDataFim3;
       CLOSE c2;

       IF nDocu_id IS NOT NULL THEN
          IF dDataFim3 IS NOT NULL THEN
             dDataVencAnt := dDataFim3;
          ELSIF
             dDataFim2 IS NOT NULL THEN
             dDataVencAnt := dDataFim2;
          ELSIF
             dDataFim1 IS NOT NULL THEN
             dDataVencAnt := dDataFim1;
          END IF;
       END IF;
   END IF;

   IF vSituacao    = 'G'   and
      vDmExtendida = 'N'   and
      dDataVencAnt is null and
      nDocu_id is not null then

       OPEN  c3;
       FETCH c3 INTO nDocu_id, dDataFim1, dDataFim2, dDataFim3;
       CLOSE c3;

       IF nDocu_id IS NOT NULL THEN
          IF dDataFim3 IS NOT NULL THEN
             dDataVencAnt := dDataFim3;
          ELSIF
             dDataFim2 IS NOT NULL THEN
             dDataVencAnt := dDataFim2;
          ELSIF
             dDataFim1 IS NOT NULL THEN
             dDataVencAnt := dDataFim1;
          END IF;
       END IF;
   END IF;

   return(dDataVencAnt);

end;

FUNCTION FC_TECNICO_PARECER
 (P_PROC_ID IN NUMBER
 )
 RETURN VARCHAR2
 IS
vNome varchar2(120);
cursor  pess  is
  select  v.nome_tecnico
  from    v_pro_documentos_geral v
                   where      v.proc_id = p_proc_id
                   and  v.cldo_id = 12
  order by  v.docu_id desc;

cursor  proc  is
        select  pess.razao_social
  from  fep_documentos                           docu,
              fep_tipos_documentos                tido,
    fep_sub_classes_documentos sucd,
              fep_pessoas pess
       where     docu.proc_id = p_proc_id
  and docu.tido_id = tido.tido_id
  and     tido.sucd_id = sucd.sucd_id
  and            sucd.cldo_id = 12
  and            docu.pess_id_emissor = pess.pess_id
        order   by docu.docu_id desc;

cursor   prcr is
        select  pess.razao_social
      from  fep_aux_proc_cond_restr   prcr,
    fep_pessoas pess
      where       prcr.proc_id = p_proc_id
  and prcr.pess_id_tecnico = pess.pess_id;
begin

open proc;
fetch proc into vNome;
close proc;

if  vNome is null then
  open prcr;
  fetch prcr into vNome;
  close prcr;
end if;
return(vNome);

end;
PROCEDURE PR_PRCR_DELETAR
 (P_PRCR_ID IN number
 )
 IS
begin

      begin
        delete from fep_aux_gera_cond_restr
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from FEP_AUX_COND_RESTR_PAR_LIC
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from FEP_AUX_COND_RESTR_INFORMACOES
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from FEP_AUX_COND_RESTR_ESPECIAIS
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from FEP_AUX_COND_RESTR_PROC
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from FEP_AUX_PARAM_PADROES
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from fep_aux_carac_dragas
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from fep_aux_extracoes_minerais
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from fep_aux_extracoes_smam
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from FEP_AUX_MOTIVOS_IMPLOCAL
         where prcr_id = p_prcr_id;
      end;

      begin
        delete from fep_aux_proc_cond_restr
         where prcr_id = p_prcr_id;
      end;


      commit;

end;
PROCEDURE PR_PRCR_INS_CDRA_DRAGA
 (P_PRCR_ID IN NUMBER
 ,P_DESCRICAO IN VARCHAR2
 ,P_VALOR IN VARCHAR2
 ,P_CRITERIO IN VARCHAR2
 ,P_USUARIO IN varchar2
 )
 IS


   vValor   VARCHAR2(15);
BEGIN

   vValor := LPAD(LTRIM(RTRIM(p_valor)),15,' ');

   BEGIN

      INSERT INTO fep_aux_carac_dragas (
                  cdra_id,
                  prcr_id,
                  descricao,
                  valor_descr,
                  crit_medicao,
                  data_inclusao,
                  operador_inclusao
                    ) VALUES (
                  cdra_seq.nextval,
                  p_prcr_id,
                  p_descricao,
                  vValor,
                  p_criterio,
                  sysdate,
                  p_usuario  );

                            COMMIT;

    EXCEPTION
          WHEN OTHERS THEN
               raise_application_error(-20001, 'Erro2: Inclui Carac Dragas. CDRA >> ' || SQLCODE || ' - ' || SQLERRM );
   END;

END;
PROCEDURE PR_PRCR_CARACT_DRAGA
 (P_ATAN_ID IN NUMBER
 ,P_PRCR_ID IN NUMBER
 ,P_USUARIO IN varchar2
 )
 IS
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 17/09/2024
  | Purpose: Fechar cursores antes do final dos processos.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/


  vTexto             VARCHAR2(150);
  vValor             VARCHAR2(15) := NULL;
  vCriterio          VARCHAR2(15) := NULL;

  CURSOR c1 IS
      SELECT atdr.dm_classe_draga,
             atdr.dm_tipo_draga,
             atdr.capacidade_producao,
             atdr.ton_bruta,
             atdr.ton_liquida,
             atdr.boca,
             atdr.comprimento_emb,
             atdr.calado_maximo,
             atdr.volume_tanque_comb,
             atdr.comprimento_lanca,
             atdr.potencia_motor_succao,
             atdr.capacidade_cacamba_concha,
             atdr.qt_cacamba,
             atdr.local_extracao_ativ,
             atdr.nro_registro_marinha,
             atdr.crme_id,
             crme.abreviatura crit_medicao,
             atdr.prof_max_carretilha
        FROM fep_ativ_dragas         atdr,
             fep_criterios_medicoes crme
       WHERE atdr.atan_id = p_atan_id
         AND atdr.crme_id = crme.crme_id(+);
  r1   c1%rowtype;
BEGIN

   BEGIN
     DELETE
       FROM fep_aux_carac_dragas
      WHERE prcr_id = p_prcr_id;
                         commit;

     EXCEPTION
          WHEN OTHERS THEN
               raise_application_error(-20001, 'Erro1: Excl Carac Dragas. >> ' || SQLCODE || ' - ' || SQLERRM );

   END;


   OPEN  c1;
   FETCH c1 INTO r1;
   IF c1%notfound THEN
      CLOSE c1;
   ELSE

      vTexto      := 'Comprimento da embarcação';
      vValor      := REPLACE(TO_CHAR(r1.comprimento_emb,'99990.99'),'.',',');
      vCriterio   := 'm';
      pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);

      vTexto      := 'Capacidade de produção';
      vValor    := REPLACE(TO_CHAR(r1.capacidade_producao,'9999990.999'),'.',',');
      vCriterio   := r1.crit_medicao;
      pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);


      IF r1.calado_maximo IS NOT NULL THEN
         IF r1.dm_classe_draga IN (1,2) THEN
            vTexto := 'Calado moldado máximo';
         ELSE
            vTexto := 'Calado máximo';
         END IF;
         vValor      := REPLACE(TO_CHAR(r1.calado_maximo,'99990.99'),'.',',');
         vCriterio   := 'm';
          pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
      END IF;


      IF r1.comprimento_lanca IS NOT NULL THEN
         IF r1.dm_classe_draga IN (3) THEN
            vTexto := 'Comprimento da lança com ponteira';
         ELSE
            IF r1.dm_tipo_draga = 1 THEN
               vTexto := 'Comprimento da lança com ponteira';
            ELSIF r1.dm_tipo_draga = 2 THEN
               vTexto := 'Comprimento total da lança da carretilha';
            ELSIF r1.dm_tipo_draga = 3 THEN
               vTexto := 'Comprimento da lança com a concha';
            END IF;
         END IF;
         vValor      := REPLACE(TO_CHAR(r1.comprimento_lanca,'99990.99'),'.',',');
         vCriterio   := 'm';
         pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
      END IF;


      -- Profundidade máx carretilha  ( Malu - 13/08/2013 )
      IF r1.prof_max_carretilha IS NOT NULL THEN
         vTexto := 'Profundidade máxima alcançada pela lança da carretilha';
         vValor      := REPLACE(TO_CHAR(r1.prof_max_carretilha,'99990.99'),'.',',');
         vCriterio   := 'm';
         pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
      END IF;

      IF r1.dm_classe_draga IN (1,2) THEN

         IF r1.dm_tipo_draga IN (3) THEN
            IF r1.capacidade_cacamba_concha IS NOT NULL THEN
               vTexto    := 'Capacidade da concha';
               vValor    := r1.capacidade_cacamba_concha;
               vCriterio := 'm³';
               pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
            END IF;
         END IF;

         IF r1.dm_tipo_draga IN (2) THEN
            IF r1.capacidade_cacamba_concha IS NOT NULL THEN
               vTexto    := 'Capacidade da caçamba';
               vValor    := REPLACE(TO_CHAR(r1.capacidade_cacamba_concha,'99990.99'),'.',',');
               vCriterio := 'm³';
               pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
            END IF;

            IF r1.qt_cacamba IS NOT NULL THEN
               vTexto    := 'Nº de caçambas';
               vValor    := r1.qt_cacamba;
               vCriterio := NULL;
               pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
            END IF;
         END IF;

      END IF;


      IF ((r1.dm_classe_draga IN (3)) OR
          (r1.dm_classe_draga IN (1,2) AND r1.dm_tipo_draga = 1 )) THEN
         IF r1.boca IS NOT NULL THEN
            vTexto    := 'Boca';
            vValor    := REPLACE(TO_CHAR(r1.boca,'99990.99'),'.',',');
            vCriterio := 'm';
            pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
         END IF;
      END IF;


      IF r1.dm_classe_draga IN (1,2,3) AND
         r1.dm_tipo_draga IN (1)     THEN
         IF r1.potencia_motor_succao IS NOT NULL THEN
            vTexto    := 'Potência do motor de sucção';
            vValor    := REPLACE(TO_CHAR(r1.potencia_motor_succao,'99990.99'),'.',',');
            vCriterio := 'HP';
            pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
         END IF;
      END IF;


      IF r1.ton_bruta IS NOT NULL THEN
         vTexto    := 'Tonelagem de arqueação bruta';
         vValor    := REPLACE(TO_CHAR(r1.ton_bruta,'99990.99'),'.',',');
         vCriterio := 't';
         pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
      END IF;


      IF r1.ton_liquida IS NOT NULL THEN
         vTexto    := 'Tonelagem de arqueação líquida';
         vValor    := REPLACE(TO_CHAR(r1.ton_liquida,'99990.99'),'.',',');
         vCriterio := 't';
         pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
      END IF;


      IF r1.volume_tanque_comb IS NOT NULL THEN
         vTexto    := 'Volume do tanque de combustivel';
         vValor    := REPLACE(TO_CHAR(r1.volume_tanque_comb,'9999990.999'),'.',',');
         vCriterio := 'm³';
         pck_processos.pr_prcr_ins_CDRA_draga(p_prcr_id, vTexto, vValor, vCriterio, p_usuario);
      END IF;

      close c1; -- (TG) Adicionado

   END IF;

END;


FUNCTION FC_ULTAND_PROC
 (P_PROC_ID IN number
 )
 RETURN VARCHAR2
 IS



   vAndamentos   varchar2(150);

cursor c1 is
   select substr(to_char(fimo.data_andamento,'dd/mm/rrrr'),1,10) || ' ' ||
          seto.sigla || ' ' ||
          fimo.observacao
     from fep_fichas_movimentacoes fimo,
          fep_setores              seto
    where fimo.proc_id = p_proc_id
      and fimo.seto_id_destino = seto.seto_id(+)
    order by fimo.data_andamento desc, fimo.fimo_id desc;
begin

  OPEN  c1;
  FETCH c1 INTO vAndamentos;
  CLOSE c1;

  return(vAndamentos);

end;
FUNCTION FC_ULTAND_MAN_PROC
 (P_PROC_ID IN number
 )
 RETURN VARCHAR2
 IS



   vAndamentos   varchar2(150);

cursor c1 is
   select substr(to_char(fimo.data_andamento,'dd/mm/rrrr'),1,10) || ' ' ||
          seto.sigla || ' ' ||
          fimo.observacao
     from fep_fichas_movimentacoes fimo,
          fep_setores              seto
    where fimo.proc_id = p_proc_id
      and fimo.seto_id_destino = seto.seto_id(+)
      and fimo.observacao not like 'GER AUT%'
    order by fimo.data_andamento desc, fimo.fimo_id desc;
begin

  OPEN  c1;
  FETCH c1 INTO vAndamentos;
  CLOSE c1;

  return(vAndamentos);

end;
FUNCTION FC_PRCR_TEL_EMERG_TRANSP
 (P_ATAN_ID IN number
 )
 RETURN VARCHAR2
 IS


  vTelefoneTecnico      varchar2(30);
  vTelCelTecnico        varchar2(30);
  vTelEmpreendedor      varchar2(30);
  vTelefEmergencia      varchar2(200);


  -- Nome do Resp Técnico e telefones
  cursor c51 is
     SELECT pess.telefone,
            pess.telefone_celular
       FROM fep_pessoas pess,
            fep_responsabilidades resp
      WHERE resp.pess_id = pess.pess_id
        and resp.tipa_id = 9
        and resp.atan_id = p_atan_id
        and resp.data_fim is null;


  -- Telefone do Empreendedor
  cursor c52 is
     SELECT pess.telefone
       FROM fep_pessoas pess,
            fep_atividades_antropicas ata1
      WHERE ata1.atan_id = p_atan_id
        and ata1.pess_id = pess.pess_id;
begin
                vTelefEmergencia := null;

                open  c51;
                fetch c51 into vTelefoneTecnico, vTelCelTecnico;
                close c51;

                open  c52;
                fetch c52 into vTelEmpreendedor;
                close c52;

               ---------------------------------------------------
                --- telefones do técnico responsavel
                ---------------------------------------------------
                if  vTelCelTecnico  is not null then
                     vTelefEmergencia := vTelCelTecnico;
                end if;

                if  vTelefoneTecnico  is not null then
                    if  vTelefEmergencia is null then
                         vTelefEmergencia := vTelefoneTecnico;
                    else
                         vTelefEmergencia := vTelefEmergencia || ' ou ' || vTelefoneTecnico;
                    end if;
                end if;

               if  vTelCelTecnico  is not null or vTelefoneTecnico  is not null then
                    vTelefEmergencia := vTelefEmergencia || ' (Técnico Responsável)';
               end if;

                -----------------------------------------
                --- telefone do empreendedor
                -----------------------------------------

                if  vTelEmpreendedor is not null then
                    if  vTelefEmergencia is null then
                        vTelefEmergencia := vTelEmpreendedor || ' (Empreendedor)';
                    else
                        vTelefEmergencia :=  vTelefEmergencia || ', ' ||  vTelEmpreendedor || ' (Empreendedor)';
                    end if;
                end if;


               return(vTelefEmergencia);

end;
FUNCTION FC_PROC_COMPETENCIA
 (P_PROC_ID IN number
 )
 RETURN VARCHAR2
 IS



   nDmImpacto     number(1)    := null;
   vCompetencia   varchar2(15) := null;

   cursor c1 is
       select decode(ata1.dm_UC_federal,'S',3,
              decode(pck_cadastros.fc_impacto_regional(ata1.atan_id),'S',2,
              decode(fc_impacto_local(ata1.raat_id, substr(
                  busca_porte(ata1.raat_id,ata1.medida_porte, null),1,1)),'S',1,2)))  dm_impacto
         from fep_processos             proc,
              fep_responsabilidades     resp,
              fep_atividades_antropicas ata1
        where proc.proc_id = p_proc_id
          and proc.resp_id = resp.resp_id
          and resp.atan_id = ata1.atan_id;
begin
   open  c1;
   fetch c1 into nDmImpacto;
   close c1;
   if nDmImpacto is null then
      nDmImpacto := 2;
   end if;

   if nDmImpacto = 1 then
      vCompetencia := 'Local';
   elsif nDmImpacto = 2 then
      vCompetencia := 'Regional';
   elsif nDmImpacto = 3 then
      vCompetencia := 'União';
   end if;

   return(vCompetencia);
end;
FUNCTION FC_PRCR_PARECER
 (P_DOCU_ID_PARECER IN number
 )
 RETURN NUMBER
 IS


  nPrcr_id number(10);

  cursor c1 is
     select prcr.prcr_id
       from fep_aux_proc_cond_restr prcr
      where prcr.docu_id_parecer = p_docu_id_parecer;

  cursor c2 is
     select prcr.prcr_id
       from fep_aux_proc_cond_restr prcr
      where prcr.docu_id_licenca = p_docu_id_parecer;
begin
    open  c1;
    fetch c1 into nPrcr_id;
    close c1;

    if nPrcr_id is null then
        open  c2;
        fetch c2 into nPrcr_id;  -- procura pela licença
        close c2;
    end if;

    return(nPrcr_id);
end;
FUNCTION FC_TEMPO_TRAMITACAO
 (P_PROC_ID IN NUMBER
 ,P_TIDO_ID IN NUMBER
 ,P_DATA_EMISSAO IN DATE
 )
 RETURN NUMBER
 IS
   dDataAtual          date;
   nProc_id              number(10);
   dDataEntrada      date;
   nTidoProc            number(5);
   dDataParada       date;
   dDataRetorno      date;
   nTempoTramitacao  number(5) := 0;
   nDiasParados      number(5) := 0;

   cursor c1 is
      select proc.proc_id,
                   decode(proc.data_entrada_gerencial,null,trunc(proc.data_entrada),trunc(proc.data_entrada_gerencial))  data_entrada,
                   proc.tido_id
         from  fep_processos  proc
       where proc.proc_id = p_proc_id;

   cursor c2 is
      select trunc(hipp.data_parada)                                data_parada,
                   nvl(trunc(hipp.data_retorno),dDataAtual) data_retorno
        from fep_hist_paradas_processos hipp
       where hipp.proc_id = nProc_id;
begin
  --
  -- Rotina de Cálculo do Tempo de Tramitação dos Documentos
  --    Rotina utilizada no Programa PROF0100
  --    Para Auto de Infração-Tido_id=700, não calcula, pois o Documento de
  --    Auto de Infração pode ser emitido antes da entrada do Processo
  --                               Implementado em 24/02/2003 - Malu
  --
  --    ( Atenção: Foi recalculado todos os tempos de tramitação dos documentos
  --               a partir da geração do histórico das paradas dos processos
  --               tendo como fonte logs da Tabela Tpl_logs e registros de
  --               auditoria das tabelas Fep_Processos e Fep_Documentos.
  --
  --               Atualização inicial em Fep_Hist_Paradas_Processos, executado
  --               por Malu e Gabriella em 21/02/2003 );
  --

  if p_tido_id = 700 then
     nTempoTRamitacao := null;
     return(nTempoTramitacao);
  end if;

  open  c1;
  fetch c1 into nProc_id, dDataEntrada, nTidoProc;
  close c1;

  if nTidoProc = 700 then            -- Documentos de Processo de AI não gera Tempo de Tramitação
     nTempoTRamitacao := null;
     return(nTempoTramitacao);
 end if;

  select sysdate into dDataAtual from dual;

  -- Dias Parados do Processo do Documento
  open  c2;
  loop
    fetch c2 into dDataParada, dDataRetorno;
    if c2%notfound then
       close c2;
       exit;
    else
       -- data de emissão antes da parada
       if trunc(p_data_emissao) <= dDataParada then
          null;
       else
          -- data de emissão depois da parada
          if trunc(p_data_emissao) >= dDataRetorno then
             nDiasParados := nDiasParados + ( dDataRetorno - dDataParada );
          else
             -- data de emissão durante parada do processo
             if trunc(p_data_emissao) between (dDataParada  + 1) and
                                       (dDataRetorno - 1 ) then
                nDiasParados := nDiasParados + ( p_data_emissao - dDataParada );
             end if;
          end if;
       end if;
    end if;
  end loop;

  nTempoTramitacao := ((trunc(p_data_emissao) - dDataEntrada) + 1 ) - nDiasParados;
  if   trunc(p_data_emissao) = trunc(dDataEntrada)  or
        nTempoTramitacao < 1                                             then
       nTempoTramitacao := 1;
  end if;

  return(nTempoTramitacao);

end;
PROCEDURE PR_PRCR_SCAC_PORT113
 (P_PRCR_ID IN number
 )
 IS



   dDataAtual            date;
   vUsuario              varchar2(30);

   vMotivo_lib           varchar2(500);
   nPess_id_tecnico      number(10);
   nPess_id_pres         number(10);


   vDmLib_01             varchar2(1);
   vDmLib_02             varchar2(1);
   vDmLib_03             varchar2(1);
   vDmLib_04             varchar2(1);
   vDmLib_05             varchar2(1);
   vDmLib_06             varchar2(1);
   vMotivo_01            varchar2(500);
   vMotivo_02            varchar2(500);
   vMotivo_03            varchar2(500);
   vMotivo_04            varchar2(500);
   vMotivo_05            varchar2(500);
   vMotivo_06            varchar2(500);
   dDataLib_01           date;
   dDataLib_02           date;
   dDataLib_03           date;
   dDataLib_04           date;
   dDataLib_05           date;
   dDataLib_06           date;
   nPess_id_01           number(10);
   nPess_id_02           number(10);
   nPess_id_03           number(10);
   nPess_id_04           number(10);
   nPess_id_05           number(10);
   nPess_id_06           number(10);
   vResp_01              varchar2(30);
   vResp_02              varchar2(30);
   vResp_03              varchar2(30);
   vResp_04              varchar2(30);
   vResp_05              varchar2(30);
   vResp_06              varchar2(30);

   nProc_id              number(10);
   nDocu_id_licenca      number(10);
   nDocu_id_parecer      number(10);
   vSit_Licenca          varchar2(1);
   vDmGeraPort           varchar2(1);


  -- o usuário será do presidente da fepam, conforme solic Dirtec
   cursor c0 is
      select seto.pess_id,
             aux.username
        from fep_setores seto,
             fep_aux_func_ultimos aux
       where seto.seto_id = 1
         and seto.pess_id = aux.pess_id;

  cursor c1 is
     select
            prcr.proc_id,
            prcr.docu_id_licenca,
            prcr.docu_id_parecer,
            docu.situacao,
            nvl(proc.dm_gera_port113,'N') dm_gera_port113
       from
            fep_aux_proc_cond_restr prcr,
            fep_documentos          docu,
            fep_processos           proc
      where
            prcr.prcr_id = p_prcr_id
        and prcr.docu_id_licenca = docu.docu_id
        and prcr.proc_id = proc.proc_id;


   CURSOR c50 IS
      SELECT
             scac.scac_id,
             scac.data_ini_vig1,
             scac.data_fim_vig1,
             scac.seto_id_01,
             scac.seto_id_02,
             scac.seto_id_03,
             scac.seto_id_04,
             scac.seto_id_05,
             scac.seto_id_06,
             scac.dm_lib_01,
             scac.dm_lib_02,
             scac.dm_lib_03,
             scac.dm_lib_04,
             scac.dm_lib_05,
             scac.dm_lib_06,
             scac.motivo_lib_01,
             scac.motivo_lib_02,
             scac.motivo_lib_03,
             scac.motivo_lib_04,
             scac.motivo_lib_05,
             scac.motivo_lib_06,
             scac.data_deacordo_01,
             scac.data_deacordo_02,
             scac.data_deacordo_03,
             scac.data_deacordo_04,
             scac.data_deacordo_05,
             scac.data_deacordo_06,
             scac.pess_id_01,
             scac.pess_id_02,
             scac.pess_id_03,
             scac.pess_id_04,
             scac.pess_id_05,
             scac.pess_id_06,
             scac.resp_deacordo_01,
             scac.resp_deacordo_02,
             scac.resp_deacordo_03,
             scac.resp_deacordo_04,
             scac.resp_deacordo_05,
             scac.resp_deacordo_06
        FROM
            fep_docs_setores_acordo scac
       WHERE
            scac.prcr_id = p_prcr_id;

    r50  c50%rowtype;
begin

    ----------------------------------------------------------------------------
    -- ROTINA QUE ATUALIZA A CIENCIA para a Portaria 113/2015 - Malu 20/11/2015
    ----------------------------------------------------------------------------

    open  c0;
    fetch c0 into  nPess_id_pres, vUsuario;
    close c0;
    nPess_id_tecnico := nPess_id_pres;

    select  sysdate into dDataAtual from dual;
    vUsuario := SUBSTR(vUsuario,1,17) || '-PORT 113/2015';


    open  c1;
    fetch c1 into nProc_id, nDocu_id_licenca, nDocu_id_parecer, vSit_Licenca, vDmGeraPort;
    close c1;


    ------------------------------------------------------
    -- Só faz fechamento para documentos Ag Ciencia Chefia
    ------------------------------------------------------

    if nDocu_id_licenca is not null and
       vSit_Licenca   = 'C'      and
       vDmGeraPort    = 'S'      then

           ------------------------------------------------------------------------
           -- verifica a ciência gerada e atualiza a ciência automaticamente - SCAC
           ------------------------------------------------------------------------
           vMotivo_lib := 'Portaria 113/2015';

           OPEN  c50;
           fetch c50 into r50;
           if c50%found then

              vDmLib_01    := r50.dm_lib_01;
              vDmLib_02    := r50.dm_lib_02;
              vDmLib_03    := r50.dm_lib_03;
              vDmLib_04    := r50.dm_lib_04;
              vDmLib_05    := r50.dm_lib_05;
              vDmLib_06    := r50.dm_lib_06;

              vMotivo_01   := r50.motivo_lib_01;
              vMotivo_02   := r50.motivo_lib_02;
              vMotivo_03   := r50.motivo_lib_03;
              vMotivo_04   := r50.motivo_lib_04;
              vMotivo_05   := r50.motivo_lib_05;
              vMotivo_06   := r50.motivo_lib_06;

              dDataLib_01  := r50.data_deacordo_01;
              dDataLib_02  := r50.data_deacordo_02;
              dDataLib_03  := r50.data_deacordo_03;
              dDataLib_04  := r50.data_deacordo_04;
              dDataLib_05  := r50.data_deacordo_05;
              dDataLib_06  := r50.data_deacordo_06;

              nPess_id_01  := r50.pess_id_01;
              nPess_id_02  := r50.pess_id_02;
              nPess_id_03  := r50.pess_id_03;
              nPess_id_04  := r50.pess_id_04;
              nPess_id_05  := r50.pess_id_05;
              nPess_id_06  := r50.pess_id_06;

              vResp_01     := r50.resp_deacordo_01;
              vResp_02     := r50.resp_deacordo_02;
              vResp_03     := r50.resp_deacordo_03;
              vResp_04     := r50.resp_deacordo_04;
              vResp_05     := r50.resp_deacordo_05;
              vResp_06     := r50.resp_deacordo_06;

              if r50.seto_id_01 is not null then
                 if r50.dm_lib_01 = 'N' then
                    vDmLib_01    := 'S';
                    vMotivo_01   := vMotivo_lib;
                    dDataLib_01  := dDataAtual;
                     nPess_id_01 := nPess_id_tecnico;
                     vResp_01    := vUsuario;
                 end if;
              end if;

              if r50.seto_id_02 is not null then
                 if r50.dm_lib_02 = 'N' then
                    vDmLib_02    := 'S';
                    vMotivo_02   := vMotivo_lib;
                    dDataLib_02  := dDataAtual;
                     nPess_id_02 := nPess_id_tecnico;
                     vResp_02    := vUsuario;
                 end if;
              end if;

              if r50.seto_id_03 is not null then
                 if r50.dm_lib_03 = 'N' then
                    vDmLib_03    := 'S';
                    vMotivo_03   := vMotivo_lib;
                    dDataLib_03  := dDataAtual;
                     nPess_id_03 := nPess_id_tecnico;
                     vResp_03    := vUsuario;
                 end if;
              end if;

              if r50.seto_id_04 is not null then
                 if r50.dm_lib_04 = 'N' then
                    vDmLib_04    := 'S';
                    vMotivo_04   := vMotivo_lib;
                    dDataLib_04  := dDataAtual;
                     nPess_id_04 := nPess_id_tecnico;
                     vResp_04    := vUsuario;
                 end if;
              end if;

              if r50.seto_id_05 is not null then
                 if r50.dm_lib_05 = 'N' then
                    vDmLib_05    := 'S';
                    vMotivo_05   := vMotivo_lib;
                    dDataLib_05  := dDataAtual;
                     nPess_id_05 := nPess_id_tecnico;
                     vResp_05    := vUsuario;
                 end if;
              end if;

              if r50.seto_id_06 is not null then
                 if r50.dm_lib_06 = 'N' then
                    vDmLib_06    := 'S';
                    vMotivo_06   := vMotivo_lib;
                    dDataLib_06  := dDataAtual;
                     nPess_id_06 := nPess_id_tecnico;
                     vResp_06    := vUsuario;
                 end if;
              end if;

              begin
                 update fep_docs_setores_acordo
                    set dm_lib_01        = vDmLib_01,
                        dm_lib_02        = vDmLib_02,
                        dm_lib_03        = vDmLib_03,
                        dm_lib_04        = vDmLib_04,
                        dm_lib_05        = vDmLib_05,
                        dm_lib_06        = vDmLib_06,
                        motivo_lib_01    = vMotivo_01,
                        motivo_lib_02    = vMotivo_02,
                        motivo_lib_03    = vMotivo_03,
                        motivo_lib_04    = vMotivo_04,
                        motivo_lib_05    = vMotivo_05,
                        motivo_lib_06    = vMotivo_06,
                        data_deacordo_01 = dDataLib_01,
                        data_deacordo_02 = dDataLib_02,
                        data_deacordo_03 = dDataLib_03,
                        data_deacordo_04 = dDataLib_04,
                        data_deacordo_05 = dDataLib_05,
                        data_deacordo_06 = dDataLib_06,
                        pess_id_01 = nPess_id_01,
                        pess_id_02 = nPess_id_02,
                        pess_id_03 = nPess_id_03,
                        pess_id_04 = nPess_id_04,
                        pess_id_05 = nPess_id_05,
                        pess_id_06 = nPess_id_06,
                        resp_deacordo_01 = vResp_01,
                        resp_deacordo_02 = vResp_02,
                        resp_deacordo_03 = vResp_03,
                        resp_deacordo_04 = vResp_04,
                        resp_deacordo_05 = vResp_05,
                        resp_deacordo_06 = vResp_06,
                        data_ini_vig2    = r50.data_ini_vig1,
                        data_fim_vig2    = r50.data_fim_vig1,
                        dm_PDF_conferido = 'S',
                        operador_inclusao = Substr(vUsuario, 1, 30),
                        Data_atualizacao = Sysdate,
                        Operador_Atualizacao = Substr(vUsuario, 1, 30)
                  where scac_id = r50.scac_id;

                               commit;

              end;

           end if;
           close c50;


           -------------------------------
           -- atualiza situacao do parecer
           -------------------------------
           begin
               UPDATE fep_documentos
                  SET situacao                  = 'L',
                          dm_revisado          = 'S',
                          dm_port462015    = 'S',
                          dm_port1132015  = 'S'
                WHERE docu_id        = nDocu_id_parecer;
                         commit;

           EXCEPTION
                WHEN OTHERS THEN
                  raise_application_error(-20001, 'Erro1: Update DOCU-Par. Port 113-2015 >> ' || SQLCODE || ' - ' || SQLERRM );
           end;

           -------------------------------
           -- atualiza situacao da licença
           -------------------------------
           begin
               UPDATE fep_documentos
                  SET situacao                  = 'T',
                          dm_port462015    = 'S',
                          dm_port1132015  = 'S'
                 WHERE docu_id        = nDocu_id_licenca;
                         commit;

          EXCEPTION
                WHEN OTHERS THEN
                  raise_application_error(-20001, 'Erro2: Update DOCU-Lic. Port 113-2015 >> ' || SQLCODE || ' - ' || SQLERRM );
           end;

            -----------------------------------
            --- atualiza situação no processo
            -----------------------------------
           begin
               UPDATE fep_processos
                  SET situacao       = 'D',
                      data_atualizacao = dDataAtual,
                      operador_atualizacao = vUsuario
                WHERE proc_id        = nProc_id;
                         commit;

          EXCEPTION
                WHEN OTHERS THEN
                 raise_application_error(-20001, 'Erro3: Update PROC. Port 113-2015 >> ' || SQLCODE || ' - ' || SQLERRM );
          end;


    end if;


end;

FUNCTION FC_PROC_SMAM_POA
 (P_PROC_ID IN number
 )
 RETURN VARCHAR2
 IS


   vObservacao   varchar2(1000);


   cursor c1 is
      select prca.observacoes
        from fep_aux_protocolo_processos prca,
             fep_processos               proc,
             fep_responsabilidades       resp,
             fep_atividades_antropicas   ata1
       where prca.proc_id = proc.proc_id
         and proc.proc_id = p_proc_id
         and proc.resp_id = resp.resp_id
         and resp.atan_id = ata1.atan_id
         and ata1.muni_id = 4314902
         and ata1.raat_id = 4751.30;
begin
   open  c1;
   fetch c1 into vObservacao;
   close c1;
   return(vObservacao);
end;

FUNCTION FC_PROC_MUNI_REGIONAL
 (P_PROC_ID IN number
 ,P_RESP_ID IN number
 ,P_ORIGEM IN number
 )
 RETURN VARCHAR2
 IS


   vDescricao     varchar2(50) := null;
   vMunicipio     varchar2(50);
   vRegional      varchar2(50);
   nRegiao        number(2);


   cursor c1 is
      select muni.nome_licenca,
             initcap(substr(pck_cadastros.fc_descricao_dominio(
             'DM_REGIAO_LOCALIZACAO',
              muni.regiao_localizacao,0),1,25)) regional,
              muni.regiao_localizacao           dm_regiao
        from fep_processos             proc,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_municipios            muni
       where proc.proc_id = p_proc_id
         and proc.resp_id = resp.resp_id
         and resp.atan_id = ata1.atan_id
         and ata1.muni_id = muni.muni_id(+);


   cursor c2 is
      select muni.nome_licenca,
             initcap(substr(pck_cadastros.fc_descricao_dominio(
             'DM_REGIAO_LOCALIZACAO',
             muni.regiao_localizacao,0),1,25)) regional,
              muni.regiao_localizacao           dm_regiao
           from fep_empreend_processos    epro,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_municipios            muni
       where epro.proc_id  = p_proc_id
         and epro.resp_id  = resp.resp_id
         and resp.tipa_id  not in (3,9,13)
         and resp.data_fim is null
         and resp.dm_empdor_resp = 'S'
         and resp.atan_id  = ata1.atan_id
         and ata1.muni_id  = muni.muni_id(+)
       order by resp.atan_id;
begin
  -----------------------------------------------------
  -- Municipio/Regional do empreendimento - com Resp_id
  -----------------------------------------------------
  if p_resp_id is not null then
     open  c1;
     fetch c1 into vMunicipio, vRegional, nRegiao;
     close c1;
     if p_origem = 1 then
        return(vMunicipio);
     elsif p_origem = 2 then
        return(vRegional);
     else
        return(nRegiao);
     end if;
  else
     -----------------------------------------------------
     -- Municipio/Regional do empreendimento - sem Resp_id
     -----------------------------------------------------
     open  c2;
     fetch c2 into vMunicipio, vRegional, nRegiao;
     close c2;
     if p_origem = 1 then
        return(vMunicipio);
     elsif p_origem = 2 then
        return(vRegional);
     else
        return(nRegiao);
     end if;

  end if;

  return(vDescricao);

end;
FUNCTION FC_PROC_AI_SITUACAO
 (P_PROC_ID IN number
 )
 RETURN VARCHAR2
 IS


   vSitProc     varchar2(1);
   vSituacao    varchar2(25);
   nDocu_id     number(10);
   vJulgamento  varchar2(25);


   cursor c1 is
      select proc.situacao,
                  initcap(substr(pck_cadastros.fc_descricao_dominio(
             'DM_SITUACAO_PROC',
              proc.situacao,0),1,22)) situacao
        from fep_processos proc
       where proc.proc_id = p_proc_id;


   cursor c2 is
      select docu.docu_id
        from fep_documentos docu
       where docu.proc_id = p_proc_id
         and docu.tido_id = 700
         and docu.situacao not in ('B')
       order by trunc(docu.data_emissao) desc,
                docu.docu_id desc;

   cursor c3 is
      select initcap(substr(pck_cadastros.fc_descricao_dominio(
             'DM_JULGAMENTO',
               auin.julgamento,0),1,22)) sit
        from fep_autos_infracoes auin
       where auin.docu_id = nDocu_id;
begin

  open  c1;
  fetch c1 into vSitProc, vSituacao;
  close c1;

  if vSitProc != 'A' then

     open  c2;
     fetch c2 into nDocu_id;
     close c2;

     if nDocu_id is not null then
        open  c3;
        fetch c3 into vJulgamento;
        close c3;
        if vJulgamento is not null then
           vSituacao := vJulgamento;
        end if;
     end if;

  end if;

  return(vSituacao);

end;
PROCEDURE PR_NOVALIC_OLUC_PORT23(P_DOCU_ID IN number
                                ,P_PROC_ID IN number
                                ,P_ATAN_ID IN number
                                ,P_RAAT_ID IN number
                                ,P_USUARIO IN varchar2) IS
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 17/09/2024
  | Purpose: Fechar cursores antes do final dos processos e foi reformatado o código desta procedure para
  |          melhor entendimento.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/


  dDataAtual date;
  vUsuario   varchar2(30);

  nSose_id            number(10);
  nDocu_id_Parecer    number(10);
  nNumero_Parecer     number(5);
  nDocu_id_Licenca    number(10);
  nNumero_Licenca     number(5);
  nAnoEmissao         number(4);
  nTido_id_parecer    number(5) := 1202;
  nTido_id_licenca    number(5) := 120;
  nSeto_id_tecnico    number(6);
  nSeto_id_assinatura number(6);
  nContador           number(5);
  nMedidaPorte        number(12, 4);

  nSeto_id_proc    number(6);
  nSeto_id_novo    number(6);
  dDataIniVig      date;
  dDataFimVig      date;
  nPess_id_tecnico number(10);
  nPess_id_pres    number(10);
  nPrcr_id         number(10);
  vProcesso        varchar2(16);
  vTexto           varchar2(2000);

  nSeto_id_destino NUMBER(6);
  vObservacao      VARCHAR2(120) := NULL;
  vDocumento       VARCHAR2(20) := NULL;

  nNumero number(7);
  nAno    number(4);
  nDv     number(1);

  vDmLib_01   varchar2(1);
  vDmLib_02   varchar2(1);
  vDmLib_03   varchar2(1);
  vDmLib_04   varchar2(1);
  vDmLib_05   varchar2(1);
  vDmLib_06   varchar2(1);
  vMotivo_01  varchar2(500);
  vMotivo_02  varchar2(500);
  vMotivo_03  varchar2(500);
  vMotivo_04  varchar2(500);
  vMotivo_05  varchar2(500);
  vMotivo_06  varchar2(500);
  vMotivo_lib varchar2(500);
  dDataLib_01 date;
  dDataLib_02 date;
  dDataLib_03 date;
  dDataLib_04 date;
  dDataLib_05 date;
  dDataLib_06 date;
  nPess_id_01 number(10);
  nPess_id_02 number(10);
  nPess_id_03 number(10);
  nPess_id_04 number(10);
  nPess_id_05 number(10);
  nPess_id_06 number(10);
  vResp_01    varchar2(30);
  vResp_02    varchar2(30);
  vResp_03    varchar2(30);
  vResp_04    varchar2(30);
  vResp_05    varchar2(30);
  vResp_06    varchar2(30);
  --nLinha      number(5); -- (TG) Não utilizada


  cursor c1 is
    select proc.seto_id
          ,substr(lpad(proc.numero, 6, 0) || '-' || lpad(proc.orig_id, 4, 0) || '/' || lpad(proc.ano, 2, 0) || '-' || (proc.dv), 1, 16) processo
          ,proc.numero
          ,proc.ano
          ,proc.dv
      from fep_processos proc
     where proc.proc_id = p_proc_id;

  cursor c2 is
    select docu.data_fim_vigencia
      from fep_documentos docu
     where docu.docu_id = p_docu_id;

  -- o usuário será do presidente da fepam, conforme solic Dirtec
  cursor c3 is
    select seto.pess_id
      from fep_setores seto
     where seto.seto_id = 1;

  cursor c4 is
    select ata1.medida_porte
      from fep_atividades_antropicas ata1
     where ata1.atan_id = p_atan_id;


  cursor c10 is
    select dofr.frtr_id
      from fep_documentos_frotas dofr
     where dofr.docu_id = p_docu_id
     order by dofr.dofr_id;
  r10 c10%rowtype;


  CURSOR c25 IS
    SELECT COUNT(*)
      FROM fep_fichas
     WHERE proc_id = p_proc_id;


  CURSOR c26 IS
    SELECT SUBSTR((seto.sigla || '   ' || docu.numero || '/' || docu.ano || ' - ' || docu.tido_id || ' ( ' || tido.abreviatura || ' )'), 1, 120) documento
          ,SUBSTR((docu.numero || '/' || docu.ano || '-' || tido.abreviatura), 1, 20) nro_documento
      FROM fep_documentos       docu
          ,fep_setores          seto
          ,fep_tipos_documentos tido
     WHERE docu.docu_id = nDocu_id_Licenca
       AND docu.seto_id = seto.seto_id
       AND docu.tido_id = tido.tido_id;

  CURSOR c50 IS
    SELECT scac.scac_id
          ,scac.data_ini_vig1
          ,scac.data_fim_vig1
          ,scac.seto_id_01
          ,scac.seto_id_02
          ,scac.seto_id_03
          ,scac.seto_id_04
          ,scac.seto_id_05
          ,scac.seto_id_06
          ,scac.dm_lib_01
          ,scac.dm_lib_02
          ,scac.dm_lib_03
          ,scac.dm_lib_04
          ,scac.dm_lib_05
          ,scac.dm_lib_06
          ,scac.motivo_lib_01
          ,scac.motivo_lib_02
          ,scac.motivo_lib_03
          ,scac.motivo_lib_04
          ,scac.motivo_lib_05
          ,scac.motivo_lib_06
          ,scac.data_deacordo_01
          ,scac.data_deacordo_02
          ,scac.data_deacordo_03
          ,scac.data_deacordo_04
          ,scac.data_deacordo_05
          ,scac.data_deacordo_06
          ,scac.pess_id_01
          ,scac.pess_id_02
          ,scac.pess_id_03
          ,scac.pess_id_04
          ,scac.pess_id_05
          ,scac.pess_id_06
          ,scac.resp_deacordo_01
          ,scac.resp_deacordo_02
          ,scac.resp_deacordo_03
          ,scac.resp_deacordo_04
          ,scac.resp_deacordo_05
          ,scac.resp_deacordo_06
      FROM fep_docs_setores_acordo scac
     WHERE scac.docu_id = nDocu_id_Licenca;
  r50 c50%rowtype;

  -- 6009 -  incluir em todas as licenças
  cursor c83 is
    select lcrs.lcrs_id
          ,lcrs.cors_id
          ,cors.descricao cors_descricao
      from fep_listas_cond_restricoes lcrs
          ,fep_tido_cond_restr        tilc
          ,fep_condicoes_restricoes   cors
     where lcrs.cors_id = 6009
       and lcrs.raat_id = p_raat_id
       and lcrs.lcrs_id = tilc.lcrs_id
       and tilc.tido_id = nTido_id_licenca
       and cors.clcr_id != 55
       and lcrs.cors_id = cors.cors_id
       and cors.data_fim_validade is null
       and lcrs.data_fim_validade is null
       and tilc.data_fim is null;
  r83 c83%rowtype;
begin


  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  -- ROTINA DE GERAÇÃO DA LICENÇA AUTOMÁTICA conforme Portaria 23/2016, de 08/03/2016
  -- revoga e gera nova licença, incluindo a condicionante:
  --    3445 - esta licença não autoriza a coleta de óleo lubrificante usado ou contaminado - OLUC;
  --                                                                    ( Programa PROF2410 - Malu 23/09/2016)
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

  select sysdate
    into dDataAtual
    from dual;
  vUsuario := SUBSTR(p_usuario, 1, 17) || '-PORT 23/2016';

  open c1;
  fetch c1
    into nSeto_id_proc
        ,vProcesso
        ,nNumero
        ,nAno
        ,nDV;
  close c1;
  nSeto_id_novo := pck_proc_assinat.fc_setor_corresp_novo(nSeto_id_proc);
  if nSeto_id_proc != nSeto_id_novo then
    nSeto_id_proc := nSeto_id_novo;
    begin
      update fep_processos
         set seto_id              = nSeto_id_novo
            ,data_atualizacao     = dDataAtual
            ,operador_atualizacao = vUsuario
       where proc_id = p_proc_id;
      commit;
    EXCEPTION
      WHEN OTHERS THEN
        raise_application_error(-20001, 'Erro1: Atualiza proc. >> ' || SQLCODE || ' - ' || SQLERRM);
      
    end;
  end if;


  nAnoEmissao := to_number(to_char(dDataAtual, 'rrrr'));

  dDataIniVig := dDataAtual;
  open c2;
  fetch c2
    into dDataFimVig;
  close c2;


  nSeto_id_tecnico := nSeto_id_proc;

  open c3;
  fetch c3
    into nPess_id_pres;
  close c3;
  nPess_id_tecnico := nPess_id_pres;

  open c4;
  fetch c4
    into nMedidaPorte;
  close c4;

  nSeto_id_assinatura := pck_proc_assinat.fc_seto_assinat_proc(p_proc_id, NULL);

  -----------------------------------------------------------------------------------------------------------------------------------------------------
  -- FEP_SOLIC_SEAMB - inclui a solicitação - DPP
  ---------------------------------------------------------------------------
  select sose_seq.nextval
    into nSose_id
    from dual;

  BEGIN
    insert into fep_solic_seamb
      (SOSE_ID
      ,ATAN_ID
      ,PROC_ID
      ,TSOI_ID
      ,TIDO_ID
      ,DM_TIPO_SOLIC_SEAMB
      ,DATA_INCLUSAO
      ,OPERADOR_INCLUSAO
      ,DATA_ATUALIZACAO
      ,OPERADOR_ATUALIZACAO
      ,HICB_ID
      ,MEDIDA_PORTE_CAD
      ,MEDIDA_PORTE_CALC
      ,MOTIVO_INDEFERIMENTO
      ,DM_ALTERACAO_CAD
      ,DM_ALTERACAO_RT)
    values
      (nSose_id
      ,p_atan_id
      ,p_proc_id
      ,6
      ,120
      ,1
      ,dDataAtual
      ,vUsuario
      ,dDataAtual
      ,vUsuario
      ,null
      ,nMedidaPorte
      ,nMedidaPorte
      ,'INCLUSÃO COND PROIBIÇÃO TRANSPORTE-OLUC'
      ,'N'
      ,'N');
  
    commit;
  
  
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20001, 'Erro2: Inclusão SOSE. >> ' || SQLCODE || ' - ' || SQLERRM);
    
  END;


  --------------------------------------------------------------
  --- DOCU - Gera o Parecer - Tido_id = cfme documento de origem
  --------------------------------------------------------------
  SELECT docu_seq.nextval
    INTO nDocu_id_Parecer
    FROM dual;
  nNumero_Parecer := pck_processos.fnc_busca_nro_docu(nAnoEmissao, nTido_id_parecer, nSeto_id_tecnico);

  BEGIN
    INSERT INTO fep_documentos
      (DOCU_ID
      ,NUMERO
      ,ANO
      ,TIDO_ID
      ,PROC_ID
      ,DESCRICAO
      ,DATA_EMISSAO
      ,STATUS
      ,SITUACAO
      ,DATA_INICIO_VIGENCIA
      ,DATA_FIM_VIGENCIA
      ,DATA_INCLUSAO
      ,DATA_ATUALIZACAO
      ,OPERADOR_INCLUSAO
      ,OPERADOR_ATUALIZACAO
      ,RENOVAVEL
      ,SETO_ID
      ,ANO_EMISSAO
      ,GERACAO_AUTOMATICA
      ,DM_ASSINATURA_DIGITAL
      ,PESS_ID_EMISSOR
      ,DM_RES052014
      ,DM_PORT462015
      ,DM_PORT232016)
    VALUES
      (nDocu_id_parecer
      ,nNumero_Parecer
      ,nAnoEmissao
      ,nTido_id_parecer
      ,p_proc_id
      ,'Geração automática'
      ,dDataAtual
      ,1
      ,'X'
      ,dDataIniVig
      ,dDataFimVig
      ,dDataAtual
      ,dDataAtual
      ,vUsuario
      ,vUsuario
      ,'N'
      ,nSeto_id_tecnico
      ,nAnoEmissao
      ,'S'
      ,'N'
      ,nPess_id_tecnico
      ,'N'
      ,'N'
      ,'S');
  
    commit;
  
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20001, 'Erro3: Inclusão DOCU-Par. >> ' || SQLCODE || ' - ' || SQLERRM);
    
  
  END;



  --------------------------------------------------------------
  --- DOCU - Gera a Licença - Tido_id = cfme documento de origem
  --------------------------------------------------------------
  SELECT docu_seq.nextval
    INTO nDocu_id_Licenca
    FROM dual;
  nNumero_Licenca := pck_processos.fnc_busca_nro_docu(nAnoEmissao, nTido_id_licenca, null);

  BEGIN
    INSERT INTO fep_documentos
      (DOCU_ID
      ,NUMERO
      ,ANO
      ,TIDO_ID
      ,PROC_ID
      ,DESCRICAO
      ,DATA_EMISSAO
      ,STATUS
      ,SITUACAO
      ,DATA_INICIO_VIGENCIA
      ,DATA_FIM_VIGENCIA
      ,DOCU_ID_ORIGINA
      ,DOCU_ID_SUBSTITUI
      ,DATA_INCLUSAO
      ,DATA_ATUALIZACAO
      ,OPERADOR_INCLUSAO
      ,OPERADOR_ATUALIZACAO
      ,RENOVAVEL
      ,SETO_ID
      ,ANO_EMISSAO
      ,GERACAO_AUTOMATICA
      ,DM_ASSINATURA_DIGITAL
      ,PESS_ID_EMISSOR
      ,DM_RES052014
      ,DM_PORT462015
      ,DM_PORT232016)
    VALUES
      (nDocu_id_Licenca
      ,nNumero_Licenca
      ,nAnoEmissao
      ,nTido_id_licenca
      ,p_proc_id
      ,'Geração automática'
      ,dDataAtual
      ,1
      ,'C'
      ,dDataIniVig
      ,dDataFimVig
      ,nDocu_id_parecer
      ,p_docu_id
      ,dDataAtual
      ,dDataAtual
      ,vUsuario
      ,vUsuario
      ,'N'
      ,nSeto_id_tecnico
      ,nAnoEmissao
      ,'S'
      ,'N'
      ,nPess_id_tecnico
      ,'N'
      ,'N'
      ,'S');
  
    commit;
  
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20001, 'Erro4: Inclusão DOCU-Lic. >> ' || SQLCODE || ' - ' || SQLERRM);
    
  END;



  ----------------------------------------------------------------
  ---- PRCR - Cria o registro para geração do documento automático
  ----------------------------------------------------------------
  SELECT prcr_seq.nextval
    INTO nPrcr_id
    FROM dual;

  BEGIN
    INSERT INTO fep_aux_proc_cond_restr
      (PRCR_ID
      ,PROC_ID
      ,PESS_ID_TECNICO
      ,SETO_ID_TECNICO
      ,DOCU_ID_PARECER
      ,TIDO_ID_PARECER
      ,DOCU_ID_REVOGADO
      ,DOCU_ID_RENOVACAO
      ,DOCU_ID_LICENCA
      ,TIDO_ID_LICENCA
      ,OBSERVACAO
      ,DM_ATIVO
      ,DATA_INCLUSAO
      ,OPERADOR_INCLUSAO
      ,DATA_ATUALIZACAO
      ,OPERADOR_ATUALIZACAO
      ,SETO_ID_ASSINATURA
      ,DM_LIBERA_ESPECIFICO
      ,SOSE_ID
      ,DATA_INICIO_VIGENCIA
      ,DATA_FIM_VIGENCIA
      ,MOTIVO_REVOGACAO
      ,DM_DATA_FIM_INF
      ,DM_GERA_LIC_PENDENTE
      ,DM_RENOV_AUT)
    VALUES
      (nPrcr_id
      ,p_proc_id
      ,nPess_id_tecnico
      ,nSeto_id_tecnico
      ,nDocu_id_Parecer
      ,nTido_id_parecer
      ,p_docu_id
      ,null
      ,nDocu_id_Licenca
      ,nTido_id_licenca
      ,'ATENDER PORT 23/2016-OLUC'
      ,'S'
      ,dDataAtual
      ,vUsuario
      ,dDataAtual
      ,vUsuario
      ,nSeto_id_assinatura
      ,'N'
      ,nSose_id
      ,dDataIniVig
      ,dDataFimVig
      ,'INCLUSÃO COND PROIBIÇÃO TRANSPORTE-OLUC'
      ,'S'
      ,'N'
      ,'N');
  
    COMMIT;
  
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20001, 'Erro5: Inclusão PRCR. >> ' || SQLCODE || ' - ' || SQLERRM);
  end;


  -----------------------------------------------------------------------------------
  -- Gera as condicionantes para a Licença
  -----------------------------------------------------------------------------------

  begin
    pck_processos.pr_prcr_cond_restr(nPrcr_id);
    commit;
  end;

  -- inclui a condição da Portaria 23
  open c83;
  fetch c83
    into r83;
  if c83%notfound then
    close c83;
  else
    begin
      insert into fep_aux_cond_restr_par_lic
        (ACRL_ID
        ,PRCR_ID
        ,LCRS_ID
        ,CORS_DESCRICAO
        ,DATA_INCLUSAO
        ,OPERADOR_INCLUSAO
        ,DATA_ATUALIZACAO
        ,OPERADOR_ATUALIZACAO
        ,CRPR_ID
        ,CORS_ID_ANTERIOR
        ,CORS_ID_ATUAL)
      VALUES
        (ACRL_seq.nextval
        ,nPrcr_id
        ,r83.lcrs_id
        ,r83.cors_descricao
        ,dDataAtual
        ,vUsuario
        ,dDataAtual
        ,vUsuario
        ,null
        ,null
        ,r83.cors_id);
    
      commit;
    
    EXCEPTION
      WHEN OTHERS THEN
      
        -- (TG) Adicionado: o rise não fecha o cursor
        if c83%isOpen then
          close c83;
        end if;
      
        raise_application_error(-20001, 'Erro6: Inclusão ACRL. >> ' || SQLCODE || ' - ' || SQLERRM);
    end;
  end if;

  close c83; -- (TG) Adicionado


  ------------------------------------------------
  -- Atualiza o histórico para Ciencia das Chefias
  ------------------------------------------------
  BEGIN
    pck_proc_assinat.pr_SCAC_inclusao(nPrcr_id, nDocu_id_Parecer, nDocu_id_Licenca);
  END;


  ---------------------------------------------------------------
  --- Gera o registro de informacoes
  ---------------------------------------------------------------

  vTexto := 'Documento Licenciatório emitido para Processo Administrativo nº ' || vProcesso || ', conforme Portaria nº 23/2016 de 08/03/2016.';

  begin
    insert into fep_aux_cond_restr_informacoes
      (AINF_ID
      ,PRCR_ID
      ,LINHA
      ,TEXTO
      ,DATA_INCLUSAO
      ,OPERADOR_INCLUSAO
      ,DATA_ATUALIZACAO
      ,OPERADOR_ATUALIZACAO
      ,CORS_ID_ORIGEM)
    values
      (AINF_seq.nextval
      ,nPrcr_id
      ,10
      ,vTexto
      ,dDataAtual
      ,vUsuario
      ,dDataAtual
      ,vUsuario
      ,null);
    commit;
  
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20001, 'Erro7: Update AINF. >> ' || SQLCODE || ' - ' || SQLERRM);
  end;


  ----------------------------------------------------------
  -- Inclui a frota ligada a licença anterior
  ----------------------------------------------------------
  open c10;
  loop
    fetch c10
      into r10;
    if c10%notfound then
      close c10;
      exit;
    else
      begin
        insert into fep_documentos_frotas
          (DOFR_ID
          ,DOCU_ID
          ,FRTR_ID
          ,DATA_INICIO
          ,DATA_FIM
          ,DATA_INCLUSAO
          ,OPERADOR_INCLUSAO
          ,DATA_ATUALIZACAO
          ,OPERADOR_ATUALIZACAO
          ,SOSE_ID_IN
          ,SOSE_ID_OUT)
        values
          (DOFR_seq.nextval
          ,nDocu_id_licenca
          ,r10.FRTR_ID
          ,dDataAtual
          ,null
          ,dDataAtual
          ,vUsuario
          ,dDataAtual
          ,vUsuario
          ,nSose_id
          ,null);
        commit;
      
      EXCEPTION
        WHEN OTHERS THEN
        
          -- (TG) Adicionado: o rise não fecha o cursor
          if c10%isOpen then
            close c10;
          end if;
        
          raise_application_error(-20001, 'Erro8: Update AINF. >> ' || SQLCODE || ' - ' || SQLERRM);
      end;
    end if;
  end loop;


  ------------------------------------
  -- Inclui o documento gerado
  ------------------------------------
  begin
    insert into fep_solic_seamb_documentos
      (SODC_ID
      ,SOSE_ID
      ,DOCU_ID
      ,DM_ATIVO
      ,DATA_INCLUSAO
      ,OPERADOR_INCLUSAO
      ,DATA_ATUALIZACAO
      ,OPERADOR_ATUALIZACAO)
    values
      (SODC_seq.nextval
      ,nSose_id
      ,nDocu_id_licenca
      ,'S'
      ,dDataAtual
      ,vUsuario
      ,dDataAtual
      ,vUsuario);
    commit;
  
  
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20001, 'Erro9: Insert sodc >> ' || SQLCODE || ' - ' || SQLERRM);
    
  end;

  -----------------------
  -- Inclui os andamentos
  -----------------------

  OPEN c25;
  FETCH c25
    INTO nContador;
  CLOSE c25;

  OPEN c26;
  FETCH c26
    INTO vObservacao
        ,vDocumento;
  CLOSE c26;

  nSeto_id_destino := nSeto_id_tecnico;

  IF nContador = 0 THEN
    -- se não encontrar - insere no arquivo de fichas
  
    BEGIN
      INSERT INTO fep_fichas
        (PROC_ID
        ,NUMERO
        ,ANO
        ,DV
        ,SETO_ID_DESTINO
        ,OBSERVACAO
        ,DATA_ANDAMENTO
        ,OPERADOR_INCLUSAO
        ,DATA_INCLUSAO
        ,OPERADOR_ATUALIZACAO
        ,DATA_ATUALIZACAO
        ,OPER_AT_ENDERECO
        ,DATA_AT_ENDERECO
        ,IMPRIME_ETIQUETA)
      VALUES
        (p_proc_id
        ,nNumero
        ,nAno
        ,nDv
        ,nSeto_id_destino
        ,vObservacao
        ,dDataAtual
        ,vUsuario
        ,dDataAtual
        ,vUsuario
        ,dDataAtual
        ,NULL
        ,NULL
        ,'N');
    
      commit;
    EXCEPTION
      WHEN OTHERS THEN
        raise_application_error(-20001, 'Erro10: Insert Fichas. >> ' || SQLCODE || ' - ' || SQLERRM);
    END;
  
  END IF;

  -------------------------------------------------------------------------
  -- Chamado 21811 - Karina Lamberts Schmidt - 17/06/2021
  -- Foi solicitado para que o sistema não faça mais o andamento automático
  /*
             -- Inclui no arquivo de Andamentos de Processos
             -- do Setor de Origem para DL
             BEGIN
                  INSERT INTO fep_fichas_movimentacoes
                               ( FIMO_ID,
               PROC_ID,
               SETO_ID_ORIGEM,
               SETO_ID_DESTINO,
               DATA_ANDAMENTO,
               OBSERVACAO,
               OPERADOR_INCLUSAO,
               DATA_INCLUSAO,
               TIAN_ID,
                                 DM_TIPO
                               ) VALUES (
                                 fimo_seq.nextval,
               p_proc_id,
               nSeto_id_destino,
               nSeto_id_destino,
               dDataAtual,
              'GER AUT - DOC Nº ' || vDocumento || ' AGU LIB CHEFIA/PORT 23/2016',
               vUsuario,
               dDataAtual,
               394,
                                 2 );
  
                                   COMMIT;
  
            EXCEPTION
                                    WHEN OTHERS THEN
                                                raise_application_error(-20001, 'Erro11: Insert FIMO. >> ' || SQLCODE || ' - ' || SQLERRM );
             END;
  */
  ------------------------------------------------------------------------
  -- verifica a ciência gerada e atualiza a ciência automaticamente - SCAC
  ------------------------------------------------------------------------
  vMotivo_lib := 'Portaria 23/2016';

  OPEN c50;
  fetch c50
    into r50;
  if c50%found then
  
    vDmLib_01 := r50.dm_lib_01;
    vDmLib_02 := r50.dm_lib_02;
    vDmLib_03 := r50.dm_lib_03;
    vDmLib_04 := r50.dm_lib_04;
    vDmLib_05 := r50.dm_lib_05;
    vDmLib_06 := r50.dm_lib_06;
  
    vMotivo_01 := r50.motivo_lib_01;
    vMotivo_02 := r50.motivo_lib_02;
    vMotivo_03 := r50.motivo_lib_03;
    vMotivo_04 := r50.motivo_lib_04;
    vMotivo_05 := r50.motivo_lib_05;
    vMotivo_06 := r50.motivo_lib_06;
  
    dDataLib_01 := r50.data_deacordo_01;
    dDataLib_02 := r50.data_deacordo_02;
    dDataLib_03 := r50.data_deacordo_03;
    dDataLib_04 := r50.data_deacordo_04;
    dDataLib_05 := r50.data_deacordo_05;
    dDataLib_06 := r50.data_deacordo_06;
  
    nPess_id_01 := r50.pess_id_01;
    nPess_id_02 := r50.pess_id_02;
    nPess_id_03 := r50.pess_id_03;
    nPess_id_04 := r50.pess_id_04;
    nPess_id_05 := r50.pess_id_05;
    nPess_id_06 := r50.pess_id_06;
  
    vResp_01 := r50. resp_deacordo_01;
    vResp_02 := r50. resp_deacordo_02;
    vResp_03 := r50. resp_deacordo_03;
    vResp_04 := r50. resp_deacordo_04;
    vResp_05 := r50. resp_deacordo_05;
    vResp_06 := r50. resp_deacordo_06;
  
    if r50.seto_id_01 is not null then
      if r50.dm_lib_01 = 'N' then
        vDmLib_01   := 'S';
        vMotivo_01  := vMotivo_lib;
        dDataLib_01 := dDataAtual;
        nPess_id_01 := nPess_id_tecnico;
        vResp_01    := vUsuario;
      end if;
    end if;
  
    if r50.seto_id_02 is not null then
      if r50.dm_lib_02 = 'N' then
        vDmLib_02   := 'S';
        vMotivo_02  := vMotivo_lib;
        dDataLib_02 := dDataAtual;
        nPess_id_02 := nPess_id_tecnico;
        vResp_02    := vUsuario;
      end if;
    end if;
  
    if r50.seto_id_03 is not null then
      if r50.dm_lib_03 = 'N' then
        vDmLib_03   := 'S';
        vMotivo_03  := vMotivo_lib;
        dDataLib_03 := dDataAtual;
        nPess_id_03 := nPess_id_tecnico;
        vResp_03    := vUsuario;
      end if;
    end if;
  
    if r50.seto_id_04 is not null then
      if r50.dm_lib_04 = 'N' then
        vDmLib_04   := 'S';
        vMotivo_04  := vMotivo_lib;
        dDataLib_04 := dDataAtual;
        nPess_id_04 := nPess_id_tecnico;
        vResp_04    := vUsuario;
      end if;
    end if;
  
    if r50.seto_id_05 is not null then
      if r50.dm_lib_05 = 'N' then
        vDmLib_05   := 'S';
        vMotivo_05  := vMotivo_lib;
        dDataLib_05 := dDataAtual;
        nPess_id_05 := nPess_id_tecnico;
        vResp_05    := vUsuario;
      end if;
    end if;
  
    if r50.seto_id_06 is not null then
      if r50.dm_lib_06 = 'N' then
        vDmLib_06   := 'S';
        vMotivo_06  := vMotivo_lib;
        dDataLib_06 := dDataAtual;
        nPess_id_06 := nPess_id_tecnico;
        vResp_06    := vUsuario;
      end if;
    end if;
  
    begin
      update fep_docs_setores_acordo
         set dm_lib_01            = vDmLib_01
            ,dm_lib_02            = vDmLib_02
            ,dm_lib_03            = vDmLib_03
            ,dm_lib_04            = vDmLib_04
            ,dm_lib_05            = vDmLib_05
            ,dm_lib_06            = vDmLib_06
            ,motivo_lib_01        = vMotivo_01
            ,motivo_lib_02        = vMotivo_02
            ,motivo_lib_03        = vMotivo_03
            ,motivo_lib_04        = vMotivo_04
            ,motivo_lib_05        = vMotivo_05
            ,motivo_lib_06        = vMotivo_06
            ,data_deacordo_01     = dDataLib_01
            ,data_deacordo_02     = dDataLib_02
            ,data_deacordo_03     = dDataLib_03
            ,data_deacordo_04     = dDataLib_04
            ,data_deacordo_05     = dDataLib_05
            ,data_deacordo_06     = dDataLib_06
            ,pess_id_01           = nPess_id_01
            ,pess_id_02           = nPess_id_02
            ,pess_id_03           = nPess_id_03
            ,pess_id_04           = nPess_id_04
            ,pess_id_05           = nPess_id_05
            ,pess_id_06           = nPess_id_06
            ,resp_deacordo_01     = vResp_01
            ,resp_deacordo_02     = vResp_02
            ,resp_deacordo_03     = vResp_03
            ,resp_deacordo_04     = vResp_04
            ,resp_deacordo_05     = vResp_05
            ,resp_deacordo_06     = vResp_06
            ,data_ini_vig2        = r50.data_ini_vig1
            ,data_fim_vig2        = r50.data_fim_vig1
            ,dm_PDF_conferido     = 'S'
            ,operador_inclusao    = Substr(vUsuario, 1, 30)
            ,Data_atualizacao     = Sysdate
            ,Operador_Atualizacao = Substr(vUsuario, 1, 30)
       where scac_id = r50.scac_id;
    
      commit;
    
    end;
  
  end if;
  close c50;

  -------------------------------
  -- atualiza situacao do parecer
  -------------------------------
  begin
    UPDATE fep_documentos
       SET situacao    = 'L'
          ,dm_revisado = 'S'
     WHERE docu_id = nDocu_id_parecer;
    commit;
  
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20001, 'Erro12: Update DOCU-Par. >> ' || SQLCODE || ' - ' || SQLERRM);
  end;

  -------------------------------
  -- atualiza situacao da licença
  -------------------------------
  begin
    UPDATE fep_documentos
       SET situacao = 'T'
     WHERE docu_id = nDocu_id_licenca;
    commit;
  
  EXCEPTION
    WHEN OTHERS THEN
      raise_application_error(-20001, 'Erro13: Update DOCU-Lic. >> ' || SQLCODE || ' - ' || SQLERRM);
  end;


  -------------------------------------------------------------------------
  -- Chamado 21811 - Karina Lamberts Schmidt - 17/06/2021
  -- Foi solicitado para que o sistema não faça mais o andamento automático
  /*           --------------------------
             -- andamentos após ciência
             --------------------------
             -- Inclui no arquivo de Andamentos de Processos
             BEGIN
                        INSERT INTO fep_fichas_movimentacoes
                               ( FIMO_ID,
               PROC_ID,
               SETO_ID_ORIGEM,
               SETO_ID_DESTINO,
               DATA_ANDAMENTO,
               OBSERVACAO,
               OPERADOR_INCLUSAO,
               DATA_INCLUSAO,
               TIAN_ID,
                                 DM_TIPO
                               ) VALUES (
                                 fimo_seq.nextval,
               p_proc_id,
               nSeto_id_destino,
                                 nSeto_id_destino,
                                 dDataAtual,
               'GER AUT - LIC Nº ' || vDocumento || ' AGUARDANDO ASSIN DIGITAL',
               vUsuario,
               dDataAtual,
               275,
                                 2 );
                                 commit;
  
             EXCEPTION
                                    WHEN OTHERS THEN
                                                raise_application_error(-20001, 'Erro14: Insert FIMO. >> ' || SQLCODE || ' - ' || SQLERRM );
  
              END;
  */

end;
FUNCTION FC_PROC_ATAN
 (P_PROC_ID IN number
 )
 RETURN NUMBER
 IS


     nAtan_id   number(10)   := null;

     cursor c1 is
        select resp.atan_id
          from fep_processos         proc,
               fep_responsabilidades resp
         where proc.proc_id = p_proc_id
           and proc.resp_id is not null
           and proc.resp_id = resp.resp_id;

     cursor c2 is
        select resp.atan_id
          from fep_processos          proc,
               fep_empreend_processos epro,
               fep_responsabilidades  resp
         where proc.proc_id = p_proc_id
           and proc.resp_id is null
           and proc.proc_id = epro.proc_id
           and epro.resp_id = resp.resp_id
       order by 1;
begin

   open  c1;
   fetch c1 into nAtan_id;
   close c1;
   if nAtan_id is not null then
      return(nAtan_id);
   end if;

   open  c2;
   fetch c2 into nAtan_id;
   close c2;
   if nAtan_id is not null then
      return(nAtan_id);
   end if;

   return(nAtan_id);

end;
FUNCTION FC_ATCE_LISTAR
 (P_ATCE_ID IN number
 ,P_PRCR_ID IN number
 )
 RETURN VARCHAR2
 IS


  nTido_id_atce     number(5);
  vListarIndef      varchar2(1);
  vAtivo            varchar2(1);

  nTido_id_prcr     number(5);
  nCldo_id_prcr     number(3);

  vSimNao           varchar2(1) := 'S';


  cursor c1 is
     select atce.tido_id,
            nvl(atce.dm_listar_indef,'S'),
            nvl(atce.dm_ativo,'S')
       from fep_ativ_central_eolica atce
      where atce.atce_id = p_atce_id;

  cursor c2 is
     select prcr.tido_id_licenca,
            sucd.cldo_id
       from fep_aux_proc_cond_restr    prcr,
            fep_tipos_documentos       tido,
            fep_sub_classes_documentos sucd
      where prcr.prcr_id = p_prcr_id
        and prcr.tido_id_licenca = tido.tido_id
        and tido.sucd_id = sucd.sucd_id;
begin

  open  c1;
  fetch c1 into nTido_id_atce, vListarIndef, vAtivo;
  close c1;

  if vAtivo = 'N' then
     vSimNao := 'N';
     return(vSimNao);
  end if;

  open  c2;
  fetch c2 into nTido_id_prcr, nCldo_id_prcr;
  close c2;

  if vListarIndef = 'N' and
     nCldo_id_prcr = 5 then
     vSimNao := 'N';
     return(vSimNao);
  end if;

  if nTido_id_atce is not null then
     if nTido_id_atce != nTido_id_prcr then
        vSimNao := 'N';
        return(vSimNao);
     end if;
  end if;

  return(vSimNao);

end;
PROCEDURE PR_PRCA_AT_PROC
 IS


  cursor c1 is
     select proc.proc_id,
            prca.prca_id
       from fep_aux_protocolo_processos prca,
            fep_processos               proc
      where prca.proc_id is null
        and prca.numero  = proc.numero
        and prca.orig_id = proc.orig_id
        and prca.ano     = proc.ano
        and prca.dv      = proc.dv;

 r1  c1%rowtype;
begin
  open c1;
  loop
    fetch c1 into r1;
    if c1%notfound then
       close c1;
       exit;
    else
       begin
          update fep_aux_protocolo_processos
            set proc_id = r1.proc_id
          where prca_id = r1.prca_id;
                  commit;
       end;
    end if;
  end loop;
end;


FUNCTION FC_DOCU_SOL_PATH
 (P_PROC_ID IN NUMBER
 ,P_DOCU_ID IN NUMBER
 ,P_DM_P7S IN VARCHAR2
 )
 RETURN VARCHAR2
 IS
vPathACROBAT  VARCHAR2(150);
vPathFilePDF            VARCHAR2(200);
vFilePDF                      VARCHAR2(200);
--vComando            VARCHAR2(255); -- (TG) Não utilizada
nSeto_id            NUMBER(6);
nSeto_docu_id         NUMBER(6);
vSetoSigla          VARCHAR2(15);
nAnoEmissao         NUMBER(4);
nSetorAssinatura    NUMBER(10)   := NULL;
--vUsername           VARCHAR2(30) := NULL; -- (TG) Não utilizada
nAnoDoc             NUMBER(4);
nAnoAntDoc          NUMBER(4);
nRaat_id            NUMBER(7,2);
nSucd_id            NUMBER(10);
nCldo_id_docu       number(3);
-------------------------
nDm_origem  number(3);
nTido_id    number(5);
vdm_assinatura_digital varchar2(1);
vParametro        VARCHAR2(200);
vTipo_solicitacao     number(1);
vDm_integradora varchar2(1);
dData_assinatura_fisica date;
dData_emissao           date;
VGeracao_automatica varchar2(1);
nDocuParecer   NUMBER(10)   := NULL;
nDocuLicenca   NUMBER(10)   := NULL;
nSoldParecer   NUMBER(10)   := NULL;
nSoldLicenca   NUMBER(10)   := NULL;
vConversao     VARCHAR2(1)  := 'N';
vDRH           VARCHAR2(1)  := 'N';
--vDm_p7s        varchar2(1); -- (TG) Não utilizada

nNumeroAISol   number(10);
dDataEnvioSol  date;
vDmPDFGerado   varchar2(1);

vUsuario            VARCHAR2(30);
nCldo_id            NUMBER(3);
vSituacao           VARCHAR2(1)    := NULL;
--vMsgPDF             VARCHAR2(300)  := NULL; -- (TG) Não utilizada
nTpDocAut           varchar2(1);
vConvetidoWordPdf   varchar2(1);

cursor  c0  is
  select  docu.dm_assinatura_digital,
    docu.dm_origem,
    trunc(docu.data_emissao) data_emissao,
    docu.ano,
    docu.seto_id,
    docu.situacao,
    docu.data_assinatura_fisica,
    docu.tido_id,
    atan.raat_id,
    docu.geracao_automatica,
    proc.numero_ai_sol,
    docu.data_envio_sol,
    docu.dm_gerado_pdf,
    sucd.cldo_id,
    nvl(docu.dm_word_pdf,'N') convertido
  from
    fep_documentos             docu,
    fep_tipos_documentos       tido,
    fep_sub_classes_documentos sucd,
    fep_processos              proc,
    fep_responsabilidades      resp,
    fep_atividades_antropicas  atan
  where
      docu.docu_id = p_docu_id
  and docu.tido_id = tido.tido_id
  and tido.sucd_id = sucd.sucd_id
  and docu.proc_id = proc.proc_id
  and proc.resp_id = resp.resp_id(+)
  and resp.atan_id = atan.atan_id(+);


  -- documentos automaticos
CURSOR  c1  IS
      SELECT  prcr.seto_id_assinatura
        FROM  fep_aux_proc_cond_restr   prcr
      WHERE   prcr.docu_id_licenca    = p_docu_id;

  -- documentos manuais
CURSOR  c2  IS
      SELECT  doco.seto_id_assinatura
        FROM  fep_documentos_conteudos doco
      WHERE   doco.docu_id  = p_docu_id;

  -- Outros Documentos
CURSOR  c3   IS
      SELECT  rapo.seto_id_assina_lic
        FROM  fep_processos               proc,
                fep_responsabilidades       resp,
                fep_atividades_antropicas   ata1,
                fep_ramos_atividades        raat,
                fep_ramos_portes            rapo
        WHERE   proc.proc_id = p_proc_id
          AND   proc.resp_id = resp.resp_id
          AND   resp.atan_id = ata1.atan_id
          AND   ata1.raat_id = raat.raat_id
          AND   raat.raat_id = rapo.raat_id
          AND   rapo.porte   = SUBSTR(busca_porte(ata1.raat_id, ata1.medida_porte,NULL),1,1);

  -- verifica o usurio pelo setor responsavel
CURSOR  c31   IS
      SELECT  seto.sigla
        FROM  fep_setores  seto
      WHERE   seto.seto_id = nSetorAssinatura;

CURSOR  c4  IS
      SELECT  sucd.sucd_id
        FROM  fep_tipos_documentos     tido,
              fep_sub_classes_documentos sucd
      WHERE   tido.tido_id = nTido_id
        AND   tido.sucd_id = sucd.sucd_id;

CURSOR  c5  IS
      SELECT  ata1.raat_id
        FROM  fep_processos               proc,
              fep_responsabilidades       resp,
               fep_atividades_antropicas  ata1
      WHERE   proc.proc_id = p_proc_id
        AND   proc.resp_id = resp.resp_id
        AND   resp.atan_id = ata1.atan_id;

CURSOR  c6  IS
      SELECT  vful.seto_id
        FROM  v_rhu_funcionarios_ultimo vful
      WHERE   vful.username = vUsuario;

CURSOR  c7  IS
      SELECT  sucd.cldo_id
      FROM  fep_tipos_documentos                tido,
              fep_sub_classes_documentos sucd
      WHERE   tido.tido_id =nTido_id
        AND   tido.sucd_id = sucd.sucd_id;

CURSOR  c10   IS
      SELECT  par1.description
        FROM  tpl_parameters par1
        WHERE   par1.parameter_name = 'PATH_ACROBAT';

CURSOR  c11   IS
      SELECT  par1.description
        FROM  tpl_parameters par1
        WHERE   par1.parameter_name = vParametro;

CURSOR  soin  IS
      SELECT  soin.tipo_solicitacao
    FROM  fep_solic_integradoras soin
    WHERE   soin.proc_id = p_proc_id;


CURSOR  c21 IS
        SELECT  prcr.docu_id_parecer,
                prcr.sold_id,
                prcr.drh_origem
         FROM   fep_aux_proc_cond_restr prcr
        WHERE   prcr.docu_id_parecer = p_docu_id;

CURSOR  c22   IS
        SELECT  prcr.docu_id_licenca,
                prcr.sold_id,
                prcr.drh_origem
         FROM   fep_aux_proc_cond_restr prcr
        WHERE   prcr.docu_id_licenca = p_docu_id;

CURSOR  c23   IS
        SELECT  doco.docu_id,
                doco.conversao
          FROM  fep_documentos_conteudos   doco
        WHERE   doco.docu_id = p_docu_id;
BEGIN
  open  c0;
  fetch c0  into  vDm_assinatura_digital, nDm_origem, dData_emissao, nAnoAntDoc,
                  nSeto_docu_id, vSituacao, dData_assinatura_fisica,
                  nTido_id, nRaat_id, VGeracao_automatica,
                  nNumeroAISol,dDataEnvioSol, vDmPDFGerado,
                  nCldo_id_docu, vConvetidoWordPdf;
  close c0;

 ----------------------------------------------------
  -- Documentos Externos executado com Upload
  -- no programa PROF0100
  -- Processos Convenio Mata Atlântica
  -- 5011 - Súmula / 5012 - Plano / 5013 - Termo
  --                          Malu 28/04/2021
  -- 2720 - Anexos Demanda DEMJ
  --                          Malu 11/09/2023
  if nTido_id in ( 2720, 5011,5012,5013 ) then
    vParametro := 'PATH_DOCS_CONTEUDOS_SERVER';
    OPEN   c11;
    FETCH  c11 INTO  vPathFilePDF;
     CLOSE  c11;
    nAnoDoc := to_number(to_char(dData_emissao,'RRRR'));
    vFilePDF    := vPathFilePDF || nAnoDoc ||  '\' ||  p_docu_id || '.pdf';
      RETURN(vFilePDF);
  end if;
  -----------------------------------------------------
  -- doc AR Correios  ( Malu 12/12/2022 )
  if nTido_id in ( 2012 ) then
    vParametro := 'PATH_DOCS_AI_SOL';
    OPEN   c11;
    FETCH  c11 INTO  vPathFilePDF;
    CLOSE  c11;
    vFilePDF    := vPathFilePDF ||  p_docu_id || '.pdf';
     RETURN(vFilePDF);
  end if;


 -- dbms_output.put_line('nTido_id='||nTido_id||' nRaat_id='||nRaat_id);
  -------------------------------------------------------------------
  -----------------------------------------------------------------------
  -- verifica se é documento de Auto de Infração ou é da Junta
  --                   Malu 03/08/2018
  -- Verifica também as Classes:
  --   21 - JUNTAS JULGAMENTO AI
  --   22 - JUNTAS JULGAMENTO AI - NOTIF
  -- mesmo não sendo AI SOL - documentos da junta grava no mesmo local
  --                   Malu 08/11/2018
  -----------------------------------------------------------------------
  if nTido_id not in ( 3710,3720/*,1005,1002,1700,1250*/)  then
   --  if  nNumeroAISol is not null or nCldo_id_docu in ( 21,22 ) then
     if (nNumeroAISol is not null or nCldo_id_docu in ( 21,22 )) and vDmPDFGerado='S' then
         vParametro := 'PATH_DOCS_AI_SOL';
         open  c11;
         fetch c11 into vPathFilePDF;
         close c11;
         vFilePDF    := vPathFilePDF || p_docu_id || '.pdf';
         RETURN(vFilePDF);
     end if;
  end if;

  OPEN    c6;
  FETCH c6 INTO nSeto_id;
    CLOSE c6;

    OPEN    c7;
    FETCH   c7 INTO   nCldo_id;
    CLOSE   c7;

--em 21/06 AG
--para documentos do tipo 2800 que são gerados autom, buscarem da pasta de pareceres pdf, e não Word
if nTido_id != 2800 then
  nDm_origem := 0;
end if;
if nTido_id in( 2800,3800) then
  VGeracao_automatica :='S';
end if;

--dbms_output.put_line('VGeracao_automatica='||VGeracao_automatica||' nDm_origem='||nDm_origem||' nCldo_id='||nCldo_id||' P_DM_P7S='||P_DM_P7S);


  IF  P_DM_P7S  = 'S' THEN
    vParametro := 'PATH_PDF_DOC_DIGITAL';
      -- Procura o PATH do Arquivo PDF do Documento
      OPEN  c11;
      FETCH   c11 INTO  vPathFilePDF;
    CLOSE   c11;
    nAnoDoc := to_number(to_char(dData_assinatura_fisica,'RRRR'));
    vFilePDF    := vPathFilePDF || nAnoDoc || '\P7S\' || p_docu_id || '.pdf.p7s';
        RETURN(vFilePDF);
  END IF;
  -------------------------------------------------------------
  -- Buscar o arquivo na pasta do ano que foi gerado o seu
  -- número de documento no banco.
  -- Ex Ano 2022 --> \\semarspaefs01\DocFprod\2022\1315216.DOC
  --    Ano 2023 --> \\semarspaefs01\DocFprod\2023\1316765.DOC
  --                Cátia Jardim 06/02/2023
  -------------------------------------------------------------

  if  VGeracao_automatica = 'N' and nTido_id <>2011 then
    vParametro := 'PATH_DOCS_CONTEUDOS_SERVER';
      -- Procura o PATH do Arquivo PDF do Documento
      OPEN  c11;
      FETCH   c11 INTO  vPathFilePDF;
    CLOSE   c11;
    nAnoDoc := nvl(nAnoAntDoc,to_number(to_char(dData_emissao,'RRRR')));
    vFilePDF    := vPathFilePDF || nAnoDoc ||  '\' ||  p_docu_id || '.DOC';

      -------------------------------------------------------------
      -- Se documento já foi convertido de word para PDF na Fepam
      -- não precisa fazer conversão na Procergs
      --     campo dm_word_pdf em fep_documentos = 'S'
      --                Malu 08/08/2019
      -------------------------------------------------------------

      if vFilePDF like '%.DOC' and vConvetidoWordPdf = 'S' then
         vFilePDF := replace(vFilePDF,'.DOC','.pdf');
      end if;


    RETURN(vFilePDF);
  END IF;

   IF   nTido_id  IN (1900,1905,2900) THEN
        nDm_origem := 10;   -- Oficio de Indeferimento para Prefeitura ou Rev Prorrogao
    END   IF;

   IF   nTido_id  IN (1800) THEN
        nDm_origem := 2;   -- Relatório de Ensaios - Laboratório ( igual a Licença ) - Malu 16/01/2023
   END  IF;


-- Cátia Jardim - 14-11-2018
-- Incluido o documento 3800 para buscar da pasta de pareceres pdf, e não Word.
-- Incluido oficio 3810 - com destinatário informado, para proc SOL ou não ( Malu 26/10/2020 )
-- Incluido oficio 3820 - com destinatário  para Intervenientes ( Malu 11/12/2020 )
-- Incluido oficio 5000 - com o mesmo PATH Ofícios ( Karina 18/09/2023 )
   IF   nTido_id  IN (3000,3600,3605,4000,3500,4500,3800, 3710,3720,3810,3820,5000) THEN
     nDm_origem := 11;   -- Oficio SOL
   END  IF;

   IF nDm_origem = 0 THEN
          IF  nCldo_id IN (12,202,312)  THEN
                OPEN    c21;
                FETCH   c21 INTO nDocuParecer, nSoldParecer, vDRH;
                CLOSE   c21;
                IF  nDocuParecer  IS  NOT   NULL THEN
                  IF  vDRH = 'S' THEN
                        nDm_origem := 20;  -- Parecer DRH
                  ELSE
                          IF  nSoldParecer IS NULL THEN
                            nDm_origem := 1;   -- Dicopi/Sefind/Seamb
                          ELSE
                              nDm_origem := 5;   -- Integradora - Seasp
                          END   IF;
                    END   IF;
                ELSE
                    IF  nSeto_id  IN(2000, 2225,228)  AND
                          nRaat_id IN ( 4710.10, 4710.20, 4710.30 )   THEN
                          nDm_origem := 1;   -- Dicopi/Sefind/Seamb
                    END   IF;
                END   IF;

              --      dbms_output.put_line('1 if nDm_origem='||nDm_origem);

          ELSE
                OPEN   c22;
                FETCH  c22 INTO nDocuLicenca, nSoldLicenca, vDRH;
                CLOSE c22;
                IF  nDocuLicenca IS NOT NULL THEN
                  IF  vDRH = 'S' THEN
                      nDm_origem := 21; -- Outorga - DRH
                    ELSE
                          IF  nSoldLicenca  IS NULL THEN
                              nDm_origem := 2;   -- Dicopi/Sefind/Seamb
                          ELSE
                            nDm_origem := 6;   -- Integradora - Seasp
                          END   IF;
                     END  IF;
                ELSE
                    IF  nSeto_id IN(2000, 2225, 228)  AND
                        nRaat_id IN ( 4710.10, 4710.20, 4710.30 )   THEN
                        nDm_origem := 2;   -- Dicopi/Sefind/Seamb
                    END   IF;
                END   IF;
          END   IF;
    END   IF;

   IF   nDm_origem  =  0  THEN
          IF  nTido_id = 2011 THEN
              nDm_origem := 7;
          ELSE
              -- Verifica se Conversao dos Documentos Word
              OPEN  c23;
              FETCH c23 INTO nDocuLicenca, vConversao;
              CLOSE c23;
              IF  nDocuLicenca  IS  NOT   NULL THEN
                    IF  vConversao  =   'S'   AND
                        nCldo_id    !=  12  THEN   -- classe 12 - Pareceres
                  nDm_origem := 4;
                  END   IF;
              END   IF;
        END   IF;
       --     dbms_output.put_line('2 if nDm_origem='||nDm_origem);


    END  IF;


--------------------------------------------------------------------
  --vPathACROBAT    := fc_path_ACROBAT;
  open  c10;
  fetch c10 into   vPathACROBAT;
  close c10;

--------------------------------------------------------------------
  --    dbms_output.put_line('1 vPathACROBAt='||vPathACROBAT);

  vDm_integradora :=  substr(fc_proc_integradora(p_proc_id),1,1) ;

    IF  nDm_origem  IN (1,20) THEN  -- Parecer DICOPI / DRH
        vParametro := 'PATH_PDF_PARECER_AUT_VIGOR';
    END   IF;
    IF  nDm_origem  = 5   THEN  -- Parecer Integradora - SEASP
        IF  vDm_integradora   = 'S' THEN
          OPEN  soin;
          FETCH soin INTO   vTipo_solicitacao;
          CLOSE soin;
         IF   vTipo_solicitacao IN(3,4) THEN
              vParametro := 'PATH_PDF_SILV_EXT_F_PARVIG';
          ELSE
                  vParametro := 'PATH_PDF_INT_EXT_F_PARVIG';
        END   IF;
          END IF;
    END   IF;

    IF  nDm_origem = 7 THEN  -- Documento Externo - 2011
        vParametro := 'PATH_PDF_DOC_DOCEXTERNO';
    END   IF;

    IF  nDm_origem = 10 THEN  -- Oficio de Indeferimento de LO para Prefeitura
        vParametro := 'PATH_PDF_OFICIO_INDEF';
    END IF;

    IF  nDm_origem = 11 THEN  -- Oficio SOL
        vParametro := 'PATH_PDF_OFICIO_SOL';
    END IF;

    IF  nDm_origem IN (2,4,6,21) THEN
        IF  ((vDm_assinatura_digital = 'S')   OR
               (dData_emissao > TO_DATE('03/01/2006','dd/mm/rrrr')))    THEN
              IF  vSituacao IN ('E','P','V','R','F','G') THEN
                  vParametro := 'PATH_PDF_DOC_DIGITAL';
             ELSE
                  vParametro := 'PATH_PDF_LIC_ASSINAR';
              END   IF;
         ELSE
            IF  nDm_origem  =   2   THEN  -- Licena DICOPI
                 vParametro := 'PATH_PDF_LICENCA_AUT';
            END   IF;
            IF  nDm_origem  =   4   THEN  -- Licença por Conversao Word
              vParametro := 'PATH_PDF_LICENCA_DOC';
            END   IF;
        END   IF;
    END   IF;

    -- Procura o PATH do Arquivo PDF do Documento
    OPEN  c11;
    FETCH   c11 INTO vPathFilePDF;
  CLOSE   c11;

    --  vPathFilePDF      := fc_path_FilePDF(nDm_origem);

  --    dbms_output.put_line('1 vPathFilePDF='||vPathFilePDF);
--------------------------------------------------------------------------------------

      OPEN    c4;
      FETCH   c4 INTO nSucd_id;
      CLOSE c4;

      nSetorAssinatura := NULL;
      OPEN    c1;
      FETCH   c1  INTO  nSetorAssinatura;
      CLOSE   c1;
      IF   nSetorAssinatura IS NULL THEN
          OPEN    c2;
          FETCH   c2  INTO nSetorAssinatura;
          CLOSE   c2;
      END   IF;
     IF   nSetorAssinatura IS NULL  THEN
          OPEN    c3;
          FETCH   c3 INTO nSetorAssinatura;
          CLOSE   c3;
      END   IF;
      IF  nSetorAssinatura IS NULL  THEN
        nSetorAssinatura := 1;
      END   IF;
      OPEN    c31;
      FETCH   c31   INTO  vSetoSigla;
      CLOSE   c31;

      IF  nDm_origem in (7)     THEN
          vFilePDF    :=  vPathFilePDF ||   p_docu_id || '.pdf';
      END   IF;


      IF  nDm_origem in(10,11)    THEN  -- Oficio de Indeferimento de LO ( Prefeitura ) e Oficio SOL

          nAnoEmissao := to_number(to_char(dData_emissao,'rrrr'));
           vFilePDF    := vPathFilePDF || nAnoEmissao || '\' || p_docu_id || '.pdf';

      ELSIF   nDm_origem in (1,5)   THEN
          nSeto_id    := nSeto_docu_id;
          nAnoEmissao := to_number(to_char(dData_emissao,'rrrr'));
          OPEN    c5;
          FETCH   c5  INTO  nRaat_id;
          CLOSE   c5;

--Para casos de documento que não são pareceres de licenciamento, do tipo I
if nTido_id = 2800 then
  nTpDocAut :='I';
else
  nTpDocAut :='P';
end if;

          if  trunc(dData_emissao)  <   to_date('15/09/2009','dd/mm/rrrr')  and
                nRaat_id IN ( 4710.10, 4710.20, 4710.30 )   THEN
                vFilePDF  :=  vPathFilePDF || nAnoEmissao || '\' || p_docu_id || '.pdf';
          ELSE
                if length( p_docu_id)>= 7 then

                    vFilePDF  := vPathFilePDF || nAnoEmissao || '\' ||
                              nTpDocAut || LPAD(nSeto_id,6,0) || '_' ||
                                      LPAD(p_docu_id,7,0) || '.pdf';
                 else
                    vFilePDF  := vPathFilePDF || nAnoEmissao || '\' ||
                              nTpDocAut || LPAD(nSeto_id,6,0) || '_' ||
                                      LPAD(p_docu_id,6,0) || '.pdf';
                 end if;

              /*  vFilePDF  := vPathFilePDF || nAnoEmissao || '\' ||
                              nTpDocAut || LPAD(nSeto_id,6,0) || '_' ||
                                      LPAD(p_docu_id,6,0) || '.pdf';*/
          END   IF;
      ELSIF  nDm_origem in ( 2,4,6 )  THEN
          -- 2 Licença DICOPI/Sefind/Irrigante/Seamb
          -- 4 Licença Gerada por Conversao do Doc Word em PDF
          -- 6 Licença Integradora

    IF  ((vDm_assinatura_digital = 'S') OR
                (dData_emissao  >   to_date('03/01/2006','dd/mm/rrrr')))    THEN
                IF  vSituacao   in ('E','P','V','R','F','G')  THEN
                    -- 06/05/2008 11:30
                    -- alterado o sistema de diretrios dos docs;
                    nAnoDoc := to_number(to_char(dData_assinatura_fisica,'RRRR'));
                    vFilePDF := vPathFilePDF ||nAnoDoc ||'\'|| p_docu_id || '_signed.pdf';
                ELSE
                        IF      nSucd_id = 10   THEN
                          vFilePDF := vPathFilePDF || vSetoSigla || '\LP\' ||  p_docu_id || '.pdf';
                        ELSIF   nSucd_id = 11   THEN
                          vFilePDF := vPathFilePDF || vSetoSigla || '\LI\' ||  p_docu_id || '.pdf';
                      ELSIF   nSucd_id = 12   THEN
                          vFilePDF := vPathFilePDF || vSetoSigla || '\LO\' ||  p_docu_id || '.pdf';
                        ELSIF   nSucd_id = 15 THEN
                          vFilePDF := vPathFilePDF || vSetoSigla || '\LU\' || p_docu_id || '.pdf';
                        ELSE
                          vFilePDF := vPathFilePDF || vSetoSigla || '\Outros\' ||  p_docu_id || '.pdf';
                        END   IF;
                END   IF;
          ELSE
                vFilePDF    := vPathFilePDF || p_docu_id || '.pdf';
    END   IF;
      END   IF;


      -------------------------------------------------------------
      -- Se documento já foi convertido de word para PDF na Fepam
      -- não precisa fazer conversão na Procergs
      --     campo dm_word_pdf em fep_documentos = 'S'
      --                Malu 08/08/2019
      -------------------------------------------------------------

      if vFilePDF like '%.DOC' and vConvetidoWordPdf = 'S' then
         vFilePDF := replace(vFilePDF,'.DOC','.pdf');
      end if;


-- dbms_output.put_line('FIM vPathFilePDF='||vPathFilePDF);
      RETURN(vFilePDF);

END;

/*FUNCTION FC_DOCU_SOL_EXT_ARQ (P_PROC_ID IN NUMBER
                             ,P_DOCU_ID IN NUMBER
                             ,P_DM_P7S IN VARCHAR2 ) RETURN VARCHAR2 IS
  vNome_arquivo   varchar2(200);
  vNome_arquivo1  varchar2(200);
  vExtensao       varchar2(10);
  nTamanho        number(5);
  vConvertidoPdf  varchar2(1);

cursor c1 is
  select nvl(docu.dm_word_pdf,'N')
   from fep_documentos docu
   where docu.docu_id =  p_docu_id;

begin

   ------------------------------------------------------------------------------------
   -- função que busca a extensão do arquivo
   -------------------------------------------------------------------------------------

    vNome_arquivo1 := pck_processos.fc_docu_sol_path(p_proc_id, p_docu_id, p_dm_p7s);
    nTamanho             := length(vNome_arquivo1);

    vNome_Arquivo  := vNome_Arquivo1;

    -------------------------------------------------------------------------------------------------------------
    -- Se Path no nome do arquivo iniciar por IP - ignora as primeras 19 posições
    --             exemplo: \\10.244.127.13\Docs_PDF\Oficios\2017\837453.pdf
    --                                                                                    Malu 01/08/2017
    --------------------------------------------------------------------------------------------------------------

   if nTamanho > 20 then
            if instr(substr(vNome_arquivo1,1,10),'.') > 0 then
                  vNome_Arquivo := substr(vNome_arquivo1,20,nTamanho - 19);
            end if;
    end if;

    vExtensao := substr(vNome_arquivo, INSTR(vNome_arquivo,'.') + 1, length(vNome_arquivo) - INSTR(vNome_arquivo,'.'));

    if vExtensao = 'DOC' THEN
       open  c1;
       fetch c1 into vConvertidoPdf;
       close c1;
       if vConvertidoPdf = 'S' then
          vExtensao := 'pdf';
       end if;
    end if;

    return(vExtensao);
end;
*/

PROCEDURE PR_PROC_PROF2420_AUX (P_USUARIO IN varchar2) IS

  dDataAtual       date;
  nSequencia       number(10);
  --nSeqRegional     number(10); -- (TG) Não utilizada
  nNivel           number(2);
  --nCont            number(5) := 0; -- (TG) Não utilizada
  nSeto_id         number(6);
  nSeto_nivel      number(6);
  nSeto_nivel_at   number(6);

   cursor c1 is
      select (level - 1)    nivel,
             seto.seto_id   seto_id,
             seto.sigla     sigla,
             seto.nome      nome,
             rownum         nr_reg
       from  fep_setores seto
      where seto.data_extincao is null
        and seto.seto_id != 9999
        and ((NVL(seto.tipo_setor,0) != 9) OR
             (NVL(seto.tipo_setor,0)  = 9 and seto.seto_id = 160 ))
      start with seto.seto_id = 1
    connect by decode(seto.seto_id,160,236, seto.seto_id_responsavel) = prior seto.seto_id;
   r1    c1%rowtype;

   cursor c2 is
      select axet.seto_id
        from fep_aux_PROF2420_setor axet
       where axet.seto_id in ( 110 )
            and axet.operador_inclusao = p_usuario
      order by axet.seto_id;

   /* (TG) Não utilizado
   cursor c3 is
      select axet.seto_id,
                  axet.sequencia
        from fep_aux_PROF2420_setor axet
       where axet.operador_inclusao = p_usuario
    order by axet.sequencia;*/
   --r3    c3%rowtype; -- (TG) Não utilizada

   cursor c4 is
      select axet.seto_id
        from fep_aux_PROF2420_setor axet
       where axet.nome like 'PROGRAMA%'
            and axet.operador_inclusao = p_usuario
            and NVL(axet.seto_id,0) != 5
      order by axet.seto_id;

  cursor c8 is
        select raat.raat_id,
                     raat.descricao raat_descricao,
                    raat.grrm_id,
                    grrm.descricao grrm_descricao,
                    raat.grat_id,
                    grat.descricao grat_descricao
          from fep_ramos_atividades raat,
                    fep_grupos_ramos      grrm,
                    fep_grupos_atividades grat
    where raat.grrm_id = grrm.grrm_id(+)
         and raat.grat_id = grat.grat_id(+)
         and raat.titulo = 'D'
--         and raat.data_desativacao is null
  union all
        select 99999.99 raat_id,
               'NÃO IDENTIFICADO' raat_descricao,
               to_number(null)    grrm_id,
               null               grrm_descricao,
               null               grat_id,
               null               grat_descricao
          from dual
    order by 1;
   r8    c8%rowtype;


   cursor c10 is
      select seto.seto_id   seto_id,
             seto.sigla     sigla,
             seto.nome      nome
        from fep_setores seto
       where seto.data_extincao is null
         and NVL(seto.tipo_setor,0) = 9
      union all
      select
             seto.seto_id   seto_id,
             seto.sigla     sigla,
             seto.nome      nome
        from fep_setores seto
       where seto.data_extincao is null
         and NVL(seto.tipo_setor,0) != 9
         and seto.seto_id_responsavel = 236
       order by 1;
   r10    c10%rowtype;

   -- se consulta FEPAM - ler todos os setores
   cursor c11 is
      select
             seto.seto_id   seto_id,
             seto.sigla     sigla,
             seto.nome      nome
       from  fep_setores seto
      where  NVL(seto.tipo_setor,0) != 9
      --and    seto.data_extincao is null
       order by 1;
   r11    c11%rowtype;

begin

   ------------------------------------------
   -- SETOR - Programa PROF2420
   -- Cria tabela auxiliar por usuário
   -- Estoque de Processos Ano/Mes
   --               Malu 19/01/2017
   ------------------------------------------

   select sysdate into dDataAtual from dual;
   --
   begin
     delete
       from fep_aux_PROF2420_setor
      where operador_inclusao = p_usuario;    -- Exclui tabela Auxiliar Setor
           commit;
   end;

   -- Ramo de Atividade
   begin
     delete
       from fep_aux_PROF2420_ramo
      where operador_inclusao = p_usuario; -- Exclui tabela Auxiliar Ramo
           commit;
   end;

  ------------------------------------------------------------------------------------------------------------
  --- Gera tabela Auxiliar pelo SETOR
  ------------------------------------------------------------------------------------------------------------

   open c1;
   loop
      fetch c1 into r1;
      if c1%notfound then
         close c1;
         exit;
      else

         nNivel     := r1.nivel;
         nSequencia := r1.nr_reg;

         if nNivel = 1 then
            nSeto_Nivel := r1.Seto_id;
         end if;

         nSeto_nivel_at := nSeto_Nivel;

         begin
            insert into fep_aux_PROF2420_setor (  DM_MARCAR,
                                                  SETO_ID,  SETO_ID_NIVEL,
                                                  SIGLA, NOME, NIVEL, SEQUENCIA,
                                                  DATA_INCLUSAO, OPERADOR_INCLUSAO
                                                ) values (
                                                  'N',
                                                  r1.seto_id, nSeto_nivel_at,
                                                  r1.sigla, r1.nome, nNivel, nSequencia,
                                                  dDataAtual, p_usuario );
                                                      commit;
         end;

      end if;

   end loop;

   -------------------------
   -- inclui o titulo outros - setor
   -------------------------
   nSequencia := nSequencia + 1;
   begin
     insert into fep_aux_PROF2420_setor ( DM_MARCAR,
                                          SETO_ID,  SETO_ID_NIVEL,
                                          SIGLA, NOME, NIVEL, SEQUENCIA,
                                          DATA_INCLUSAO, OPERADOR_INCLUSAO
                                        ) values (
                                          'N',
                                          7, 7,
                                         'OUTROS', 'OUTROS', 1, nSequencia,
                                         dDataAtual, p_usuario );
                                             commit;
   end;


   ----------------------------------------------
   -- atualiza a sequencia para os setores Outros
   ----------------------------------------------
   open c2;
   loop
     fetch c2 into nSeto_id;
     if c2%notfound then
        close c2;
        exit;
     else
        nSequencia := nSequencia + 1;
        begin
            update fep_aux_PROF2420_setor
                   set nivel         = 2,
                   sequencia     = nSequencia,
                   seto_id_nivel = 7
             where seto_id = nSeto_id
                   and operador_inclusao = p_usuario;
                                   commit;
        end;
     end if;
   end loop;

   -------------------------
   -- inclui o titulo programas - setor 5
   -------------------------
   nSequencia := nSequencia + 1;
   begin
     insert into fep_aux_PROF2420_setor (
                    DM_MARCAR,
                    SETO_ID,  SETO_ID_NIVEL,
                    SIGLA, NOME, NIVEL, SEQUENCIA,
                    DATA_INCLUSAO, OPERADOR_INCLUSAO
                   ) values (
                     'N',
                     5, 5,
                     'PROGRAMAS', 'PROGRAMAS', 1, nSequencia,
                     dDataAtual, p_usuario );
                         commit;
   end;


   -------------------------------------------------------------------------
   -- atualiza a sequencia para os setores  Programas
   ------------------------------------------------------------------------
   open c4;
   loop
     fetch c4 into nSeto_id;
     if c4%notfound then
        close c4;
        exit;
     else
        nSequencia := nSequencia + 1;
        begin
            update fep_aux_PROF2420_setor
                   set nivel     = 2,
                   sequencia     = nSequencia,
                   seto_id_nivel = 5
             where seto_id = nSeto_id
               and operador_inclusao = p_usuario;
                      commit;
        end;
     end if;
   end loop;

   -----------------------------------------------------------------------------------
   -- inclui os setores da SEMA
   -------------------------------------------------------------------------------------
   -------------------------
   -- inclui o titulo programas - setor 8
   -------------------------
   nSequencia := nSequencia + 1;
   begin
     insert into fep_aux_PROF2420_setor (
                    DM_MARCAR,
                    SETO_ID,  SETO_ID_NIVEL,
                    SIGLA, NOME, NIVEL, SEQUENCIA,
                    DATA_INCLUSAO, OPERADOR_INCLUSAO
                     ) values (
                     'N',
                     8,8,
                     'SEMA', 'SEMA', 1, nSequencia,
                     dDataAtual, p_usuario );
                         commit;
   end;

  -----------------------------------------
  -- inclui os setores da SEMA + Regionais
  -----------------------------------------
   open c10;
   loop
      fetch c10 into r10;
      if c10%notfound then
         close c10;
         exit;
      else
          nSequencia := nSequencia + 1;
          begin
            insert into fep_aux_PROF2420_setor ( DM_MARCAR,
                                                 SETO_ID,  SETO_ID_NIVEL,
                                                 SIGLA, NOME, NIVEL, SEQUENCIA,
                                                 DATA_INCLUSAO, OPERADOR_INCLUSAO
                                               ) values (
                                                 'N',
                                                 r10.seto_id, 8,
                                                 r10.sigla, r10.nome, 2, nSequencia,
                                                 dDataAtual, p_usuario );
                                                     commit;
         end;

      end if;

   end loop;

  -----------------------------------------------------------------------------------
  -- inclui os setores da FEPAM
  -------------------------------------------------------------------------------------
   -------------------------
   -- inclui o titulo programas - setor 9
   -------------------------
   nSequencia := nSequencia + 1;
   begin
     insert into fep_aux_PROF2420_setor (
                    DM_MARCAR,
                    SETO_ID,  SETO_ID_NIVEL,
                    SIGLA, NOME, NIVEL, SEQUENCIA,
                    DATA_INCLUSAO, OPERADOR_INCLUSAO
                     ) values (
                     'N',
                     9,9,
                     'FEPAM', 'FEPAM', 1, nSequencia,
                     dDataAtual, p_usuario );
                         commit;
   end;

   -------------------------------------
   -- inclui os setores da FEPAM
   -------------------------------------
   open c11;
   loop
      fetch c11 into r11;
      if c11%notfound then
         close c11;
         exit;
      else
          nSequencia := nSequencia + 1;
          begin
            insert into fep_aux_PROF2420_setor ( DM_MARCAR,
                                                 SETO_ID,  SETO_ID_NIVEL,
                                                 SIGLA, NOME, NIVEL, SEQUENCIA,
                                                 DATA_INCLUSAO, OPERADOR_INCLUSAO
                                                ) values (
                                                 'N',
                                                 r11.seto_id, 9,
                                                 r11.sigla, r11.nome, 2, nSequencia,
                                                 dDataAtual, p_usuario );
                                                     commit;
         end;

      end if;

   end loop;


   ------------------------------------------------------------------------------------------------------------
   --- Gera tabela Auxiliar pelo RAMO DE ATIVIDADE
   ------------------------------------------------------------------------------------------------------------
   open c8;
   loop
      fetch c8 into r8;
      if c8%notfound then
         close c8;
         exit;
      else
              begin
                    insert into fep_aux_PROF2420_ramo ( DM_MARCAR,
                                                        RAAT_ID,  RAAT_DESCRICAO ,
                                                        GRRM_ID, GRRM_DESCRICAO,
                                                        GRAT_ID, GRAT_DESCRICAO,
                                                        DATA_INCLUSAO, OPERADOR_INCLUSAO
                                                      ) values (
                                                        'N',
                                                        r8.raat_id, r8.raat_descricao ,
                                                        r8.grrm_id, r8.grrm_descricao,
                                                        r8.grat_id, r8.grat_descricao,
                                                        dDataAtual, p_usuario );
                                                            commit;
             end;
      end if;
   end loop;

END;

FUNCTION FC_ATAN_SIT_LICENCA
 (P_ATAN_ID IN number
 )
 RETURN VARCHAR2
 IS


   vDescricao   varchar2(100);

   cursor c1 is
      select lpad(docu.numero,6,0) || '/' || docu.ano || ' - ' ||
             rpad(tido.abreviatura,6,' ') ||
             ' Sit: ' ||
      initcap(substr(pck_cadastros.fc_descricao_dominio(
              'DM_SITUACAO_DOCU',
               docu.situacao,0),1,25) ||
               '   Fim vigência: ' || to_char(docu.data_fim_vigencia,'dd/mm/rrrr')) sit_docu
      from fep_documentos             docu,
           fep_processos              proc,
           fep_responsabilidades      resp,
           fep_tipos_documentos       tido,
           fep_sub_classes_documentos sucd
     where resp.atan_id = p_atan_id
       and resp.resp_id = proc.resp_id
       and proc.proc_id = docu.proc_id
       and docu.tido_id = tido.tido_id
       and tido.sucd_id = sucd.sucd_id
       and sucd.cldo_id < 7
       and docu.tido_id not in ( 106,107,108,116,117,118,360, 400, 410, 431,432 )
     order by docu.data_inicio_vigencia desc, docu.docu_id desc;
begin

  open c1;
  fetch c1 into vDescricao;
  close c1;

  return(vDescricao);


end;
FUNCTION FC_OF3000_LINHAS
 (P_ORIGEM IN number
 ,P_DOCU_OFICIO IN NUMBER
 )
 RETURN VARCHAR2
 IS


   vlinha          varchar2(2000);
   nSolicitacao    number(10);
   nDias           number(5);
   vExtenso        varchar2(150);
   nTipo_of        number(1);

   cursor c1 is
         select proc.solicitacao_sol
           from fep_processos    proc,
                fep_documentos docu
          where proc.proc_id = docu.proc_id
            and docu.docu_id = p_docu_oficio;


   cursor c2 is
         select docu.dias_of_parada,
                docu.dm_tipo_of
           from fep_documentos docu
          where docu.docu_id = p_docu_oficio;

begin
   if p_origem = 1 then

      open  c1;
      fetch  c1 into nSolicitacao;
      close c1;

      vLinha := 'Para darmos andamento na análise do processo administrativo acima referido, ' ||
                'solicitamos a apresentação dos seguintes documentos que deverão ser ' ||
                'anexados ao processo, no sistema SOL,  solicitação nº '  || nSolicitacao ||
                ', em Documentos Complementares:';
   else

      open  c2;
      fetch c2 into nDias, nTipo_of;
      close c2;

      if nTipo_of = 4 then  -- ofício de informação, não tem dias para resposta (GLPI 11224)
         vLinha := null;
         return(vLinha);
      else
         if nDias is null then
            nDias := 120;
         end if;
         vExtenso :=  pck_cadastros.fc_dias_extenso(nDias);

         vLinha :=  'A não apresentação dos documentos no prazo de ' ||
                    nDias || ' ' || vExtenso || ', ' ||
                    'implicará no arquivamento do processo e demais medidas cabíveis.';
      end if;
   end if;

   return(vLinha);

end;
PROCEDURE PR_PROC_ARRUMA_INDEF
 IS


  cursor c1 is
     select docu.proc_id,
       docu.docu_id,
       docu.numero,
       docu.ano,
       docu.situacao,
       trunc(docu.data_assinatura_fisica) data_vigor,
       docu.operador_atualizacao
  from fep_documentos docu,
       fep_tipos_documentos tido,
       fep_sub_classes_documentos sucd
 where docu.tido_id = tido.tido_id
 and   tido.sucd_id = sucd.sucd_id
 and   sucd.cldo_id = 5
 and   docu.situacao = 'L'
 and   exists ( select null
                  from fep_documentos docu1
                 where docu1.proc_id = docu.proc_id
                   and docu1.tido_id in (1900,1905)
                   and docu1.docu_id_origina = docu.docu_id )
 and   not exists ( select null
                      from fep_documentos docu2
                     where docu2.proc_id = docu.proc_id
                       and docu2.tido_id not in (1900,1905)
                       and docu2.docu_id_origina = docu.docu_id )
 order by 6 desc,1;

r1    c1%rowtype;
begin
   ----------------------------------------------------------------
   -- rotina que corrige a situacao de indeferimentos
   -- que estão ficando vinculados a oficio de tipo 1900,1905
   -- deixando de estar EM VIGOR
   --                                  Malu 22/08/2017
   ----------------------------------------------------------------

   open c1;
   loop
     fetch c1 into r1;
     if c1%notfound then
        close c1;
        exit;
     else
        begin
           update fep_documentos
              set situacao = 'E',
                  data_atualizacao = sysdate,
                  operador_atualizacao = 'ROT AT SIT INDEF-VINCUL OF'
            where docu_id = r1.docu_id;
                        commit;

        end;
     end if;
   end loop;
end;
FUNCTION FC_RAMO_EMITE_LU
 (P_RAAT_ID IN number
 )
 RETURN VARCHAR2
 IS


   nCont    number(5);
   vSimNao  varchar2(1);

cursor c1 is
select count(*)
from fep_condicoes_restricoes cors,
     fep_listas_cond_restricoes lcrs,
     fep_classes_cond_restricoes clcr,
     fep_tido_cond_restr tilc,
     fep_ramos_atividades raat,
     fep_grupos_ramos grrm,
     fep_setores seto
where
      cors.clcr_id = clcr.clcr_id
and   cors.data_fim_validade is null
and   cors.cors_id = lcrs.cors_id
and   lcrs.raat_id = raat.raat_id
and   lcrs.data_fim_validade is null
and   raat.seto_id = seto.seto_id(+)
and   lcrs.raat_id = p_raat_id
and   lcrs.lcrs_id = tilc.lcrs_id
and   tilc.data_fim is null
and   tilc.tido_id = 151
and   raat.grrm_id = grrm.grrm_id;
begin
   -------------------------------------------
   -- verifica se ramo emite LU-Licenca única
   -- usado para rotina de prorrogacoes
   -- e portaria 46/2015   (Malu 23/08/2017)
   -------------------------------------------
   open  c1;
   fetch c1 into nCont;
   close c1;
   if nCont > 0 then
      vSimNao := 'S';
   else
      vSimNao := 'N';
   end if;
   return(vSimNao);
end;
FUNCTION FC_PROC_TIDO_VEGETACAO
 (P_TIDO_ID IN number
 )
 RETURN VARCHAR2
 IS


vSimNao   varchar2(1)  := 'N';
begin

   -------------------------------------------------------------
   -- funcao usada para licenciamento de autorização de
   -- corte de vegetação - para mostrar medida_porte autorizada
   -- função usada: PROF0825 - PROR1045 - PROR1055
   --                                     Malu 31/08/2017
   -------------------------------------------------------------

   if p_tido_id in ( 322,422,4240 ) then
      vSimNao := 'S';
   end if;

   return(vSimNao);

end;
PROCEDURE PR_INCLUI_HIST_OF4000
 (P_DOCU_ID_OFICIO IN number
 )
 IS
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 17/09/2024
  | Purpose: Fechar cursores antes do final dos processos.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/

  nAtan_id                number(10);
  nPess_id                number(10);
  nCldo_id                number(3);
  vSit_anterior           varchar2(30);
  vSit_atual              varchar2(30);
  vObservacao             varchar2(2000);
  --nInclui                 number(3) := 0; -- (TG) Não utilizada
  nTppr_id                number(10)        := null;
  vTpprDescricao          varchar2(80)    := null;
  vDmExterno              varchar2(1)      := null;
  nHips_id                number(10);
  --nDocu_id                number(10); -- (TG) Não utilizada
  nQt_docs                number(3);
  vSitProc                varchar2(1);
  nCodSOL_anterior        number(2)   := null;
  nCodSOL_atual           number(2)   := null;
  --nDocu_id_oficio         number(10); -- (TG) Não utilizada
  vDocumento              varchar2(15);
  vDataEmissao            varchar2(10);
  nTido_id_docu           number(5);
  nProc_id                number(10);
  nSeto_id_emissor        number(6);
  nTipoOf                 number(1);

  cursor c0 is
     select docu.proc_id,
            scac.seto_id_emissor
       from fep_documentos docu,
            fep_docs_setores_acordo scac
      where docu.docu_id = p_docu_id_oficio
        and docu.docu_id = scac.docu_id(+);


  cursor c1 is
     select proc.numero,
            proc.orig_id,
            proc.ano,
            proc.dv,
            substr(lpad(proc.numero,6,0)  || '-' ||
              lpad(proc.orig_id,4,0) || '/' ||
              lpad(proc.ano,2,0)     || '-' ||
              (proc.dv) ,1,16) processo,
            proc.resp_id,
            proc.pess_id pess_id_requ,
            proc.situacao,
            initcap(substr(pck_cadastros.fc_descricao_dominio(
                                       'DM_SITUACAO_PROC',
                                        proc.situacao,0),1,25)) DescrSitProc,
            proc.solicitacao_sol
       from fep_processos proc
      where proc.proc_id = nProc_id;
  r1    c1%rowtype;

  cursor c2 is
     select docu.numero || '/' || docu.ano,
            substr(to_char(docu.data_emissao,'dd/mm/rrrr'),1,10) dt_emissao,
            docu.tido_id,
            sucd.cldo_id,
            docu.dm_tipo_of
       from fep_documentos             docu,
            fep_tipos_documentos       tido,
            fep_sub_classes_documentos sucd
      where docu.docu_id = p_docu_id_oficio
        and docu.tido_id = tido.tido_id
        and tido.sucd_id = sucd.sucd_id;

  cursor c3 is
     select resp.atan_id,
            ata1.pess_id
       from fep_responsabilidades     resp,
            fep_atividades_antropicas ata1
      where resp.resp_id = r1.resp_id
        and resp.atan_id = ata1.atan_id;

  /* (TG) Não utilizado
  cursor c4 is
     select resp.atan_id,
            decode(ata1.pess_id,null,resp.pess_id, ata1.pess_id) pess_id
       from fep_empreend_processos     epro,
            fep_responsabilidades      resp,
            fep_atividades_antropicas  ata1
      where epro.proc_id = nProc_id
        and epro.resp_id = resp.resp_id
        and resp.tipa_id not in (3,9,13)
        and resp.atan_id = ata1.atan_id
        and resp.dm_empdor_resp = 'S'
     group by
            resp.atan_id,
            decode(ata1.pess_id,null,resp.pess_id, ata1.pess_id)
    order by 1,2;*/

  cursor c5 is
     select tppr.descricao
       from fep_tipos_paradas_processos tppr
      where tppr.tppr_id = nTppr_id;

BEGIN

    --nInclui           := 0; -- (TG) Não utilizada

  ---- chama no programa PROF2190 - Ciência de Documentos ( 28/09/2017 - Malu )

    open  c0;
    fetch c0 into nProc_id, nSeto_id_emissor;
    close c0;

    open  c1;
    fetch c1 into r1;
    if c1%notfound then

      -- (TG) Adicionado: o rise não fecha o cursor
      if c1%isOpen then
        close c1;
      end if;

       raise_application_error(-20001, 'Erro: Processo não encontrado - oficio emitido.');
    end if;

    vSit_atual     := initcap(substr(pck_cadastros.fc_descricao_dominio(
                               'DM_SITUACAO_PROC',
                                r1.situacao,0),1,25));

    open  c2;
    fetch c2 into vDocumento, vDataEmissao, nTido_id_docu, nCldo_id, nTipoOf;
    close c2;

    ----------------------------------------------------------------------------------------
    -- situação SOL, cfme solicitação da procergs
    -- mandar o código SOL correspondente usado no sistema SOL
    -- para situação de processos   ( Malu 17/02/2017 )

    -- rotina chamada no programa PROF2190
    ----------------------------------------------------------------------------------------
     nCodSOL_anterior    := null;
     nCodSOL_atual       := null;

     if r1.situacao is not null then
         vSitProc         :=  r1.situacao;
         nCodSOL_atual    := pck_proc_net.fc_conv_sit_sol(vSitProc);
         nCodSOL_anterior := nCodSOL_atual;
     end if;

     vSit_anterior   := r1.DescrSitProc;

     -- oficio 3810 e 3820 manda email ao SOL, quando processo SOL,
     -- mas o serviço de envio de emails é feito pelo serviço da Fepam
     --                   ( Malu 25/10/2020 )
     if nTido_id_docu in ( 3810, 3820 ) then
        nTppr_id       := null;
        vTpprDescricao := null;
        vObservacao    := null;
     else
        if nTido_id_docu = 3000 and nTipoOf = 4 then -- Informação
           nTppr_id := 24;
        else
           nTppr_id := 21;
        end if;
        open  c5;
        fetch c5 into vTpprDescricao; -- na tabela de parada só para fins de WS ( 21 - não está disponivel para parada no processo )
        close c5;

        vObservacao     := 'Em anexo estamos enviando o Ofício nº ' || vDocumento ||
                        ', emitido em ' || vDataEmissao ||
                        ', do Processo ' || r1.Processo ||
                        ', Solicitação SOL nº ' || r1.solicitacao_sol;

        if nTido_id_docu = 3000 and nTipoOf = 4 then
           vObservacao := vObservacao || ' para informação.';
        else
           vObservacao := vObservacao || '.';
        end if;
     end if;

     vDmExterno      := 'S';
     --nDocu_id_oficio := p_docu_id_oficio; -- (TG) Não utilizada
     nQt_docs        := 1; -- Oficio SOL

     ---------------------------------------------------------------------
     -- tem resp_id no processo - busca empreendedor/empreendimento direto
     ---------------------------------------------------------------------
     if r1.resp_id is not null then
       open  c3;
       fetch c3 into nAtan_id, nPess_id;
       close c3;
     end if;

     select hips_seq.nextval into nHips_id from dual;

     begin
          insert into FEP_HIST_PROC_SITUACOES (HIPS_ID, PROC_ID, NUMERO, ORIG_ID, ANO, DV, RESP_ID,
                                               ATAN_ID, PESS_ID, TIDO_ID, CLDO_ID,
                                               DATA_ALTERACAO,
                                               SETO_ID, SITUACAO_ANTERIOR, SITUACAO_ATUAL,
                                               DM_ORIGEM, DM_TIPO, OBSERVACAO, PESS_ID_REQUER,
                                               TPPR_ID, TPPR_DESCRICAO , DM_EXTERNO,
                                               NRO_DOCS, SIT_SOL_ANTERIOR,  SIT_SOL_ATUAL,
                                               SIT_FEPAM_ANTERIOR, SIT_FEPAM_ATUAL,
                                               Dm_Origem_Reg, docu_id_oficio
                                                 ) VALUES (
                                               nHips_id,
                                               nProc_id, r1.numero, r1.orig_id, r1.ano, r1.dv, r1.resp_id,
                                               nATAN_ID, nPESS_ID, nTido_id_docu, nCLDO_ID,
                                               sysdate,
                                               nSeto_id_emissor, vSIT_ANTERIOR, vSIT_ATUAL,
                                               1,  'A', vOBSERVACAO , r1.pess_id_requ,
                                               nTppr_id,  vTpprDescricao,  vDmExterno,
                                               nQt_docs, nCodSOL_anterior, nCodSOL_atual,
                                               r1.situacao,  r1.situacao,
                                               5, p_docu_id_oficio  );


                                            commit;

     exception
              when others then

                -- (TG) Adicionado: o rise não fecha o cursor
                if c1%isOpen then
                  close c1;
                end if;

                raise_application_error(-20001, 'Erro1: ( Inclusão Histórico Processo ) ' || SQLCODE || '-' || SQLERRM);

     end;


     if  nTppr_id in(24, 21) or nTido_id_docu In ( 3810, 3820 ) then
         ---------------------------------------------------------------------------------------------------
         -- Insere o Oficio SOL a ser enviado aos responsaveis pelo Processo  ( Malu 23/03/2017 )
         -- Insere o Oficio com Destinatário - 3810, no processo SOL ( Malu 25/10/2020 )
         -- Insere o Oficio para Interveniente - 3820, no processo SOL ( Malu 09/12/2020 )
         ---------------------------------------------------------------------------------------------------
         begin
              insert into  fep_hist_proc_sit_docs (
                                   HIPD_ID, HIPS_ID,  PROC_ID, DOCU_ID, DATA_INCLUSAO, OPERADOR_INCLUSAO
                                                 ) values (
                                   Hipd_seq.nextval,  nHips_id,  nProc_id, p_docu_id_oficio, sysdate, user  );

                                      commit;
         exception
              when others then

                -- (TG) Adicionado: o rise não fecha o cursor
                if c1%isOpen then
                  close c1;
                end if;

                raise_application_error(-20001, 'Erro2: ( Inclusão Histórico Docs Processo ) ' || SQLCODE || '-' || SQLERRM);

         end;


     end if;
     close c1;

END;
PROCEDURE PR_GERA_PRCR_DUC482
 (P_PROC_ID IN number
 ,P_USER IN varchar2
 ,P_PROC_NUMERO IN NUMBER
 ,P_PROC_ANO IN NUMBER
 ,P_PROC_DV IN NUMBER
 ,P_PROC_SETO_ID IN NUMBER
 )
 IS


    nSeto_id        number(6);
    nPess_id        number(10);
    dDataAtual      date;
    vUsuario        varchar2(30);
    nAduc_id            number(10);
    nPrcr_id            number(10);
    dDataInicio         date;
    dDataFim            date;
    nNroMeses           number(5);

   nContador               NUMBER(10)  := 0;
   vObservacao           varchar2(120);
   nNumero                  NUMBER(7);
   nAno                          NUMBER(4);
   nDv                            NUMBER(1);
   nSeto_id_origem    number(6);
   nSeto_id_destino    NUMBER(6);
   vHoraInclusao         varchar2(10);
   vObsOrigem            varchar2(2000);
   nIras_id                    number(10);

cursor c1 is
   select aux.seto_id,
          aux.pess_id
     from fep_aux_func_ultimos aux
    where aux.username = p_user;

cursor c2 is
   select tido.nro_meses_doc
     from fep_tipos_documentos tido
    where tido.tido_id = 482;

cursor c3 is
      SELECT COUNT(*)
        FROM fep_fichas
       WHERE proc_id = p_proc_id;

cursor c81 is
      SELECT slat.descricao || ' ( Irrigação - Atividade nº ' || iras.irat_id ||
                                                    ', Solicitação: '  || iras.iras_id || ' ).',
                      iras.iras_id
        FROM fep_irrig_ativ_solicitacoes iras,
                    fep_irrig_solic_listas_ativ slat
     WHERE iras.iras_id     = slat.iras_id
           and slat.ldol_id     = 17
           and slat.dm_atendido = 'N'
          and slat.data_atendimento is null
          and iras.proc_id     = p_proc_id
    order by iras.iras_id desc;

cursor c82 is
      SELECT  ' ( Irrigação - Atividade nº ' || iras.irat_id ||
                      ', Solicitação: '  || iras.iras_id || ' ).',
                      iras.iras_id
        FROM fep_irrig_ativ_solicitacoes iras
     WHERE iras.proc_id     = p_proc_id
    order by iras.iras_id desc;
BEGIN

     ------------------------------------------------------------------------
     -- rotina chamada no programa PROF0100
     -- indica que para o processo deverá ser gerado um documento
     -- de tipo 482 - AUTORIZAÇAO UNIDADE DE CONSERVAÇÃO    (PROF2460)
     -- licença solicitada pelo empreendedor
     -- somente poderá ser gerada após a emissão do documento 482 pela DUC
     --                       Malu 18/10/2017
     ------------------------------------------------------------------------

        select sysdate, user into dDataAtual, vUsuario FROM DUAL;
        vUsuario := substr(vUsuario,1,26) ||  '-AUT';

        nNumero            := p_proc_numero;
        nAno               := p_proc_ano;
        nDv                := p_proc_dv;
        nSeto_id_origem    := p_proc_seto_id;
        nSeto_id_destino   := 4016;  -- DUC

        open  c1;
        fetch c1 into nSeto_id, nPess_id;   -- setor e código do user de inclusão
        close c1;
        nSeto_id :=  nSeto_id_origem; -- setor onde está o processo

        open  c2;
        fetch c2 into nNroMeses;
        close c2;

        dDataInicio    := sysdate;
        if nNroMeses is not null then
           dDataFim       := add_months(dDataInicio,nNroMeses);
        end if;
        vObsOrigem     := null;


        -------------------------------------------------------------------------------------------------
        -- verifica se o processo está em solicitação da Irrigação      ( Malu 26/10/2017 )
        -------------------------------------------------------------------------------------------------
        open  c81;
        fetch c81 into  vObsOrigem, nIras_id; -- verifica se tem a slat_id 17-Autorização Lic Amb Gestor da UC
        close c81;
        if vObsOrigem is null then
           open  c82;
           fetch c82 into  vObsOrigem, nIras_id; -- verifica se tem solicitação para o processo
           close c82;
        end if;
        -------------------------------------------------------------------------------------------------


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
                DM_CANCELADO
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
                user,
                sysdate,
                user,
                null,
                null,
                'N',
                'N'
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
     ADUC_ID
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
     nAduc_id
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

       -------------------------------------------------------------------
       -- Gera o andamento do processo para DUC
       -------------------------------------------------------------------

       vObservacao := 'AGUARDA MANIFESTAÇÃO DUC - 482 - AUTORIZAÇÃO UC';

      OPEN  c3;
      FETCH c3 INTO nContador;
      CLOSE c3;

     IF nContador = 0 THEN   -- se não encontrar - insere no arquivo de fichas


        BEGIN
                 INSERT INTO fep_fichas (
       PROC_ID,
       NUMERO,
       ANO,
       DV,
       SETO_ID_DESTINO,
       OBSERVACAO,
       DATA_ANDAMENTO,
       OPERADOR_INCLUSAO,
       DATA_INCLUSAO,
       OPERADOR_ATUALIZACAO,
       DATA_ATUALIZACAO,
       OPER_AT_ENDERECO,
       DATA_AT_ENDERECO,
       IMPRIME_ETIQUETA
                                        ) VALUES (
       p_proc_id,
       nNumero,
       nAno,
       nDv,
       nSeto_id_destino,
       vObservacao,
       dDataAtual,
       vUsuario,
       dDataAtual,
       vUsuario,
       dDataAtual,
       NULL,
       NULL,
       'N' );
      EXCEPTION
          WHEN OTHERS THEN
               raise_application_error(-20001, 'Erro4: Inclusão Fep_fichas  - proc Id nº ' || p_proc_id  || ': ' ||
                                                                             SQLCODE || '-' || SQLERRM);
      END;
   END IF;

    ------------------------------------------------------------------------
    -- Inclui no arquivo de Andamentos de Processos
    ------------------------------------------------------------------------
    vHoraInclusao := TO_CHAR(SYSDATE,'hh24:mi:ss');

    -- tipo de andamento:  400 - AGUARDA MANIFESTAÇÃO DUC - AUTORIZ UC (TIPO DOC 482)
    -- dm_tipo:            1 - Movim Manual

    BEGIN
        INSERT INTO fep_fichas_movimentacoes
                             ( FIMO_ID,
                             PROC_ID,
                             SETO_ID_ORIGEM,
                             SETO_ID_DESTINO,
                             DATA_ANDAMENTO,
                             OBSERVACAO,
                             OPERADOR_INCLUSAO,
                             DATA_INCLUSAO,
                               TIAN_ID,
                               DM_TIPO,
                               HORA_INCLUSAO,
                               DM_ORIGEM
                             ) VALUES (
                               fimo_seq.nextval,
                             p_proc_id,
                             nSeto_id_origem,
                             nSeto_id_destino,
                             dDataAtual,
                             vObservacao,
                             vUsuario,
                               dDataAtual,
                             400,
                               1,
                               vHoraInclusao,
                               2 );

    EXCEPTION
          WHEN OTHERS THEN
               raise_application_error(-20001, 'Erro5: Inclusão Fep_fichas_movimentacoes  - proc Id nº ' || p_proc_id  || ': ' ||
                                                                             SQLCODE || '-' || SQLERRM);
    END;

    ----------------------------------------------------------------------------------------------------------
    -- se processo é do sistema de irrigação - altera a situacao para
    --    11 - Aguarda Autoriz UC-DUC  em fep_irrig_pareceres_tecnicos
    ----------------------------------------------------------------------------------------------------------
   if nIras_id is not null then

        begin
              update fep_irrig_pareceres_tecnicos
                     set situacao = 11,
                            data_atualizacao = dDataAtual,
                           operador_atualizacao = vUsuario
             where  iras_id = nIras_id
                  and situacao not in ( 2,4,7,8);
      exception
          when others then
               raise_application_error(-20001, 'Erro6: Upd Agenda Irrigantes - Iras_id nº ' || nIras_id  || ': ' ||
                                                                             SQLCODE || '-' || SQLERRM);

        end;

   end if;

END;
/* Valida o processo pra liberação */
FUNCTION FC_PRJU_LIB
 (P_PROCESSO IN NUMBER
 ,P_OPERADOR IN VARCHAR2 -- (TG) Não utilizado: estudar retirada...
 )
 RETURN VARCHAR2
 IS
vSimNao  varchar2(1)  := 'N';
 v_seq    number;
 v_proc   number;


 cursor c1 is
    select 'S'
    from fep_atividades_antropicas ata1,
         fep_pessoas pess,
         fep_responsabilidades resp,
         fep_processos proc
    where ata1.situacao = 1
      and ata1.raat_id in ( 123.11,123.12, 123.13,123.14,123.15,123.16)
      and ata1.pess_id = pess.pess_id
      and ata1.atan_id = resp.atan_id
      and resp.resp_id = proc.resp_id
      and proc.tido_id in ( 230,231,232,233,234,235,236 )
      and pck_processos.fc_proc_agrotox_valido(proc.proc_id,ata1.atan_id) = 'S'
      and proc.proc_inteiro = P_PROCESSO
      ;

    cursor c_busca_proc is
    select proc.proc_id
     from fep_processos proc
    where proc.proc_inteiro = P_PROCESSO
    ;

    cursor c_seq is
    select prju_seq.nextval from dual;
begin

   open c1;
  fetch c1 into vSimNao;
  close c1;

  --if vSimNao = null then -- (TG) a comparação com null deve utilizar o operador IS
  if vSimNao is null then
     vSimNao := 'N';
  elsif  vSimNao = 'S' then

   open C_busca_proc;
  fetch C_busca_proc into v_proc;
  close C_busca_proc;

   open c_seq;
  fetch c_seq into v_seq;
  close c_seq;

  end if;
  return(vSimNao);
 end;
/* Insere os processos liberados judicialmente */
PROCEDURE PR_PRJU_INS
 (P_PROCESSO IN NUMBER
 ,P_OPERADOR IN VARCHAR2
 )
 IS
p_proc number;
BEGIN

    select proc.proc_id into p_proc
     from fep_processos proc
    where proc.proc_inteiro = P_PROCESSO
      ;

   insert into fep_proc_libera_judiciais prju
         (  prju_id
            ,proc_id
            ,data_inicio
            ,data_fim
            ,data_inclusao
            ,operador_inclusao
            ,data_atualizacao
            ,operador_atualizacao
        ) values
         ( prju_seq.nextval,
           p_proc,
           sysdate,
           null,
           sysdate,
           P_OPERADOR,
           sysdate,
           P_OPERADOR
       );
    commit;
END PR_PRJU_INS;
/* Liberar e bloqueia processos judiciais */
PROCEDURE SP_PRJU_UPD_DATA
 (P_PRJU_ID IN NUMBER
 ,P_PROC_ID IN NUMBER
 ,P_OPERADOR IN VARCHAR2
 )
 IS
 cursor c_data is
 select prju.data_fim
   from fep_proc_libera_judiciais prju
  WHERE prju_id  = P_prju_id
    AND proc_id  = P_Proc_id;

  v_data DATE;
begin

     open c_data;
     fetch c_data into v_data;
     close c_data;

    if v_data is null then

    UPDATE fep_proc_libera_judiciais prju
       SET PRJU.DATA_FIM             = TO_DATE(SYSDATE,'dd/mm/rrrr'),
           PRJU.DATA_ATUALIZACAO     = sysdate,
           PRJU.OPERADOR_ATUALIZACAO = P_Operador
     WHERE prju_id  = P_prju_id
       AND proc_id  = P_Proc_id;
    else
       UPDATE fep_proc_libera_judiciais prju
       SET PRJU.DATA_FIM             = null,
           PRJU.DATA_ATUALIZACAO     = sysdate,
           PRJU.OPERADOR_ATUALIZACAO = P_Operador
     WHERE prju_id  = P_prju_id
       AND proc_id  = P_Proc_id;
     end if;

    commit;
  end SP_PRJU_UPD_DATA;


FUNCTION FC_PROF2420_EXIBIR_REG
  (p_lov_setor         in varchar2,
   p_lov_ramo          in varchar2,
   p_lov_atividade     in varchar2,
   p_seto_origem_ramo  in varchar2,
   p_seto_id_proc      in number,
   p_usuario           in varchar2,
   p_raat_id_proc      in number,
   p_aba               in varchar2
   ) return varchar2
  IS

   vMostrar  varchar2(1);
   nCont1    number(10);
   ncont2    number(10);

   cursor c1 is
      select count(*)
        from fep_aux_prof2420_setor axet
       where axet.operador_inclusao = p_usuario
         and axet.seto_id           = p_seto_id_proc
         and axet.dm_marcar         = 'S'
         and pck_processos.fc_PROF2420_exibir(p_lov_setor,
                                              axet.seto_id,
                                              p_seto_origem_ramo,
                                              p_aba) = 'S';
   cursor c2 is
      select count(*)
        from fep_aux_prof2420_ramo axrg
       where axrg.operador_inclusao = p_usuario
         and axrg.raat_id           = p_raat_id_proc
         and axrg.dm_marcar         = 'S';

begin
  ------------------------------------------------------------------
  -- função utilizada nos programa de estoques gerenciais - PROF2420
  --                            mALU 18/05/2018
  ------------------------------------------------------------------

   vMostrar := 'N';

   if p_lov_ramo      = ' Todos' and
      p_lov_atividade = ' Todos' and
      p_lov_setor    in ( 'FEPAM','SEMA',' Todos') then

      if p_lov_setor IN ( 'FEPAM', 'DIRTEC') then
         if p_seto_origem_ramo = 'FEPAM' then
            vMostrar := 'S';
         else
            vMostrar := 'N';
         end if;
         return(vMostrar);

      elsif p_lov_setor = 'SEMA' then

         if p_seto_origem_ramo = 'SEMA' then
            vMostrar := 'S';
         else
            vMostrar := 'N';
         end if;
         return(vMostrar);

      elsif p_lov_setor = ' Todos' then

            vMostrar := 'S';
            return(vMostrar);

      end if;

      return(vMostrar);

    end if;

    ------------------------------------------------------
    -- executa quando os parâmetros forem mais específicos
    ------------------------------------------------------

    open  c1;
    fetch c1 into nCont1;
    close c1;

    open  c2;
    fetch c2 into nCont2;
    close c2;

    if nCont1 > 0 and nCont2 > 0 then
       vMostrar := 'S';
    else
       vMostrar := 'N';
    end if;

    return(vMostrar);

end;


FUNCTION FC_PROF2420_EXIBIR
 (P_LOV_GRUPO_SETOR IN varchar2
 ,P_SETO_ID IN number
 ,P_ORIGEM_RAMO IN varchar2
 ,P_ABA IN number -- (TG) Não utilizado: estudar retirada...
 )
 RETURN VARCHAR2
 IS

   vSimNao    varchar2(1)  := 'S';

begin


   -- 150 - 2361 GERCEL
   -- 151 - 2364 GERNOR
   -- 152 - 2366 GERSER
   -- 153 - 2367 GERSUL
   -- 154 - 2362 GERCEN
   -- 156 - 2360 GERCAM
   -- 157 - 2363 GERLIT
   -- 158 - 2365 GERPLA
   -- 160 -      BALCAO SANTA CRUZ

  if p_lov_grupo_setor = 'SEMA' then
     if p_seto_id in ( 2361, 2364, 2366, 2367, 2362, 2360, 2363, 2365, 160 ) then
        if p_origem_ramo = 'FEPAM' then
           vSimNao := 'N';
        else
           vSimNao := 'S';
        end if;
     else
        vSimNao := 'S';
     end if;
     return(vSimNao);
  elsif
     p_lov_grupo_setor IN ( 'FEPAM','DIRTEC' ) then
     if p_seto_id in (  2361, 2364, 2366, 2367, 2362, 2360, 2363, 2365, 160 ) then
        if p_origem_ramo = 'SEMA' then
           vSimNao := 'N';
        else
           vSimNao := 'S';
        end if;
     else
        vSimNao := 'S';
     end if;
     return(vSimNao);
  end if;

  return(vSimNao);

end;
FUNCTION FC_NOME_EMISSOR
 (P_DOCU_ID IN number
 )
 RETURN VARCHAR2
 IS


   vNomeTecnico    varchar2(120);

   cursor c1 is
        select pess.razao_social
          from fep_pessoas pess,
               fep_aux_proc_cond_restr prcr
         where prcr.pess_id_tecnico = pess.pess_id
           and prcr.docu_id_licenca = p_docu_id;
begin
    open c1;
    fetch c1 into vNomeTecnico;
    close c1;
    return(vNomeTecnico);
end;
FUNCTION FC_ULT_PROC_SILV
 (P_ATAN_ID IN number
 )
 RETURN NUMBER
 IS


   nProc_id       number(10);
   dDataEntrada   date;

   cursor c1 is
      select proc.proc_id,
             proc.data_entrada
        from fep_responsabilidades      resp,
             fep_processos              proc,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
       where resp.atan_id = p_atan_id
         and resp.resp_id = proc.resp_id
         and proc.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and sucd.cldo_id < 7
         and proc.resp_id is not null
     union all
      select proc.proc_id,
             proc.data_entrada
        from fep_empreend_processos     epro,
             fep_responsabilidades      resp,
             fep_processos              proc,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
       where epro.proc_id = proc.proc_id
         and epro.resp_id = resp.resp_id
         and resp.atan_id = p_atan_id
         and proc.tido_id = tido.tido_id
         and tido.sucd_id = sucd.sucd_id
         and sucd.cldo_id < 7
         and proc.resp_id is null
     order by 2 desc, 1 desc;
begin
   open  c1;
   fetch c1 into nProc_id, dDataEntrada;
   close c1;
   return(nProc_id);
end;

PROCEDURE PR_EMAIL_PROCS_ARQ
 (NPROC_ID IN NUMBER
 ,SPROCESSO IN VARCHAR2
 ,NSETO_ID IN NUMBER
 )
 IS
vAssunto         VARCHAR2(200);
  nAemaNextVal    NUMBER(10);
  nAedeNextVal     NUMBER(10);
  vConteudo       VARCHAR2(2000);
  vEmailSetor     VARCHAR(60);
  vEmailSetorSup     VARCHAR(60);
  --vEmailResp      VARCHAR(60); -- (TG) Não utilizada
  vProcesso       varchar2(16);
  --vNomeDevolucao  varchar2(50); -- (TG) Não utilizada
  vNomeAnalista   varchar2(80);
  nSetoIdEmissor   number(10);
  nFepamSema      number(1);
  --nAtan_id        number(10); -- (TG) Não utilizada
  nProcId       number(10);
cursor c is
SELECT  seto.email email_setor,seto.sigla||' - '||seto.nome setor,
        seto.seto_id,
        decode(seto.tipo_setor,9,2,1) fepam_sema
from  fep_setores seto
where seto.seto_id=nSeto_id;
--
/* (TG) Não utilizado
cursor c2 (p_setor_id in number) is
select seto.email
from fep_setores seto
where seto.seto_id= ( select seto2.seto_id_responsavel
                     from fep_setores seto2
                     where seto2.seto_id=p_setor_id);*/
begin
 for r in c loop
    vProcesso:=sProcesso;
   nFepamSema:=r.fepam_sema;
   --vEmailSetor:=r.email_setor; -- (TG) Não utilizada
--   vEmailResp:=r.email_resp;
   nSetoIdEmissor:=r.seto_id;
   vNomeAnalista:=r.setor;
   nProcId:=nProc_id;
   --
   select aema_seq.nextval into nAemaNextVal from dual;
   vAssunto  := 'Art. 2º, § 2º, da Portaria 021/2018 ';
   vConteudo := 'Arquivamento de processo que não possui documento licenciatório: ' ||
                 '<br><br>' || '  - Setor:  <b>'  || vNomeAnalista  || '</b>' ||
                 '<br>'     || '  - Processo:          <b>'  || vProcesso      || '</b>' ||
                 '<br>    ' || '  - Data:              <b>'  || substr(to_char(sysdate,'dd/mm/rrrr hh24:mi:ss'),1,20) || '</b>';


    INSERT INTO  fep_aux_emails (
                  AEMA_ID,
                  ASSUNTO,
                  CONTEUDO,
                  OBSERVACAO,
                  DATA_INCLUSAO,
                  OPERADOR_INCLUSAO,
                  DM_ORIGEM)
                    VALUES (
                  nAemaNextVal,
                  vAssunto,
                  vConteudo,
                  NULL,
                  SYSDATE,
                  USER,
                  nFepamSema);
 --Insere na FEP_AUX_EMAILS_DESTINATARIOS. EMAIL DO SETOR EMISSOR
-- 2: Insere registros na FEP_AUX_EMAILS_DESTINATARIOS
    vEmailSetor:='difisc@fepam.rs.gov.br';
    BEGIN
        Select aede_seq.nextval into nAedeNextVal from dual;
         INSERT INTO  fep_aux_emails_destinatarios (
                  AEDE_ID,
                  AEMA_ID,
                  EMAIL,
                  DATA_ENVIO,
                  SETO_ID,
                  PESS_ID,
                  PROC_ID,
                  DOCU_ID,
                  DATA_INCLUSAO,
                  OPERADOR_INCLUSAO,
                  DATA_ATUALIZACAO,
                  OPERADOR_ATUALIZACAO)
                    VALUES (
                  nAedeNextVal,
                  nAemaNextVal,
                  vEmailSetor,
                  NULL,
                  nSetoIdEmissor,
                  NULL,
                  nProcId,
                  null,
                  SYSDATE,
                  USER,
                  SYSDATE,
                  USER
                  );
    END;
--  end if;  */
 -- if nSetoIdEmissor=2051 then
  --    open c2(nSetoIdEmissor);
  --    fetch c2 into vEmailSetorSup;
 --     close c2;
      vEmailSetorSup:='df@fepam.rs.gov.br';
    if vEmailSetorSup is not null then
        BEGIN
           Select aede_seq.nextval into nAedeNextVal from dual;
           INSERT INTO  fep_aux_emails_destinatarios (
                  AEDE_ID,
                  AEMA_ID,
                  EMAIL,
                  DATA_ENVIO,
                  SETO_ID,
                  PESS_ID,
                  PROC_ID,
                  DOCU_ID,
                  DATA_INCLUSAO,
                  OPERADOR_INCLUSAO,
                  DATA_ATUALIZACAO,
                  OPERADOR_ATUALIZACAO)
                    VALUES (
                  nAedeNextVal,
                  nAemaNextVal,
                  vEmailSetorSup,
                  NULL,
                  nSetoIdEmissor,
                  NULL,
                  nProcId,
                  null,
                  SYSDATE,
                  USER,
                  SYSDATE,
                  USER
                  );
         END;
     End If;
 --  end if;
end loop;
end;

PROCEDURE    pr_at_hist_anomes_result
       (p_anohist   in number,
        p_meshist   in number,
        p_origem    in number,
        p_encerrar  in varchar2,
        p_usuario   in varchar2 ) is


   vUsuarioCarga     varchar2(30);
   vLOV_grupo_setor  varchar2(30);
   nAnoHist          number(4);
   nMesHist          number(2);
   nDm_Origem        number(1);
   nDm_situacao      number(1);

   nCalculo1         number(12);
   nCalculo2         number(12);
   nCalculo3         number(12);
   nCalculo4         number(12);
   nCalculo5         number(12);
   nCalculo6         number(12);

   nContSit          number(10);

   nQtVolume         number(8);
   nIdadeProc        number(8);
   nQtProtocolo      number(8);
   nQtSolucionado    number(8);
   nTempoTramitacao  number(8);

   CURSOR c10 IS
      SELECT COUNT(*)
        FROM fep_hist_anomes_processos phpr
       WHERE phpr.ano_hist  = nAnoHist
         AND phpr.mes_hist  = nMesHist
         and phpr.seto_origem_ramo = vLOV_grupo_setor
         AND phpr.tipo_reg = 1;

   CURSOR c20 IS
      SELECT SUM(NVL(phpr.idade_processo,0))
        FROM fep_hist_anomes_processos phpr
       WHERE phpr.ano_hist  = nAnoHist
         AND phpr.mes_hist  = nMesHist
         and phpr.seto_origem_ramo = vLOV_grupo_setor
         AND phpr.tipo_reg = 1;

   CURSOR c30 IS
      SELECT COUNT(*)
        FROM fep_hist_anomes_processos phpr
       WHERE phpr.ano_hist  = nAnoHist
         AND phpr.mes_hist  = nMesHist
         and phpr.seto_origem_ramo = vLOV_grupo_setor
         AND phpr.tipo_reg = 2;

   CURSOR c40 IS
      SELECT SUM(NVL(phpr.qt_documentos,0)),
             SUM(NVL(phpr.tempo_tramitacao,0))
        FROM fep_hist_anomes_processos phpr
       WHERE phpr.ano_hist  = nAnoHist
         AND phpr.mes_hist  = nMesHist
         and phpr.seto_origem_ramo = vLOV_grupo_setor
         AND phpr.tipo_reg = 4;


   CURSOR c50 IS
      SELECT SUM(NVL(phpr.qt_documentos,0)),
             SUM(NVL(phpr.tempo_tramitacao,0))
        FROM fep_hist_anomes_processos phpr
       WHERE phpr.ano_hist  = nAnoHist
         AND phpr.mes_hist  = nMesHist
         and phpr.seto_origem_ramo = vLOV_grupo_setor
         and phpr.proc_ate2anos = 'S'
         AND phpr.tipo_reg = 4;

   cursor c100 is
      select count(*)
        from fep_hist_estoque_consolidado hest
       where hest.dm_origem = 1
         and hest.ano_hist  = nAnoHist
         and hest.mes_hist  = nMesHist
         and hest.dm_situacao = 2;

begin

   vUsuarioCarga        := p_usuario;
   nAnoHist             := p_anohist;
   nMesHist             := p_meshist;

   if p_origem = 1 then
      vLOV_grupo_setor  := 'FEPAM';
      nDm_Origem        := p_origem;
   else
      vLOV_grupo_setor  := 'SEMA';
      nDm_Origem        := p_origem;
   end if;

   open  c100;
   fetch c100 into nContSit; -- verifica se está fechado ou aberto
   close c100;

   -----------------------------------------------------------------------
   -- Atualiza o estoque consolidado somente se mes/ano estiverem abertos
   --                                Malu 10/05/2018
   -----------------------------------------------------------------------

   if nContSit = 0 then  -- aberto

     ------------------------------------------------
     ---  cálculo do estoque gerencial - Resultado
     ------------------------------------------------
     -- Linha 1 - Volume Processos
     nQtVolume := NULL;
     OPEN  c10;
     FETCH c10 INTO nQtVolume;
     CLOSE c10;
     nCalculo1 := nQtVolume;


     -- Linha 2 - Idade Média Estoque
     nIdadeProc := NULL;
     OPEN  c20;
     FETCH c20 INTO nIdadeProc;
     CLOSE c20;

     IF nQtVolume  > 0  AND
        nIdadeProc > 0 THEN
        nCalculo2 := ROUND(nIdadeProc / nQtVolume,0);
     END IF;

     -- Linha 3 - Quantidade Protocolado Mes
     nQtProtocolo := NULL;
     OPEN  c30;
     FETCH c30 INTO nQtProtocolo;
     CLOSE c30;
     nCalculo3 := nQtProtocolo;


     -- Linha 4 - Quantidade Solucionado Mes
     nQtSolucionado   := NULL;
     nTempoTramitacao := NULL;
     OPEN  c40;
     FETCH c40 INTO nQtSolucionado, nTempoTramitacao;
     CLOSE c40;
     nCalculo4 := nQtSolucionado;

     -- Linha 5 - Tempo Médio
     IF nQtSolucionado  > 0  AND
        nTempoTramitacao > 0 THEN
        nCalculo5 := ROUND(nTempoTramitacao / nQtSolucionado,0);
     END IF;

     -- Linha 6 - Tempo Médio sobre Processos Entrada até 2 anos
     nQtSolucionado   := NULL;
     nTempoTramitacao := NULL;
     OPEN  c50;
     FETCH c50 INTO nQtSolucionado, nTempoTramitacao;
     CLOSE c50;
     IF nQtSolucionado   > 0  AND
        nTempoTramitacao > 0 THEN
        nCalculo6 := ROUND(nTempoTramitacao / nQtSolucionado,0);
     END IF;

     ------------------------------------------------------------------
     -- insere/atualiza  tabela FEP_HIST_ESTOQUE_CONSOLIDADO
     ------------------------------------------------------------------

      begin
         delete
           from fep_hist_estoque_consolidado
          where dm_origem   = nDm_Origem
            and ano_hist    = nAnoHist
            and mes_hist    = nMesHist
            and dm_situacao = 1;
                    commit;
      end;

      if p_encerrar = 'S' then
         nDm_situacao := 2;
      else
         nDm_situacao := 1;
      end if;

      ------------------------------------------
      --- incluir estoque gerencial - resultado
      ------------------------------------------
      if nCalculo1 > 0 then
         begin
         insert into fep_hist_estoque_consolidado (
           DM_ORIGEM,
           ANO_HIST,
           MES_HIST,
           VOLUME_ESTOQUE,
           IDADE_MEDIA,
           TOTAL_PROTOCOLADO,
           TOTAL_SOLUCIONADO,
           TEMPO_MEDIO_SOLUCAO,
           TEMPO_MEDIO_SOLUC2ANOS,
           DM_SITUACAO,
           DATA_INCLUSAO,
           OPERADOR_INCLUSAO,
           DATA_ATUALIZACAO,
           OPERADOR_ATUALIZACAO
              ) values (
           nDm_Origem,
           nAnoHist,
           nMesHist,
           nCalculo1,
           nCalculo2,
           nCalculo3,
           nCalculo4,
           nCalculo5,
           nCalculo6,
           nDm_situacao,
           sysdate,
           vUsuarioCarga,
           sysdate,
           vUsuarioCarga );
                commit;
        end;
      end if;

   end if;

end;

--PROC vagner - 03/08/2018
PROCEDURE PR_TROCA_EMPREENDIMENTO_SOLIC(n_solic number ,n_proc_id number ,n_codempto number)is
begin

         begin
         -- deleta registro da tabela de processos
         Delete From fep_processos proc
         Where proc.proc_id = n_proc_id;
             exception
                when others then
                     raise_application_error(-20001, 'Erro1: Exclusão de Processo(aux). >> ' || SQLCODE || ' - ' || SQLERRM );
         end;


         Begin
             -- prepara tabela de processo
             Update fep_aux_procergs_proc
             Set dm_atbanco = 'N',
                 dm_validacao = 'N',
                 data_atbanco = null,
                 proc_id = null
             Where solicitacao = n_solic;
             exception
                when others then
                     raise_application_error(-20001, 'Erro2: At Processo(aux). >> ' || SQLCODE || ' - ' || SQLERRM );
         end;


         Begin
             -- prepara tabela de empreendimento
             Update fep_aux_procergs_atan prat
             Set prat.dm_atbanco = 'N',
                 prat.dm_validacao = 'N',
                 prat.data_atbanco = null,
                 prat.codempto = n_codempto,
                 prat.atan_id  = n_codempto,
                 prat.msg_erro = NULL
             Where prat.solicitacao = n_solic;
             exception
                when others then
                     raise_application_error(-20001, 'Erro3: At Empreendimento(aux). >> ' || SQLCODE || ' - ' || SQLERRM );
         end;


         Begin
             -- prepara tabela de pessoas
             Update fep_aux_procergs_pess
             Set dm_atbanco = 'N',
                 dm_validacao = 'N',
                 data_atbanco = null
             Where solicitacao = n_solic;
             exception
                when others then
                     raise_application_error(-20001, 'Erro4: At Pessoas(aux). >> ' || SQLCODE || ' - ' || SQLERRM );
         end;

       commit;-- Só dá o commit quando todas as operações terminarem com sucesso.
end;


--Function vagner - 03/08/2018
FUNCTION FC_TROCA_EMPREENDIMENTO_SOLIC
  (
    n_solic     Number, -- numero da solicitacao SOL
    n_codempto  Number -- codigo do novo emprendimento (atan_id)
  )RETURN VARCHAR2 is

    msg varchar2(100);
    n_count_proc number;
    n_count_proc_SOL number;
    n_count_atan number;
    n_count_pess number;
    n_proc_id number;
    --n_count_atan_novo number; -- (TG) Não utilizada
  --n_proc_id_novo  number; -- (TG) Não utilizada

-- 1 : Bloco de validacao se premissas basicas são atendidas para a execução da rotina

-- a:  Verificar se solicitacao existe na Tabela Auxiliar de PROCESSOS da PROCERGS (tabela que recebe o registro da PROCERGS)
    cursor c1 is
    select count(*)
     from  fep_aux_procergs_proc prpr
     where prpr.solicitacao = n_solic
     and   prpr.MSG_ERRO is NULL;

-- b:  Verificar se solicitacao existe na Tabela Auxiliar de EMPREENDIMENTOS da PROCERGS (tabela que recebe o registro da PROCERGS)
    cursor c2 is
    select count(*)
    from   fep_aux_procergs_atan prat
     where prat.solicitacao = n_solic
     and   prat.MSG_ERRO is NULL;

-- c:  Verificar se solicitacao existe na Tabela Auxiliar de PESSOAS da PROCERGS (tabela que recebe o registro da PROCERGS)
   cursor c3 is
   select count(*)
   from   fep_aux_procergs_pess prpe
    where prpe.solicitacao = n_solic
    and   prpe.MSG_ERRO is NULL;

-- d:  Verificar se o processo existe na tabela FEP_PROCESSOS usando o proc_id informado pelo usuário
    cursor c4 is
    select  count(*)
    from    fep_processos proc
     where  proc.proc_id = n_proc_id
     and not exists (select 1 from fep_documentos docu
                      where docu.proc_id = proc.proc_id);

-- e: Verificar o proc_id da solicitação para poder excluir o processo para a regeração.
    cursor c5 is
    select prpr.proc_id
    from   fep_aux_procergs_proc prpr
    where prpr.solicitacao = n_solic
    and   prpr.MSG_ERRO is NULL;

Begin
    n_count_proc :=0;
    n_count_proc_SOL :=0;
    n_count_atan := 0;
    n_count_pess := 0;
    n_proc_id :=0;


  -- abre cursor de FEP_AUX_PROCEGRS_PROC
  open  c1;
  fetch c1 into n_count_proc_SOL;
  close c1;

  -- abre cursor de FEP_AUX_PROCEGRS_ATAN
  open  c2;
  fetch c2 into n_count_atan;
  close c2;

  -- abre cursor de FEP_AUX_PROCEGRS_PESS
  open  c3;
  fetch c3 into n_count_pess;
  close c3;

  --abre cursor de fep_aux_procergs_proc pra ver se proc_id existe
  open  c5;
  fetch c5 into n_proc_id;
  close c5;

  -- abre cursor de FEP_PROCESSOS
  open  c4;
  fetch c4 into n_count_proc;
  close c4;




   if n_count_proc_SOL > 0 then        -- se houver solicitação .
    if n_count_atan > 0 then           -- se houver empreendimento.
     if n_count_pess > 0 then          -- se houver pessoa ligada ao empreendimento.
      if n_count_proc > 0 then         -- se o processo existir na fep_processos.
        if n_proc_id > 0 then          -- se o processo não existir na fep_processos.
          PR_TROCA_EMPREENDIMENTO_SOLIC(n_solic,n_proc_id,n_codempto);
         end if;
        end if;
      end if;
     end if;
    end if;



  if n_count_proc = 0 then
       msg:='1Processo não encontrado ou já existe documento associado a FEP_PROCESSOS.';
       return(msg);
  end if;

  if n_count_proc_SOL = 0 then
       msg:='1Solicitação não encontrada em FEP_AUX_PROCERGS_PROC.';
       return(msg);
  end if;

  if n_count_atan = 0 then
     msg:='1Empreendimento não encontrado em FEP_AUX_PROCERGS_ATAN';
     return(msg);
  end if;

  if n_count_pess = 0 then
     msg:='1Empreendimento não encontrado em FEP_AUX_PROCERGS_PESS';
     return(msg);
  end if;

  if n_proc_id = 0 then
       msg:='1Proc_id não encontrado em FEP_AUX_PROCERGS_PROC.';
       return(msg);
  end if;

  if ( (n_count_proc >0) or (n_count_proc_SOL>0) or (n_count_atan>0) or (n_count_pess>0) ) then
       Begin
             -- Roda rotina que atualiza tabelas auxiliares e cria o processo com o novo proc_id.
             fepam.pck_net_webserv01.pr_webserv01_aux_le;
             exception
                when others then
                     raise_application_error(-20001, 'Erro5: Atualização e Geração de Processo/Empreendimento. >> ' || SQLCODE || ' - ' || SQLERRM );
       End;
  end if;

  msg:='2Empreendimento '||n_codempto||' vinculado à solicitação: '||n_solic;
  return(msg);

End FC_TROCA_EMPREENDIMENTO_SOLIC;

--------------------------------------------------------------------------------
-- Gera espécies vegetais para documento 260 - CERTIFICADO DE PRODUTOR FLORESTAL
--     Secretaria da Agricultura, Pecuária e Irrigação - SEAPI
--     chama PROF0825 e lista PROR1045 e PROR1055   (Malu 27/08/2018)
--------------------------------------------------------------------------------
Procedure  pr_prcr_especies_vegetais(p_atan_id in number,
                                     p_prcr_id in number) is

    nAnoPlantacao   number(4);

    cursor c1 is
       select cocv.ano_plantacao
         from fep_comp_coberturas_vegetais cocv
        where cocv.atan_id = p_atan_id;

    cursor c2 is
       select esve.nome_cientifico,
              inve.nro_individuos,
              inve.area area_plantio
         from fep_comp_coberturas_vegetais  cocv,
              fep_individuos_vegetais       inve,
              fep_especies_vegetais         esve
        where cocv.cocv_id = inve.cocv_id
          and inve.esve_id = esve.esve_id
          and cocv.atan_id = p_atan_id
        order by esve.nome_cientifico;

r2   c2%rowtype;

begin

    begin
       delete
         from fep_prcr_especies_vegetais
        where prcr_id = p_prcr_id;
              commit;
    end;

    open  c1;
    fetch c1 into nAnoPlantacao;
    close c1;

    open c2;
    loop
        fetch c2 into r2;
        if c2%notfound then
           close c2;
           exit;
        else
           begin
              insert into fep_prcr_especies_vegetais (
                            pevg_id, prcr_id, atan_id,
                            ano_plantacao, nome_cientifico,
                            nro_individuos, area_plantio,
                            data_inclusao, operador_inclusao
                               ) values (
                            pevg_seq.nextval, p_prcr_id, p_atan_id,
                            nAnoPlantacao , r2.nome_cientifico,
                            r2.nro_individuos, r2.area_plantio,
                            sysdate, user );
                                  commit;
           end;
        end if;
    end loop;
end pr_prcr_especies_vegetais;

---------------------------------------------------------------------
FUNCTION
         fc_sigla_setor(p_seto_docu_id   in number,
                        p_seto_parametro in number) return varchar2 is

  vSimNao      varchar2(1)  := 'N';
  vSigla_doc   varchar2(20);
  vSigla_par   varchar2(20);


cursor c1 is
   select seto.sigla
     from fep_setores seto
    where seto.seto_id = p_seto_docu_id;


cursor c2 is
   select seto.sigla
     from fep_setores seto
    where seto.seto_id = p_seto_parametro;


begin

    open  c1;
    fetch c1 into vSigla_doc;
    close c1;

    open  c2;
    fetch c2 into vSigla_par;
    close c2;

    if vSigla_doc = vSigla_par then
       vSimNao := 'S';
    else
       vSimNao := 'N';
    end if;

    return(vSimNao);

end;

PROCEDURE PR_PRCR_ATAN_COORDENADAS
 (P_PRCR_ID IN number,
  P_CORS_ID IN number,
  P_ATAN_ID IN number
 ) IS
    /*----------------------------------------------------------------------------------------------------
    | Author.: Tiago Gabriel (DNA)
    | Updated: 17/09/2024
    | Purpose: Fechar cursores antes do final dos processos.
    | Tiket..: GLPI-55403 / FP-1337
    +----------------------------------------------------------------------------------------------------*/


    vNomeIdent0    varchar2(50);
    nLatitude0     number(11,8);
    nLongitude0    number(11,8);

    vNomeIdent1    varchar2(50);
    nLatitude1     number(11,8);
    nLongitude1    number(11,8);

    vNomeIdent2    varchar2(100);
    nLatitude2     number(11,8);
    nLongitude2    number(11,8);

    nContador      number(5);
    nSequencia     number(10);

    cursor c1 is
       select atco.nome_ident,
              atco.latitude,
              atco.longitude
         from fep_atan_cors_coordenadas atco
        where atco.atan_id = p_atan_id
          and atco.cors_id = p_cors_id
        order by  atco.sequencia;

begin

   ------------------------------------------------------------------
   -- rotina chamada na package pck_processos - e chamada no PROF0825
   -- utiliza para condicionantes que tenham indicação de cooordenadas
   -- no campo dm_tab_coord = 'S' da tabela fep_condicoes_restricoes
   --                          Malu 26/11/2018
   ------------------------------------------------------------------


   -- exclui o que estiver pendente
   begin
     delete
       from fep_aux_atan_cors_coordenadas
      where prcr_id = p_prcr_id
        and cors_id = p_cors_id;
               commit;
   end;

   nContador   := 0;
   nSequencia  := 0;

   ----------------------------
   --- Linhas das Coordenadas
   ----------------------------

   vNomeIdent1 := null;
   nLatitude1  := null;
   nLongitude1 := null;

   vNomeIdent2 := null;
   nLatitude2  := null;
   nLongitude2 := null;

   open c1;
   loop


      fetch c1 into vNomeIdent0, nLatitude0, nLongitude0;

      if c1%notfound then
         if nContador = 1 then

            -- insere o que estiver pendente

            nSequencia := nSequencia + 1;
            begin
              insert into fep_aux_atan_cors_coordenadas (
                           sequencia, prcr_id, cors_id,
                           nome_ident1, latitude1, longitude1,
                           nome_ident2, latitude2, longitude2
                           ) values (
                           nSequencia, p_prcr_id, p_cors_id,
                           vNomeIdent1, nLatitude1, nLongitude1,
                           vNomeIdent2, nLatitude2, nLongitude2 );
                               commit;
            end;
         end if;

         close c1; -- (TG) Adicionado

         exit;

      else

         nContador :=  nContador + 1;

         if nContador = 1 then

            vNomeIdent1 := vNomeIdent0;
            nLatitude1  := nLatitude0;
            nLongitude1 := nLongitude0;

         elsif nContador = 2 then

            vNomeIdent2 := vNomeIdent0;
            nLatitude2  := nLatitude0;
            nLongitude2 := nLongitude0;

            nSequencia := nSequencia + 1;
            begin
              insert into fep_aux_atan_cors_coordenadas (
                           sequencia, prcr_id, cors_id,
                           nome_ident1, latitude1, longitude1,
                           nome_ident2, latitude2, longitude2
                           ) values (
                          nSequencia, p_prcr_id, p_cors_id,
                          vNomeIdent1, nLatitude1, nLongitude1,
                          vNomeIdent2, nLatitude2, nLongitude2 );
                                commit;
           end;

           vNomeIdent1 := null;
           nLatitude1  := null;
           nLongitude1 := null;
           vNomeIdent2 := null;
           nLatitude2  := null;
           nLongitude2 := null;

           nContador   := 0;

         end if;

      end if;

   end loop; -- fim do loop c1
   ------------------------------------------------------------------------------------------------------------
end;
 PROCEDURE PR_CP_RESTR_TIPO_DOCS_RAMO_ORI
 (p_ramo_in       NUMBER,
  p_ramo_out      NUMBER,
  p_tido_id_in       NUMBER,
  p_tido_id_out      NUMBER,
  p_usuario          VARCHAR2
 ) is
  /*----------------------------------------------------------------------------------------------------
  | Author.: Tiago Gabriel (DNA)
  | Updated: 17/09/2024
  | Purpose: Fechar cursores antes do final dos processos.
  | Tiket..: GLPI-55403 / FP-1337
  +----------------------------------------------------------------------------------------------------*/

nIncluidos_LCRS      NUMBER:=0;
nIncluidosnLcrs_upd   NUMBER:=0;
nIncluidos_TILC      NUMBER:=0;
--nIncluidos      NUMBER:=0; -- (TG) Não utilizada
nIncluidos_TILC2 NUMBER:=0;
nIncluidos_Tilc_upd number:=0;
   nRaat_id           NUMBER(7,2);
   nLcrs_id           NUMBER(10);
   nLcrs_id_destino   NUMBER(10);
   nTilc_id           NUMBER(10);
   dDataAtual         DATE;

   -- Ramo de Saida
   CURSOR c1 IS
      SELECT raat.raat_id
        FROM fep_ramos_atividades raat
       WHERE raat.raat_id = p_ramo_out
         AND raat.data_desativacao IS NULL
         AND raat.dm_grupo_aut IS NOT NULL
         AND raat.dm_condicao_lic = 'S'
       ORDER BY raat.raat_id;

   -- Ramo de Entrada
   CURSOR c2 IS
      SELECT lcrs.lcrs_id,
         lcrs.cors_ID,
         lcrs.seto_id,
           SUBSTR(lcrs.OPERADOR_ATUALIZACAO,1,21) || '-ROT INCL' usuario,
             lcrs.tipo,
         lcrs.DM_PARECER,
         lcrs.DM_LICENCA,
         tilc.tido_id
        FROM fep_listas_cond_restricoes lcrs,
             fep_condicoes_restricoes   cors,
            fep_tido_cond_restr tilc
       WHERE lcrs.raat_id = p_ramo_in
         AND lcrs.cors_id = cors.cors_id
         and tilc.lcrs_id=lcrs.lcrs_id
         and tilc.tido_id=p_tido_id_in
         AND lcrs.data_fim_validade IS NULL
       ORDER BY cors.sequencia,
                cors.sequencia_sub;
  r2 c2%rowtype;

  CURSOR c3 IS
    SELECT lcrs.lcrs_id
      FROM fep_listas_cond_restricoes lcrs
     WHERE lcrs.cors_id = r2.cors_id
      AND lcrs.raat_id = nRaat_id;
  -- Tipos de Documentos do Ramo a ser copiado
  CURSOR c4 IS
     SELECT tilc.tilc_id,
            tilc.lcrs_id,
            tilc.tido_id,
            tilc.dm_tipo,
            tilc.DM_PARECER,
            tilc.DM_LICENCA,
            tilc.TIPO,
            tilc.DM_ENTRADA,
            tilc.DM_SAIDA
       FROM fep_tido_cond_restr tilc
      WHERE tilc.lcrs_id = r2.lcrs_id
        and ((tilc.tido_id = nvl(p_tido_id_in,null)) or (nvl(p_tido_id_in,null) is null))
        AND tilc.data_fim IS NULL;
  r4 c4%rowtype;

  CURSOR c5 IS
     SELECT tilc.tilc_id
       FROM fep_tido_cond_restr tilc
      WHERE tilc.lcrs_id = nLcrs_id
      AND tilc.tido_id = p_tido_id_out;
   --     AND tilc.tido_id = r4.tido_id;

BEGIN

  SELECT TRUNC(SYSDATE) INTO dDataAtual FROM dual;

  OPEN c1;
  LOOP
    FETCH c1 INTO nRaat_id;
    IF c1%notfound THEN
       CLOSE c1;
       EXIT;
    ELSE
  --     dbms_output.put_line(' nRaat_id '||nRaat_id);
       OPEN c2;
       LOOP
         FETCH c2 INTO r2;
         IF c2%notfound THEN
            CLOSE c2;
            EXIT;
         ELSE

            nLcrs_id := NULL;
            OPEN  c3;
            FETCH c3 INTO nLcrs_id;
            CLOSE c3;
             IF nLcrs_id IS NULL THEN
 -- dbms_output.put_line(' lcrs.cors_ID '||nLcrs_id);
               SELECT lcrs_seq.nextval INTO nLcrs_id_destino FROM dual;

               BEGIN
                 INSERT INTO fep_listas_cond_restricoes (
                             LCRS_ID,
                             CORS_ID,
                             SETO_ID,
                             RAAT_ID,
                             DATA_INICIO_VALIDADE,
                             DATA_FIM_VALIDADE,
                             DATA_INCLUSAO,
                             OPERADOR_INCLUSAO,
                             DATA_ATUALIZACAO,
                             OPERADOR_ATUALIZACAO,
                             TIPO,
                             DM_PARECER,
                             DM_LICENCA
                                      ) VALUES (
                             nLcrs_id_destino,
                             r2.CORS_ID,
                             r2.SETO_ID,
                             nRAAT_ID,
                             dDataAtual,
                             NULL,
                             dDataAtual,
                             p_usuario, --r2.usuario,
                             dDataAtual,
                             p_usuario, --r2.usuario,
                             r2.TIPO,
                             r2.DM_PARECER,
                             r2.DM_LICENCA
                                      );
                                         nIncluidos_LCRS := nIncluidos_LCRS + 1;
                      COMMIT;

                exception
                    when others then

                      -- (TG) Adicionado: o rise não fecha o cursor
                      if c1%isOpen then
                        close c1;
                      end if;
                      if c2%isOpen then
                        close c2;
                      end if;

                      raise_application_error(-20001, 'Erro1: Incl fep_listas_cond_restricoes .' || SQLCODE || ' - ' || SQLERRM );
                end;

               OPEN c4;
                LOOP
                    FETCH c4 INTO r4;
                    IF c4%notfound THEN
                        CLOSE c4;
                        EXIT;
                    ELSE
                       BEGIN
                           INSERT INTO fep_tido_cond_restr (
                                   TILC_ID,
                                   LCRS_ID,
                                   TIDO_ID,
                                   DATA_INICIO,
                                   DATA_FIM,
                                   DM_TIPO,
                                   DATA_INCLUSAO,
                                   OPERADOR_INCLUSAO,
                                   DATA_ATUALIZACAO,
                                   OPERADOR_ATUALIZACAO,
                                   DM_PARECER,
                                   DM_LICENCA,
                                   TIPO,
                                   DM_ENTRADA,
                                   DM_SAIDA
                            ) VALUES (
                                   tilc_seq.nextval,
                                   nLcrs_id_destino,
                                   r4.tido_id,
                                   dDataAtual,
                                   NULL,
                                   r4.DM_TIPO,
                                   dDataAtual,
                                   p_usuario, --r2.usuario,
                                   dDataAtual,
                                   p_usuario, --r2.usuario,
                                   r4.DM_PARECER,
                                   r4.DM_LICENCA,
                                   r4.TIPO,
                                   r4.DM_ENTRADA,
                                   r4.DM_SAIDA     );
                        nIncluidos_TILC := nIncluidos_TILC + 1;
   --                          nIncluidos := nIncluidos + 1;
                      COMMIT;

                       EXCEPTION
                           when others then

                              -- (TG) Adicionado: o rise não fecha o cursor
                              if c1%isOpen then
                                close c1;
                              end if;
                              if c2%isOpen then
                                close c2;
                              end if;
                              if c4%isopen then
                                close c4;
                              end if;

                           raise_application_error(-20001, 'Erro2: Incl fep_tido_cond_restr.' || SQLCODE || ' - ' || SQLERRM );
                        end;

                  END IF;
               END LOOP;


            ELSE

               BEGIN
                  UPDATE fep_listas_cond_restricoes
                     SET
                         SETO_ID              = r2.seto_id,
                         DATA_INICIO_VALIDADE = dDataAtual,
                         DATA_FIM_VALIDADE    = NULL,
                         DATA_ATUALIZACAO     = dDataAtual,
                         OPERADOR_ATUALIZACAO = p_usuario, --r2.usuario,
                         TIPO                 = r2.TIPO,
                         DM_PARECER           = r2.DM_PARECER,
                         DM_LICENCA           = r2.DM_LICENCA
                  WHERE lcrs_id = nLcrs_id;
                        nIncluidosnLcrs_upd := nIncluidosnLcrs_upd + 1;

                COMMIT;

               EXCEPTION
                 when others then

                    -- (TG) Adicionado: o rise não fecha o cursor
                    if c1%isOpen then
                      close c1;
                    end if;
                    if c2%isOpen then
                      close c2;
                    end if;

                    raise_application_error(-20001, 'Erro3: Update fep_listas_cond_restricoes.' || SQLCODE || ' - ' || SQLERRM );
                end;
               OPEN c4;
               LOOP
                  FETCH c4 INTO r4;
                  IF c4%notfound THEN
                     CLOSE c4;
                     EXIT;
                  ELSE

                     nTilc_id := NULL;
                     OPEN  c5;
                     FETCH c5 INTO nTilc_id;
                     CLOSE c5;


                     IF nTilc_id IS NULL THEN

                        BEGIN
                           INSERT INTO fep_tido_cond_restr (
                  TILC_ID,
                  LCRS_ID,
                  TIDO_ID,
                  DATA_INICIO,
                  DATA_FIM,
                  DM_TIPO,
                  DATA_INCLUSAO,
                  OPERADOR_INCLUSAO,
                  DATA_ATUALIZACAO,
                  OPERADOR_ATUALIZACAO,
                  DM_PARECER,
                  DM_LICENCA,
                  TIPO,
                  DM_ENTRADA,
                  DM_SAIDA
                               ) VALUES (
                  tilc_seq.nextval,
                  nLcrs_id,
                  p_tido_id_out,
                --  r4.tido_id,
                  dDataAtual,
                  NULL,
                  r4.DM_TIPO,
                  dDataAtual,
                  p_usuario, --r2.usuario,
                  dDataAtual,
                  p_usuario, --r2.usuario,
                  r4.DM_PARECER,
                  r4.DM_LICENCA,
                  r4.TIPO,
                  r4.DM_ENTRADA,
                  r4.DM_SAIDA  );

                                 nIncluidos_TILC2 := nIncluidos_TILC2 + 1;
                       COMMIT;
                  EXCEPTION
                    when others then

                        -- (TG) Adicionado: o rise não fecha o cursor
                        if c1%isOpen then
                          close c1;
                        end if;
                        if c2%isOpen then
                          close c2;
                        end if;
                        if c4%isOpen then
                          close c4;
                        end if;

                        raise_application_error(-20001, 'Erro4: Incl fep_tido_cond_restr.' ||  SQLCODE || ' - ' || SQLERRM );
                  end;
            ELSE
                        BEGIN
                           UPDATE fep_tido_cond_restr
                              SET
                    DM_TIPO = r4.DM_TIPO,
                  DATA_ATUALIZACAO = dDataAtual,
                  OPERADOR_ATUALIZACAO = p_usuario, --r2.usuario,
                  DM_PARECER = r4.DM_PARECER,
                  DM_LICENCA = r4.DM_LICENCA,
                  TIPO = r4.TIPO,
                  DM_ENTRADA = r4.DM_ENTRADA,
                  DM_SAIDA = r4.DM_SAIDA
                            WHERE tilc_id = nTilc_id;

                                nIncluidos_Tilc_upd := nIncluidos_Tilc_upd + 1;
                      COMMIT;
                      EXCEPTION
                     when others then

                        -- (TG) Adicionado: o rise não fecha o cursor
                        if c1%isOpen then
                          close c1;
                        end if;
                        if c2%isOpen then
                          close c2;
                        end if;
                        if c4%isOpen then
                          close c4;
                        end if;

                        raise_application_error(-20001, 'Erro5: Update fep_tido_cond_restr.'|| SQLCODE || ' - ' || SQLERRM );
                     end;
            --            END;

                     END IF;

                  END IF;
               END LOOP;

            END IF;
         END IF;
        END LOOP;
    END IF;
  END LOOP;
 END;
 --
 FUNCTION FC_PROC_SIT_LICENCA
 (P_PROC_ID IN number
 )
 RETURN VARCHAR2
 IS


   vDescricao   varchar2(100);

   cursor c1 is
      select  docu.situacao sit_docu
      from fep_documentos             docu,
           fep_processos              proc,
           fep_tipos_documentos       tido,
           fep_sub_classes_documentos sucd
     where proc.proc_id = docu.proc_id
      and docu.tido_id = tido.tido_id
       and proc.proc_id=P_PROC_ID
       and tido.sucd_id = sucd.sucd_id
        and sucd.cldo_id < 7
       and docu.tido_id not in ( 106,107,108,116,117,118,360, 400, 410, 431,432 )
     order by docu.data_inicio_vigencia desc, docu.docu_id desc;
begin

  open c1;
  fetch c1 into vDescricao;
  close c1;

  return(vDescricao);


end;

---------------------------------------------------------------
-- traz o docu_id do último documento licenciatório do processo
--                                   Malu 12/03/2020
---------------------------------------------------------------

function fc_proc_ult_lic(p_proc_id in number) return number is

    nDocu_id  number(10);

    ----------------------------------
    -- B - EM TRABALHO
    -- C - AGUARDA LIBERAÇÃO CHEFIA
    -- T - AGUARDA ASSINATURA
    -- X - AGUARDA CIÊNCIA CHEFIA
    -- O - NÃO EXPEDIDO
    -- K - ASSIN - AGUARDA PUBLICAÇÃO
    ----------------------------------

    cursor c1 is
       select docu.docu_id
         from fep_documentos             docu,
              fep_tipos_documentos       tido,
              fep_sub_classes_documentos sucd
        where docu.proc_id = p_proc_id
          and docu.tido_id = tido.tido_id
          and tido.sucd_id = sucd.sucd_id
          and sucd.cldo_id in ( 1,2,3,4,5,6,300,305)
          and docu.situacao not in ( 'B','C','T','X','O','K' )
          order by docu.data_inicio_vigencia desc, docu.docu_id desc;

begin
   open  c1;
   fetch c1 into nDocu_id;
   close c1;
   return(nDocu_id);
end;


FUNCTION  fc_ultlic_atan(p_atan_id in number, p_origem in number) return varchar2 is

     vLicenca     varchar2(50);
     nDocu_id     number(10);

     cursor c1 is
        select rpad(tido.abreviatura,8,' ') || ' - ' ||
               lpad(docu.numero,6,'0') || '/' ||
               docu.ano    || ' - ' ||
               initcap(substr(pck_cadastros.fc_descricao_dominio(
              'DM_SITUACAO_DOCU',
               docu.situacao,0),1,25)),
               docu.docu_id
          from fep_responsabilidades resp,
               fep_processos         proc,
               fep_documentos        docu,
               fep_tipos_documentos  tido,
               fep_sub_classes_documentos sucd
         where resp.atan_id = p_atan_id
           and resp.resp_id = proc.resp_id
           and proc.proc_id = docu.proc_id
           and docu.tido_id = tido.tido_id
           and docu.situacao not in ( 'T','B','C','X' )
           and tido.sucd_id = sucd.sucd_id
           and sucd.cldo_id in ( 1,2,3,4,5,6)
           and docu.tido_id not in ( 482, 32482 )
           order by docu.data_inicio_vigencia desc;

begin

   open  c1;
   fetch c1 into vLicenca, nDocu_id;
   close c1;

   if nvl(p_origem,0) = 1 then
      return(nDocu_id);
   else
      return(vLicenca);
   end if;

end;


FUNCTION fc_atan_LO_port46(p_atan_id  in number, p_seq_lic in number) return number is
    /*----------------------------------------------------------------------------------------------------
    | Author.: Tiago Gabriel (DNA)
    | Updated: 17/09/2024
    | Purpose: Fechar cursores antes do final dos processos.
    | Tiket..: GLPI-55403 / FP-1337
    +----------------------------------------------------------------------------------------------------*/

    nDocu_id1   number(10)  := null;
    nDocu_id2   number(10)  := null;
    nDocu_id    number(10)  := null;
    nCont       number(5)  := 0;

    cursor c1 is
       select resp.atan_id,
              proc.proc_id,
              docu.docu_id,
              trunc(docu.data_inicio_vigencia) data_inicio,
              docu.situacao,
              docu.dm_port462015,
              docu.dm_prim_lic
         from fep_documentos        docu,
              fep_processos         proc,
              fep_responsabilidades resp,
              fep_atividades_antropicas ata1
        where docu.proc_id = proc.proc_id
          and proc.resp_id = resp.resp_id
          and resp.atan_id = ata1.atan_id
           and resp.atan_id = p_atan_id
          and docu.tido_id = 120
          and docu.situacao not in ( 'B','C','X','T' )
        order by resp.atan_id,
                 docu.data_inicio_vigencia desc;

r1    c1%rowtype;

begin
   open c1;
   loop
      fetch c1 into r1;
      if c1%notfound then
         close c1;
         exit;
      else

         nCont    := nCont + 1;
         if nCont > 2 then

            close c1; -- (TG) Adicionado

            return(nDocu_id);
         end if;
         --------------------
         -- se ultima lic emitida não for portaria 46 não interessa
         if nCont = 1 then
            if r1.dm_port462015 = 'S' then
               nDocu_id1 := r1.docu_id;
               if p_seq_lic = 1 then

                  close c1; -- (TG) Adicionado

                  return(nDocu_id1);
               end if;
            else

               close c1; -- (TG) Adicionado

               return(nDocu_id1);
            end if;
         end if;
         --------------------
         if nCont = 2 then
            if nDocu_id1 is not null then -- se última foi port46
               if r1.dm_port462015 = 'S' then
                  nDocu_id2 := r1.docu_id;
               end if;
               if p_seq_lic = 2 then

                  close c1; -- (TG) Adicionado

                  return(nDocu_id2);
               end if;
            end if;

            close c1; -- (TG) Adicionado

            return(nDocu_id2);
         end if;
         --------------------
      end if;
   end loop;
   return(nDocu_id);
end;

FUNCTION fc_docu_data_vistoria(p_docu_id in number, p_tido_id in number) return date is

  dDataVistoria  date;

  cursor c1 is
     select vist.data_vistoria
       from fep_vistorias  vist,
            fep_documentos docu
      where vist.docu_id = p_docu_id
        and vist.docu_id = docu.docu_id
        and vist.data_vistoria is not null
        and docu.tido_id in ( 1121, 1122 );

begin

  if p_tido_id not in (1121,1122) then
     return(dDataVistoria);
  end if;

  open  c1;
  fetch c1 into dDataVistoria;
  close c1;

  return(dDataVistoria);

end;

FUNCTION fc_agrot_ramo_tido(p_raat_id in number) return number is

   nTido_id_licenca   number(5);

begin

   if p_raat_id in ( 123.11, 123.12, 123.13, 123.14, 123.15, 123.16 ) then

      if p_raat_id = 123.11 then
         nTido_id_licenca  := 230;
      elsif p_raat_id = 123.12 then
         nTido_id_licenca  := 231;
      elsif p_raat_id = 123.13 then
         nTido_id_licenca  := 232;
      elsif p_raat_id = 123.14 then
         nTido_id_licenca  := 233;
      elsif p_raat_id = 123.15 then
         nTido_id_licenca  := 235;
      elsif p_raat_id = 123.16 then
         nTido_id_licenca  := 236;
      end if;

   end if;

   return(nTido_id_licenca);

end;

PROCEDURE pr_postos_port46_depara(p_prcr_id_ant  in number,
                                  p_prcr_id_new  in number,
                                  p_tido_id_proc in number,
                                  p_atan_id      in number) is
 -------------------------------------------------------------------
 -- faz a conversão das condicionantes que foram desativados
 -- e qual o correspondente a ser incluido
 -- e verifica se tem GNV/GNC para incluir a condicionante 3378
 -- de/para ramo 4751.30 - Postos de Combustiveis
 -- procedure usada no pck_proc_geracoes.pr_gera_ren_lic_ant
 --                         Malu 27/10/2020
 -------------------------------------------------------------------

    /*----------------------------------------------------------------------------------------------------
    | Author.: Tiago Gabriel (DNA)
    | Updated: 17/09/2024
    | Purpose: Fechar cursores antes do final dos processos.
    | Tiket..: GLPI-55403 / FP-1337
    +----------------------------------------------------------------------------------------------------*/

   nLcrs_id_Lic           number(10);
   vCors_descricao_Lic    varchar2(4000);
   nCrpr_id_Lic           number(10);
   nCors_id_new           number(10);
   nJaExiste              number(5);
   vMesLaudo              varchar2(12);
   nAreaImplantada        number(9,2)    := NULL;
   nDm_Monitoramento      number(2);
   vPeriodMon1            varchar2(10)   := NULL;
   vAreaPosto             varchar2(20);
   nDm_tipo_gas           number(2);
   nCont                  number(5);
   nIncluir3378           number(1);

  cursor c1 is
      select acrl.ACRL_ID,
             acrl.PRCR_ID,
             acrl.LCRS_ID,
             acrl.CORS_DESCRICAO,
             acrl.DATA_INCLUSAO,
             acrl.OPERADOR_INCLUSAO,
             acrl.DATA_ATUALIZACAO,
             acrl.OPERADOR_ATUALIZACAO,
             acrl.CRPR_ID,
             lcrs.raat_id,
             lcrs.cors_id,
             tilc.tido_id
        from fep_aux_cond_restr_par_lic      acrl,
             fep_listas_cond_restricoes      lcrs,
             fep_tido_cond_restr             tilc,
             fep_condicoes_restricoes        cors
       where acrl.prcr_id   = p_prcr_id_ant
          and acrl.lcrs_id  = lcrs.lcrs_id
--          and lcrs.data_fim_validade is null
          and lcrs.lcrs_id  = tilc.lcrs_id
          and tilc.tido_id  = p_tido_id_proc
 --         and tilc.data_fim is null
          and cors.clcr_id != 55
          and lcrs.cors_id  = cors.cors_id
 --         and cors.data_fim_validade is null
          and cors.cors_id in (  3355,3369,3371,664,3372,666,3373,3374,
                                 3382,3385,3386,3387,3388,3389,3390,3392 )
          and acrl.crpr_id is null
       order by cors.cors_id;

    r1  c1%rowtype;

  cursor c2 is
      select lcrs.lcrs_id,
             cors.descricao
        from fep_listas_cond_restricoes    lcrs,
             fep_tido_cond_restr           tilc,
             fep_condicoes_restricoes      cors
       where lcrs.cors_id  =  nCors_id_new
         and lcrs.raat_id  =  r1.raat_id
         and lcrs.lcrs_id  =  tilc.lcrs_id
         and tilc.tido_id  =  r1.tido_id
         and lcrs.cors_id  =  cors.cors_id;


  cursor c3 is
      select count(*)
        from fep_aux_cond_restr_par_lic acrl
     where acrl.lcrs_id =  nLcrs_id_Lic
       and acrl.prcr_id =  p_prcr_id_new;

  cursor c4 is
      SELECT lower(substr(pck_cadastros.fc_descricao_dominio(
              'DM_MES', lpad(ptcb.mes_laudo,2,0),0),1,9)) mes_laudo,
             ata1.area_preservacao       area,
             ptcb.dm_monitoramento_agua  dm_monitoramento,
             ptcb.dm_tipo_gas
        FROM fep_postos_combustiveis   ptcb,
             fep_atividades_antropicas ata1
       WHERE ptcb.atan_id   = p_atan_id
         AND ptcb.atan_id   = ata1.atan_id;

  cursor c5 is
     select count(*)
       from FEP_EQUIPAMENTOS_PRODUCOES eqpr
      where eqpr.atan_id = p_atan_id
        and eqpr.tieq_id in (10301,10302);

  cursor c6 IS
     SELECT lcrs.lcrs_id,
            cors.cors_id,
            cors.descricao cors_descricao
       FROM fep_listas_cond_restricoes lcrs,
            fep_condicoes_restricoes   cors,
            fep_tido_cond_restr        tilc
      WHERE lcrs.raat_id = 4751.30
        AND lcrs.cors_id = cors.cors_id
        AND lcrs.data_fim_validade IS NULL
        AND cors.data_fim_validade IS NULL
        AND lcrs.cors_id = 3378
        AND lcrs.lcrs_id = tilc.lcrs_id
        AND tilc.data_fim IS NULL
        AND tilc.tido_id = 120
        AND NOT EXISTS ( SELECT NULL
                           FROM fep_aux_cond_restr_par_lic acrl
                          WHERE acrl.cors_id_atual = 3378
                            AND acrl.prcr_id = p_prcr_id_new );
     r6  c6%rowtype;

begin

    -------------------------------------------------------------------------------
    --- ACRL - Condicoes para Licenca - Origem para Postos que foram desativados
    -------------------------------------------------------------------------------
    OPEN  c4;
    FETCH c4 INTO vMesLaudo,
                  nAreaImplantada,
                  nDm_Monitoramento,
                  nDm_tipo_gas;
    CLOSE c4;
    IF nDm_Monitoramento IN (1,3) THEN -- trimestral
       vPeriodMon1 := 'trimestral';
    END IF;
    IF nDm_Monitoramento IN (2,4) THEN -- semestral
       vPeriodMon1 := 'semestral';
    END IF;
    vAreaPosto  := pck_proc_prof0825.fc_transforma_number_char(nAreaImplantada,2);

    ----------------------------------------
    nIncluir3378 := 0;
    if nDm_tipo_gas IN (1,2) THEN -- GNV e GNC
       nIncluir3378 := 1;
    else
       open  c5;
       fetch c5 into nCont;
       close c5;
       if nCont > 0 then
          nIncluir3378 := 1;
       end if;
    end if;
    ---------------------------------------------


    open c1;
    loop
      fetch c1 into r1;
      if c1%notfound then
         close c1;
         exit;
      else

         nLcrs_id_Lic         := r1.lcrs_id;
--         vCors_descricao_Lic  := r1.cors_descricao;
         nCrpr_id_Lic         := r1.crpr_id;

         if r1.cors_id = 3355 then
            nCors_id_new := 676;
         elsif r1.cors_id = 3369 then
            nCors_id_new := 916;
         elsif r1.cors_id = 3371 then
            nCors_id_new := 919;
         elsif r1.cors_id in (666,3372,3373,3374) then
            nCors_id_new := 665;
         elsif r1.cors_id = 3382 then
            nCors_id_new := 669;
         elsif r1.cors_id = 3385 then
            nCors_id_new := 825;
         elsif r1.cors_id = 3386 then
            nCors_id_new := 3383;
         elsif r1.cors_id = 3387 then
            nCors_id_new := 828;
         elsif r1.cors_id = 3388 then
            nCors_id_new := 827;
         elsif r1.cors_id = 3389 then
            nCors_id_new := 3384;
         elsif r1.cors_id = 3390 then
            nCors_id_new := 829;
         elsif r1.cors_id = 3392 then
            nCors_id_new := 641;
         end if;

         nLcrs_id_Lic        := null;
         vCors_descricao_Lic := null;

         open  c2;
         fetch c2 into nLcrs_id_Lic , vCors_descricao_Lic;
         close c2;

         if nLcrs_id_Lic is not null then

            open  c3;
            fetch c3 into nJaExiste;
            close c3;

            if nJaExiste = 0 then

               if vCors_descricao_Lic like '%[MES_LAUDO]%' THEN
                  vCors_descricao_Lic  := REPLACE(vCors_descricao_Lic,'[MES_LAUDO]',vMesLaudo);
               end if;

               if vCors_descricao_Lic like '%[PERIOD_MON1]%' THEN
                  vCors_descricao_Lic  := REPLACE(vCors_descricao_Lic,'[PERIOD_MON1]',vPeriodMon1);
               end if;

               if vCors_descricao_Lic like '%[AREA]%' THEN
                  vCors_descricao_Lic  := REPLACE(vCors_descricao_Lic,'[AREA]',vAreaPosto);
               end if;

               begin
                  insert into fep_aux_cond_restr_par_lic (
                                ACRL_ID,
                                PRCR_ID,
                                LCRS_ID,
                                CORS_DESCRICAO,
                                DATA_INCLUSAO,
                                OPERADOR_INCLUSAO,
                                DATA_ATUALIZACAO,
                                OPERADOR_ATUALIZACAO,
                                CRPR_ID,
                                CORS_ID_ANTERIOR,
                                CORS_ID_ATUAL,
                                DM_ALT_REDACAO,
                                DM_DEPARA_POSTOS
                                   ) VALUES (
                                ACRL_seq.nextval,
                                p_prcr_id_new,
                                nLcrs_id_Lic,
                                vCors_descricao_Lic,
                                sysdate,
                                user,
                                sysdate,
                                user,
                                nCrpr_id_Lic,
                                r1.cors_id,
                                nCors_id_new,
                                'S',
                                'S');

                                    commit;

               exception
                  WHEN OTHERS THEN

                    -- (TG) Adicionado: o rise não fecha o cursor
                    if c1%isOpen then
                      close c1;
                    end if;

                    raise_application_error(-20001, 'Erro1: Inclusão ACRL. >> ' || SQLCODE || ' - ' || SQLERRM );
               end;

            end if;
         end if;
      end if;
    end loop;

    ---------------------------------------------------------------------
    -- verifica se deve incluir condicionante 3378
    ---------------------------------------------------------------------
    if nIncluir3378 = 1 then

       open c6;
       fetch c6 into r6;
       if c6%found then
           begin
             insert into fep_aux_cond_restr_par_lic (
                                ACRL_ID,
                                PRCR_ID,
                                LCRS_ID,
                                CORS_DESCRICAO,
                                DATA_INCLUSAO,
                                OPERADOR_INCLUSAO,
                                DATA_ATUALIZACAO,
                                OPERADOR_ATUALIZACAO,
                                CRPR_ID,
                                CORS_ID_ANTERIOR,
                                CORS_ID_ATUAL,
                                DM_ALT_REDACAO,
                                DM_DEPARA_POSTOS
                                   ) VALUES (
                                ACRL_seq.nextval,
                                p_prcr_id_new,
                                r6.lcrs_id,
                                r6.cors_descricao,
                                sysdate,
                                user,
                                sysdate,
                                user,
                                null,
                                null,
                                r6.cors_id,
                                null,
                                'S');

                                    commit;

               exception
                  WHEN OTHERS THEN

                    -- (TG) Adicionado: o rise não fecha o cursor
                    if c6%isOpen then
                      close c6;
                    end if;

                    raise_application_error(-20001, 'Erro2: Inclusão ACRL. >> ' || SQLCODE || ' - ' || SQLERRM );
               end;

       end if;
       close c6;

    end if;


end;


begin
    -- Chamado 8771 Resolucao do Conselho de ADM FEPAM N 04/2020, durante o período de 22/04 a 19/09/2020
    -- Chamado 10190 Resolucao do Conselho de ADM FEPAM N 05/2020, prorroga por mais 30 dias
    -- Chamado 11848  prorrogações seja 90 dias e data final 19/11/2020, cfme resolução 006/2020
    -- Solicitado por spark Alexandre Guerra dia 28/08/2020 as 16h
  /*  if trunc(sysdate) between to_date('22042020','ddmmyyyy') and to_date('31122020','ddmmyyyy') then
       nDiasProrrogacao:=89; --ref chamado 8771 11848
       --nDiasProrrogacao:=59; -- ref chamado 10190

    else*/
      nDiasProrrogacao:=119;
--    end if;

END PCK_PROCESSOS;
/
