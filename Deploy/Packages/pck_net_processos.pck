CREATE OR REPLACE PACKAGE FEPAM.PCK_NET_PROCESSOS AS

  Procedure SP_DOCU_GET(nDocu_id in number, cur out sys_refcursor);
  Procedure SP_DOCU_GET_FROM_VIEW(nDocu_id in number,
                                  cur      out sys_refcursor);
  Procedure SP_DOCU_SRC_FROM_VIEW(sDocu_ids in varchar2,
                                  sProcesso in varchar2,
                                  sSituacao in varchar2,
                                  cur       out sys_refcursor);
  Function FC_VALIDA_PROCESSO(P_PROCESSO in number) return number;
  function FC_CONTA_PROC_PENDENTE(nAtanId in Number) return number;
  FUNCTION FC_TROCA_TANQUE(nProc_id IN NUMBER, nAtan_id IN NUMBER)
    RETURN VARCHAR2;
  FUNCTION FC_PROC_NOVO_MODELO(nProc_id IN NUMBER) RETURN NUMBER;
  FUNCTION FC_DISPLAY_DATA_VIGENCIA(vDataFimVigencia IN DATE) RETURN VARCHAR2;
  FUNCTION FC_NOME_PONTO_PCR(nAtan_id IN NUMBER, vCodPonto IN VARCHAR2)
    RETURN VARCHAR2;
  Procedure SP_DOCU_SRC_LOG(nDocu_id      in number,
                            sProcesso     in varchar2,
                            vData_inicial in varchar,
                            vData_final   in varchar,
                            cur           out sys_refcursor);
  Procedure SP_DOCU_GET_LOG_DADOS(nDocu_id in number,
                                  cur      out sys_refcursor);
  Procedure SP_DOCU_GET_LOG_ASSINANTES(nDocu_id in number,
                                       cur      out sys_refcursor);
  Procedure SP_DOCU_SRC(nDocu_id                  in number,
                        sDm_verificado_pdf        in varchar,
                        nDm_verifica_dl           in number,
                        nDm_origem                in number,
                        nAnos_licenca             in number,
                        nMedida_porte_parecer     in number,
                        sDm_pronaf                in varchar,
                        sDm_libera_arrec          in varchar,
                        sOperador_parecer_dl      in varchar,
                        sDm_existe_pass_ambiental in varchar,
                        sObservacoes              in varchar,
                        nPess_id_vigor            in number,
                        sDm_publicar_internet     in varchar,
                        nNro_bloqueto             in number,
                        nDm_andamento_aut         in number,
                        nDm_folha_impressa        in number,
                        sData_folha               in varchar,
                        sDm_assinatura_digital    in varchar,
                        nNumero                   in number,
                        nAno                      in number,
                        nTido_id                  in number,
                        nProc_id                  in number,
                        sDescricao                in varchar,
                        sData_emissao             in varchar,
                        nStatus                   in number,
                        sSituacao                 in varchar,
                        nTempo_tramitacao         in number,
                        sData_inicio_vigencia     in varchar,
                        sData_fim_vigencia        in varchar,
                        nPrazo                    in number,
                        sData_conhecimento        in varchar,
                        nForma_conhecimento       in number,
                        sData_inclusao            in varchar,
                        sData_atualizacao         in varchar,
                        sOperador_inclusao        in varchar,
                        sOperador_atualizacao     in varchar,
                        nVist_id                  in number,
                        nDocu_id_substitui        in number,
                        nDocu_id_origina          in number,
                        nPreco                    in number,
                        sData_pagamento           in varchar,
                        nValor_pago               in number,
                        sRenovavel                in varchar,
                        nSeto_id                  in number,
                        sProtecao                 in varchar,
                        nAno_emissao              in number,
                        sData_expedicao           in varchar,
                        sData_entrega             in varchar,
                        sData_assinatura_fisica   in varchar,
                        sGeracao_automatica       in varchar,
                        sMotivo_revogacao         in varchar,
                        cur                       out sys_refcursor);
  Procedure SP_DOCU_INS(sDm_verificado_pdf        in varchar,
                        nDm_verifica_dl           in number,
                        nDm_origem                in number,
                        nAnos_licenca             in number,
                        nMedida_porte_parecer     in number,
                        sDm_pronaf                in varchar,
                        sDm_libera_arrec          in varchar,
                        sOperador_parecer_dl      in varchar,
                        sDm_existe_pass_ambiental in varchar,
                        sObservacoes              in varchar,
                        nPess_id_vigor            in number,
                        sDm_publicar_internet     in varchar,
                        nNro_bloqueto             in number,
                        nDm_andamento_aut         in number,
                        nDm_folha_impressa        in number,
                        sData_folha               in varchar,
                        sDm_assinatura_digital    in varchar,
                        nNumero                   in number,
                        nAno                      in number,
                        nTido_id                  in number,
                        nProc_id                  in number,
                        sDescricao                in varchar,
                        sData_emissao             in varchar,
                        nStatus                   in number,
                        sSituacao                 in varchar,
                        nTempo_tramitacao         in number,
                        sData_inicio_vigencia     in varchar,
                        sData_fim_vigencia        in varchar,
                        nPrazo                    in number,
                        sData_conhecimento        in varchar,
                        nForma_conhecimento       in number,
                        sData_inclusao            in varchar,
                        sData_atualizacao         in varchar,
                        sOperador_inclusao        in varchar,
                        sOperador_atualizacao     in varchar,
                        nVist_id                  in number,
                        nDocu_id_substitui        in number,
                        nDocu_id_origina          in number,
                        nPreco                    in number,
                        sData_pagamento           in varchar,
                        nValor_pago               in number,
                        sRenovavel                in varchar,
                        nSeto_id                  in number,
                        sProtecao                 in varchar,
                        nAno_emissao              in number,
                        sData_expedicao           in varchar,
                        sData_entrega             in varchar,
                        sData_assinatura_fisica   in varchar,
                        sGeracao_automatica       in varchar,
                        sMotivo_revogacao         in varchar,
                        nDocu_id                  out number);
  Procedure SP_DOCU_UPD(nDocu_id                  in number,
                        sDm_verificado_pdf        in varchar,
                        nDm_verifica_dl           in number,
                        nDm_origem                in number,
                        nAnos_licenca             in number,
                        nMedida_porte_parecer     in number,
                        sDm_pronaf                in varchar,
                        sDm_libera_arrec          in varchar,
                        sOperador_parecer_dl      in varchar,
                        sDm_existe_pass_ambiental in varchar,
                        sObservacoes              in varchar,
                        nPess_id_vigor            in number,
                        sDm_publicar_internet     in varchar,
                        nNro_bloqueto             in number,
                        nDm_andamento_aut         in number,
                        nDm_folha_impressa        in number,
                        sData_folha               in varchar,
                        sDm_assinatura_digital    in varchar,
                        nNumero                   in number,
                        nAno                      in number,
                        nTido_id                  in number,
                        nProc_id                  in number,
                        sDescricao                in varchar,
                        sData_emissao             in varchar,
                        nStatus                   in number,
                        sSituacao                 in varchar,
                        nTempo_tramitacao         in number,
                        sData_inicio_vigencia     in varchar,
                        sData_fim_vigencia        in varchar,
                        nPrazo                    in number,
                        sData_conhecimento        in varchar,
                        nForma_conhecimento       in number,
                        sData_atualizacao         in varchar,
                        sOperador_atualizacao     in varchar,
                        nVist_id                  in number,
                        nDocu_id_substitui        in number,
                        nDocu_id_origina          in number,
                        nPreco                    in number,
                        sData_pagamento           in varchar,
                        nValor_pago               in number,
                        sRenovavel                in varchar,
                        nSeto_id                  in number,
                        sProtecao                 in varchar,
                        nAno_emissao              in number,
                        sData_expedicao           in varchar,
                        sData_entrega             in varchar,
                        sData_assinatura_fisica   in varchar,
                        sGeracao_automatica       in varchar,
                        sMotivo_revogacao         in varchar);
  Procedure SP_DOCU_DEL(nDocu_id in number);
  Procedure SP_DOCU_ATAN(nAtan_id  in number,
                         sSituacao in varchar,
                         cur       out sys_refcursor);
  Procedure SP_DOCU_SRC_APROV(nAtan_id  in number,
                              sSituacao in varchar,
                              nSeto_id  in number,
                              nDocu_id  in number,
                              cur       out sys_refcursor);
  Procedure SP_DOCU_UPD_SITUACAO(nDocu_id              in number,
                                 sSituacao             in varchar,
                                 sOperador_Atualizacao in varchar,
                                 sData_Atualizacao     in varchar);
  Procedure SP_DOCU_UPD_SITUACAO_EM_VIGOR(nDocu_id              in number,
                                          sOperador_Atualizacao in varchar,
                                          cur                   out sys_refcursor);
  Procedure SP_DOCU_UPD_DM_P7S(nDocu_id in number);

  Procedure SP_PRDC_GET(nPrdc_id in number, cur out sys_refcursor);
  Procedure SP_PRDC_SRC(nPrdc_id              in number,
                        nDocu_id              in number,
                        nProc_id              in number,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_PRDC_INS(nDocu_id              in number,
                        nProc_id              in number,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nPrdc_id              out number);
  Procedure SP_PRDC_UPD(nPrdc_id              in number,
                        nDocu_id              in number,
                        nProc_id              in number,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar);
  Procedure SP_PRDC_DEL(nPrdc_id in number);

  Procedure SP_PROC_GET(nProc_id in number, cur out sys_refcursor);
  Procedure SP_PROC_GETMP(nProc_id in number, cur out sys_refcursor);
  Procedure SP_PROC_SRC(nProc_id              in number,
                        nNro_docs             in number,
                        nTido_id_docu         in number,
                        sDt_emissao_docu      in varchar,
                        nSeto_id_docu         in number,
                        sTido_docu_lic        in varchar,
                        nNro_docs_lic         in number,
                        nNro_docs_ai          in number,
                        sData_arquivamento    in varchar,
                        sDocu_fora_bd         in varchar,
                        sLibera_geracao_aut   in varchar,
                        sDm_eiarima           in varchar,
                        nDm_origem            in number,
                        sSituacao_nova        in varchar,
                        sData_situacao_nova   in varchar,
                        sDm_renovacao         in varchar,
                        nStatus               in number,
                        sSituacao             in varchar,
                        sData_situacao        in varchar,
                        sTilo_id              in varchar,
                        nMuni_id              in number,
                        sEndereco_corresp     in varchar,
                        sBairro_corresp       in varchar,
                        nCep_corresp          in number,
                        nPess_id_respondido   in number,
                        sObservacao           in varchar,
                        sData_inclusao        in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_inclusao    in varchar,
                        sOperador_atualizacao in varchar,
                        nNro_dias_parados     in number,
                        sLicenca_requerente   in varchar,
                        sProc_item_key        in varchar,
                        sProc_item_type       in varchar,
                        sData_pagamento       in varchar,
                        nValor_pago           in number,
                        nAno_inteiro          in number,
                        sMudanca_porte        in varchar,
                        nMedida_porte         in number,
                        nNro_integrantes      in number,
                        nNro_bloqueto         in number,
                        sData_expedicao       in varchar,
                        sData_entrega         in varchar,
                        nNumero               in number,
                        nAno                  in number,
                        ndv                   in number,
                        nResp_id              in number,
                        nOrig_id              in number,
                        nAspr_id              in number,
                        nPess_id              in number,
                        nSeto_id              in number,
                        nProc_id_ligacao      in number,
                        nTido_id              in number,
                        sData_entrada         in varchar,
                        cur                   out sys_refcursor);
  PROCEDURE SP_PROC_LISTA_PROC_EMPTO(nAtan_id in Number,
                                     cur      out sys_refcursor);
  Procedure SP_PROC_INS(nNro_docs             in number,
                        nTido_id_docu         in number,
                        sDt_emissao_docu      in varchar,
                        nSeto_id_docu         in number,
                        sTido_docu_lic        in varchar,
                        nNro_docs_lic         in number,
                        nNro_docs_ai          in number,
                        sData_arquivamento    in varchar,
                        sDocu_fora_bd         in varchar,
                        sLibera_geracao_aut   in varchar,
                        sDm_eiarima           in varchar,
                        nDm_origem            in number,
                        sSituacao_nova        in varchar,
                        sData_situacao_nova   in varchar,
                        sDm_renovacao         in varchar,
                        nStatus               in number,
                        sSituacao             in varchar,
                        sData_situacao        in varchar,
                        sTilo_id              in varchar,
                        nMuni_id              in number,
                        sEndereco_corresp     in varchar,
                        sBairro_corresp       in varchar,
                        nCep_corresp          in number,
                        nPess_id_respondido   in number,
                        sObservacao           in varchar,
                        sData_inclusao        in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_inclusao    in varchar,
                        sOperador_atualizacao in varchar,
                        nNro_dias_parados     in number,
                        sLicenca_requerente   in varchar,
                        sProc_item_key        in varchar,
                        sProc_item_type       in varchar,
                        sData_pagamento       in varchar,
                        nValor_pago           in number,
                        nAno_inteiro          in number,
                        sMudanca_porte        in varchar,
                        nMedida_porte         in number,
                        nNro_integrantes      in number,
                        nNro_bloqueto         in number,
                        sData_expedicao       in varchar,
                        sData_entrega         in varchar,
                        nNumero               in number,
                        nAno                  in number,
                        ndv                   in number,
                        nResp_id              in number,
                        nOrig_id              in number,
                        nAspr_id              in number,
                        nPess_id              in number,
                        nSeto_id              in number,
                        nProc_id_ligacao      in number,
                        nTido_id              in number,
                        sData_entrada         in varchar,
                        nProc_id              out number);
  Procedure SP_PROC_UPD(nProc_id              in number,
                        nNro_docs             in number,
                        nTido_id_docu         in number,
                        sDt_emissao_docu      in varchar,
                        nSeto_id_docu         in number,
                        sTido_docu_lic        in varchar,
                        nNro_docs_lic         in number,
                        nNro_docs_ai          in number,
                        sData_arquivamento    in varchar,
                        sDocu_fora_bd         in varchar,
                        sLibera_geracao_aut   in varchar,
                        sDm_eiarima           in varchar,
                        nDm_origem            in number,
                        sSituacao_nova        in varchar,
                        sData_situacao_nova   in varchar,
                        sDm_renovacao         in varchar,
                        nStatus               in number,
                        sSituacao             in varchar,
                        sData_situacao        in varchar,
                        sTilo_id              in varchar,
                        nMuni_id              in number,
                        sEndereco_corresp     in varchar,
                        sBairro_corresp       in varchar,
                        nCep_corresp          in number,
                        nPess_id_respondido   in number,
                        sObservacao           in varchar,
                        sData_inclusao        in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_inclusao    in varchar,
                        sOperador_atualizacao in varchar,
                        nNro_dias_parados     in number,
                        sLicenca_requerente   in varchar,
                        sProc_item_key        in varchar,
                        sProc_item_type       in varchar,
                        sData_pagamento       in varchar,
                        nValor_pago           in number,
                        nAno_inteiro          in number,
                        sMudanca_porte        in varchar,
                        nMedida_porte         in number,
                        nNro_integrantes      in number,
                        nNro_bloqueto         in number,
                        sData_expedicao       in varchar,
                        sData_entrega         in varchar,
                        nNumero               in number,
                        nAno                  in number,
                        ndv                   in number,
                        nResp_id              in number,
                        nOrig_id              in number,
                        nAspr_id              in number,
                        nPess_id              in number,
                        nSeto_id              in number,
                        nProc_id_ligacao      in number,
                        nTido_id              in number,
                        sData_entrada         in varchar);

  Procedure SP_PROC_UPD_MP(nProc_id              in number,
                           sSituacao             in varchar,
                           sData_entrada         in varchar,
                           nPess_id              in number,
                           nAspr_id              in number,
                           nTido_id              in number,
                           nSeto_id              in number,
                           sObservacao           in varchar,
                           sTilo_id              in varchar,
                           sEndereco_corresp     in varchar,
                           sBairro_corresp       in varchar,
                           nMuni_id              in number,
                           sCep_corresp          in number,
                           sData_atualizacao     in varchar,
                           sOperador_atualizacao in varchar);

  Procedure SP_PROC_DEL(nProc_id in number);

  Procedure SP_EPRO_GET(nEpro_id in number, cur out sys_refcursor);
  Procedure SP_EPRO_SRC(nEpro_id              in number,
                        nPess_id              in number,
                        nProc_id              in number,
                        nResp_id              in number,
                        nTipa_id              in number,
                        sCoordenador          in varchar,
                        sEmpdor_resp          in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_EPRO_INS(nPess_id              in number,
                        nProc_id              in number,
                        nResp_id              in number,
                        nTipa_id              in number,
                        sCoordenador          in varchar,
                        sEmpdor_resp          in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nEpro_id              out number);
  Procedure SP_EPRO_UPD(nEpro_id              in number,
                        nPess_id              in number,
                        nProc_id              in number,
                        nResp_id              in number,
                        nTipa_id              in number,
                        sCoordenador          in varchar,
                        sEmpdor_resp          in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar);
  Procedure SP_EPRO_DEL(nEpro_id in number);

  Procedure SP_TSOI_GET(nTsoi_id in number, cur out sys_refcursor);
  Procedure SP_TSOI_SRC(nTsoi_id              in number,
                        sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_TSOI_INS(sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nTsoi_id              out number);
  Procedure SP_TSOI_UPD(nTsoi_id              in number,
                        sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar);
  Procedure SP_TSOI_DEL(nTsoi_id in number);

  Procedure SP_TIDO_GET(nTido_id in number, cur out sys_refcursor);
  Procedure SP_TIDO_SRC(nTido_id                in number,
                        nAspr_id                in number,
                        sData_inclusao          in varchar,
                        sOperador_inclusao      in varchar,
                        sData_atualizacao       in varchar,
                        sOperador_atualizacao   in varchar,
                        sDm_incluir_mp          in varchar,
                        sDm_valida_medida_porte in varchar,
                        sDescricao              in varchar,
                        sAbreviatura            in varchar,
                        sEm_uso                 in varchar,
                        nSucd_id                in number,
                        sRenovacao_automatica   in varchar,
                        sHistorico_cobranca     in varchar,
                        sHistorico_pagamento    in varchar,
                        nCriterio_preco         in number,
                        sAmpliacao              in varchar,
                        sAjuda                  in varchar,
                        cur                     out sys_refcursor);
  Procedure SP_TIDO_INS(nAspr_id                in number,
                        sData_inclusao          in varchar,
                        sOperador_inclusao      in varchar,
                        sData_atualizacao       in varchar,
                        sOperador_atualizacao   in varchar,
                        sDm_incluir_mp          in varchar,
                        sDm_valida_medida_porte in varchar,
                        sDescricao              in varchar,
                        sAbreviatura            in varchar,
                        sEm_uso                 in varchar,
                        nSucd_id                in number,
                        sRenovacao_automatica   in varchar,
                        sHistorico_cobranca     in varchar,
                        sHistorico_pagamento    in varchar,
                        nCriterio_preco         in number,
                        sAmpliacao              in varchar,
                        sAjuda                  in varchar,
                        nTido_id                out number);
  Procedure SP_TIDO_UPD(nTido_id                in number,
                        nAspr_id                in number,
                        sData_inclusao          in varchar,
                        sOperador_inclusao      in varchar,
                        sData_atualizacao       in varchar,
                        sOperador_atualizacao   in varchar,
                        sDm_incluir_mp          in varchar,
                        sDm_valida_medida_porte in varchar,
                        sDescricao              in varchar,
                        sAbreviatura            in varchar,
                        sEm_uso                 in varchar,
                        nSucd_id                in number,
                        sRenovacao_automatica   in varchar,
                        sHistorico_cobranca     in varchar,
                        sHistorico_pagamento    in varchar,
                        nCriterio_preco         in number,
                        sAmpliacao              in varchar,
                        sAjuda                  in varchar);
  Procedure SP_TIDO_DEL(nTido_id in number);
  Procedure SP_TIDO_SRC_SINPLI(cur out sys_refcursor);

  procedure sp_sose_get(nsose_id in number, cur out sys_refcursor);
  Procedure sp_sose_src_doc(nproc_id in number, cur out sys_refcursor);
  Procedure SP_SOSE_SRC(nSose_id              in number,
                        nMedida_porte_calc    in number,
                        sDm_alteracao_cad     in varchar,
                        sDm_alteracao_rt      in varchar,
                        sMotivo_indeferimento in varchar,
                        sOperador_atualizacao in varchar,
                        nHicb_id              in number,
                        nMedida_porte_cad     in number,
                        nAtan_id              in number,
                        nProc_id              in number,
                        nTsoi_id              in number,
                        nTido_id              in number,
                        nDm_tipo_solic_seamb  in number,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_SOSE_INS(nMedida_porte_calc    in number,
                        sDm_alteracao_cad     in varchar,
                        sDm_alteracao_rt      in varchar,
                        sMotivo_indeferimento in varchar,
                        sOperador_atualizacao in varchar,
                        nHicb_id              in number,
                        nMedida_porte_cad     in number,
                        nAtan_id              in number,
                        nProc_id              in number,
                        nTsoi_id              in number,
                        nTido_id              in number,
                        nDm_tipo_solic_seamb  in number,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        nSose_id              out number);
  Procedure SP_SOSE_UPD(nSose_id              in number,
                        nMedida_porte_calc    in number,
                        sDm_alteracao_cad     in varchar,
                        sDm_alteracao_rt      in varchar,
                        sMotivo_indeferimento in varchar,
                        sOperador_atualizacao in varchar,
                        nHicb_id              in number,
                        nMedida_porte_cad     in number,
                        nAtan_id              in number,
                        nProc_id              in number,
                        nTsoi_id              in number,
                        nTido_id              in number,
                        nDm_tipo_solic_seamb  in number,
                        sData_atualizacao     in varchar,
                        sCancelar             in varchar default null);
  Procedure SP_SOSE_DEL(nSose_id in number);
  Procedure SP_SOSE_SRC_PENDENTES(cur out sys_refcursor);
  Procedure SP_SOSE_SRC_PENDENTES_RT(cur out sys_refcursor);
  Procedure SP_SOSE_SRC_PENDENTES_SOLIC(cur out sys_refcursor);

  Procedure SP_DSSE_GET(nDsse_id in number, cur out sys_refcursor);
  Procedure SP_DSSE_SRC(nDsse_id                 in number,
                        nSose_id                 in number,
                        nDm_tipo_doc_solic_seamb in number,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        sData_atualizacao        in varchar,
                        sOperador_atualizacao    in varchar,
                        sData_entrega            in varchar,
                        cur                      out sys_refcursor);

  Procedure SP_DSSE_INS(nSoseid                 in number,
                        nDmtipodocsolicseamb in number,
                        sDatainclusao           in varchar,
                        sOperadorinclusao       in varchar,
                        sDataatualizacao        in varchar,
                        sOperadoratualizacao    in varchar,
                        sDataentrega            in varchar,
                        ndsseid                 out number);

  Procedure SP_DSSE_INS_ATE(nSoseid                 in number,
                        nDmtipodocsolicseamb in number,
                        sDatainclusao           in varchar,
                        sOperadorinclusao       in varchar,
                        sDataatualizacao        in varchar,
                        sOperadoratualizacao    in varchar,
                        sDataentrega            in varchar,
                        nAtea_id                in number default null,
                        ndsseid                 out number);

  Procedure SP_S3i_DSSE_INS(nSose_id                 in number,
                        nDm_tipo_doc_solic_seamb in number,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        sData_atualizacao        in varchar,
                        sOperador_atualizacao    in varchar,
                        sData_entrega            in varchar,
                        natea_id                 in number default null,
                        nDsse_id                 out number);

  Procedure SP_DSSE_UPD(nDsse_id                 in number,
                        nSose_id                 in number,
                        nDm_tipo_doc_solic_seamb in number,
                        sData_atualizacao        in varchar,
                        sOperador_atualizacao    in varchar,
                        sData_entrega            in varchar
                       );
  Procedure SP_DSSE_UPD_ATE(nDsse_id                 in number,
                        nSose_id                 in number,
                        nDm_tipo_doc_solic_seamb in number,
                        sData_atualizacao        in varchar,
                        sOperador_atualizacao    in varchar,
                        sData_entrega            in varchar,
                        nAtea_id                 in number default null
                       );

  Procedure SP_DSSE_DEL(nDsse_id in number);

  Procedure SP_PRCR_GET(nPrcr_id in number, cur out sys_refcursor);
  Procedure SP_PRCR_SRC(nPrcr_id              in number,
                        nPoll_id              in number,
                        nPoll_id3             in number,
                        nSose_id              in number,
                        sDm_libera_especifico in varchar,
                        nPoll_id4             in number,
                        sData_inicio          in varchar,
                        nSold_id              in number,
                        nProc_id              in number,
                        nPess_id_tecnico      in number,
                        nSeto_id_tecnico      in number,
                        nDocu_id_parecer      in number,
                        nTido_id_parecer      in number,
                        nDocu_id_revogado     in number,
                        nDocu_id_renovacao    in number,
                        nDocu_id_licenca      in number,
                        nTido_id_licenca      in number,
                        sData_vencimento      in varchar,
                        sObservacao           in varchar,
                        sDm_ativo             in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSeto_id_assinatura   in number,
                        nPoll_id2             in number,
                        nPoll_id5             in number,
                        cur                   out sys_refcursor);
  Procedure SP_PRCR_INS(nPoll_id              in number,
                        nPoll_id3             in number,
                        nSose_id              in number,
                        sDm_libera_especifico in varchar,
                        nPoll_id4             in number,
                        sData_inicio          in varchar,
                        nSold_id              in number,
                        nProc_id              in number,
                        nPess_id_tecnico      in number,
                        nSeto_id_tecnico      in number,
                        nDocu_id_parecer      in number,
                        nTido_id_parecer      in number,
                        nDocu_id_revogado     in number,
                        nDocu_id_renovacao    in number,
                        nDocu_id_licenca      in number,
                        nTido_id_licenca      in number,
                        sData_vencimento      in varchar,
                        sObservacao           in varchar,
                        sDm_ativo             in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSeto_id_assinatura   in number,
                        nPoll_id2             in number,
                        nPoll_id5             in number,
                        nPrcr_id              out number);
  Procedure SP_PRCR_UPD(nPrcr_id              in number,
                        nPoll_id              in number,
                        nPoll_id3             in number,
                        nSose_id              in number,
                        sDm_libera_especifico in varchar,
                        nPoll_id4             in number,
                        sData_inicio          in varchar,
                        nSold_id              in number,
                        nProc_id              in number,
                        nPess_id_tecnico      in number,
                        nSeto_id_tecnico      in number,
                        nDocu_id_parecer      in number,
                        nTido_id_parecer      in number,
                        nDocu_id_revogado     in number,
                        nDocu_id_renovacao    in number,
                        nDocu_id_licenca      in number,
                        nTido_id_licenca      in number,
                        sData_vencimento      in varchar,
                        sObservacao           in varchar,
                        sDm_ativo             in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSeto_id_assinatura   in number,
                        nPoll_id2             in number,
                        nPoll_id5             in number);
  Procedure SP_PRCR_DEL(nPrcr_id in number);

  Procedure SP_GERA_PROC_SEAMB_DOCS(nHicb_id in number);

  Procedure SP_SODC_GET(nSodc_id in number, cur out sys_refcursor);
  Procedure SP_SODC_SRC(nSodc_id              in number,
                        nSose_id              in number,
                        nDocu_id              in number,
                        sDm_ativo             in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_SODC_INS(nSose_id              in number,
                        nDocu_id              in number,
                        sDm_ativo             in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSodc_id              out number);
  Procedure SP_SODC_UPD(nSodc_id              in number,
                        nSose_id              in number,
                        nDocu_id              in number,
                        sDm_ativo             in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar);
  Procedure SP_SODC_DEL(nSodc_id in number);

  Procedure SP_AXSP_GET(nAxsp_id in number, cur out sys_refcursor);
  Procedure SP_AXSP_SRC(nAxsp_id              in number,
                        nSose_id              in number,
                        sDescricao            in varchar,
                        sData_atendimento     in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_AXSP_INS(nSose_id              in number,
                        sDescricao            in varchar,
                        sData_atendimento     in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nAxsp_id              out number);
  Procedure SP_AXSP_UPD(nAxsp_id              in number,
                        nSose_id              in number,
                        sDescricao            in varchar,
                        sData_atendimento     in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar);
  Procedure SP_AXSP_DEL(nAxsp_id in number);
  Function FASXP_QTD_ERROS(nsose_id in number) return number;
  Function BUSCA_TIDO(nTido in Number) return varchar2;
  Function BUSCA_STATUS_DOC_PROCESSO(nSituacao in varchar2) return varchar2;
  Procedure SP_DOCU_DEVOLVE(nDocu_id         in number,
                            nDocu_id_parecer in number,
                            nSose_id         in number);

  Procedure SP_PROC_VIAG_SRC(nProc_id in number, cur out sys_refcursor);
  Procedure SP_PROC_VIAG_UPD_SRC(nViag_id in number, cur out sys_refcursor);

  -- DOCUMENTOS - DIRETORIOS E PASTAS
  PROCEDURE PR_PASTAS_ASSIN_DIGITAL(vNomeUsuario in varchar2,
                                    cur          out sys_refcursor);
  PROCEDURE PR_DIRETORIO_ASSIN_DIGITAL(vNomeUsuario in varchar2,
                                       cur out sys_refcursor);

  -- DOCUMENTOS - PUBLICAC?O
  Procedure SP_DOCA_GET(nDocu_id in number, cur out sys_refcursor);
  Procedure SP_DOCA_SRC(nDocu_id                in number,
                        sResponsavel_publicacao in varchar,
                        sData_publicacao        in varchar,
                        cur                     out sys_refcursor);
  Procedure SP_DOCA_INS(nDocu_id                in number,
                        sResponsavel_publicacao in varchar,
                        sData_publicacao        in varchar);
  Procedure SP_DOCA_UPD(nDocu_id                in number,
                        sResponsavel_publicacao in varchar,
                        sData_publicacao        in varchar);
  Procedure SP_DOCA_DEL(nDocu_id in number);

  -- DOCUMENTOS - ASSINANTES
  Procedure SP_DOAS_GET(nDoas_id in number, cur out sys_refcursor);
  Procedure SP_DOAS_GET2(nDocu_id                in number,
                         sResponsavel_assinatura in varchar,
                         cur                     out sys_refcursor);
  Procedure SP_DOAS_SRC(nDoas_id                in number,
                        nDocu_id                in number,
                        sResponsavel_assinatura in varchar,
                        sData_assinatura        in varchar,
                        cur                     out sys_refcursor);
  Procedure SP_DOAS_INS(nDocu_id                in number,
                        sResponsavel_assinatura in varchar,
                        sData_assinatura        in varchar,
                        nDoas_id                out number);
  Procedure SP_DOAS_UPD(nDoas_id                in number,
                        nDocu_id                in number,
                        sResponsavel_assinatura in varchar,
                        sData_assinatura        in varchar);
  Procedure SP_DOAS_DEL(nDoas_id in number);

  -- DOCUMENTOS - PUBLICAC?O E ASSINATURA
  Procedure SP_DOCA_ASSINA(nDocu_id                in number,
                           sResponsavel_assinatura in varchar,
                           sData_assinatura        in varchar,
                           nDoas_id                out number);
  Procedure SP_DOCA_PUBLICA(nDocu_id                in number,
                            sResponsavel_publicacao in varchar,
                            sData_publicacao        in varchar);

  -- DOCUMENTOS - PASTAS PARA ASSINATURA
  Procedure SP_PADO_GET(nPado_id in number, cur out sys_refcursor);
  Procedure SP_PADO_SRC(nPado_id              in number,
                        sNome_pasta           in varchar,
                        sDescricao            in varchar,
                        sOperador_inclusao    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_PADO_INS(sNome_pasta           in varchar,
                        sDescricao            in varchar,
                        sOperador_inclusao    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        nPado_id              out number);
  Procedure SP_PADO_UPD(nPado_id              in number,
                        sNome_pasta           in varchar,
                        sDescricao            in varchar,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar);

  Procedure SP_PADO_DEL(nPado_id in number);

  procedure SP_PESS_GET(ncgc_cpf  in number,
                        sOperador in varchar2,
                        cur       out sys_refcursor);
  -- DOCUMENTOS - ACESSOS A PASTAS DE ASSINATURA
  Procedure SP_ACPD_GET(nAcpd_id in number, cur out sys_refcursor);
  Procedure SP_ACPD_GET_ACESSO_PESSOA(nPess_id in number,
                                      nPado_id in number,
                                      cur      out sys_refcursor);
  Procedure SP_ACPD_GET_DADOS_PESSOA(nPess_id in number,
                                     cur      out sys_refcursor);
  Procedure SP_ACPD_SRC(nAcpd_id              in number,
                        nPess_id              in number,
                        sOperador_inclusao    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        nPado_id              in number,
                        cur                   out sys_refcursor);
  Procedure SP_ACPD_SRC_GRID(nPado_id in number,
                             nPess_id in number,
                             cur      out sys_refcursor);
  Procedure SP_ACPD_SRC_COMBO_PESSOAS(cur out sys_refcursor);
  Procedure SP_ACPD_SRC_DADOS_PASTAS(nPess_id in number,
                                     cur      out sys_refcursor);
  Procedure SP_ACPD_INS(nPess_id              in number,
                        sOperador_inclusao    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        nPado_id              in number,
                        nAcpd_id              out number);
  Procedure SP_ACPD_UPD(nAcpd_id              in number,
                        nPess_id              in number,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        nPado_id              in number);
  Procedure SP_ACPD_DEL(nAcpd_id in number);

  -- GERAC?O AUTOMATICA DE PARECER E LICENCAS
  Procedure SP_GER_AUTO_EMPREENDIMENTO(nAtan_id in number,
                                       cur      out sys_refcursor);
  Procedure SP_GER_SRC_COMBO_LOGRADOUROS(cur out sys_refcursor);
  Procedure SP_GER_SRC_COMBO_MUNICIPIOS(cur out sys_refcursor);
  Procedure SP_GER_SRC_COMBO_TECNICOS(cur out sys_refcursor);
  Procedure SP_GER_PRCR_GERACAO(nProc_id in number, cur out sys_refcursor);
  Procedure SP_GER_DOC_GERACAO(nPrcr_id in number, cur out sys_refcursor);
  Procedure SP_VALIDA_PARECER_ALT_DOC(nPrcr_id in Number,
                                      cur      out sys_refcursor);
  Procedure SP_VALIDA_PARECER_NUM_BLOQUETO(nNumBloqueto in number,
                                           nProcId      in Number,
                                           cur          out sys_refcursor);
  Procedure SP_UPD_DOC_GERACAO(nPrcr_id    in number,
                               vAlt_doc    in varchar2,
                               nTido_id    in number,
                               nNroBloq    in Number,
                               vObs        in varchar2,
                               vDescrAtiv  in varchar2,
                               vDataIni    in varchar2,
                               vDataFim    in varchar2,
                               vDataFimInf in varchar2);
  Procedure SP_UPD_CAD_EMPREENDIMENTO(nAtan_id    in number,
                                      vDataInicio in varchar2,
                                      vTiloID     in varchar2,
                                      vEndereco   in varchar2,
                                      vBairro     in varchar2,
                                      nMunID      in number,
                                      nCEP        in number,
                                      vFoneFixo   in varchar2,
                                      vCelular    in varchar2,
                                      vEMail      in varchar2,
                                      nMedPorte   in number,
                                      nCodTec     in number,
                                      vObs        in varchar2);

  Procedure SP_GER_COND_RESTR_RAMO(nPrcr_id in number,
                                   cur      out sys_refcursor);

  Procedure SP_GET_COND_RESTR_RAMO(nPrcr_id in number,
                                   nAxge_id in Number,
                                   cur      out sys_refcursor);
  Procedure SP_VALIDA_SEQ_ITEM(nAtan_id in number,
                               nClcr_id in number,
                               nSeq     in number,
                               nSeqSub  in number,
                               cur      out sys_refcursor);
  Procedure SP_VALIDA_SEQ_ITEM_EDICAO(nAxge_id in Number,
                                      nAtan_id in number,
                                      nClcr_id in number,
                                      nSeq     in number,
                                      nSeqSub  in number,
                                      cur      out sys_refcursor);

  -- fep_aux_gera_cond_restr
  Procedure SP_AXGE_GET(nAxge_id in number, cur out sys_refcursor);
  Procedure SP_AXGE_SRC(nAxge_id                 in number,
                        nPrcr_id                 in number,
                        nLcrs_id                 in number,
                        nCrpr_id                 in number,
                        nClcr_id                 in number,
                        nTipo_item               in number,
                        nNivel                   in number,
                        nSequencia               in number,
                        nSequencia_sub           in number,
                        sAbreviatura             in varchar,
                        sDescricao               in varchar,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        nSequencia_clcr          in number,
                        nTipo_cond               in number,
                        sDm_parecer              in varchar,
                        sDm_licenca              in varchar,
                        sDm_imprimir_seq         in varchar,
                        sEspecial_negrito        in varchar,
                        sIncluido                in varchar,
                        sDm_ignorar_opcional_aut in varchar,
                        nDm_tipo_cond_restr      in number,
                        sDm_opc_autom            in varchar,
                        nCors_id                 in number,
                        cur                      out sys_refcursor);
  Procedure SP_AXGE_INS(nPrcr_id                 in number,
                        nLcrs_id                 in number,
                        nCrpr_id                 in number,
                        nClcr_id                 in number,
                        nTipo_item               in number,
                        nNivel                   in number,
                        nSequencia               in number,
                        nSequencia_sub           in number,
                        sAbreviatura             in varchar,
                        sDescricao               in varchar,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        nSequencia_clcr          in number,
                        nTipo_cond               in number,
                        sDm_parecer              in varchar,
                        sDm_licenca              in varchar,
                        sDm_imprimir_seq         in varchar,
                        sEspecial_negrito        in varchar,
                        sIncluido                in varchar,
                        sDm_ignorar_opcional_aut in varchar,
                        nDm_tipo_cond_restr      in number,
                        sDm_opc_autom            in varchar,
                        nCors_id                 in number,
                        nAxge_id                 out number);
  Procedure SP_INS_COND_RESTR_RAMO(nAtan_id         in Number,
                                   nClcrId          in Number,
                                   nSeq             in Number,
                                   nTipoItem        in Number,
                                   nNivel           in Number,
                                   nSeqSub          in Number,
                                   vAbreviatura     in Varchar,
                                   vDescricao       in Varchar,
                                   vOperIncl        in varchar2,
                                   nTipoCond        in Number,
                                   vDmParecer       in varchar2,
                                   vDmLicenca       in varchar2,
                                   vDmImpSeq        in varchar2,
                                   vEspNeg          in varchar2,
                                   vIncl            in varchar2,
                                   vDmIgnoraOptAut  in varchar2,
                                   nDmTipoCondRestr in Number,
                                   vDmOpcAutom      in varchar2);
  Procedure SP_UPD_COND_RESTR_RAMO(nAtan_id         in Number,
                                   nAxge_id         in Number,
                                   nClcrId          in Number,
                                   nSeq             in Number,
                                   nTipoItem        in Number,
                                   nNivel           in Number,
                                   nSeqSub          in Number,
                                   vAbreviatura     in Varchar,
                                   vDescricao       in Varchar,
                                   vOperIncl        in varchar2,
                                   nTipoCond        in Number,
                                   vDmParecer       in varchar2,
                                   vDmLicenca       in varchar2,
                                   vDmImpSeq        in varchar2,
                                   vEspNeg          in varchar2,
                                   vIncl            in varchar2,
                                   vDmIgnoraOptAut  in varchar2,
                                   nDmTipoCondRestr in Number,
                                   vDmOpcAutom      in varchar2);
  Procedure SP_AXGE_UPD(nAxge_id                 in number,
                        nPrcr_id                 in number,
                        nLcrs_id                 in number,
                        nCrpr_id                 in number,
                        nClcr_id                 in number,
                        nTipo_item               in number,
                        nNivel                   in number,
                        nSequencia               in number,
                        nSequencia_sub           in number,
                        sAbreviatura             in varchar,
                        sDescricao               in varchar,
                        nSequencia_clcr          in number,
                        nTipo_cond               in number,
                        sDm_parecer              in varchar,
                        sDm_licenca              in varchar,
                        sDm_imprimir_seq         in varchar,
                        sEspecial_negrito        in varchar,
                        sIncluido                in varchar,
                        sDm_ignorar_opcional_aut in varchar,
                        nDm_tipo_cond_restr      in number,
                        sDm_opc_autom            in varchar,
                        nCors_id                 in number);
  Procedure SP_AXGE_DEL(nAxge_id in number);

  --- PROCESSO EMPREENDIMENTOS ---
  Procedure SP_GER_PROC_EMPREENDIMENTO(nAtan_id in number,
                                       cur      out sys_refcursor);

  -- fep_aux_cond_restr_informacoes --
  Procedure SP_AINF_GET(nAinf_id in number, cur out sys_refcursor);
  procedure SP_AINF_GET_INFO_PARECER(nPrcr_id in number,
                                     nAinf_id in Number,
                                     cur      out sys_refcursor);
  Procedure SP_AINF_RETORNA_SEQ(nPrcr_id in number, cur out sys_refcursor);
  Procedure SP_AINF_SRC(nAinf_id              in number,
                        nPrcr_id              in number,
                        nLinha                in number,
                        sTexto                in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_AINF_SRC_LISTA_POR_PRCRID(nPrcr_id in number,
                                         cur      out sys_refcursor);

  PROCEDURE SP_AINF_INS(nPrcr_id in number, vTexto in varchar);

  PROCEDURE SP_AINF_UPD(nPrcr_id IN NUMBER,
                        nAinf_id IN NUMBER,
                        nLinha   IN NUMBER,
                        vTexto   IN VARCHAR2);
  Procedure SP_AINF_UPD_INFO_PARECER(nPrcr_id in number,
                                     vTexto   in varchar2,
                                     nSeq     in number,
                                     nUserID  in number,
                                     nAinfId  in Number);
  Procedure SP_AINF_DEL(nAinf_id in number);
  Procedure SP_AINF_DEL_INFO_PARECER(nPrcr_id in number,
                                     nSeq     in number,
                                     nAinfId  in Number);
  PROCEDURE SP_AINF_DEL_INFO_PARECER_2(nPrcr_id IN NUMBER,
                                       nAinf_id IN NUMBER);
  -- fep_aux_cond_restr_par_lic --
  Procedure SP_ACRL_GET(nAcrl_id in number, cur out sys_refcursor);
  Procedure SP_ACRL_SRC(nAcrl_id              in number,
                        nCrpr_id              in number,
                        nPrcr_id              in number,
                        nLcrs_id              in number,
                        sCors_descricao       in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_ACRL_SRC_RESUL_GERACAO(nPrcr_id in number,
                                      cur      out sys_refcursor);
  Procedure SP_ACRL_SRC_RESUL_GER_DET(nPrcr_id in number,
                                      nAcrl_id in number,
                                      cur      out sys_refcursor);
  Procedure SP_ACRL_INS(nCrpr_id              in number,
                        nPrcr_id              in number,
                        nLcrs_id              in number,
                        sCors_descricao       in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nAcrl_id              out number);
  Procedure SP_ACRL_UPD(nAcrl_id              in number,
                        nCrpr_id              in number,
                        nPrcr_id              in number,
                        nLcrs_id              in number,
                        sCors_descricao       in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar);
  Procedure SP_ACRL_DEL(nAcrl_id in number);

  -- FEP_CLASSES_COND_RESTRICOES --
  Procedure SP_CLCR_GET(nClcr_id in number, cur out sys_refcursor);
  Procedure SP_CLCR_SRC(nClcr_id              in number,
                        sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSequencia            in number,
                        sTitulo_classe        in varchar,
                        cur                   out sys_refcursor);
  Procedure SP_CLCR_SRC_LISTAR_CLASSES(cur out sys_refcursor);
  Procedure SP_CLCR_INS(sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSequencia            in number,
                        sTitulo_classe        in varchar,
                        nClcr_id              out number);
  Procedure SP_CLCR_UPD(nClcr_id              in number,
                        sDescricao            in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSequencia            in number,
                        sTitulo_classe        in varchar);
  Procedure SP_CLCR_DEL(nClcr_id in number);

  ---- Validac?o e Exclus?o em FEP_AUX_GERA_COND_RESTR ----
  Procedure SP_VALIDA_SEQ_ITEM_DEL(nAxge_id  in Number,
                                   nTipoCond in Number,
                                   cur       out sys_refcursor);
  Procedure SP_DEL_COND_RESTR_RAMO(nAxge_id in Number, nTipoCond in Number);

  ---- FEP_AUX_GERA_COND_RETR --
  Procedure SP_AGCR_GET(nAxge_id in number, cur out sys_refcursor);
  Procedure SP_AGCR_SRC(nAxge_id                 in number,
                        nPrcr_id                 in number,
                        nLcrs_id                 in number,
                        nCrpr_id                 in number,
                        nClcr_id                 in number,
                        nTipo_item               in number,
                        nNivel                   in number,
                        nSequencia               in number,
                        nSequencia_sub           in number,
                        sAbreviatura             in varchar,
                        sDescricao               in varchar,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        nSequencia_clcr          in number,
                        nTipo_cond               in number,
                        sDm_parecer              in varchar,
                        sDm_licenca              in varchar,
                        sDm_imprimir_seq         in varchar,
                        sEspecial_negrito        in varchar,
                        sIncluido                in varchar,
                        sDm_ignorar_opcional_aut in varchar,
                        nDm_tipo_cond_restr      in number,
                        sDm_opc_autom            in varchar,
                        nCors_id                 in number,
                        cur                      out sys_refcursor);
  Procedure SP_AGCR_DEL(nAxge_id in number);
  Procedure SP_GERA_PARECER_TRABALHO(nAtan_id IN NUMBER,
                                     cur      out sys_refcursor);

  ---- Condic?es, Restric?es e Ramos de Atividades ----
  procedure SP_SETO_COND_RESTR(nPess_id in Number, cur out sys_refcursor);
  procedure SP_DESCR_RESTR_RAMO_ATIV(nRaat_ID in Number,
                                     cur      out sys_refcursor);
  procedure SP_UPD_DESCR_RESTR_RAMO_ATIV(nRaat_ID   in Number,
                                         vDescrRamo varchar2);
  procedure SP_RAMO_ATIV_SETOR(nSeto_id in Number,
                               nPess_id in Number,
                               cur      out sys_refcursor);
  procedure SP_SRC_COMBO_COND_RAMO_ATIV(nSeto_ID in Number,
                                        cur      out sys_refcursor);
  procedure SP_COND_RESTR_RAMO_ATIV(nSeto_id     in number,
                                    nCors_id     in number,
                                    nSequencia   in number,
                                    nTipoItem    in number,
                                    nSeqSub      in number,
                                    vAbreviatura in varchar2,
                                    vDescricao   in varchar2,
                                    vDataIniVal  in varchar2,
                                    vDataFimVal  in varchar2,
                                    vDmParecer   in varchar2,
                                    vDmLicenca   in varchar2,
                                    vRaat_ID     in varchar2,
                                    cur          out sys_refcursor);
  procedure SP_RESULTADO_ASSOC_ATIV(nRaat_ID in Number,
                                    cur      out sys_refcursor);
  procedure SP_CLASSE_RESTR_RAMO_SETOR(nLcrs_ID in Number,
                                       cur      out sys_refcursor);
  procedure SP_DETALHE_ASSOC_ATIV(nRaat_ID in Number,
                                  nClcr_ID in Number,
                                  cur      out sys_refcursor);

  ---- Condic?es, Restric?es e Setor ----
  procedure SP_SRC_COMBO_COND_CLASSE(cur out sys_refcursor);

  procedure SP_COND_RESTR_RAMO_SETOR(nSeto_ID     in number,
                                     nClcr_id     in number,
                                     nSequencia   in number,
                                     nTipo_item   in number,
                                     nSeqSub      in number,
                                     nNivel       in number,
                                     vAbreviatura in varchar2,
                                     vDescricao   in varchar2,
                                     cur          out sys_refcursor);

  --- FEP_CONDICOES_RESTRICOES ---
  Procedure SP_CORS_GET(nCors_id in number, cur out sys_refcursor);
  Procedure SP_CORS_SRC(nCors_id              in number,
                        nDm_reciclo           in number,
                        nDm_solo              in number,
                        nDm_tipo_pcr          in number,
                        sDm_sisauto           in varchar,
                        sDm_param1            in varchar,
                        nSeto_id              in number,
                        sDescricao            in varchar,
                        sData_inicio_validade in varchar,
                        sData_fim_validade    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        sAbreviatura          in varchar,
                        nSequencia            in number,
                        nTipo_item            in number,
                        nSequencia_sub        in number,
                        sEspecial_negrito     in varchar,
                        sDm_imprimir_seq      in varchar,
                        sDm_lp                in varchar,
                        sDm_li                in varchar,
                        sDm_lo                in varchar,
                        nNivel                in number,
                        nClcr_id              in number,
                        cur                   out sys_refcursor);
  Procedure SP_CORS_INS(nDm_reciclo           in number,
                        nDm_solo              in number,
                        nDm_tipo_pcr          in number,
                        sDm_sisauto           in varchar,
                        sDm_param1            in varchar,
                        nSeto_id              in number,
                        sDescricao            in varchar,
                        sData_inicio_validade in varchar,
                        sData_fim_validade    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        sAbreviatura          in varchar,
                        nSequencia            in number,
                        nTipo_item            in number,
                        nSequencia_sub        in number,
                        sEspecial_negrito     in varchar,
                        sDm_imprimir_seq      in varchar,
                        sDm_lp                in varchar,
                        sDm_li                in varchar,
                        sDm_lo                in varchar,
                        nNivel                in number,
                        nClcr_id              in number,
                        nCors_id              out number);
  Procedure SP_CORS_UPD(nCors_id              in number,
                        nDm_reciclo           in number,
                        nDm_solo              in number,
                        nDm_tipo_pcr          in number,
                        sDm_sisauto           in varchar,
                        sDm_param1            in varchar,
                        nSeto_id              in number,
                        sDescricao            in varchar,
                        sData_inicio_validade in varchar,
                        sData_fim_validade    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        sAbreviatura          in varchar,
                        nSequencia            in number,
                        nTipo_item            in number,
                        nSequencia_sub        in number,
                        sEspecial_negrito     in varchar,
                        sDm_imprimir_seq      in varchar,
                        sDm_lp                in varchar,
                        sDm_li                in varchar,
                        sDm_lo                in varchar,
                        nNivel                in number,
                        nClcr_id              in number);
  Procedure SP_CORS_DEL(nCors_id in number);
  procedure SP_LISTA_RESTR_RAMO_SETOR(nCors_id in Number,
                                      cur      out sys_refcursor);
  PROCEDURE SP_INS_RESTR_RAMO_SETOR(nClcr_id         IN NUMBER,
                                    nSequencia       IN NUMBER,
                                    nNivel           IN NUMBER,
                                    nSequencia_sub   IN NUMBER,
                                    dm_imprimir_seq  IN VARCHAR2,
                                    especial_negrito IN VARCHAR2,
                                    abreviatura      IN VARCHAR2,
                                    dm_lp            IN VARCHAR2,
                                    dm_li            IN VARCHAR2,
                                    dm_lo            IN VARCHAR2,
                                    nTipoItem        IN NUMBER,
                                    nSeto_id         IN NUMBER,
                                    vDtIniValidade   IN VARCHAR2,
                                    vDtFimValidade   IN VARCHAR2,
                                    vDmSISAUTO       IN VARCHAR2,
                                    vDescrCondRestr  IN VARCHAR2,
                                    nTipoPCR         IN NUMBER,
                                    vVazaoPCR        IN VARCHAR2,
                                    nDmReciclo       IN NUMBER,
                                    nDmSolo          IN NUMBER);
  -- ESTA SP TERA QUE SER REVISTA POIS AINDA CHAMA A ANTIGA SP DE VALIDAC?O: SP_VALIDA_CORS
  /*
  Procedure SP_UPD_RESTR_RAMO_SETOR(nCors_id         IN NUMBER,
                                    nClcr_id         IN NUMBER,
                                    nSequencia       IN NUMBER,
                                    nNivel           IN NUMBER,
                                    nSequencia_sub   IN NUMBER,
                                    dm_imprimir_seq  IN VARCHAR2,
                                    especial_negrito IN VARCHAR2,
                                    abreviatura      IN VARCHAR2,
                                    dm_lp            IN VARCHAR2,
                                    dm_li            IN VARCHAR2,
                                    dm_lo            IN VARCHAR2,
                                    nTipoItem        IN NUMBER,
                                    nSeto_id         IN NUMBER,
                                    vDtIniValidade   IN VARCHAR2,
                                    vDtFimValidade   IN VARCHAR2,
                                    vDmSISAUTO       IN VARCHAR2,
                                    vDescrCondRestr  IN VARCHAR2,
                                    nTipoPCR         IN NUMBER,
                                    vVazaoPCR        IN VARCHAR2,
                                    nDmReciclo       IN NUMBER,
                                    nDmSolo          IN NUMBER,
                                    cur              out sys_refcursor);
  */
  PROCEDURE SP_VALIDA_CORS(nClcr_id       IN NUMBER,
                           nSequencia     IN NUMBER,
                           nSequencia_sub IN NUMBER,
                           nNivel         IN NUMBER,
                           nSeto_id       IN NUMBER,
                           vVazaoPCR      IN VARCHAR2,
                           nDmReciclo     IN NUMBER,
                           nDmSolo        IN NUMBER,
                           nTipoItem      IN NUMBER,
                           cur            out sys_refcursor);
  -- Tipos Documentos --
  Procedure SP_DOCS_RESTR_RAMO_ATIV(nLcrs_ID in Number,
                                    cur      out sys_refcursor);
  procedure SP_SRC_COMBO_TIPO_DOC(cur out sys_refcursor);
  Procedure SP_INS_DOCS_RESTR_RAMO_ATIV(nLcrs_id    in number,
                                        nTido_id    in number,
                                        vDataInicio in varchar2,
                                        vDataFim    in varchar2,
                                        nDmTipo     in number);
  Procedure SP_UPD_DOCS_RESTR_RAMO_ATIV(nTido_id    in number,
                                        nTilc_id    in number,
                                        nLcrs_id    in number,
                                        vDataInicio in varchar2,
                                        vDataFim    in varchar2,
                                        nDmTipo     in number,
                                        cur         out SYS_REFCURSOR);
  Procedure SP_DEL_DOCS_RESTR_RAMO_ATIV(nTilc_id in number);
  procedure SP_DOCS_DETALHE_RAMO_ATIV(nLcrs_ID in Number,
                                      nTido_ID in Number,
                                      cur      out sys_refcursor);

  -- Chamada Bot?o Gerar Parecer --
  PROCEDURE SP_DISPARA_GERACAO_PARECER(nAtan_id IN NUMBER,
                                       nPess_id IN NUMBER,
                                       cur      out sys_refcursor);

  PROCEDURE SP_VERIFICA_PARECER_GERADO(nPrcr_id IN NUMBER,
                                       c2       out sys_refcursor);

  PROCEDURE SP_VALIDA_GERAR_PARECER(nAtan_id NUMBER, cur out sys_refcursor);

  FUNCTION FC_ATAN_LIC_INDEFERIMENTO(nAtan_id Number) RETURN VARCHAR2;

  PROCEDURE SP_VALIDA_RAMO_GERA_PARECER(nAtan_id                   Number,
                                        nRaat_id                   Number,
                                        nPrcr_id                   IN OUT NUMBER,
                                        nProc_id                   Number,
                                        nTido_id                   IN OUT NUMBER,
                                        vDataEntrada               VARCHAR2,
                                        nPess_id                   Number,
                                        vDmRevPend                 IN OUT VARCHAR2,
                                        nDmGrupoAut                IN OUT NUMBER,
                                        vSituacaoUltLicenca        IN OUT VARCHAR2,
                                        vDataVencUltLicenca        IN OUT VARCHAR2,
                                        nNroDiasVencer             NUMBER,
                                        vImpLocal                  IN OUT VARCHAR2,
                                        nTipoImpacto               IN OUT NUMBER,
                                        nUltimoDocuId              IN OUT NUMBER,
                                        nTidoIdLicenca             IN OUT NUMBER, --ver
                                        vUltLicencaRenovavel       IN OUT VARCHAR2,
                                        nGera                      IN NUMBER,
                                        nMuni_id                   IN NUMBER,
                                        nOrigem                    IN NUMBER,
                                        vDescrAtan                 IN VARCHAR2,
                                        vDmPorte                   IN OUT VARCHAR2,
                                        nValorPagar                IN OUT NUMBER,
                                        nValorPago                 IN OUT NUMBER,
                                        vHabBtnParecerPDF          IN OUT VARCHAR2,
                                        vHabBtnGerarLicenca        IN OUT VARCHAR2,
                                        vMesUserNotFound           IN OUT VARCHAR2,
                                        vMesEndNotFound            IN OUT VARCHAR2,
                                        vMesCEPNotFound            IN OUT VARCHAR2,
                                        vMesMunNotFound            IN OUT VARCHAR2,
                                        vMesEmpreendNotFound       IN OUT VARCHAR2,
                                        vMesCPFNotFound            IN OUT VARCHAR2,
                                        vMesSetoAssinaNotFound     IN OUT VARCHAR2,
                                        vMesSetoDuplicado          IN OUT VARCHAR2,
                                        vMesDataEntradaMaior       IN OUT VARCHAR2,
                                        vMesInfDocRevogado         IN OUT VARCHAR2,
                                        vMesSitSuperaProc          IN OUT VARCHAR2,
                                        vMesEmprLancAtivo          IN OUT VARCHAR2,
                                        vMesEmpreendMunHabilita    IN OUT VARCHAR2,
                                        vMesEmpreendConvenio       IN OUT VARCHAR2,
                                        vMesSolicPrefeitura        IN OUT VARCHAR2,
                                        vMesProblemaGeracao        IN OUT VARCHAR2,
                                        vMesMaisDeUmRegFound       IN OUT VARCHAR2,
                                        vMesDocGerDeclInvalido     IN OUT VARCHAR2,
                                        vMesDocGerIndefInvalido    IN OUT VARCHAR2,
                                        vMesErroAtualizaFepAux     IN OUT VARCHAR2,
                                        vMesErroInclusaoFepAux     IN OUT VARCHAR2,
                                        vMesInclCondRestrPar       IN OUT VARCHAR2,
                                        vMesErroBuscaTecnico       IN OUT VARCHAR2,
                                        vMesErroAutorizaTecnico    IN OUT VARCHAR2,
                                        vMesExclRestrLic           IN OUT VARCHAR2,
                                        vMesExclRestrGerAuto       IN OUT VARCHAR2,
                                        vMesExclMotImpLocal        IN OUT VARCHAR2,
                                        vMesExclParamPadroes       IN OUT VARCHAR2,
                                        vMesExclProcCondRestr      IN OUT VARCHAR2,
                                        vMesExclImprPostos         IN OUT VARCHAR2,
                                        vMesGeraParecer            IN OUT VARCHAR2,
                                        vMesCadPostoNotFound       IN OUT VARCHAR2,
                                        vMesDocARevogar            IN OUT VARCHAR2,
                                        vMesNivelSeqNotFound       IN OUT VARCHAR2,
                                        vMesDataFimVigMaiorIni     IN OUT VARCHAR2,
                                        vMesDataFimVigMaiorAtual   IN OUT VARCHAR2,
                                        vMesDiasInstNotFound       IN OUT VARCHAR2,
                                        vMesAreaPreservNotFound    IN OUT VARCHAR2,
                                        vMesDescrTableContNotFound IN OUT VARCHAR2,
                                        vMesTitleTableNotFound     IN OUT VARCHAR2,
                                        vMesTableContamNotFound    IN OUT VARCHAR2,
                                        vMesDistribNotFound        IN OUT VARCHAR2,
                                        vMesDistribAPAEFound       IN OUT VARCHAR2,
                                        vMesRespManutNotFound      IN OUT VARCHAR2,
                                        vMesEstoqueNotFound        IN OUT VARCHAR2,
                                        vMesTipoEquipNotFound      IN OUT VARCHAR2,
                                        vMesQtdeEquipNotFound      IN OUT VARCHAR2,
                                        vMesTanqueVencFound        IN OUT VARCHAR2,
                                        vMesCond657Found           IN OUT VARCHAR2,
                                        vMesCond657NotFound        IN OUT VARCHAR2,
                                        vMesErroInclRestrEsp       IN OUT VARCHAR2,
                                        vRevogacao                 IN OUT VARCHAR2,
                                        vMesInfoCombNotFound       IN OUT VARCHAR2,
                                        vMesErroDataVazamento      IN OUT VARCHAR2,
                                        vMesErroAtualPostoComb     IN OUT VARCHAR2,
                                        vMessClasse                IN OUT VARCHAR2,
                                        vMessInsert                IN OUT VARCHAR2,
                                        vMesItemEspOpcNivel0       IN OUT VARCHAR2,
                                        vMesItemCrprOpcNivel0      IN OUT VARCHAR2,
                                        vMesErroAtualPontuacao     IN OUT VARCHAR2,
                                        vMesErroInclPostos         IN OUT VARCHAR2,
                                        vMesErroUPDVencto          IN OUT VARCHAR2,
                                        vMesErroUPDIdCRPR          IN OUT VARCHAR2,
                                        vMesErroUPDEflu            IN OUT VARCHAR2,
                                        vMesErroDelCRPRInfo        IN OUT VARCHAR2,
                                        vMesErroMotivos            IN OUT VARCHAR2,
                                        vMesErroDelParLic          IN OUT VARCHAR2,
                                        vMesDelCRPR                IN OUT VARCHAR2,
                                        vMesErroInclParLic         IN OUT VARCHAR2,
                                        vMesErroInclAuxCRPR        IN OUT VARCHAR2,
                                        vMesErroUPDPostos          IN OUT VARCHAR2,
                                        vMesErroUPDAtiv            IN OUT VARCHAR2,
                                        vMesErroDocRevoga          IN OUT VARCHAR2,
                                        vMesBloqueto               IN OUT VARCHAR2,
                                        vMesErroDocEmitido         IN OUT VARCHAR2,
                                        vMesErroLanctoAtivo        IN OUT VARCHAR2,
                                        vMesErroCPFNOTFound        IN OUT VARCHAR2,
                                        vMesErroMaisPessoas        IN OUT VARCHAR2,
                                        vMesErroCNPJ               IN OUT VARCHAR2,
                                        vMesErroNoEstr             IN OUT VARCHAR2,
                                        vMesErroLicenca            IN OUT VARCHAR2,
                                        vMesEliminaRevoga          IN OUT VARCHAR2,
                                        vMesGeracaoPDF             IN OUT VARCHAR2,
                                        vMesErroCRPRNotFound       IN OUT VARCHAR2,
                                        vFilePDFParecer            IN OUT VARCHAR2);

  PROCEDURE SP_VALIDA_RAMOS(nAtan_id                IN NUMBER,
                            nProc_id                IN NUMBER,
                            nTido_id                IN NUMBER,
                            vDataEntrada            IN DATE,
                            nPess_id                IN NUMBER,
                            nDmGrupoAut             IN NUMBER,
                            vDmRevPend              IN VARCHAR2,
                            vSituacaoUltLicenca     IN VARCHAR2,
                            nNroDiasVencer          IN VARCHAR2,
                            nPrcr_id                IN NUMBER,
                            vImpLocal               IN OUT VARCHAR2,
                            nTipoImpacto            IN OUT NUMBER,
                            vUsuario                IN VARCHAR2,
                            nPess_Tecnico           IN OUT NUMBER,
                            vMesUserNotFound        IN OUT VARCHAR2,
                            vMesEndNotFound         IN OUT VARCHAR2,
                            vMesCEPNotFound         IN OUT VARCHAR2,
                            vMesMunNotFound         IN OUT VARCHAR2,
                            vMesEmpreendNotFound    IN OUT VARCHAR2,
                            vMesCPFNotFound         IN OUT VARCHAR2,
                            vMesSetoAssinaNotFound  IN OUT VARCHAR2,
                            vMesSetoDuplicado       IN OUT VARCHAR2,
                            vMesDataEntradaMaior    IN OUT VARCHAR2,
                            vMesInfDocRevogado      IN OUT VARCHAR2,
                            vMesSitSuperaProc       IN OUT VARCHAR2,
                            vMesEmprLancAtivo       IN OUT VARCHAR2,
                            vMesEmpreendMunHabilita IN OUT VARCHAR2,
                            vMesEmpreendConvenio    IN OUT VARCHAR2,
                            vMesSolicPrefeitura     IN OUT VARCHAR2,
                            vErro                   IN OUT VARCHAR2);

  PROCEDURE SP_VALIDA_IMPACTO_LOCAL(nAtan_id                IN NUMBER,
                                    nProc_id                IN NUMBER,
                                    vImpLocal               IN OUT VARCHAR2,
                                    nTipoImpacto            IN OUT NUMBER,
                                    vMesEmpreendMunHabilita IN OUT VARCHAR2,
                                    vMesEmpreendConvenio    IN OUT VARCHAR2,
                                    vMesSolicPrefeitura     IN OUT VARCHAR2);

  PROCEDURE SP_VALIDA_CONVENIO(nAtan_id             IN NUMBER,
                               nTido_id             IN NUMBER,
                               nProc_id             IN NUMBER,
                               vImpLocal            IN OUT VARCHAR2,
                               nTipoImpacto         IN OUT NUMBER,
                               vMesEmpreendConvenio IN OUT VARCHAR2,
                               vMesSolicPrefeitura  IN OUT VARCHAR2);

  PROCEDURE SP_INSERT_UPDATE_PRCR(nAtan_id                IN NUMBER,
                                  nRaat_id                IN NUMBER,
                                  nPrcr_id                IN OUT NUMBER,
                                  nProc_id                IN NUMBER,
                                  nTidoParecer            IN OUT NUMBER,
                                  nOrigem                 IN NUMBER,
                                  nUltimoDocuId           IN OUT NUMBER,
                                  vSituacaoUltLicenca     IN OUT VARCHAR2,
                                  vDmRevPend              IN OUT VARCHAR2,
                                  vImpLocal               IN OUT VARCHAR2,
                                  nTidoIdLicenca          IN OUT NUMBER,
                                  vUltLicencaRenovavel    IN OUT VARCHAR2,
                                  nDmGrupoAut             IN OUT NUMBER,
                                  vHabBtnParecerPDF       IN OUT VARCHAR2,
                                  vHabBtnGerarLicenca     IN OUT VARCHAR2,
                                  vMesProblemaGeracao     IN OUT VARCHAR2,
                                  vMesMaisDeUmRegFound    IN OUT VARCHAR2,
                                  vMesDocGerDeclInvalido  IN OUT VARCHAR2,
                                  vMesDocGerIndefInvalido IN OUT VARCHAR2,
                                  vMesErroAtualizaFepAux  IN OUT VARCHAR2,
                                  vMesErroInclusaoFepAux  IN OUT VARCHAR2,
                                  vMesErroBuscaTecnico    IN OUT VARCHAR2,
                                  vMesErroAutorizaTecnico IN OUT VARCHAR2,
                                  vErro                   IN OUT VARCHAR2);

  FUNCTION FC_BUSCA_TECNICO(nRaat_id IN NUMBER, nDmGrupoAut IN NUMBER)
    RETURN NUMBER;

  FUNCTION FC_BUSCA_SETOR(nRaat_id IN NUMBER, nDmGrupoAut IN NUMBER)
    RETURN NUMBER;

  FUNCTION FC_QT_PARAMETROS(nOrigem NUMBER, nRaatID NUMBER) RETURN NUMBER;

  FUNCTION FC_QT_PADRAO(nRaatID NUMBER) RETURN NUMBER;

  FUNCTION FC_QT_OPCIONAL(nRaatID NUMBER) RETURN NUMBER;

  PROCEDURE SP_EXCLUI_REGERACAO(nPrcr_id              IN NUMBER,
                                nDmGrupoAut           IN NUMBER,
                                nRaat_id              IN NUMBER,
                                vMesExclRestrLic      IN OUT VARCHAR2,
                                vMesExclRestrGerAuto  IN OUT VARCHAR2,
                                vMesExclMotImpLocal   IN OUT VARCHAR2,
                                vMesExclParamPadroes  IN OUT VARCHAR2,
                                vMesExclProcCondRestr IN OUT VARCHAR2,
                                vMesExclImprPostos    IN OUT VARCHAR2,
                                vMesErroDelCRPRInfo   IN OUT VARCHAR2,
                                vErro                 IN OUT VARCHAR2);

  PROCEDURE SP_EXCLUI_AINF(nPrcr_id            IN NUMBER,
                           vMesErroDelCRPRInfo IN OUT VARCHAR2);

  PROCEDURE SP_GERAR_OUTROS_DOCS(nAtan_id            IN NUMBER,
                                 nMuni_id            IN NUMBER,
                                 nProc_id            IN NUMBER,
                                 nPrcr_id            IN NUMBER,
                                 nRaat_id            IN NUMBER,
                                 nDmGrupoAut         IN NUMBER,
                                 nTido_id            IN NUMBER,
                                 dDataAtual          IN DATE,
                                 nOrigem             IN NUMBER,
                                 nIncluidos          IN OUT NUMBER,
                                 nTipoImpacto        IN OUT NUMBER,
                                 vImpLocal           IN OUT VARCHAR2,
                                 vDmPorte            IN OUT VARCHAR2,
                                 nValorPagar         IN OUT NUMBER,
                                 nValorPago          IN OUT NUMBER,
                                 vMesErroDocRevoga   IN OUT VARCHAR2,
                                 vMesBloqueto        IN OUT VARCHAR2,
                                 vMesErroDocEmitido  IN OUT VARCHAR2,
                                 vMesErroLanctoAtivo IN OUT VARCHAR2,
                                 vMesErroCPFNOTFound IN OUT VARCHAR2,
                                 vMesErroMaisPessoas IN OUT VARCHAR2,
                                 vMesErroCNPJ        IN OUT VARCHAR2,
                                 vMesErroNoEstr      IN OUT VARCHAR2,
                                 vMesErroLicenca     IN OUT VARCHAR2,
                                 vMesGeraParecer     IN OUT NUMBER,
                                 vMesErroUPDVencto   IN OUT VARCHAR2,
                                 vMesErroUPDIdCRPR   IN OUT VARCHAR2,
                                 vMesErroUPDEflu     IN OUT VARCHAR2,
                                 vMesErroDelCRPRInfo IN OUT VARCHAR2,
                                 vMesErroMotivos     IN OUT VARCHAR2,
                                 vMesErroDelParLic   IN OUT VARCHAR2,
                                 vMesDelCRPR         IN OUT VARCHAR2,
                                 vMesErroInclParLic  IN OUT VARCHAR2,
                                 vMesErroInclAuxCRPR IN OUT VARCHAR2,
                                 vMesErroUPDAtiv     IN OUT VARCHAR2,
                                 vDescrAtan          IN VARCHAR2,
                                 vErro               IN OUT VARCHAR2);

  PROCEDURE SP_VALIDA_PAGTO(nAtan_id            IN NUMBER,
                            nRaat_id            NUMBER,
                            nProc_id            IN NUMBER,
                            nPrcr_id            IN NUMBER,
                            nOrigem             IN NUMBER,
                            vDmPorte            IN OUT VARCHAR,
                            nValorPagar         IN OUT NUMBER,
                            nValorPago          IN OUT NUMBER,
                            nTido_id            IN NUMBER,
                            vImpLocal           IN OUT VARCHAR2,
                            vMesErroDocRevoga   IN OUT VARCHAR,
                            vMesBloqueto        IN OUT VARCHAR,
                            vMesErroDocEmitido  IN OUT VARCHAR,
                            vMesErroLanctoAtivo IN OUT VARCHAR,
                            vMesErroCPFNOTFound IN OUT VARCHAR,
                            vMesErroMaisPessoas IN OUT VARCHAR,
                            vMesErroCNPJ        IN OUT VARCHAR,
                            vMesErroNoEstr      IN OUT VARCHAR,
                            vMesErroLicenca     IN OUT VARCHAR,
                            vErro               IN OUT VARCHAR);

  PROCEDURE SP_NOME_ATIVIDADE(nAtan_id        IN NUMBER,
                              nPrcr_id        IN NUMBER,
                              vDescrAtan      IN VARCHAR2,
                              vMesErroUPDAtiv IN OUT VARCHAR2,
                              vErro           IN OUT VARCHAR2);

  PROCEDURE SP_ATUALIZA_PRCR_DADOS(nProc_id         IN NUMBER,
                                   nRaat_id         IN NUMBER,
                                   nDmGrupoAut      IN NUMBER,
                                   nTipo            IN NUMBER,
                                   nPrcr_id         IN NUMBER,
                                   nDocu_id         IN NUMBER,
                                   vDataIniVigencia IN DATE,
                                   vDataFimVigencia IN DATE,
                                   nDocuIdParecer   IN NUMBER,
                                   nDocuIdLicenca   IN NUMBER,
                                   --nPoll_id         IN NUMBER,
                                   vDataFimInf       IN VARCHAR2,
                                   vMesErroUPDVencto IN OUT VARCHAR2,
                                   vMesErroUPDIdCRPR IN OUT VARCHAR2,
                                   vErro             IN OUT VARCHAR2);

  FUNCTION FC_SETOR_ASSINATURA(nProc_id IN NUMBER, nDocu_id in number)
    RETURN NUMBER;

  PROCEDURE SP_INCLUI_INFORMACOES_IMPLOCAL(nPrcr_id            IN NUMBER,
                                           nTidoIdParecer      IN NUMBER,
                                           nOrigem             IN NUMBER,
                                           nDmGrupoAut         IN NUMBER,
                                           vMesErroDelCRPRInfo IN OUT VARCHAR2,
                                           vMesErroInclAuxCRPR IN OUT VARCHAR2,
                                           vErro               IN OUT VARCHAR2);

  PROCEDURE SP_MOTIVO_IMPLOCAL(nAtan_id        IN NUMBER,
                               nMuni_id        IN NUMBER,
                               nTipoImpacto    IN NUMBER,
                               nDmGrupoAut     IN NUMBER,
                               nPrcr_id        IN NUMBER,
                               nTidoIdParecer  IN NUMBER,
                               nOrigem         IN NUMBER,
                               vMesDelImplocal IN OUT VARCHAR2,
                               vErro           IN OUT VARCHAR2);

  PROCEDURE SP_VALIDA_MOTIVOS(nPrcr_id        IN NUMBER,
                              nTido_id        IN NUMBER,
                              nContador       IN OUT NUMBER,
                              vMesErroMotivos IN OUT VARCHAR2,
                              vErro           IN OUT VARCHAR2);

  PROCEDURE SP_INCLUI_CONDICOES(nPrcr_id           IN NUMBER,
                                nTido_id           IN NUMBER,
                                vMesErroDelParLic  IN OUT VARCHAR2,
                                vMesDelCRPR        IN OUT VARCHAR2,
                                vMesErroInclParLic IN OUT VARCHAR2,
                                vErro              IN OUT VARCHAR2);

  PROCEDURE SP_VALIDA_GERACAO_SEAMB(nAtan_id                   IN NUMBER,
                                    nPrcr_id                   IN NUMBER,
                                    nRaat_id                   IN NUMBER,
                                    nProc_id                   IN NUMBER,
                                    nOrigem                    IN NUMBER,
                                    vDmPorte                   IN OUT VARCHAR2,
                                    nValorPagar                IN OUT NUMBER,
                                    nValorPago                 IN OUT NUMBER,
                                    nTido_id                   IN NUMBER,
                                    vImpLocal                  IN OUT VARCHAR2,
                                    vMesErroDocRevoga          IN OUT VARCHAR2,
                                    vMesBloqueto               IN OUT VARCHAR2,
                                    vMesErroDocEmitido         IN OUT VARCHAR2,
                                    vMesErroLanctoAtivo        IN OUT VARCHAR2,
                                    vMesErroCPFNOTFound        IN OUT VARCHAR2,
                                    vMesErroMaisPessoas        IN OUT VARCHAR2,
                                    vMesErroCNPJ               IN OUT VARCHAR2,
                                    vMesErroNoEstr             IN OUT VARCHAR2,
                                    vMesErroLicenca            IN OUT VARCHAR2,
                                    vMesCadPostoNotFound       IN OUT VARCHAR2,
                                    vMesDocARevogar            IN OUT VARCHAR2,
                                    vMesNivelSeqNotFound       IN OUT VARCHAR2,
                                    vMesDataFimVigMaiorIni     IN OUT VARCHAR2,
                                    vMesDataFimVigMaiorAtual   IN OUT VARCHAR2,
                                    vMesDiasInstNotFound       IN OUT VARCHAR2,
                                    vMesAreaPreservNotFound    IN OUT VARCHAR2,
                                    vMesDescrTableContNotFound IN OUT VARCHAR2,
                                    vMesTitleTableNotFound     IN OUT VARCHAR2,
                                    vMesTableContamNotFound    IN OUT VARCHAR2,
                                    vMesDistribNotFound        IN OUT VARCHAR2,
                                    vMesDistribAPAEFound       IN OUT VARCHAR2,
                                    vMesRespManutNotFound      IN OUT VARCHAR2,
                                    vMesEstoqueNotFound        IN OUT VARCHAR2,
                                    vMesTipoEquipNotFound      IN OUT VARCHAR2,
                                    vMesQtdeEquipNotFound      IN OUT VARCHAR2,
                                    vMesTanqueVencFound        IN OUT VARCHAR2,
                                    vMesCond657Found           IN OUT VARCHAR2,
                                    vMesCond657NotFound        IN OUT VARCHAR2,
                                    vMesEliminaRevoga          IN OUT VARCHAR2,
                                    vErro                      IN OUT VARCHAR2);

  PROCEDURE SP_VER_PRCR_REVOGADO(nPrcr_id          IN NUMBER,
                                 vMesEliminaRevoga IN OUT VARCHAR2);

  PROCEDURE SP_INSERT_CORS_ID(nCors_id             IN NUMBER,
                              nPrcr_id             IN NUMBER,
                              nRaat_id             IN NUMBER,
                              vMesErroInclRestrEsp IN OUT VARCHAR2,
                              vErro                IN OUT VARCHAR2);

  PROCEDURE SP_INCLUI_OPCIONAIS_SEAMB(nAtan_id               IN NUMBER,
                                      nPrcr_id               IN NUMBER,
                                      nRaat_id               IN NUMBER,
                                      vMesErroInclRestrEsp   IN OUT VARCHAR2,
                                      vMesInfoCombNotFound   IN OUT VARCHAR2,
                                      vMesErroDelCRPRInfo    IN OUT VARCHAR2,
                                      vMesErroInclAuxCRPR    IN OUT VARCHAR2,
                                      vMesErroDataVazamento  IN OUT VARCHAR2,
                                      vMesErroAtualPostoComb IN OUT VARCHAR2,
                                      vErro                  IN OUT VARCHAR2);

  PROCEDURE SP_INCLUI_INFORMACOES_SEAMB(nAtan_id               IN NUMBER,
                                        nPrcr_id               IN NUMBER,
                                        vMesErroDelCRPRInfo    IN OUT VARCHAR2,
                                        vMesErroInclAuxCRPR    IN OUT VARCHAR2,
                                        vMesErroDataVazamento  IN OUT VARCHAR2,
                                        vMesErroAtualPostoComb IN OUT VARCHAR2,
                                        vErro                  IN OUT VARCHAR2);

  PROCEDURE SP_INCLUI_INFORMACOES_AINF(nPrcr_id            IN NUMBER,
                                       vUsuario            IN VARCHAR2,
                                       vDataAtual          IN DATE,
                                       nLinha              IN NUMBER,
                                       vTexto              IN VARCHAR2,
                                       vMesErroInclAuxCRPR IN OUT VARCHAR2,
                                       vErro               IN OUT VARCHAR2);

  PROCEDURE SP_VERIFICA_PLACAS(nPrcr_id             IN NUMBER,
                               nRaat_id             IN NUMBER,
                               vDmPorte             IN OUT VARCHAR2,
                               vMesErroInclRestrEsp IN OUT VARCHAR2,
                               vErro                IN OUT VARCHAR2);

  PROCEDURE SP_VIGENCIA_DOCUMENTO(nProc_id                 In NUMBER,
                                  nPrcr_id                 IN NUMBER,
                                  nRaat_id                 IN NUMBER,
                                  nDocu_id                 IN NUMBER,
                                  nDmGrupoAut              IN NUMBER,
                                  dDtIniVigNovo            IN VARCHAR2,
                                  dDtFimVigNovo            IN VARCHAR2,
                                  nDocuIdParecer           IN NUMBER,
                                  nDocuIdLicenca           IN NUMBER,
                                  vDtFimInf                IN VARCHAR,
                                  vErro                    IN OUT VARCHAR2,
                                  vMesErroUPDVencto        IN OUT VARCHAR2,
                                  vMesErroUPDIdCRPR        IN OUT VARCHAR2,
                                  vMesErroUPDEflu          IN OUT VARCHAR2,
                                  vDataVencUltLic          IN DATE,
                                  vMesDataFimVigMaiorIni   IN OUT VARCHAR2,
                                  vMesDataFimVigMaiorAtual IN OUT VARCHAR2);

  FUNCTION FC_PERIODO_VIGENCIA(nPrcr_id IN NUMBER) RETURN VARCHAR2;

  PROCEDURE SP_DATAS_SEAMB_642(nAtan_id               IN NUMBER,
                               vDataProjeto           IN OUT DATE,
                               vDataImplantacao       IN OUT DATE,
                               vOrigem                IN NUMBER,
                               vMesErroDataVazamento  IN OUT VARCHAR2,
                               vMesErroAtualPostoComb IN OUT VARCHAR2,
                               vErro                  IN OUT VARCHAR2);

  PROCEDURE SP_INCLUI_SUB_AXGE(nAtan_id              IN NUMBER,
                               nPrcr_id              IN NUMBER,
                               nIncluidos            IN OUT NUMBER,
                               vMesItemEspOpcNivel0  IN OUT VARCHAR2,
                               vMesItemCrprOpcNivel0 IN OUT VARCHAR2);

  PROCEDURE SP_PONTUACAO_COND_RESTR(nPrcr_id               IN NUMBER,
                                    vMesErroAtualPontuacao IN OUT VARCHAR2);

  PROCEDURE SP_GERAR_CONTAM_POSTOS(nPrcr_id           IN NUMBER,
                                   vMesErroInclPostos IN OUT VARCHAR2,
                                   vMesErroUPDPostos  IN OUT VARCHAR2,
                                   vErro              IN OUT VARCHAR2);

  PROCEDURE SP_INCLUI_VAL_PARAM(nPrcr_id          IN NUMBER,
                                nIndice           IN NUMBER,
                                vParametro        IN VARCHAR2,
                                vMesErroUPDPostos IN OUT VARCHAR2);

  PROCEDURE SP_INCLUI_TIT_PARAM(nPrcr_id           IN NUMBER,
                                nIndice            IN NUMBER,
                                vParametro         IN VARCHAR2,
                                vMesErroInclPostos IN OUT VARCHAR2);

  -- Inicio Requerente MP
  Procedure SP_REQUERENTE_MP_GET(nPess_id in number, cur out sys_refcursor);

  Procedure SP_ASSUNTO_GET(nASPR_ID in number, cur out sys_refcursor);

  Procedure SP_TPDOC_GET(TIDO_ID in number, cur out sys_refcursor);

  Procedure SP_SETOR_GET(SETO_ID in number, cur out sys_refcursor);

  Procedure SP_MUNICIPIO_GET(cur out sys_refcursor);

  Procedure SP_DADOSPESS_GET(nPESS_ID in number, cur out sys_refcursor);

  Procedure SP_PESSIDBYRAZAOSOCIAL_GET(RAZAOSOCIAL in VARCHAR2,
                                       cur         out sys_refcursor);

  Procedure SP_ASPRIDBYASSUNTODESC_GET(ASSUNTODESC in VARCHAR2,
                                       cur         out sys_refcursor);

  Procedure SP_TIDOIDBYTPDOCDESC_GET(TPDOCDESC in VARCHAR2,
                                     cur       out sys_refcursor);

  Procedure SP_SETOIDBYDESCRICAO_GET(DESCRICAO in VARCHAR2,
                                     cur       out sys_refcursor);

  Procedure SP_PROCESSOBYID_GET(nid number, cur out sys_refcursor);

  FUNCTION FC_VALIDA_GERACAO_DOC(nSose_id IN number) RETURN VARCHAR2;

  procedure SP_USUARIOS_MTR_INS(sRazao_social          in varchar2,
                                sFisica_juridica       in varchar2,
                                nCPF                   in NUMBER,
                                nCNPJ                  in NUMBER,
                                sTilo_id               in varchar2,
                                sEndereco              in varchar2,
                                sBairro                in varchar2,
                                nCEP                   in NUMBER,
                                nMuni_id               in NUMBER,
                                sTelefone              in varchar2,
                                sFax                   in varchar2,
                                sEmail                 in varchar2,
                                sTilo_id_corresp       in varchar2,
                                sEndereco_corresp      in varchar2,
                                sBairro_corresp        in varchar2,
                                nCEP_corresp           in NUMBER,
                                nMuni_id_corresp       in NUMBER,
                                sNome_contato          in varchar2,
                                nCarg_id               in NUMBER,
                                sTelefone_fixo_contato in varchar2,
                                sFax_contato           in varchar2,
                                sEemail_contato        in varchar2,
                                sOperador              in varchar2,
                                nPess_id               out NUMBER);

  procedure SP_USUARIOS_MTR_UPD(nPess_id               in NUMBER,
                                sRazao_social          in varchar2,
                                sFisica_juridica       in varchar2,
                                nCPF                   in NUMBER,
                                nCNPJ                  in NUMBER,
                                sTilo_id               in varchar2,
                                sEndereco              in varchar2,
                                sBairro                in varchar2,
                                nCEP                   in NUMBER,
                                nMuni_id               in NUMBER,
                                sTelefone              in varchar2,
                                sFax                   in varchar2,
                                sEmail                 in varchar2,
                                sTilo_id_corresp       in varchar2,
                                sEndereco_corresp      in varchar2,
                                sBairro_corresp        in varchar2,
                                nCEP_corresp           in NUMBER,
                                nMuni_id_corresp       in NUMBER,
                                sNome_contato          in varchar2,
                                nCarg_id               in NUMBER,
                                sTelefone_fixo_contato in varchar2,
                                sFax_contato           in varchar2,
                                sEemail_contato        in varchar2,
                                sOperador              in varchar2);

  Procedure SP_MUNI_LISTA(cur out sys_refcursor);

  Procedure SP_CARG_LISTA(cur out sys_refcursor);

  Procedure SP_ATAN_GET_MTR(nPess_id in number,
                            nAtan_id in number,
                            cur      out sys_refcursor);

  Procedure SP_RAAT_MTR(vDescr in varchar2, cur out sys_refcursor);

  PROCEDURE SP_ATAN_INS_MTR(nPess_id   IN NUMBER,
                            sDescricao IN VARCHAR,
                            nRaat_id   IN NUMBER,
                            sTilo_id   IN VARCHAR,
                            sEndereco  IN VARCHAR,
                            sBairro    IN VARCHAR,
                            nMuni_id   IN NUMBER,
                            nCep       IN NUMBER,
                            sOperador  IN VARCHAR,
                            nAtan_id   OUT NUMBER);

  procedure SP_LOAA_INS_MTR(nAtan        in number,
                            nLat         in varchar2,
                            nLong        in varchar2,
                            vrespLeitura in varchar2,
                            vRegConselho in varchar2,
                            voperador    in varchar2);

  Procedure SP_TILO_LISTA_MTR(cur out sys_refcursor);

  PROCEDURE SP_ATAN_UPD_MTR(nPess_id   IN NUMBER,
                            nAtan_id   IN NUMBER,
                            sDescricao IN VARCHAR,
                            sTilo_id   IN VARCHAR,
                            sEndereco  IN VARCHAR,
                            sBairro    IN VARCHAR,
                            nMuni_id   IN NUMBER,
                            nCep       IN NUMBER,
                            sOperador  IN VARCHAR);
  Function FC_VALIDA_PLACA_OLUC(nPess_id in number, sPlaca in varchar2)
    return varchar2;

  FUNCTION FC_busca_rt_data(nAtan_id Number, sData in date) RETURN VARCHAR2;

  Procedure SP_ATAN_LISTA(nPess_id in number, cur out sys_refcursor);

  Procedure SP_SOLIC_ENCERRADAS_SRC(nAtan_id in number,
                                    cur      out sys_refcursor);

  Procedure SP_DOCS_ENVIADOS_SRC(nSose_id in number, cur out sys_refcursor);
  --
  Procedure SP_FROTA_SRC(sPlaca in varchar2,
                         P_SOSE in number,
                         cur    out sys_refcursor);
  --
  Procedure SP_FROTA_RESUMO_SRC(P_SOSE number, cur out sys_refcursor);
  --
  procedure SP_LICENCA_REVOG_SRC(nAtan_id in number, cur out sys_refcursor);
  --
  Procedure SP_DSSE_REVOG_SRC(P_SOSE number, cur out sys_refcursor);
  --
  procedure SP_SMTR_GET(nAtan_id in number, cur out sys_refcursor);
  --
  procedure SP_HICB_SRC(nAtan_id in number, cur out sys_refcursor);
  --
  PROCEDURE SP_SMTR_INS(nAtan_id       IN NUMBER,
                        nNumeracao_mtr IN NUMBER,
                        sOperador      IN VARCHAR,
                        nSmtr_id       OUT NUMBER);
  --
  Procedure SP_FMTR_GET(nAtan_id in number, cur out sys_refcursor);
  --
  PROCEDURE SP_FMTR_INS(nAtan_id                     IN NUMBER,
                        nAtan_id_gera                IN NUMBER,
                        sNome_responsavel            IN VARCHAR,
                        sFone_responsavel            IN VARCHAR,
                        sEmail_responsavel           IN VARCHAR,
                        sNome_unidade_destinacao     IN VARCHAR,
                        sCpf_cnpj_unidade_destinacao IN VARCHAR,
                        sEndereco_unidade_destinacao IN VARCHAR,
                        sCep_unidade_destinacao      IN VARCHAR,
                        nMuni_id_destino             IN NUMBER,
                        sNome_transportadora         IN VARCHAR,
                        sCnpj_transportadora         IN VARCHAR,
                        sEndereco_transportadora     IN VARCHAR,
                        sCep_transportadora          IN VARCHAR,
                        sBairro_transportadora       IN VARCHAR,
                        nMuni_transporta_id          IN NUMBER,
                        nNumero_talonario            IN NUMBER,
                        nSmtr_id                     IN NUMBER,
                        sOperador                    IN VARCHAR,
                        nFmtr_id                     OUT NUMBER);
  --
  Procedure SP_TRANSPORTADORAS_LISTA(vRazao_social in varchar,
                                     cur           out sys_refcursor);
  --
  PROCEDURE SP_RMTR_INS(nFmtr_id          IN NUMBER,
                        sFonte_origem     IN VARCHAR,
                        nDm_estado_fisico IN NUMBER,
                        nClasse_abnt      IN NUMBER,
                        nQuantidade_total in number,
                        nDm_codigo_onu    IN NUMBER,
                        sTire_id          IN NUMBER,
                        sOperador         IN VARCHAR,
                        nRmtr_id          OUT NUMBER);
  --
  PROCEDURE SP_RMTR_DEL_RESIDUOS(nFmtr_id IN NUMBER);
  --
  Procedure SP_GERADOR_GET(nAtan_id in number, cur out sys_refcursor);
  --
  Function FC_TEM_FROTA(nAtan_id in number) return varchar2;
  --
  FUNCTION FC_VALIDA_CADASTRO_VEICULO(nAtanId IN number) RETURN number;
  --
  FUNCTION FC_VAL_CAD_VEIC_INICIAL(nAtanId IN number) RETURN number;
  --
  FUNCTION FC_ATAN_TEM_SOLIC(nAtan_id IN NUMBER) RETURN NUMBER;
  --

  procedure SP_RMTR_SRC(nFmtr_id in number, cur out sys_refcursor);
  --
  procedure SP_TIRE_LISTA(p_descricao in varchar2, cur out sys_refcursor);
  --
  procedure SP_ESTADO_MATERIA_SRC(cur out sys_refcursor);
  --
  procedure SP_CLASS_ABNT_SRC(cur out sys_refcursor);
  --
  procedure SP_COD_ONU_SRC(cur out sys_refcursor);
  --
  PROCEDURE SP_FMTR_UPD(nFmtr_id                      in NUMBER,
                        nAtan_id                      IN NUMBER,
                        sNome_responsavel             IN VARCHAR,
                        sFone_responsavel             IN VARCHAR,
                        sEmail_responsavel            IN VARCHAR,
                        sNome_unidade_destinacao      IN VARCHAR,
                        sCpf_cnpj_unidade_destinacao  IN VARCHAR,
                        sEndereco_unidade_destinacao  IN VARCHAR,
                        sCep_unidade_destinacao       IN VARCHAR,
                        sMunicipio_unidade_destinacao IN VARCHAR,
                        nMuni_id_destino              IN NUMBER,
                        sNome_transportadora          IN VARCHAR,
                        sCnpj_transportadora          IN VARCHAR,
                        sEndereco_transportadora      IN VARCHAR,
                        sCep_transportadora           IN VARCHAR,
                        sBairro_transportadora        IN VARCHAR,
                        nMuni_transporta_id           IN NUMBER,
                        sOperador                     IN VARCHAR);
  --
  PROCEDURE SP_RMTR_UPD(nRmtr_id          IN NUMBER,
                        nFmtr_id          IN NUMBER,
                        sFonte_origem     IN VARCHAR,
                        nDm_estado_fisico IN NUMBER,
                        nClasse_abnt      IN NUMBER,
                        nQuantidade_total in number,
                        nDm_codigo_onu    IN NUMBER,
                        sTire_id          IN NUMBER,
                        sOperador         IN VARCHAR);

  PROCEDURE SP_RMTR_DEL(nRmtr_id IN NUMBER, nFmtr_id IN NUMBER);
  PROCEDURE SP_FMTR_REL_GERADOR_GET(nFmtr_id in number,
                                    cur      out sys_refcursor);

  procedure SP_FMTR_REL_TRANSPORTADOR_GET(nFmtr_id in number,
                                          cur      out sys_refcursor);

  procedure SP_FMTR_REL_UN_DESTINO_GET(nFmtr_id in number,
                                       cur      out sys_refcursor);

  PROCEDURE PR_GERA_BOLETO_MTR(P_ATAN_ID IN NUMBER, Voperador IN VARCHAR2);

  procedure SP_SOSE_BLOQUETO_SRC(nSose_id in number, cur out sys_refcursor);

  Procedure SP_HIST_FROTA_SRC(sPlaca   varchar2,
                              nSose_id number,
                              cur      out sys_refcursor);

  FUNCTION FC_SOSE_ARQPDF_LO(P_DOCU_ID_LO IN number) RETURN VARCHAR2;

  procedure SP_FROTA_CABECALHO(nSose_id in number, cur out sys_refcursor);

  procedure SP_FROTA_PLACAS(nSose_id in number, cur out sys_refcursor);

  Procedure SP_DSSE_ATEA_ART_INS(nAtea_id  in number,
                                 sOperador in varchar,
                                 nDsse_id  out number);

  Procedure SP_DSSE_ATAN_ART_GET(nDsse_id in number, cur out sys_refcursor);

  Procedure SP_DSSE_ART_UPD(nDsse_id in number, sOperador in varchar2);

  Procedure SP_DSSE_ENVIADOS_SRC(nAtan_id in number, cur out sys_refcursor);
  Procedure SP_RTAT_UPD(nRtat_id     in number,
                        sData_inicio in varchar,
                        sData_fim    in varchar,
                        sOperador    in varchar);

  Procedure SP_ATEA_UPD(nAtea_id          in number,
                        sNumero_art       in varchar,
                        sData_emissao_art in varchar,
                        sData_inicio      in varchar,
                        sData_fim         in varchar,
                        sOperador         in varchar);

  Procedure SP_RESP_UPD(nResp_id    in number,
                        sObservacao in varchar,
                        sOperador   in varchar);
  procedure SP_SETOR_PARECER_SCR(nPrcr_id in number, cur out sys_refcursor);
  --
  procedure SP_IDENTIFICACAO_GET(nPrcr_id in number, cur out sys_refcursor);
  --
  procedure SP_NUM_PROCESSO_SCR(nPrcr_id in number, cur out sys_refcursor);
  --
  procedure SP_AINF_SCR(nPrcr_id in number, cur out sys_refcursor);
  --
  procedure SP_AMLC_SCR(nPrcr_id in number, cur out sys_refcursor);
  --
  function FC_SOMOS_PARECER(nPrcr_id in number) return varchar2;
  --
  procedure SP_MOTIV_REVOG_GET(nPrcr_id in number, cur out sys_refcursor);
  --
  PROCEDURE SP_GERA_PROC_MTR(P_VALOR_PAGO   IN NUMBER,
                             P_DT_PAGTO     IN DATE,
                             P_DATA_CREDITO IN DATE,
                             P_BLOQUETO     IN NUMBER,
                             P_HIPA_ID      IN NUMBER,
                             p_smtr_id      IN NUMBER);
  --
  procedure SP_BUSCA_NUM_TALONARIO_MTR(nSmtr_id      in number,
                                       nNumTalonario out number);
  --
  Function FC_SOLIC_PENDENTE(nAtan_id number) return varchar2;
  --
  PROCEDURE SP_FMTR_IMPRESSO_UPD(nFmtr_id in NUMBER);
  --
  PROCEDURE SP_SMTR_UPD(sLicenca_muni       in varchar2,
                        sProcesso_muni      in varchar2,
                        sMuni_nome_lic_proc in varchar2,
                        sAnuencia_muni      in varchar2,
                        nQt_media_residuos  in NUMBER,
                        nSmtr_id            in NUMBER);
  PROCEDURE SP_SMTR_DEL(nSmtr_id IN NUMBER);

  procedure SP_ACPI_GET(ncgc_cpf in number, sOperador in varchar2);

  procedure SP_CANCELA_SOSE_VENCIDO;

  FUNCTION FC_ANO_LICENCA RETURN number;
  --
  FUNCTION FC_Libera_botao_Boleto(nSose in number) RETURN VARCHAR2;
  --
  Procedure SP_PROC_SCR_DATA(nProc_numero in number,
                             nProc_orig   in number,
                             nProc_ano    in number,
                             nProc_dv     in number,
                             cur          out sys_refcursor);
  --
  Procedure SP_PROC_GET_DATA(nProc_id in number, cur out sys_refcursor);
  --
  Procedure SP_PROC_UPD_data_entrada(nProc_id              in number,
                                     sData_entrada         in varchar,
                                     sOperador_atualizacao in varchar);
  --
  procedure SP_TIPO_SEAMB_GET(nSose_id in number, cur out sys_refcursor);

  --
  procedure SP_TIPO_SOLIC_SEAMB_GET(nSose_id in number,
                                    cur      out sys_refcursor);

  FUNCTION FC_VALIDA_LIC_VENCIDA(nAtan_id IN number, nSose_id IN number)
    RETURN number;
  --
  procedure SP_PRJU_GET(cur out sys_refcursor);
  --
  Procedure SP_LIMPA_FOSSA_GET(cur out sys_refcursor);
  --
  FUNCTION FC_VALIDA_PLACA_INSERIDA(nAtan_id IN number, sPlaca IN varchar2)
    RETURN NUMBER;
  --
  Procedure SP_DOCU_ATAN_SIT(nAtan_id in number, cur out sys_refcursor);
  --
  Procedure SP_DARE_GERADA_PROC_FISICO(nDocu_id in number,
                                       cur      out sys_refcursor);
  --
  PROCEDURE pr_frtr_altera_placa_Mercosul(nFrtr_id          in number,
                                          sPlaca            in varchar2,
                                          sOper_atualizacao in varchar2);

--
PROCEDURE  pr_frtr_altera_placa_Mercosul1(nFrtr_id in number, sPlaca in varchar2,sOper_atualizacao in varchar2,cur       out sys_refcursor) ;
--
function FC_LICENCA_NOVA(nAtan_id in number)
  RETURN varchar2;
--
procedure SP_INSERE_DOCS_SOSE (nTido_id in number,
                               nAtan_id in number,
                               nSose_id in number,
                               nMedida_porte_cad in number,
                               nMedida_porte_calc in number,
                               sDm_alteracao_rt in varchar,
                               sDm_tipo_solic_seamb  in number);
--
Procedure SP_DSSE_INSERE(nSoseid     in number,
                      nDmtipodoc  in number);
 --
 procedure SP_arr_consiste_pgto(P_PROC_ID IN number,
                       P_ATAN_ID IN number,
                       P_TIDO_ID IN number,
                       cur out sys_refcursor);
 --
FUNCTION FC_TROCOU_RT_DATA(nSose_id in number,
                          nAtan_id in Number)
                          RETURN VARCHAR2;
--
FUNCTION FC_PROC_DOC_TRAB(nProc_id IN NUMBER) RETURN varchar2;
--
FUNCTION FC_tipo_documento_sose(p_Sose_id IN NUMBER) RETURN NUMBER;
--
PROCEDURE SP_ATUALIZA_NODO_2022;
--
FUNCTION FC_DISPLAY_DOCS_LISTA(p_origem         in number,
                               p_docu_id_qrcode in number,
                               p_proc_id        in number,
                               p_docu_id        in number,
                               p_tido_id_docu   in number) return varchar2;

PROCEDURE SP_GET_DOCS_LISTA(p_processo        in number,
                            p_docu_id_qrcode  in number,
                            p_origem          in number,
                            cur out sys_refcursor);



FUNCTION FC_PRCR_TRANSPORTAR
 (P_PRCR_ID IN number
 )
 RETURN VARCHAR2;
 --
 function FC_Valor_min_diaria
  RETURN NUMBER;
 --
 function FC_LICENCA_VIGOR(nFrtr_id in number)
  RETURN varchar2;
	--
	function fc_bloqueia_bt_venc_60d( p_atan_id in number)
	RETURN varchar2;

END;
/
CREATE OR REPLACE PACKAGE BODY FEPAM.PCK_NET_PROCESSOS AS
  Procedure SP_DOCU_GET(nDocu_id in number, cur out sys_refcursor) as
  begin 
    open cur for
    --  select * FROM fep_documentos where docu_id = nDocu_id;
    --
    -- Alterado seleção da Data de Vigênvia para a Situação
    -- Lista apenas a DARE Ativa, evitando erro na query
    -- Eduardo - chamado: 46825 - 23/08/2023
    --
      select docu.*,
    --   (select docu.numero||'/'|| docu.ano dare from fep_documentos docu  where docu.data_fim_vigencia >= trunc(sysdate) and docu.docu_id_dare = ndocu_id) as dare,
    --   (select trunc(docu.data_emissao) data_emissao_dare from fep_documentos docu  where docu.data_fim_vigencia >= trunc(sysdate) and docu.docu_id_dare = ndocu_id) as data_emissao_dare,
         (select docu.numero||'/'|| docu.ano dare
          from fep_documentos docu
          where docu.situacao = 'E' and docu.docu_id_dare = nDocu_id) as dare,
         (select trunc(docu.data_emissao) data_emissao_dare
          from fep_documentos docu
          where docu.situacao = 'E' and docu.docu_id_dare = nDocu_id) as data_emissao_dare,
          raat.raat_id||'-'||raat.descricao ramo_atividade
        from fep_documentos docu,
             fep_processos  proc,
             fep_ramos_atividades raat
       where docu.docu_id = nDocu_id
          and docu.proc_id = proc.proc_id
          and raat.raat_id = proc.raat_id_proc;
  end;

  Procedure SP_DOCU_GET_FROM_VIEW(nDocu_id in number,
                                  cur      out sys_refcursor) as
   begin
    open cur for
      select docu_id,
             documento,
             processo,
             raat_id,
             ramo_ativ,
             municipio,
             razao_social,
             situacao
        from v_pro_licencas_assinar
        where docu_id = nDocu_id
   union all
       select nDocu_id docu_id,
              pck_proc_assinat.fc_proc_docu_excluido(nDocu_id) documento,
              null,
              to_number(null),
              null,
              null,
              null,
              'X' situacao
              --X = Excluido (Situac?o n?o existe no banco)
              --             (Situac?o criada para auxiliar no sistema)
         from dual
        where pck_proc_assinat.fc_proc_docu_excluido(nDocu_id) is not null;

  end;

Procedure SP_DOCU_SRC_FROM_VIEW(sDocu_ids in varchar2,
                                  sProcesso in varchar2,
                                  sSituacao in varchar2,
                                  cur       out sys_refcursor) as
    vSQL      VARCHAR2(4000);
    nProc_id  NUMBER(20) := NULL;
    nProcesso NUMBER(20) := NULL;
  begin

    IF sProcesso != 'null' THEN
       nProcesso := TO_NUMBER(sProcesso);
       nProc_id := FC_VALIDA_PROCESSO(nProcesso);
    END IF;

    vSQL := 'select docu_id, documento, processo, raat_id, ramo_ativ, municipio, razao_social, situacao from v_pro_licencas_assinar where 0 = 0 ';
--    vSQL := '
--           select   docu_id,
--                    documento,
--                    processo,
--                    raat_id,
--                    ramo_ativ,
--                    municipio,
--                    razao_social,
--                    situacao
--               from v_pro_licencas_assinar
--              where
--               0 = 0 ';

    IF sSituacao != 'null' THEN
      vSQL := vSQL || ' AND v_pro_licencas_assinar.situacao = ''' || sSituacao || ''''   ;

    END IF;

    IF sDocu_ids != 'null' THEN
       vSQL := vSQL || ' AND v_pro_licencas_assinar.docu_id in ('|| sDocu_ids ||') ';
     END IF;

    IF nProcesso IS NOT NULL THEN
       IF nProc_id IS NOT NULL THEN
          vSQL := vSQL || ' AND v_pro_licencas_assinar.proc_id = '|| nProc_id ||' ';
       ELSE
          vSQL := vSQL || ' AND v_pro_licencas_assinar.proc_id = 0 ';
       END IF;
    END IF;

    vSQL := vSQL || 'ORDER BY v_pro_licencas_assinar.docu_id' ;

  open cur for vSQL;

  end;
--
  Function FC_VALIDA_PROCESSO (P_PROCESSO in number) return number is
  nProc_id    number(20);
  cursor c1 is

  select proc.proc_id
    from fep_processos proc
   where proc.numero  =  to_number(substr(lpad(p_processo,14,'0'),1,7))
     and proc.orig_id =  to_number(substr(lpad(p_processo,14,'0'),8,4))
     and proc.ano     =  to_number(substr(lpad(p_processo,14,'0'),12,2))
     and proc.dv      =  to_number(substr(lpad(p_processo,14,'0'),14,1));

  BEGIN
      OPEN  c1;
     FETCH c1 INTO nProc_id;
     CLOSE c1;
    RETURN(nProc_id);

  END fc_valida_processo;

FUNCTION FC_PROC_NOVO_MODELO(nProc_id IN NUMBER) RETURN NUMBER IS

   nContador NUMBER(5);
   CURSOR c1 IS
      SELECT COUNT(*)
        FROM fep_empreend_processos epro
       WHERE epro.proc_id = nProc_id;

BEGIN
  OPEN  c1;
  FETCH c1 INTO nContador;
  CLOSE c1;
  RETURN(nContador);
END;


  function FC_CONTA_PROC_PENDENTE(nAtanId in Number) return number is
    nCont number(10);
  begin

    begin
          select count(*)
          into nCont
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         where proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtanId
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and tido.sucd_id IN (12, 15, 22)
           and raat.dm_grupo_aut in (1, 2, 3, 4)
           and raat.dm_condicao_lic = 'S'
           and proc.situacao not in ('A', 'J', 'P', 'S')
           and to_number(to_char(proc.data_entrada, 'rrrr')) > 1995
           and ((fc_gerar_aut_dicopi(proc.proc_id) = 'S') or
               (proc.libera_geracao_aut = 'S') or
               (proc.dm_libera_arrecadacao = 'S'))
        union all
        select proc.proc_id proc_id
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         where proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtanId
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and proc.tido_id = 300
           and not exists (select null
                  from fep_documentos docu
                 where docu.tido_id = proc.tido_id
                   and docu.proc_id = proc.proc_id)
           and proc.situacao in ('L', 'W', 'E');
    end;
    return(nCont);

  end FC_CONTA_PROC_PENDENTE;

function FC_QT_PARAMETROS(nOrigem NUMBER, nRaatID NUMBER)
  RETURN NUMBER IS

  qt_parametros_PCR Number(10);

begin

  IF nOrigem = 1 THEN
    BEGIN
      SELECT COUNT(*)
        INTO qt_parametros_PCR
        FROM fep_ramos_padroes_emissoes rape
       WHERE rape.raat_id = nRaatID
         AND rape.dm_origem = 1;
    EXCEPTION
      WHEN no_data_found THEN
        qt_parametros_PCR := 0;
    END;
  END IF;

  IF nOrigem = 2 THEN
    BEGIN
      SELECT COUNT(*)
        INTO qt_parametros_PCR
        FROM fep_ramos_padroes_emissoes rape
       WHERE rape.raat_id = nRaatID
         AND rape.dm_origem = 2;
    EXCEPTION
      WHEN no_data_found THEN
        qt_parametros_PCR := 0;
    END;
  END IF;

  IF nOrigem = 3 THEN
    BEGIN
      SELECT COUNT(*)
        INTO qt_parametros_PCR
        FROM fep_ramos_padroes_emissoes rape
       WHERE rape.raat_id = nRaatID
         AND rape.dm_origem = 3;
    EXCEPTION
      WHEN no_data_found THEN
        qt_parametros_PCR := 0;
    END;
  END IF;

  IF nOrigem = 4 THEN
    BEGIN
      SELECT COUNT(*)
        INTO qt_parametros_PCR
        FROM fep_ramos_padroes_emissoes rape
       WHERE rape.raat_id = nRaatID
         AND rape.dm_origem = 4;
    EXCEPTION
      WHEN no_data_found THEN
        qt_parametros_PCR := 0;
    END;
  END IF;

  RETURN(qt_parametros_PCR);

end FC_QT_PARAMETROS;

function FC_QT_PADRAO(nRaatID NUMBER)
  RETURN NUMBER IS

  qt_padrao NUMBER(10);

begin

  BEGIN
    SELECT COUNT(*)
      INTO qt_padrao
      FROM fep_listas_cond_restricoes lcrs
     WHERE lcrs.raat_id = nRaatID
       AND lcrs.tipo = 1;
  EXCEPTION
    WHEN no_data_found THEN
      qt_padrao := 0;
  END;

  RETURN(qt_padrao);

end FC_QT_PADRAO;

function FC_QT_OPCIONAL(nRaatID NUMBER) RETURN NUMBER IS

  qt_opcional Number(10);

begin

  BEGIN
    SELECT COUNT(*)
      INTO qt_opcional
      FROM fep_listas_cond_restricoes lcrs
     WHERE lcrs.raat_id = nRaatID
       AND lcrs.tipo = 2;
  EXCEPTION
    WHEN no_data_found THEN
      qt_opcional := 0;
  END;

  RETURN(qt_opcional);

end FC_QT_OPCIONAL;

FUNCTION FC_TROCA_TANQUE(nProc_id IN NUMBER,
                         nAtan_id IN NUMBER) RETURN VARCHAR2 IS

    vDescricao     VARCHAR2(1800) := NULL;
    vTanque        VARCHAR2(200);
    nContTq        NUMBER(2)   := 0;
    nContador      NUMBER(2);
    nCalculo       NUMBER(8,2);
    vMetragem      VARCHAR2(50);

    nContCombTot   NUMBER(2);
    nContComb      NUMBER(2);
    vSigla         VARCHAR2(5)  := NULL;
    vCombustivel   VARCHAR2(25) := NULL;

    CURSOR c1 IS
       SELECT COUNT(*)
         FROM fep_postos_combustiveis  ptcb,
              fep_tanques_combustiveis tqcb,
              fep_aux_proc_cond_restr  prcr
        WHERE prcr.prcr_id  = nProc_id
          AND ptcb.atan_id  = nAtan_id
          AND ptcb.ptcb_id  = tqcb.ptcb_id
          AND tqcb.data_remocao IS NULL
          AND (tqcb.data_desativacao IS NULL OR
              (tqcb.data_desativacao IS NOT NULL AND
                NVL(tqcb.dm_tipo_troca,0) != 2 ))
          AND (DECODE(tqcb.data_inf_troca,NULL,
                      ADD_MONTHS(tqcb.data_instalacao - 1,360),
                      tqcb.data_inf_troca )
                            BETWEEN prcr.data_inicio_vigencia AND
                                    prcr.data_fim_vigencia );

    CURSOR c2 IS
       SELECT 'Tq' || LTRIM(RTRIM(TO_CHAR(tqcb.tanque,'09'))) tanque_id,
              tqcb.volume_total,
              tqcb.qt_compartimentos,
              SUBSTR(') implantado em ' || TO_NUMBER(TO_CHAR(tqcb.data_instalacao,'rrrr')) ||
              ' substituir ate ' ||
               DECODE(tqcb.data_inf_troca,NULL,
               SUBSTR(TO_CHAR(ADD_MONTHS(tqcb.data_instalacao - 1,360),'dd/mm/rrrr'),1,10),
               SUBSTR(TO_CHAR(tqcb.data_inf_troca,'dd/mm/rrrr'),1,10))
               ,1,80) tanque_datas,
               tqcb.tqcb_id
         FROM fep_postos_combustiveis  ptcb,
              fep_tanques_combustiveis tqcb,
              fep_aux_proc_cond_restr  prcr
        WHERE prcr.prcr_id  = nProc_id
          AND ptcb.atan_id  = nAtan_id
          AND ptcb.ptcb_id  = tqcb.ptcb_id
          AND tqcb.data_remocao IS NULL
          AND (tqcb.data_desativacao IS NULL OR
              (tqcb.data_desativacao IS NOT NULL AND
                NVL(tqcb.dm_tipo_troca,0) != 2 ))
          AND (DECODE(tqcb.data_inf_troca,NULL,
                      ADD_MONTHS(tqcb.data_instalacao - 1,360),
                      tqcb.data_inf_troca)
                            BETWEEN prcr.data_inicio_vigencia AND
                                    prcr.data_fim_vigencia )
         ORDER BY
               TO_DATE(DECODE(tqcb.data_inf_troca,NULL,
                              ADD_MONTHS(tqcb.data_instalacao - 1,360),
                              tqcb.data_inf_troca)),
               tqcb.tanque;
     r2   c2%rowtype;


 CURSOR c31 IS
    SELECT COUNT(*)
      FROM fep_tanques_tipos_comb tqtc,
           fep_tipos_combustiveis tpcb
     WHERE tqtc.tpcb_id = tpcb.tpcb_id
       AND tqtc.tqcb_id = r2.tqcb_id;

 CURSOR c32 IS
    SELECT tpcb.sigla
      FROM fep_tanques_tipos_comb tqtc,
           fep_tipos_combustiveis tpcb
     WHERE tqtc.tpcb_id = tpcb.tpcb_id
       AND tqtc.tqcb_id = r2.tqcb_id
     ORDER BY 1;

BEGIN

  OPEN  c1;
  FETCH c1 INTO nContador; -- n? tanques a serem trocados
  CLOSE c1;

  IF nContador = 1 THEN
     vDescricao := 'do tanque subterraneo de combustivel: ';
  ELSE
     vDescricao := 'dos tanques subterraneos de combustiveis: ';
  END IF;

  OPEN c2;
  LOOP
    FETCH c2 INTO r2;
    IF c2%notfound THEN
       CLOSE c2;
       EXIT;
    ELSE

       -- verifica o tipo de combustivel

       nContComb     := 0;
       nContCombTot  := 0;
       vCombustivel  := NULL;
       OPEN  c31;
       FETCH c31 INTO nContCombTot; -- n? de combustiveis no tanque
       CLOSE c31;

       OPEN c32;
       LOOP
          FETCH c32 INTO vSigla;
          IF c32%notfound THEN
             CLOSE c32;
             EXIT;
          ELSE
             nContComb := nContComb + 1;
             IF nContComb = 1 THEN
                vCombustivel := vSigla;
             ELSE
                IF nContComb < nContCombTot THEN
                   vCombustivel := vCombustivel || ', ' || vSigla;
                ELSE
                   vCombustivel := vCombustivel || ' e ' || vSigla;
                END IF;
             END IF;
          END IF;
       END LOOP;

       nCalculo  := NULL;
       vMetragem := NULL;
       nCalculo := (r2.volume_total / 1000) / r2.qt_compartimentos;
       IF r2.qt_compartimentos = 1 THEN
          vMetragem := nCalculo || ' m?';
       ELSIF r2.qt_compartimentos = 2 THEN
          vMetragem := nCalculo || '+' || nCalculo || ' m?';
       ELSIF r2.qt_compartimentos = 3 THEN
          vMetragem := nCalculo || '+' || nCalculo || '+' || nCalculo || ' m?';
       END IF;
       vTanque := r2.tanque_id || ' (' || vMetragem ||
                  ' combustivel ' || vCombustivel || r2.tanque_datas;
       nContTq := nContTq + 1;
       IF nContTq = 1 THEN
          vDescricao := vDescricao || vTanque;
       ELSE
          vDescricao := vDescricao || ', ' || vTanque;
       END IF;
    END IF;
  END LOOP;

  IF nContador = 1 THEN
     vDescricao := vDescricao || '. Comunicar por escrito o proprietario do tanque';
  ELSE
     vDescricao := vDescricao || '. Comunicar por escrito o proprietario dos tanques';
  END IF;

  RETURN(vDescricao);

END;


  Procedure SP_DOCU_SRC_LOG(nDocu_id      in number,
                            sProcesso     in varchar2,
                            vData_inicial in varchar,
                            vData_final   in varchar,
                            cur           out sys_refcursor) as
    vSQL      VARCHAR2(4000);
    nProc_id  NUMBER(20) := NULL;
    nProcesso NUMBER(20) := NULL;
  begin

    IF sProcesso != 'null' THEN
       nProcesso := TO_NUMBER(sProcesso);
       nProc_id := FC_VALIDA_PROCESSO(nProcesso);
    END IF;

    IF nProc_id IS NULL THEN
       nProc_id := 0;
    END IF;

    open cur for

      SELECT VIEW_INFO.*,
             DOC_ASSINADOS.RESPONSAVEL_PUBLICACAO,
             TO_CHAR(DOC_ASSINADOS.DATA_PUBLICACAO, 'dd/mm/rrrr') as DATA_PUBLICACAO
        FROM fep_documentos_assinados DOC_ASSINADOS,
             v_pro_licencas_assinar   VIEW_INFO
       WHERE DOC_ASSINADOS.DOCU_ID = VIEW_INFO.DOCU_ID
         AND DOC_ASSINADOS.DATA_PUBLICACAO is not null
         AND (nDocu_id = 0 OR DOC_ASSINADOS.DOCU_ID = nDocu_id)
         AND (nProc_id = 0 OR VIEW_INFO.PROC_ID = nProc_id)
         AND (vData_inicial = 'null' OR
             DOC_ASSINADOS.DATA_PUBLICACAO >=
             TO_DATE(vData_inicial, 'dd/mm/rrrr'))
         AND (vData_final = 'null' OR DOC_ASSINADOS.DATA_PUBLICACAO <=
             TO_DATE(vData_final, 'dd/mm/rrrr'))
       ORDER BY DOC_ASSINADOS.DOCU_ID;

  end;

  FUNCTION FC_DISPLAY_DATA_VIGENCIA(vDataFimVigencia IN DATE) RETURN VARCHAR2 IS

   vData         VARCHAR2(50);
   vMes          VARCHAR2(20);
   nDia          NUMBER(02);
   nMes          NUMBER(02);
   nAno          NUMBER(04);

   CURSOR c1 IS
      SELECT DECODE(nMes,01,' de janeiro de ',
                         02,' de fevereiro de ',
                         03,' de marco de ',
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

     nDia := TO_NUMBER(TO_CHAR(vDataFimVigencia,'dd'));
     nMes := TO_NUMBER(TO_CHAR(vDataFimVigencia,'mm'));
     nAno := TO_NUMBER(TO_CHAR(vDataFimVigencia,'rrrr'));

     OPEN  c1;
     FETCH c1 INTO vMes;
     CLOSE c1;

     vData := TO_CHAR(nDia,'09') || vMes || nAno;
     RETURN(vData);
  END;

  Procedure SP_DOCU_GET_LOG_DADOS(nDocu_id in number,
                                  cur      out sys_refcursor) as
  begin
    open cur for

      SELECT VIEW_INFO.*,
             DOC_ASSINADOS.RESPONSAVEL_PUBLICACAO,
             TO_CHAR(DOC_ASSINADOS.DATA_PUBLICACAO, 'dd/mm/rrrr') as DATA_PUBLICACAO
        FROM fep_documentos_assinados DOC_ASSINADOS,
             v_pro_licencas_assinar   VIEW_INFO
       WHERE DOC_ASSINADOS.DOCU_ID = VIEW_INFO.DOCU_ID
         AND DOC_ASSINADOS.DOCU_ID = nDocu_id;

  end;

  Procedure SP_DOCU_GET_LOG_ASSINANTES(nDocu_id in number,
                                       cur      out sys_refcursor) as
  begin
    open cur for

      SELECT DOC_ASSINANTES.RESPONSAVEL_ASSINATURA,
             TO_CHAR(DOC_ASSINANTES.DATA_ASSINATURA, 'dd/mm/rrrr') as DATA_ASSINATURA
        FROM fep_documentos_assinantes DOC_ASSINANTES
       WHERE DOC_ASSINANTES.DOCU_ID = nDocu_id;

  end;


  FUNCTION FC_NOME_PONTO_PCR(nAtan_id  IN NUMBER,
                             vCodPonto IN VARCHAR2)
  RETURN VARCHAR2 IS

  vNome   VARCHAR2(60) := NULL;
  vCodigo VARCHAR2(6) := NULL;
  nCont   NUMBER(2);

  CURSOR c1 IS
    SELECT SUBSTR(cgrf.rv_meaning, 1, 60) nome_ponto
      FROM fep_pontos_lanctos_liquidos poll, cg_ref_codes cgrf
     WHERE poll.atan_id = nAtan_id
       AND poll.codigo = vCodigo
       AND poll.data_desativacao IS NULL
       AND poll.tipo_efluente = cgrf.rv_low_value
       AND cgrf.rv_domain = 'DM_TIPO_EFLUENTE';

  CURSOR c2 IS
    SELECT COUNT(*)
      FROM fep_pontos_lanctos_liquidos poll
     WHERE poll.atan_id = nAtan_id
       AND poll.codigo = vCodigo
       AND poll.data_desativacao IS NULL;

  BEGIN

    vCodigo := vCodPonto;
    OPEN c1;
    FETCH c1
      INTO vNome;
    CLOSE c1;
    IF vNome IS NULL THEN
      IF vCodigo != 'PCR2' THEN
        --- efluente sanitario

        vCodigo := 'PL1';
        OPEN c2;
        FETCH c2
          INTO nCont; --- procura o nome no PL1
        CLOSE c2;
        IF nCont > 0 THEN
          OPEN c1;
          FETCH c1
            INTO vNome;
          CLOSE c1;
        END IF;

        IF vNome IS NULL THEN
          vCodigo := 'PL10';
          OPEN c2;
          FETCH c2
            INTO nCont; --- procura o nome no PL10
          CLOSE c2;
          IF nCont > 0 THEN
            OPEN c1;
            FETCH c1
              INTO vNome;
            CLOSE c1;
          END IF;
        END IF;

      END IF;
    END IF;

    IF vNome IS NULL THEN
      vNome := '*** Informar NOME do EFLUENTE ***';
    END IF;

    RETURN(vNome);

  END;

  Procedure SP_DOCU_SRC(nDocu_id                  in number,
                        sDm_verificado_pdf        in varchar,
                        nDm_verifica_dl           in number,
                        nDm_origem                in number,
                        nAnos_licenca             in number,
                        nMedida_porte_parecer     in number,
                        sDm_pronaf                in varchar,
                        sDm_libera_arrec          in varchar,
                        sOperador_parecer_dl      in varchar,
                        sDm_existe_pass_ambiental in varchar,
                        sObservacoes              in varchar,
                        nPess_id_vigor            in number,
                        sDm_publicar_internet     in varchar,
                        nNro_bloqueto             in number,
                        nDm_andamento_aut         in number,
                        nDm_folha_impressa        in number,
                        sData_folha               in varchar,
                        sDm_assinatura_digital    in varchar,
                        nNumero                   in number,
                        nAno                      in number,
                        nTido_id                  in number,
                        nProc_id                  in number,
                        sDescricao                in varchar,
                        sData_emissao             in varchar,
                        nStatus                   in number,
                        sSituacao                 in varchar,
                        nTempo_tramitacao         in number,
                        sData_inicio_vigencia     in varchar,
                        sData_fim_vigencia        in varchar,
                        nPrazo                    in number,
                        sData_conhecimento        in varchar,
                        nForma_conhecimento       in number,
                        sData_inclusao            in varchar,
                        sData_atualizacao         in varchar,
                        sOperador_inclusao        in varchar,
                        sOperador_atualizacao     in varchar,
                        nVist_id                  in number,
                        nDocu_id_substitui        in number,
                        nDocu_id_origina          in number,
                        nPreco                    in number,
                        sData_pagamento           in varchar,
                        nValor_pago               in number,
                        sRenovavel                in varchar,
                        nSeto_id                  in number,
                        sProtecao                 in varchar,
                        nAno_emissao              in number,
                        sData_expedicao           in varchar,
                        sData_entrega             in varchar,
                        sData_assinatura_fisica   in varchar,
                        sGeracao_automatica       in varchar,
                        sMotivo_revogacao         in varchar,
                        cur                       out sys_refcursor) as
  begin
    open cur for
      select *
        FROM fep_documentos

       WHERE (nDocu_id = 0 OR docu_id = nDocu_id)
         AND (sDm_verificado_pdf = 'null' OR
             dm_verificado_pdf = sDm_verificado_pdf)
         AND (nDm_verifica_dl = 0 OR dm_verifica_dl = nDm_verifica_dl)
         AND (nDm_origem = 0 OR dm_origem = nDm_origem)
         AND (nAnos_licenca = 0 OR anos_licenca = nAnos_licenca)
         AND (nMedida_porte_parecer = 0 OR
             medida_porte_parecer = nMedida_porte_parecer)
         AND (sDm_pronaf = 'null' OR dm_pronaf = sDm_pronaf)
         AND (sDm_libera_arrec = 'null' OR
             dm_libera_arrec = sDm_libera_arrec)
         AND (sOperador_parecer_dl = 'null' OR
             operador_parecer_dl = sOperador_parecer_dl)
         AND (sDm_existe_pass_ambiental = 'null' OR
             dm_existe_pass_ambiental = sDm_existe_pass_ambiental)
         AND (sObservacoes = 'null' OR observacoes = sObservacoes)
         AND (nPess_id_vigor = 0 OR pess_id_vigor = nPess_id_vigor)
         AND (sDm_publicar_internet = 'null' OR
             dm_publicar_internet = sDm_publicar_internet)
         AND (nNro_bloqueto = 0 OR nro_bloqueto = nNro_bloqueto)
         AND (nDm_andamento_aut = 0 OR dm_andamento_aut = nDm_andamento_aut)
         AND (nDm_folha_impressa = 0 OR
             dm_folha_impressa = nDm_folha_impressa)
         AND (sData_folha = 'null' OR
             data_folha = TO_DATE(sData_folha, 'dd/mm/rrrr'))
         AND (sDm_assinatura_digital = 'null' OR
             dm_assinatura_digital = sDm_assinatura_digital)
         AND (nNumero = 0 OR numero = nNumero)
         AND (nAno = 0 OR ano = nAno)
         AND (nTido_id = 0 OR tido_id = nTido_id)
         AND (nProc_id = 0 OR proc_id = nProc_id)
         AND (sDescricao = 'null' OR descricao = sDescricao)
         AND (sData_emissao = 'null' OR
             data_emissao = TO_DATE(sData_emissao, 'dd/mm/rrrr'))
         AND (nStatus = 0 OR status = nStatus)
         AND (sSituacao = 'null' OR situacao = sSituacao)
         AND (nTempo_tramitacao = 0 OR tempo_tramitacao = nTempo_tramitacao)
         AND (sData_inicio_vigencia = 'null' OR
             data_inicio_vigencia =
             TO_DATE(sData_inicio_vigencia, 'dd/mm/rrrr'))
         AND (sData_fim_vigencia = 'null' OR
             data_fim_vigencia = TO_DATE(sData_fim_vigencia, 'dd/mm/rrrr'))
         AND (nPrazo = 0 OR prazo = nPrazo)
         AND (sData_conhecimento = 'null' OR
             data_conhecimento = TO_DATE(sData_conhecimento, 'dd/mm/rrrr'))
         AND (nForma_conhecimento = 0 OR
             forma_conhecimento = nForma_conhecimento)
         AND (sData_inclusao = 'null' OR
             data_inclusao = TO_DATE(sData_inclusao, 'dd/mm/rrrr'))
         AND (sData_atualizacao = 'null' OR
             data_atualizacao = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'))
         AND (sOperador_inclusao = 'null' OR
             operador_inclusao = sOperador_inclusao)
         AND (sOperador_atualizacao = 'null' OR
             operador_atualizacao = sOperador_atualizacao)
         AND (nVist_id = 0 OR vist_id = nVist_id)
         AND (nDocu_id_substitui = 0 OR
             docu_id_substitui = nDocu_id_substitui)
         AND (nDocu_id_origina = 0 OR docu_id_origina = nDocu_id_origina)
         AND (nPreco = 0 OR preco = nPreco)
         AND (sData_pagamento = 'null' OR
             data_pagamento = TO_DATE(sData_pagamento, 'dd/mm/rrrr'))
         AND (nValor_pago = 0 OR valor_pago = nValor_pago)
         AND (sRenovavel = 'null' OR renovavel = sRenovavel)
         AND (nSeto_id = 0 OR seto_id = nSeto_id)
         AND (sProtecao = 'null' OR protecao = sProtecao)
         AND (nAno_emissao = 0 OR ano_emissao = nAno_emissao)
         AND (sData_expedicao = 'null' OR
             data_expedicao = TO_DATE(sData_expedicao, 'dd/mm/rrrr'))
         AND (sData_entrega = 'null' OR
             data_entrega = TO_DATE(sData_entrega, 'dd/mm/rrrr'))
         AND (sData_assinatura_fisica = 'null' OR
             data_assinatura_fisica =
             TO_DATE(sData_assinatura_fisica, 'dd/mm/rrrr'))
         AND (sGeracao_automatica = 'null' OR
             geracao_automatica = sGeracao_automatica)
         AND (sMotivo_revogacao = 'null' OR
             motivo_revogacao = sMotivo_revogacao);
  end;

  Procedure SP_DOCU_INS(sDm_verificado_pdf        in varchar,
                        nDm_verifica_dl           in number,
                        nDm_origem                in number,
                        nAnos_licenca             in number,
                        nMedida_porte_parecer     in number,
                        sDm_pronaf                in varchar,
                        sDm_libera_arrec          in varchar,
                        sOperador_parecer_dl      in varchar,
                        sDm_existe_pass_ambiental in varchar,
                        sObservacoes              in varchar,
                        nPess_id_vigor            in number,
                        sDm_publicar_internet     in varchar,
                        nNro_bloqueto             in number,
                        nDm_andamento_aut         in number,
                        nDm_folha_impressa        in number,
                        sData_folha               in varchar,
                        sDm_assinatura_digital    in varchar,
                        nNumero                   in number,
                        nAno                      in number,
                        nTido_id                  in number,
                        nProc_id                  in number,
                        sDescricao                in varchar,
                        sData_emissao             in varchar,
                        nStatus                   in number,
                        sSituacao                 in varchar,
                        nTempo_tramitacao         in number,
                        sData_inicio_vigencia     in varchar,
                        sData_fim_vigencia        in varchar,
                        nPrazo                    in number,
                        sData_conhecimento        in varchar,
                        nForma_conhecimento       in number,
                        sData_inclusao            in varchar,
                        sData_atualizacao         in varchar,
                        sOperador_inclusao        in varchar,
                        sOperador_atualizacao     in varchar,
                        nVist_id                  in number,
                        nDocu_id_substitui        in number,
                        nDocu_id_origina          in number,
                        nPreco                    in number,
                        sData_pagamento           in varchar,
                        nValor_pago               in number,
                        sRenovavel                in varchar,
                        nSeto_id                  in number,
                        sProtecao                 in varchar,
                        nAno_emissao              in number,
                        sData_expedicao           in varchar,
                        sData_entrega             in varchar,
                        sData_assinatura_fisica   in varchar,
                        sGeracao_automatica       in varchar,
                        sMotivo_revogacao         in varchar,
                        nDocu_id                  out number) is

      nUsuAutIns     number:=0;

  begin
-- Carlos Oliveira / Werner
-- Data: 18/01/2016
-- Valida se o usuario que esta inserindo registro na tabela FEP_DOCUMENTOS esta habilitado para esta operacao.
    Select count(acpe.acpe_id)
      into nUsuAutIns
      from fep_acessos_pessoas acpe,
           fep_pessoas pess,
           fep_usuarios usua
     where pess.pess_id=acpe.pess_id
       and usua.pess_id=pess.pess_id
       and acpe.acpa_id=103
       and usua.nome = sOperador_inclusao;
--
    If nUsuAutIns > 0 Then
      BEGIN
      INSERT INTO fep_documentos
        (docu_id,
         dm_verificado_pdf,
         dm_verifica_dl,
         dm_origem,
         anos_licenca,
         medida_porte_parecer,
         dm_pronaf,
         dm_libera_arrec,
         operador_parecer_dl,
         dm_existe_pass_ambiental,
         observacoes,
         pess_id_vigor,
         dm_publicar_internet,
         nro_bloqueto,
         dm_andamento_aut,
         dm_folha_impressa,
         data_folha,
         dm_assinatura_digital,
         numero,
         ano,
         tido_id,
         proc_id,
         descricao,
         data_emissao,
         status,
         situacao,
         tempo_tramitacao,
         data_inicio_vigencia,
         data_fim_vigencia,
         prazo,
         data_conhecimento,
         forma_conhecimento,
         data_inclusao,
         data_atualizacao,
         operador_inclusao,
         operador_atualizacao,
         vist_id,
         docu_id_substitui,
         docu_id_origina,
         preco,
         data_pagamento,
         valor_pago,
         renovavel,
         seto_id,
         protecao,
         ano_emissao,
         data_expedicao,
         data_entrega,
         data_assinatura_fisica,
         geracao_automatica,
         motivo_revogacao)
      VALUES
        (DOCU_SEQ.nextval,
         sDm_verificado_pdf,
         nDm_verifica_dl,
         nDm_origem,
         nAnos_licenca,
         nMedida_porte_parecer,
         sDm_pronaf,
         sDm_libera_arrec,
         sOperador_parecer_dl,
         sDm_existe_pass_ambiental,
         sObservacoes,
         nPess_id_vigor,
         sDm_publicar_internet,
         nNro_bloqueto,
         nDm_andamento_aut,
         nDm_folha_impressa,
         TO_DATE(sData_folha, 'dd/mm/rrrr'),
         sDm_assinatura_digital,
         nNumero,
         nAno,
         nTido_id,
         nProc_id,
         sDescricao,
         TO_DATE(sData_emissao, 'dd/mm/rrrr'),
         nStatus,
         sSituacao,
         nTempo_tramitacao,
         TO_DATE(sData_inicio_vigencia, 'dd/mm/rrrr'),
         TO_DATE(sData_fim_vigencia, 'dd/mm/rrrr'),
         nPrazo,
         TO_DATE(sData_conhecimento, 'dd/mm/rrrr'),
         nForma_conhecimento,
         TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
         TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
         sOperador_inclusao,
         sOperador_atualizacao,
         nVist_id,
         nDocu_id_substitui,
         nDocu_id_origina,
         nPreco,
         TO_DATE(sData_pagamento, 'dd/mm/rrrr'),
         nValor_pago,
         sRenovavel,
         nSeto_id,
         sProtecao,
         nAno_emissao,
         TO_DATE(sData_expedicao, 'dd/mm/rrrr'),
         TO_DATE(sData_entrega, 'dd/mm/rrrr'),
         TO_DATE(sData_assinatura_fisica, 'dd/mm/rrrr'),
         sGeracao_automatica,
         sMotivo_revogacao);
      SELECT DOCU_SEQ.currval into nDocu_id FROM dual;
                         commit;
      EXCEPTION
           when others then
                raise_application_error(-20001,
                      'Erro: Inclusão fep_documentos (Proc_id ' || nProc_id ||
                                                    ' Tido_id ' || nTido_id ||
                                                    ' Docu_id ' || nDocu_id || ') ' ||
                        SQLCODE || ' - ' || SQLERRM);

      END;
    Else
      Raise_application_error(-20001,'Usuario nao habilitado para inserir documentos!');
    End if;
  end;

  Procedure SP_DOCU_UPD(nDocu_id                  in number,
                        sDm_verificado_pdf        in varchar,
                        nDm_verifica_dl           in number,
                        nDm_origem                in number,
                        nAnos_licenca             in number,
                        nMedida_porte_parecer     in number,
                        sDm_pronaf                in varchar,
                        sDm_libera_arrec          in varchar,
                        sOperador_parecer_dl      in varchar,
                        sDm_existe_pass_ambiental in varchar,
                        sObservacoes              in varchar,
                        nPess_id_vigor            in number,
                        sDm_publicar_internet     in varchar,
                        nNro_bloqueto             in number,
                        nDm_andamento_aut         in number,
                        nDm_folha_impressa        in number,
                        sData_folha               in varchar,
                        sDm_assinatura_digital    in varchar,
                        nNumero                   in number,
                        nAno                      in number,
                        nTido_id                  in number,
                        nProc_id                  in number,
                        sDescricao                in varchar,
                        sData_emissao             in varchar,
                        nStatus                   in number,
                        sSituacao                 in varchar,
                        nTempo_tramitacao         in number,
                        sData_inicio_vigencia     in varchar,
                        sData_fim_vigencia        in varchar,
                        nPrazo                    in number,
                        sData_conhecimento        in varchar,
                        nForma_conhecimento       in number,
                        sData_atualizacao         in varchar,
                        sOperador_atualizacao     in varchar,
                        nVist_id                  in number,
                        nDocu_id_substitui        in number,
                        nDocu_id_origina          in number,
                        nPreco                    in number,
                        sData_pagamento           in varchar,
                        nValor_pago               in number,
                        sRenovavel                in varchar,
                        nSeto_id                  in number,
                        sProtecao                 in varchar,
                        nAno_emissao              in number,
                        sData_expedicao           in varchar,
                        sData_entrega             in varchar,
                        sData_assinatura_fisica   in varchar,
                        sGeracao_automatica       in varchar,
                        sMotivo_revogacao         in varchar) is


  begin
    UPDATE fep_documentos
       SET dm_verificado_pdf        = sDm_verificado_pdf,
           dm_verifica_dl           = nDm_verifica_dl,
           dm_origem                = nDm_origem,
           anos_licenca             = nAnos_licenca,
           medida_porte_parecer     = nMedida_porte_parecer,
           dm_pronaf                = sDm_pronaf,
           dm_libera_arrec          = sDm_libera_arrec,
           operador_parecer_dl      = sOperador_parecer_dl,
           dm_existe_pass_ambiental = sDm_existe_pass_ambiental,
           observacoes              = sObservacoes,
           pess_id_vigor            = nPess_id_vigor,
           dm_publicar_internet     = sDm_publicar_internet,
           nro_bloqueto             = nNro_bloqueto,
           dm_andamento_aut         = nDm_andamento_aut,
           dm_folha_impressa        = nDm_folha_impressa,
           dm_assinatura_digital    = sDm_assinatura_digital,
           numero                   = nNumero,
           ano                      = nAno,
           tido_id                  = nTido_id,
           proc_id                  = nProc_id,
           descricao                = sDescricao,
           status                   = nStatus,
           situacao                 = sSituacao,
           tempo_tramitacao         = nTempo_tramitacao,
           prazo                    = nPrazo,
           forma_conhecimento       = nForma_conhecimento,
           data_atualizacao         = TO_DATE(sData_atualizacao,
                                              'dd/MM/rrrr'),
           operador_atualizacao     = sOperador_atualizacao,
           vist_id                  = nVist_id,
           docu_id_substitui        = nDocu_id_substitui,
           docu_id_origina          = nDocu_id_origina,
           preco                    = nPreco,
           valor_pago               = nValor_pago,
           renovavel                = sRenovavel,
           seto_id                  = nSeto_id,
           protecao                 = sProtecao,
           ano_emissao              = nAno_emissao,
           geracao_automatica       = sGeracao_automatica,
           motivo_revogacao         = sMotivo_revogacao
     WHERE docu_id = nDocu_id;
                              commit;

   EXCEPTION
       when others then
           raise_application_error(-20001,
                  'Erro: Update fep_documentos (Proc_id ' || nProc_id ||
                                              ' Tido_id ' || nTido_id ||
                                              ' Docu_id ' || nDocu_id || ') ' ||
                        SQLCODE || ' - ' || SQLERRM);

   end;

  Procedure SP_DOCU_DEL(nDocu_id in number) IS
  BEGIN
    DELETE FROM fep_documentos WHERE docu_id = nDocu_id;
    commit;
  end;

  Procedure SP_DOCU_ATAN(nAtan_id  in number,
                         sSituacao in varchar,
                         cur       out sys_refcursor) as
  begin
    open cur for
      SELECT DISTINCT docu.*
        FROM fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos_documentos   prdc,
             fep_processos              proc,
             fep_empreend_processos     epro,
             fep_responsabilidades      resp
       WHERE proc.proc_id = prdc.proc_id
         AND docu.docu_id = prdc.docu_id
         AND docu.tido_id = tido.tido_id
         AND tido.sucd_id = sucd.sucd_id
         AND docu.proc_id = epro.proc_id
         AND epro.resp_id = resp.resp_id
         AND resp.atan_id = nAtan_id
         AND (sSituacao = 'null' OR docu.situacao = sSituacao)
         AND docu.tido_id in ( 120 , 151)
         AND (sucd.cldo_id BETWEEN 1 AND 6)
      union all
      SELECT DISTINCT docu.*
        FROM fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos              proc,
             fep_responsabilidades      resp
       WHERE proc.proc_id = docu.proc_id
         AND docu.tido_id = tido.tido_id
         AND tido.sucd_id = sucd.sucd_id
         AND proc.resp_id = resp.resp_id
         AND resp.atan_id = nAtan_id
         AND (sSituacao = 'null' OR docu.situacao = sSituacao)
         AND docu.tido_id  in ( 120 , 151)
         AND (sucd.cldo_id BETWEEN 1 AND 6)
         and not exists (select null
                from fep_processos_documentos prdc
               where prdc.proc_id = proc.proc_id
                 and prdc.docu_id = docu.docu_id);
  end;

  Procedure SP_DOCU_SRC_APROV(nAtan_id  in number,
                              sSituacao in varchar,
                              nSeto_id  in number,
                              nDocu_id  in number,
                              cur       out sys_refcursor) as
  begin
    open cur for
      SELECT DISTINCT docu.*,
                      atv.atan_id || ' - ' || atv.descricao Empreendimento,
                      pess.pess_id || ' - ' || pess.razao_social Empreendedor,
                      tpdo.descricao Tipo_Documento
        FROM fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos_documentos   prdc,
             fep_processos              proc,
             fep_empreend_processos     epro,
             fep_responsabilidades      resp,
             fep_atividades_antropicas  atv,
             fep_pessoas                pess,
             fep_tipos_documentos       tpdo
       WHERE proc.proc_id = prdc.proc_id
         AND docu.docu_id = prdc.docu_id
         AND docu.tido_id = tido.tido_id
         AND tido.sucd_id = sucd.sucd_id
         AND docu.proc_id = epro.proc_id
         AND epro.resp_id = resp.resp_id
         AND tpdo.tido_id = docu.tido_id
         AND atv.raat_id in (4710.10, 4710.11, 4710.12, 4710.20, 4710.30)
         AND (nDocu_id = 0 OR docu.docu_id = nDocu_id)
         AND (nSeto_id = 0 OR docu.seto_id = nSeto_id)
         AND (nAtan_id = 0 OR resp.atan_id = nAtan_id)
         AND (sSituacao = 'null' OR docu.situacao = sSituacao)
         AND docu.tido_id in ( 120 , 151)
         AND (sucd.cldo_id BETWEEN 1 AND 6)
         AND atv.atan_id = resp.atan_id
         AND pess.pess_id = atv.pess_id
      union all
      SELECT DISTINCT docu.*,
                      atv.atan_id || ' - ' || atv.descricao Empreendimento,
                      pess.pess_id || ' - ' || pess.razao_social Empreendedor,
                      tpdo.descricao Tipo_Documento
        FROM fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos              proc,
             fep_responsabilidades      resp,
             fep_atividades_antropicas  atv,
             fep_pessoas                pess,
             fep_tipos_documentos       tpdo
       WHERE proc.proc_id = docu.proc_id
         AND docu.tido_id = tido.tido_id
         AND tido.sucd_id = sucd.sucd_id
         AND proc.resp_id = resp.resp_id
         AND tpdo.tido_id = docu.tido_id
         AND atv.raat_id in (4710.10, 4710.11, 4710.12, 4710.20, 4710.30)
         AND (nDocu_id = 0 OR docu.docu_id = nDocu_id)
         AND (nSeto_id = 0 OR docu.seto_id = nSeto_id)
         AND (nAtan_id = 0 OR resp.atan_id = nAtan_id)
         AND (sSituacao = 'null' OR docu.situacao = sSituacao)
         AND docu.tido_id in ( 120 , 151)
         AND (sucd.cldo_id BETWEEN 1 AND 6)
         AND atv.atan_id = resp.atan_id
         AND pess.pess_id = atv.pess_id
         and not exists (select null
                from fep_processos_documentos prdc
               where prdc.proc_id = proc.proc_id
                 and prdc.docu_id = docu.docu_id);
  end;

  Procedure SP_DOCU_UPD_SITUACAO(nDocu_id              in number,
                                 sSituacao             in varchar,
                                 sOperador_Atualizacao in varchar,
                                 sData_Atualizacao     in varchar) is

	  nDocu_id_licenca number:= null;
	  sSituacaoDoc     varchar2(1):= null;

		cursor c1 is
  	select prcr.docu_id_licenca
		  from fep_aux_proc_cond_restr prcr
		 where prcr.docu_id_revogado = nDocu_id;

		cursor c2 is
		select docu.situacao
		  from fep_documentos docu
		 where docu.docu_id = nDocu_id_licenca;

	begin
		  open c1;
    fetch c1 into nDocu_id_licenca;
      if c1%found then
         open c2;
        fetch c2 into sSituacaoDoc;
        close c2;
      end if;
    close c1;

		-- Manutenção para não deixar alterar a situação do documento,
		-- para 'R' Revogado, quando o documento novo não estiver 'Em Vigor'.
		-- Chamado 59146 - 06/06/205 - Cátia Jardim
		if sSituacao = 'R' and sSituacaoDoc = 'E' then

			UPDATE FEP_DOCUMENTOS DOC
				 SET DOC.SITUACAO             = sSituacao,
						 DOC.OPERADOR_ATUALIZACAO = sOperador_Atualizacao,
						 DOC.DATA_ATUALIZACAO     = TO_DATE(sData_Atualizacao, 'dd/MM/rrrr')
			 WHERE DOC.DOCU_ID = nDocu_id;
			COMMIT;

		end if;
  end;

  Procedure SP_DOCU_UPD_SITUACAO_EM_VIGOR(nDocu_id              in number,
                                          sOperador_Atualizacao in varchar,
                                          cur                   out sys_refcursor) is
    vMsg varchar(500);
  begin

    -- Procedimento indicado pela Analista Malu

    PCK_ASS_DIGITAL.PR_DIGITAL_EM_VIGOR(nDocu_id, sOperador_Atualizacao);

    open cur for
      select PCK_ASS_DIGITAL.FC_DIGITAL_MSG into vMsg from Dual;
  exception
    when others then
      sp_tmp_teste_felipe(-1, '[' || to_char(nDocu_id) ||'] ' || sOperador_Atualizacao || ' - ' ||sqlcode|| ' - ' ||sqlerrm);
      sp_tmp_teste_felipe(-2, '[' || to_char(nDocu_id) ||'] ' || sOperador_Atualizacao || ' - ' ||DBMS_UTILITY.format_error_backtrace);
  end;

  Procedure SP_DOCU_UPD_DM_P7S(nDocu_id in number) is
  begin

    UPDATE FEP_DOCUMENTOS DOC
       SET DOC.DM_P7S = 'S'
     WHERE DOC.DOCU_ID = nDocu_id;
    COMMIT;

  end;

  Procedure SP_PRDC_GET(nPrdc_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_processos_documentos where prdc_id = nPrdc_id;
  end;

  Procedure SP_PRDC_SRC(nPrdc_id              in number,
                        nDocu_id              in number,
                        nProc_id              in number,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor) as
  begin
    open cur for
      select *
        FROM fep_processos_documentos

       WHERE (nPrdc_id = 0 OR prdc_id = nPrdc_id)
         AND (nDocu_id = 0 OR docu_id = nDocu_id)
         AND (nProc_id = 0 OR proc_id = nProc_id)
         AND (sData_inclusao = 'null' OR
             data_inclusao = TO_DATE(sData_inclusao, 'dd/mm/rrrr'))
         AND (sOperador_inclusao = 'null' OR
             operador_inclusao = sOperador_inclusao)
         AND (sData_atualizacao = 'null' OR
             data_atualizacao = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'))
         AND (sOperador_atualizacao = 'null' OR
             operador_atualizacao = sOperador_atualizacao);
  end;

  Procedure SP_PRDC_INS(nDocu_id              in number,
                        nProc_id              in number,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nPrdc_id              out number) is
  begin
    INSERT INTO fep_processos_documentos
      (prdc_id,
       docu_id,
       proc_id,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao)
    VALUES
      (PRDC_SEQ.nextval,
       nDocu_id,
       nProc_id,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao);
    SELECT PRDC_SEQ.currval into nPrdc_id FROM dual;
    commit;
  end;

  Procedure SP_PRDC_UPD(nPrdc_id in number,
                        nDocu_id in number,
                        nProc_id in number,

                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar) is
  begin
    UPDATE fep_processos_documentos
       SET docu_id = nDocu_id,
           proc_id = nProc_id,

           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_atualizacao = sOperador_atualizacao
     WHERE prdc_id = nPrdc_id;
    commit;
  end;

  Procedure SP_PRDC_DEL(nPrdc_id in number) IS
  BEGIN
    DELETE FROM fep_processos_documentos WHERE prdc_id = nPrdc_id;
    commit;
  end;

  Procedure SP_PROC_GET(nProc_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_processos where proc_id = nProc_id;
  end;

  Procedure SP_PROC_GETMP(nProc_id in number, cur out sys_refcursor) as
  begin
    open cur for
  SELECT    FF.PROC_ID
        , FF.NUMERO
        , FF.ANO
        , FF.DV
        , FF.ORIG_ID
        , (SELECT FFA.DESCRICAO
            FROM FEP_ORIGENS FFA
          WHERE FFA.ORIG_ID =  FF.ORIG_ID
          ) Origem_Descricao
        , FF.PESS_ID
        ,(SELECT FP.RAZAO_SOCIAL
              FROM FEP_PESSOAS FP
             WHERE FP.PESS_ID = FF.PESS_ID
           ) REQUERENTE_NOME
        , FF.ASPR_ID
        , (SELECT FX.DESCRICAO
            FROM FEP_ASSUNTOS_PROCESSOS FX
            WHERE FX.ASPR_ID = FF.ASPR_ID
          )  Assunto_Descricao
        , FF.SETO_ID
        , (SELECT FS.NOME
            FROM FEP_SETORES FS
            WHERE FS.SETO_ID = FF.SETO_ID
          ) Seto_nome
        , (SELECT TI.DESCRICAO
            FROM FEP_TIPOS_DOCUMENTOS TI
            WHERE TI.TIDO_ID = FF.TIDO_ID
          ) Tido_descricao
        , (SELECT TL.DESCRICAO
            FROM fep_tipos_logradouros TL
            WHERE TL.TILO_ID = nvl(FF.tilo_id, nvl(PESS.tilo_id,PESS.tilo_id_corresp ))
          ) Logradouro
        , (SELECT CC.RV_MEANING
           FROM cg_ref_codes cc
           WHERE CC.RV_DOMAIN = 'DM_SITUACAO_PROC'
                 AND CC.RV_LOW_VALUE = FF.Situacao
          ) Situacao_descricao
        , (SELECT Unfe_id
           FROM Fep_municipios UF
           WHERE UF.MUNI_ID = nvl(FF.muni_id, nvl(PESS.muni_id,PESS.muni_id_corresp))
          ) Unfe_id
      , nvl(FF.muni_id,          nvl(PESS.muni_id,PESS.muni_id_corresp   )) muni_id
      , (SELECT MU.NOME
           FROM Fep_municipios MU
           WHERE MU.MUNI_ID = nvl(FF.muni_id, nvl(PESS.muni_id,PESS.muni_id_corresp))
          ) Municipio
      , FF.Tido_id
      , FF.DATA_ENTRADA
      , FF.STATUS
      , FF.SITUACAO
      , nvl(FF.tilo_id,          nvl(PESS.tilo_id,PESS.tilo_id_corresp )) tilo_id
      , nvl(FF.endereco_corresp, nvl(PESS.endereco,PESS.endereco_corresp )) endereco_corresp
      , nvl(FF.bairro_corresp,   nvl(PESS.bairro,PESS.bairro_corresp     )) bairro_corresp
      , nvl(FF.muni_id,          nvl(PESS.muni_id,PESS.muni_id_corresp   )) muni_id
      , nvl(FF.cep_corresp,      nvl(PESS.cep,PESS.cep_corresp           )) cep_corresp
      , nvl(FF.observacao,       PESS.observacao) observacao
      , FF.DATA_INCLUSAO
      , FF.OPERADOR_INCLUSAO
      , FF.DATA_ATUALIZACAO
      , FF.OPERADOR_ATUALIZACAO
      , FF.LICENCA_REQUERENTE
      , FF.MUDANCA_PORTE
      , FF.MEDIDA_PORTE
      , FF.PROC_INTEIRO
   FROM fep_pessoas PESS, FEP_PROCESSOS FF
   WHERE PESS.pess_id = FF.pess_id
         AND FF.proc_id = nProc_id;

  end SP_PROC_GETMP;

  Procedure SP_PROC_SRC(nProc_id              in number,
                        nNro_docs             in number,
                        nTido_id_docu         in number,
                        sDt_emissao_docu      in varchar,
                        nSeto_id_docu         in number,
                        sTido_docu_lic        in varchar,
                        nNro_docs_lic         in number,
                        nNro_docs_ai          in number,
                        sData_arquivamento    in varchar,
                        sDocu_fora_bd         in varchar,
                        sLibera_geracao_aut   in varchar,
                        sDm_eiarima           in varchar,
                        nDm_origem            in number,
                        sSituacao_nova        in varchar,
                        sData_situacao_nova   in varchar,
                        sDm_renovacao         in varchar,
                        nStatus               in number,
                        sSituacao             in varchar,
                        sData_situacao        in varchar,
                        sTilo_id              in varchar,
                        nMuni_id              in number,
                        sEndereco_corresp     in varchar,
                        sBairro_corresp       in varchar,
                        nCep_corresp          in number,
                        nPess_id_respondido   in number,
                        sObservacao           in varchar,
                        sData_inclusao        in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_inclusao    in varchar,
                        sOperador_atualizacao in varchar,
                        nNro_dias_parados     in number,
                        sLicenca_requerente   in varchar,
                        sProc_item_key        in varchar,
                        sProc_item_type       in varchar,
                        sData_pagamento       in varchar,
                        nValor_pago           in number,
                        nAno_inteiro          in number,
                        sMudanca_porte        in varchar,
                        nMedida_porte         in number,
                        nNro_integrantes      in number,
                        nNro_bloqueto         in number,
                        sData_expedicao       in varchar,
                        sData_entrega         in varchar,
                        nNumero               in number,
                        nAno                  in number,
                        ndv                   in number,
                        nResp_id              in number,
                        nOrig_id              in number,
                        nAspr_id              in number,
                        nPess_id              in number,
                        nSeto_id              in number,
                        nProc_id_ligacao      in number,
                        nTido_id              in number,
                        sData_entrada         in varchar,
                        cur                   out sys_refcursor) as

  vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_processos WHERE 0 = 0 ';

    IF nNro_docs != 0 THEN
    vSQL := vSQL || 'AND nro_docs = '||nNro_docs||' ';
    END IF;

    IF nTido_id_docu != 0 THEN
    vSQL := vSQL || 'AND tido_id_docu = '||nTido_id_docu||' ';
    END IF;

    IF sDt_emissao_docu != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(dt_emissao_docu) = TO_DATE('''||sDt_emissao_docu||''', ''dd/mm/rrrr'') ';
    END IF;

    IF nSeto_id_docu != 0 THEN
    vSQL := vSQL || 'AND seto_id_docu = '||nSeto_id_docu||' ';
    END IF;

    IF sTido_docu_lic != 'null' THEN
    vSQL := vSQL || 'AND tido_docu_lic LIKE ''%'||sTido_docu_lic||'%'' ';
    END IF;

    IF nNro_docs_lic != 0 THEN
    vSQL := vSQL || 'AND nro_docs_lic = '||nNro_docs_lic||' ';
    END IF;

    IF nNro_docs_ai != 0 THEN
    vSQL := vSQL || 'AND nro_docs_ai = '||nNro_docs_ai||' ';
    END IF;

    IF sData_arquivamento != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(data_arquivamento) = TO_DATE('''||sData_arquivamento||''', ''dd/mm/rrrr'') ';
    END IF;

    IF sDocu_fora_bd != 'null' THEN
    vSQL := vSQL || 'AND docu_fora_bd LIKE ''%'||sDocu_fora_bd||'%'' ';
    END IF;

    IF sLibera_geracao_aut != 'null' THEN
    vSQL := vSQL || 'AND libera_geracao_aut LIKE ''%'||sLibera_geracao_aut||'%'' ';
    END IF;

    IF sDm_eiarima != 'null' THEN
    vSQL := vSQL || 'AND dm_eiarima LIKE ''%'||sDm_eiarima||'%'' ';
    END IF;

    IF nDm_origem != 0 THEN
    vSQL := vSQL || 'AND dm_origem = '||nDm_origem||' ';
    END IF;

    IF sSituacao_nova != 'null' THEN
    vSQL := vSQL || 'AND situacao_nova LIKE ''%'||sSituacao_nova||'%'' ';
    END IF;

    IF sData_situacao_nova != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(data_situacao_nova) = TO_DATE('''||sData_situacao_nova||''', ''dd/mm/rrrr'') ';
    END IF;

    IF sDm_renovacao != 'null' THEN
    vSQL := vSQL || 'AND dm_renovacao LIKE ''%'||sDm_renovacao||'%'' ';
    END IF;

    IF nStatus != 0 THEN
    vSQL := vSQL || 'AND status = '||nStatus||' ';
    END IF;

    IF sSituacao != 'null' THEN
    vSQL := vSQL || 'AND situacao LIKE ''%'||sSituacao||'%'' ';
    END IF;

    IF sData_situacao != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(data_situacao) = TO_DATE('''||sData_situacao||''', ''dd/mm/rrrr'') ';
    END IF;

    IF sTilo_id != 'null' THEN
    vSQL := vSQL || 'AND tilo_id LIKE ''%'||sTilo_id||'%'' ';
    END IF;

    IF nMuni_id != 0 THEN
    vSQL := vSQL || 'AND muni_id = '||nMuni_id||' ';
    END IF;

    IF sEndereco_corresp != 'null' THEN
    vSQL := vSQL || 'AND endereco_corresp LIKE ''%'||sEndereco_corresp||'%'' ';
    END IF;

    IF sBairro_corresp != 'null' THEN
    vSQL := vSQL || 'AND bairro_corresp LIKE ''%'||sBairro_corresp||'%'' ';
    END IF;

    IF nCep_corresp != 0 THEN
    vSQL := vSQL || 'AND cep_corresp = '||nCep_corresp||' ';
    END IF;

    IF nPess_id_respondido != 0 THEN
    vSQL := vSQL || 'AND pess_id_respondido = '||nPess_id_respondido||' ';
    END IF;

    IF sObservacao != 'null' THEN
    vSQL := vSQL || 'AND observacao LIKE ''%'||sObservacao||'%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE('''||sData_inclusao||''', ''dd/mm/rrrr'') ';
    END IF;

    IF sData_atualizacao != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE('''||sData_atualizacao||''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
    vSQL := vSQL || 'AND operador_inclusao LIKE ''%'||sOperador_inclusao||'%'' ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
    vSQL := vSQL || 'AND operador_atualizacao LIKE ''%'||sOperador_atualizacao||'%'' ';
    END IF;

    IF nNro_dias_parados != 0 THEN
    vSQL := vSQL || 'AND nro_dias_parados = '||nNro_dias_parados||' ';
    END IF;

    IF sLicenca_requerente != 'null' THEN
    vSQL := vSQL || 'AND licenca_requerente LIKE ''%'||sLicenca_requerente||'%'' ';
    END IF;

    IF sProc_item_key != 'null' THEN
    vSQL := vSQL || 'AND proc_item_key LIKE ''%'||sProc_item_key||'%'' ';
    END IF;

    IF sProc_item_type != 'null' THEN
    vSQL := vSQL || 'AND proc_item_type LIKE ''%'||sProc_item_type||'%'' ';
    END IF;

    IF sData_pagamento != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(data_pagamento) = TO_DATE('''||sData_pagamento||''', ''dd/mm/rrrr'') ';
    END IF;

    IF nValor_pago != 0 THEN
    vSQL := vSQL || 'AND valor_pago = '||nValor_pago||' ';
    END IF;

    IF nAno_inteiro != 0 THEN
    vSQL := vSQL || 'AND ano_inteiro = '||nAno_inteiro||' ';
    END IF;

    IF sMudanca_porte != 'null' THEN
    vSQL := vSQL || 'AND mudanca_porte LIKE ''%'||sMudanca_porte||'%'' ';
    END IF;

    IF nMedida_porte != 0 THEN
    vSQL := vSQL || 'AND medida_porte = '||nMedida_porte||' ';
    END IF;

    IF nNro_integrantes != 0 THEN
    vSQL := vSQL || 'AND nro_integrantes = '||nNro_integrantes||' ';
    END IF;

    IF nNro_bloqueto != 0 THEN
    vSQL := vSQL || 'AND nro_bloqueto = '||nNro_bloqueto||' ';
    END IF;

    IF sData_expedicao != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(data_expedicao) = TO_DATE('''||sData_expedicao||''', ''dd/mm/rrrr'') ';
    END IF;

    IF sData_entrega != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(data_entrega) = TO_DATE('''||sData_entrega||''', ''dd/mm/rrrr'') ';
    END IF;

    IF nProc_id != 0 THEN
    vSQL := vSQL || 'AND proc_id = '||nProc_id||' ';
    END IF;

    IF nNumero != 0 THEN
    vSQL := vSQL || 'AND numero = '||nNumero||' ';
    END IF;

    IF nAno != 0 THEN
    vSQL := vSQL || 'AND ano = '||nAno||' ';
    END IF;

    IF ndv != 0 THEN
    vSQL := vSQL || 'AND dv = '||ndv||' ';
    END IF;

    IF nResp_id != 0 THEN
    vSQL := vSQL || 'AND resp_id = '||nResp_id||' ';
    END IF;

    IF nOrig_id != 0 THEN
    vSQL := vSQL || 'AND orig_id = '||nOrig_id||' ';
    END IF;

    IF nAspr_id != 0 THEN
    vSQL := vSQL || 'AND aspr_id = '||nAspr_id||' ';
    END IF;

    IF nPess_id != 0 THEN
    vSQL := vSQL || 'AND pess_id = '||nPess_id||' ';
    END IF;

    IF nSeto_id != 0 THEN
    vSQL := vSQL || 'AND seto_id = '||nSeto_id||' ';
    END IF;

    IF nProc_id_ligacao != 0 THEN
    vSQL := vSQL || 'AND proc_id_ligacao = '||nProc_id_ligacao||' ';
    END IF;

    IF nTido_id != 0 THEN
    vSQL := vSQL || 'AND tido_id = '||nTido_id||' ';
    END IF;

    IF sData_entrada != 'null' THEN
    vSQL := vSQL || 'AND TRUNC(data_entrada) = TO_DATE('''||sData_entrada||''', ''dd/mm/rrrr'') ';
    END IF;

    open cur for vSQL;
  end;

  PROCEDURE SP_PROC_LISTA_PROC_EMPTO(nAtan_id in Number,
                                     cur      out sys_refcursor) as

  BEGIN
    IF nAtan_id > 0 THEN

      BEGIN
        OPEN cur FOR

          SELECT proc.proc_id,
                 substr(lpad(proc.numero, 6, 0) || '-' ||
                        lpad(proc.orig_id, 4, 0) || '/' ||
                        lpad(proc.ano, 2, 0) || '-' || (proc.dv),
                        1,
                        16) processo,
                 proc.data_entrada,
                 BUSCA_STATUS_DOC_PROCESSO(proc.situacao) situacao,
                 proc.tido_id || ' - ' || tido.abreviatura || ' - ' ||
                 tido.descricao tipo_documento,
                 seto.sigla sigla_setor

            FROM fep_processos             proc,
                 fep_atividades_antropicas ata1,
                 fep_tipos_documentos      tido,
                 fep_responsabilidades     resp,
                 fep_setores               seto,
                 fep_pessoas               pess

           WHERE proc.resp_id = resp.resp_id
             AND proc.seto_id = seto.seto_id(+)
             AND resp.pess_id = pess.pess_id
             AND resp.atan_id = ata1.atan_id
             AND ata1.atan_id = nAtan_id
             AND proc.tido_id = tido.tido_id
             AND proc.resp_id = resp.resp_id
             AND proc.seto_id = seto.seto_id

           ORDER BY proc.data_entrada DESC;
      END;

    ELSE
      OPEN cur FOR
        SELECT * FROM DUAL WHERE 1 = 2;
    END IF;

  END;

  Procedure SP_PROC_INS(nNro_docs             in number,
                        nTido_id_docu         in number,
                        sDt_emissao_docu      in varchar,
                        nSeto_id_docu         in number,
                        sTido_docu_lic        in varchar,
                        nNro_docs_lic         in number,
                        nNro_docs_ai          in number,
                        sData_arquivamento    in varchar,
                        sDocu_fora_bd         in varchar,
                        sLibera_geracao_aut   in varchar,
                        sDm_eiarima           in varchar,
                        nDm_origem            in number,
                        sSituacao_nova        in varchar,
                        sData_situacao_nova   in varchar,
                        sDm_renovacao         in varchar,
                        nStatus               in number,
                        sSituacao             in varchar,
                        sData_situacao        in varchar,
                        sTilo_id              in varchar,
                        nMuni_id              in number,
                        sEndereco_corresp     in varchar,
                        sBairro_corresp       in varchar,
                        nCep_corresp          in number,
                        nPess_id_respondido   in number,
                        sObservacao           in varchar,
                        sData_inclusao        in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_inclusao    in varchar,
                        sOperador_atualizacao in varchar,
                        nNro_dias_parados     in number,
                        sLicenca_requerente   in varchar,
                        sProc_item_key        in varchar,
                        sProc_item_type       in varchar,
                        sData_pagamento       in varchar,
                        nValor_pago           in number,
                        nAno_inteiro          in number,
                        sMudanca_porte        in varchar,
                        nMedida_porte         in number,
                        nNro_integrantes      in number,
                        nNro_bloqueto         in number,
                        sData_expedicao       in varchar,
                        sData_entrega         in varchar,
                        nNumero               in number,
                        nAno                  in number,
                        ndv                   in number,
                        nResp_id              in number,
                        nOrig_id              in number,
                        nAspr_id              in number,
                        nPess_id              in number,
                        nSeto_id              in number,
                        nProc_id_ligacao      in number,
                        nTido_id              in number,
                        sData_entrada         in varchar,
                        nProc_id              out number) is
  begin
    INSERT INTO fep_processos
      (proc_id,
       nro_docs,
       tido_id_docu,
       dt_emissao_docu,
       seto_id_docu,
       tido_docu_lic,
       nro_docs_lic,
       nro_docs_ai,
       data_arquivamento,
       docu_fora_bd,
       libera_geracao_aut,
       dm_eiarima,
       dm_origem,
--       situacao_nova, -- Coluna retirada de uso conforme orientac?o da Malu
--       data_situacao_nova, -- Coluna retirada de uso conforme orientac?o da Malu
       dm_renovacao,
       status,
       situacao,
       data_situacao,
       tilo_id,
       muni_id,
       endereco_corresp,
       bairro_corresp,
       cep_corresp,
       pess_id_respondido,
       observacao,
       data_inclusao,
       data_atualizacao,
       operador_inclusao,
       operador_atualizacao,
       nro_dias_parados,
       licenca_requerente,
       proc_item_key,
       proc_item_type,
       data_pagamento,
       valor_pago,
       ano_inteiro,
       mudanca_porte,
       medida_porte,
       nro_integrantes,
       nro_bloqueto,
       data_expedicao,
       data_entrega,
       numero,
       ano,
       dv,
       resp_id,
       orig_id,
       aspr_id,
       pess_id,
       seto_id,
       proc_id_ligacao,
       tido_id,
       data_entrada)
    VALUES
      (PROC_SEQ.nextval,
       nNro_docs,
       nTido_id_docu,
       TO_DATE(sDt_emissao_docu, 'dd/mm/rrrr'),
       nSeto_id_docu,
       sTido_docu_lic,
       nNro_docs_lic,
       nNro_docs_ai,
       TO_DATE(sData_arquivamento, 'dd/mm/rrrr'),
       sDocu_fora_bd,
       sLibera_geracao_aut,
       sDm_eiarima,
       nDm_origem,
--       sSituacao_nova, -- Coluna retirada de uso conforme orientac?o da Malu
--       TO_DATE(sData_situacao_nova, 'dd/mm/rrrr'), -- Coluna retirada de uso conforme orientac?o da Malu
       sDm_renovacao,
       nStatus,
       sSituacao,
       TO_DATE(sData_situacao, 'dd/mm/rrrr'),
       sTilo_id,
       nMuni_id,
       sEndereco_corresp,
       sBairro_corresp,
       nCep_corresp,
       nPess_id_respondido,
       sObservacao,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       sOperador_atualizacao,
       nNro_dias_parados,
       sLicenca_requerente,
       sProc_item_key,
       sProc_item_type,
       TO_DATE(sData_pagamento, 'dd/mm/rrrr'),
       nValor_pago,
       nAno_inteiro,
       sMudanca_porte,
       nMedida_porte,
       nNro_integrantes,
       nNro_bloqueto,
       TO_DATE(sData_expedicao, 'dd/mm/rrrr'),
       TO_DATE(sData_entrega, 'dd/mm/rrrr'),
       nNumero,
       nAno,
       ndv,
       nResp_id,
       nOrig_id,
       nAspr_id,
       nPess_id,
       nSeto_id,
       nProc_id_ligacao,
       nTido_id,
       TO_DATE(sData_entrada, 'dd/mm/rrrr'));
    SELECT PROC_SEQ.currval into nProc_id FROM dual;
    commit;
  end;

  Procedure SP_PROC_UPD(nProc_id              in number,
                        nNro_docs             in number,
                        nTido_id_docu         in number,
                        sDt_emissao_docu      in varchar,
                        nSeto_id_docu         in number,
                        sTido_docu_lic        in varchar,
                        nNro_docs_lic         in number,
                        nNro_docs_ai          in number,
                        sData_arquivamento    in varchar,
                        sDocu_fora_bd         in varchar,
                        sLibera_geracao_aut   in varchar,
                        sDm_eiarima           in varchar,
                        nDm_origem            in number,
                        sSituacao_nova        in varchar,
                        sData_situacao_nova   in varchar,
                        sDm_renovacao         in varchar,
                        nStatus               in number,
                        sSituacao             in varchar,
                        sData_situacao        in varchar,
                        sTilo_id              in varchar,
                        nMuni_id              in number,
                        sEndereco_corresp     in varchar,
                        sBairro_corresp       in varchar,
                        nCep_corresp          in number,
                        nPess_id_respondido   in number,
                        sObservacao           in varchar,
                        sData_inclusao        in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_inclusao    in varchar,
                        sOperador_atualizacao in varchar,
                        nNro_dias_parados     in number,
                        sLicenca_requerente   in varchar,
                        sProc_item_key        in varchar,
                        sProc_item_type       in varchar,
                        sData_pagamento       in varchar,
                        nValor_pago           in number,
                        nAno_inteiro          in number,
                        sMudanca_porte        in varchar,
                        nMedida_porte         in number,
                        nNro_integrantes      in number,
                        nNro_bloqueto         in number,
                        sData_expedicao       in varchar,
                        sData_entrega         in varchar,
                        nNumero               in number,
                        nAno                  in number,
                        ndv                   in number,
                        nResp_id              in number,
                        nOrig_id              in number,
                        nAspr_id              in number,
                        nPess_id              in number,
                        nSeto_id              in number,
                        nProc_id_ligacao      in number,
                        nTido_id              in number,
                        sData_entrada         in varchar) is
  begin
    UPDATE fep_processos
       SET nro_docs             = nNro_docs,
           tido_id_docu         = nTido_id_docu,
           dt_emissao_docu      = TO_DATE(sDt_emissao_docu, 'dd/mm/rrrr'),
           seto_id_docu         = nSeto_id_docu,
           tido_docu_lic        = sTido_docu_lic,
           nro_docs_lic         = nNro_docs_lic,
           nro_docs_ai          = nNro_docs_ai,
           data_arquivamento    = TO_DATE(sData_arquivamento, 'dd/mm/rrrr'),
           docu_fora_bd         = sDocu_fora_bd,
           libera_geracao_aut   = sLibera_geracao_aut,
           dm_eiarima           = sDm_eiarima,
           dm_origem            = nDm_origem,
--           situacao_nova        = sSituacao_nova, -- Coluna retirada de uso conforme orientac?o da Malu
--           data_situacao_nova   = TO_DATE(sData_situacao_nova, 'dd/mm/rrrr'), -- Coluna retirada de uso conforme orientac?o da Malu
           dm_renovacao         = sDm_renovacao,
           status               = nStatus,
           situacao             = sSituacao,
           data_situacao        = TO_DATE(sData_situacao, 'dd/mm/rrrr'),
           tilo_id              = sTilo_id,
           muni_id              = nMuni_id,
           endereco_corresp     = sEndereco_corresp,
           bairro_corresp       = sBairro_corresp,
           cep_corresp          = nCep_corresp,
           pess_id_respondido   = nPess_id_respondido,
           observacao           = sObservacao,
           data_inclusao        = TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_inclusao    = sOperador_inclusao,
           operador_atualizacao = sOperador_atualizacao,
           nro_dias_parados     = nNro_dias_parados,
           licenca_requerente   = sLicenca_requerente,
           proc_item_key        = sProc_item_key,
           proc_item_type       = sProc_item_type,
           data_pagamento       = TO_DATE(sData_pagamento, 'dd/mm/rrrr'),
           valor_pago           = nValor_pago,
           ano_inteiro          = nAno_inteiro,
           mudanca_porte        = sMudanca_porte,
           medida_porte         = nMedida_porte,
           nro_integrantes      = nNro_integrantes,
           nro_bloqueto         = nNro_bloqueto,
           data_expedicao       = TO_DATE(sData_expedicao, 'dd/mm/rrrr'),
           data_entrega         = TO_DATE(sData_entrega, 'dd/mm/rrrr'),
           numero               = nNumero,
           ano                  = nAno,
           dv                   = ndv,
           resp_id              = nResp_id,
           orig_id              = nOrig_id,
           aspr_id              = nAspr_id,
           pess_id              = nPess_id,
           seto_id              = nSeto_id,
           proc_id_ligacao      = nProc_id_ligacao,
           tido_id              = nTido_id,
           data_entrada         = TO_DATE(sData_entrada, 'dd/mm/rrrr')
     WHERE proc_id = nProc_id;
    commit;
  end SP_PROC_UPD;

 Procedure SP_PROC_UPD_MP(nProc_id              in number,
                          sSituacao             in varchar,
                          sData_entrada         in varchar,
                          nPess_id              in number,
                          nAspr_id              in number,
                          nTido_id              in number,
                          nSeto_id              in number,
                          sObservacao           in varchar,
                          sTilo_id              in varchar,
                          sEndereco_corresp     in varchar,
                          sBairro_corresp       in varchar,
                          nMuni_id              in number,
                          sCep_corresp          in number,
                          sData_atualizacao     in varchar,
                          sOperador_atualizacao in varchar

                         ) is
  begin
    UPDATE fep_processos
       SET situacao             = sSituacao,
           data_entrada         = TO_DATE(sData_entrada, 'dd/mm/rrrr'),
           Pess_id         = nPess_id,
           Aspr_id         = nAspr_id,
           Tido_id         = nTido_id,
           Seto_id         = nSeto_id,
           Observacao          = sObservacao,
           Tilo_id             = sTilo_id,
           Endereco_corresp    = sEndereco_corresp,
           Bairro_corresp      = sBairro_corresp,
           Muni_id             = nMuni_id,
           Cep_corresp         = sCep_corresp,
           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_atualizacao = sOperador_atualizacao
     WHERE proc_id = nProc_id;
    commit;
  end SP_PROC_UPD_MP;

  Procedure SP_PROC_DEL(nProc_id in number) IS
  BEGIN
    DELETE FROM fep_processos WHERE proc_id = nProc_id;
    commit;
  end;

  Procedure SP_EPRO_GET(nEpro_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_empreend_processos where epro_id = nEpro_id;
  end;

  Procedure SP_EPRO_SRC(nEpro_id              in number,
                        nPess_id              in number,
                        nProc_id              in number,
                        nResp_id              in number,
                        nTipa_id              in number,
                        sCoordenador          in varchar,
                        sEmpdor_resp          in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor) as
  begin
    open cur for
      select *
        FROM fep_empreend_processos

       WHERE (nEpro_id = 0 OR epro_id = nEpro_id)
         AND (nPess_id = 0 OR pess_id = nPess_id)
         AND (nProc_id = 0 OR proc_id = nProc_id)
         AND (nResp_id = 0 OR resp_id = nResp_id)
         AND (nTipa_id = 0 OR tipa_id = nTipa_id)
         AND (sCoordenador = 'null' OR coordenador = sCoordenador)
         AND (sEmpdor_resp = 'null' OR empdor_resp = sEmpdor_resp)
         AND (sData_inclusao = 'null' OR
             data_inclusao = TO_DATE(sData_inclusao, 'dd/mm/rrrr'))
         AND (sOperador_inclusao = 'null' OR
             operador_inclusao = sOperador_inclusao)
         AND (sData_atualizacao = 'null' OR
             data_atualizacao = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'))
         AND (sOperador_atualizacao = 'null' OR
             operador_atualizacao = sOperador_atualizacao);
  end;

  Procedure SP_EPRO_INS(nPess_id              in number,
                        nProc_id              in number,
                        nResp_id              in number,
                        nTipa_id              in number,
                        sCoordenador          in varchar,
                        sEmpdor_resp          in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nEpro_id              out number) is
  begin
    INSERT INTO fep_empreend_processos
      (epro_id,
       pess_id,
       proc_id,
       resp_id,
       tipa_id,
       coordenador,
       empdor_resp,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao)
    VALUES
      (EPRO_SEQ.nextval,
       nPess_id,
       nProc_id,
       nResp_id,
       nTipa_id,
       sCoordenador,
       sEmpdor_resp,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao);
    SELECT EPRO_SEQ.currval into nEpro_id FROM dual;
    commit;
  end;

  Procedure SP_EPRO_UPD(nEpro_id              in number,
                        nPess_id              in number,
                        nProc_id              in number,
                        nResp_id              in number,
                        nTipa_id              in number,
                        sCoordenador          in varchar,
                        sEmpdor_resp          in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar) is
  begin
    UPDATE fep_empreend_processos
       SET pess_id              = nPess_id,
           proc_id              = nProc_id,
           resp_id              = nResp_id,
           tipa_id              = nTipa_id,
           coordenador          = sCoordenador,
           empdor_resp          = sEmpdor_resp,
           data_inclusao        = sData_inclusao,
           operador_inclusao    = sOperador_inclusao,
           data_atualizacao     = sData_atualizacao,
           operador_atualizacao = sOperador_atualizacao
     WHERE epro_id = nEpro_id;
    commit;
  end;

  Procedure SP_EPRO_DEL(nEpro_id in number) IS
  BEGIN
    DELETE FROM fep_empreend_processos WHERE epro_id = nEpro_id;
    commit;
  end;

  Procedure SP_TSOI_GET(nTsoi_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_tipos_sit_solic_int where tsoi_id = nTsoi_id;
  end;

  Procedure SP_TSOI_SRC(nTsoi_id              in number,
                        sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor) as
  begin
    open cur for
      select *
        FROM fep_tipos_sit_solic_int

       WHERE (nTsoi_id = 0 OR tsoi_id = nTsoi_id)
         AND (sDescricao = 'null' OR descricao = sDescricao)
         AND (sData_inclusao = 'null' OR
             data_inclusao = TO_DATE(sData_inclusao, 'dd/mm/rrrr'))
         AND (sOperador_inclusao = 'null' OR
             operador_inclusao = sOperador_inclusao)
         AND (sData_atualizacao = 'null' OR
             data_atualizacao = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'))
         AND (sOperador_atualizacao = 'null' OR
             operador_atualizacao = sOperador_atualizacao);
  end;

  Procedure SP_TSOI_INS(sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nTsoi_id              out number) is
  begin
    INSERT INTO fep_tipos_sit_solic_int
      (tsoi_id,
       descricao,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao)
    VALUES
      (TSOI_SEQ.nextval,
       sDescricao,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao);
    SELECT TSOI_SEQ.currval into nTsoi_id FROM dual;
    commit;
  end;

  Procedure SP_TSOI_UPD(nTsoi_id              in number,
                        sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar) is
  begin
    UPDATE fep_tipos_sit_solic_int
       SET descricao            = sDescricao,
           data_inclusao        = sData_inclusao,
           operador_inclusao    = sOperador_inclusao,
           data_atualizacao     = sData_atualizacao,
           operador_atualizacao = sOperador_atualizacao
     WHERE tsoi_id = nTsoi_id;
    commit;
  end;

  Procedure SP_TSOI_DEL(nTsoi_id in number) IS
  BEGIN
    DELETE FROM fep_tipos_sit_solic_int WHERE tsoi_id = nTsoi_id;
    commit;
  end;

  Procedure SP_TIDO_GET(nTido_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_tipos_documentos where tido_id = nTido_id;
  end;

  Procedure SP_TIDO_SRC(nTido_id                in number,
                        nAspr_id                in number,
                        sData_inclusao          in varchar,
                        sOperador_inclusao      in varchar,
                        sData_atualizacao       in varchar,
                        sOperador_atualizacao   in varchar,
                        sDm_incluir_mp          in varchar,
                        sDm_valida_medida_porte in varchar,
                        sDescricao              in varchar,
                        sAbreviatura            in varchar,
                        sEm_uso                 in varchar,
                        nSucd_id                in number,
                        sRenovacao_automatica   in varchar,
                        sHistorico_cobranca     in varchar,
                        sHistorico_pagamento    in varchar,
                        nCriterio_preco         in number,
                        sAmpliacao              in varchar,
                        sAjuda                  in varchar,
                        cur                     out sys_refcursor) as
  begin
    open cur for
      select *
        FROM fep_tipos_documentos

       WHERE (nTido_id = 0 OR tido_id = nTido_id)
         AND (nAspr_id = 0 OR aspr_id = nAspr_id)
         AND (sData_inclusao = 'null' OR
             data_inclusao = TO_DATE(sData_inclusao, 'dd/mm/rrrr'))
         AND (sOperador_inclusao = 'null' OR
             operador_inclusao = sOperador_inclusao)
         AND (sData_atualizacao = 'null' OR
             data_atualizacao = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'))
         AND (sOperador_atualizacao = 'null' OR
             operador_atualizacao = sOperador_atualizacao)
         AND (sDm_incluir_mp = 'null' OR dm_incluir_mp = sDm_incluir_mp)
         AND (sDm_valida_medida_porte = 'null' OR
             dm_valida_medida_porte = sDm_valida_medida_porte)
         AND (sDescricao = 'null' OR descricao = sDescricao)
         AND (sAbreviatura = 'null' OR abreviatura = sAbreviatura)
         AND (sEm_uso = 'null' OR em_uso = sEm_uso)
         AND (nSucd_id = 0 OR sucd_id = nSucd_id)
         AND (sRenovacao_automatica = 'null' OR
             renovacao_automatica = sRenovacao_automatica)
         AND (sHistorico_cobranca = 'null' OR
             historico_cobranca = sHistorico_cobranca)
         AND (sHistorico_pagamento = 'null' OR
             historico_pagamento = sHistorico_pagamento)
         AND (nCriterio_preco = 0 OR criterio_preco = nCriterio_preco)
         AND (sAmpliacao = 'null' OR ampliacao = sAmpliacao)
         AND (sAjuda = 'null' OR ajuda = sAjuda);
  end;

  Procedure SP_TIDO_INS(nAspr_id                in number,
                        sData_inclusao          in varchar,
                        sOperador_inclusao      in varchar,
                        sData_atualizacao       in varchar,
                        sOperador_atualizacao   in varchar,
                        sDm_incluir_mp          in varchar,
                        sDm_valida_medida_porte in varchar,
                        sDescricao              in varchar,
                        sAbreviatura            in varchar,
                        sEm_uso                 in varchar,
                        nSucd_id                in number,
                        sRenovacao_automatica   in varchar,
                        sHistorico_cobranca     in varchar,
                        sHistorico_pagamento    in varchar,
                        nCriterio_preco         in number,
                        sAmpliacao              in varchar,
                        sAjuda                  in varchar,
                        nTido_id                out number) is
  begin
    INSERT INTO fep_tipos_documentos
      (tido_id,
       aspr_id,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao,
       dm_incluir_mp,
       dm_valida_medida_porte,
       descricao,
       abreviatura,
       em_uso,
       sucd_id,
       renovacao_automatica,
       historico_cobranca,
       historico_pagamento,
       criterio_preco,
       ampliacao,
       ajuda)
    VALUES
      (TIDO_SEQ.nextval,
       nAspr_id,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao,
       sDm_incluir_mp,
       sDm_valida_medida_porte,
       sDescricao,
       sAbreviatura,
       sEm_uso,
       nSucd_id,
       sRenovacao_automatica,
       sHistorico_cobranca,
       sHistorico_pagamento,
       nCriterio_preco,
       sAmpliacao,
       sAjuda);
    SELECT TIDO_SEQ.currval into nTido_id FROM dual;
    commit;
  end;

  Procedure SP_TIDO_UPD(nTido_id                in number,
                        nAspr_id                in number,
                        sData_inclusao          in varchar,
                        sOperador_inclusao      in varchar,
                        sData_atualizacao       in varchar,
                        sOperador_atualizacao   in varchar,
                        sDm_incluir_mp          in varchar,
                        sDm_valida_medida_porte in varchar,
                        sDescricao              in varchar,
                        sAbreviatura            in varchar,
                        sEm_uso                 in varchar,
                        nSucd_id                in number,
                        sRenovacao_automatica   in varchar,
                        sHistorico_cobranca     in varchar,
                        sHistorico_pagamento    in varchar,
                        nCriterio_preco         in number,
                        sAmpliacao              in varchar,
                        sAjuda                  in varchar) is
  begin
    UPDATE fep_tipos_documentos
       SET aspr_id                = nAspr_id,
           data_inclusao          = sData_inclusao,
           operador_inclusao      = sOperador_inclusao,
           data_atualizacao       = sData_atualizacao,
           operador_atualizacao   = sOperador_atualizacao,
           dm_incluir_mp          = sDm_incluir_mp,
           dm_valida_medida_porte = sDm_valida_medida_porte,
           descricao              = sDescricao,
           abreviatura            = sAbreviatura,
           em_uso                 = sEm_uso,
           sucd_id                = nSucd_id,
           renovacao_automatica   = sRenovacao_automatica,
           historico_cobranca     = sHistorico_cobranca,
           historico_pagamento    = sHistorico_pagamento,
           criterio_preco         = nCriterio_preco,
           ampliacao              = sAmpliacao,
           ajuda                  = sAjuda
     WHERE tido_id = nTido_id;
    commit;
  end;

  Procedure SP_TIDO_DEL(nTido_id in number) IS
  BEGIN
    DELETE FROM fep_tipos_documentos WHERE tido_id = nTido_id;
    commit;
  end;

  Procedure SP_TIDO_SRC_SINPLI(cur out sys_refcursor) as
  begin
    open cur for
      select *
        from fep_tipos_documentos
       where tido_id between 100 and 699
       order by 2;
  end;

  Procedure SP_SOSE_GET(nSose_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_solic_seamb where sose_id = nSose_id;
  end;

  procedure sp_sose_src_doc(nproc_id in number, cur out sys_refcursor) as
--para retornar a solicitação que está associada Ã  documento em vigor ou prorrogado
  begin
    open cur for
      select sose.*, pck_net_processos.fasxp_qtd_erros(sose.sose_id) as qtd_erros
      from   fep_solic_seamb            sose,
             fep_solic_seamb_documentos sodc,
             fep_documentos             docu
      where  sose.proc_id = nproc_id
         and sose.sose_id = sodc.sose_id
         and sodc.docu_id = docu.docu_id
         and docu.situacao in ('E','G');

  end;

  Procedure SP_SOSE_SRC(nSose_id              in number,
                        nMedida_porte_calc    in number,
                        sDm_alteracao_cad     in varchar,
                        sDm_alteracao_rt      in varchar,
                        sMotivo_indeferimento in varchar,
                        sOperador_atualizacao in varchar,
                        nHicb_id              in number,
                        nMedida_porte_cad     in number,
                        nAtan_id              in number,
                        nProc_id              in number,
                        nTsoi_id              in number,
                        nTido_id              in number,
                        nDm_tipo_solic_seamb  in number,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select fep_solic_seamb.*, PCK_NET_PROCESSOS.FASXP_QTD_ERROS(fep_solic_seamb.sose_id) as QTD_ERROS FROM fep_solic_seamb WHERE 0 = 0 ';

    IF nMedida_porte_calc != 0 THEN
      vSQL := vSQL || 'AND medida_porte_calc = ' || nMedida_porte_calc || ' ';
    END IF;

    IF sDm_alteracao_cad != 'null' THEN
      vSQL := vSQL || 'AND dm_alteracao_cad LIKE ''%' || sDm_alteracao_cad ||
              '%'' ';
    END IF;

    IF sDm_alteracao_rt != 'null' THEN
      vSQL := vSQL || 'AND dm_alteracao_rt LIKE ''%' || sDm_alteracao_rt ||
              '%'' ';
    END IF;

    IF sMotivo_indeferimento != 'null' THEN
      vSQL := vSQL || 'AND motivo_indeferimento LIKE ''%' || sMotivo_indeferimento || '%'' ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||  sOperador_atualizacao || '%'' ';
    END IF;

    IF nHicb_id != 0 THEN
      vSQL := vSQL || 'AND hicb_id = ' || nHicb_id || ' ';
    END IF;

    IF nMedida_porte_cad != 0 THEN
      vSQL := vSQL || 'AND medida_porte_cad = ' || nMedida_porte_cad || ' ';
    END IF;

    IF nSose_id != 0 THEN
      vSQL := vSQL || 'AND sose_id = ' || nSose_id || ' ';
    END IF;

    IF nAtan_id != 0 THEN
      vSQL := vSQL || 'AND atan_id = ' || nAtan_id || ' ';
    END IF;

    IF nProc_id != 0 THEN
      vSQL := vSQL || 'AND proc_id = ' || nProc_id || ' ';
    END IF;

    IF nTsoi_id != 0 THEN
      vSQL := vSQL || 'AND tsoi_id = ' || nTsoi_id || ' ';
    END IF;

    IF nTido_id != 0 THEN
      vSQL := vSQL || 'AND tido_id = ' || nTido_id || ' ';
    END IF;

    IF nDm_tipo_solic_seamb != 0 THEN
      vSQL := vSQL || 'AND  = dm_tipo_solic_seamb '|| nDm_tipo_solic_seamb || ' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' || sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' || sOperador_inclusao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' || sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_SOSE_INS(nMedida_porte_calc    in number,
                        sDm_alteracao_cad     in varchar,
                        sDm_alteracao_rt      in varchar,
                        sMotivo_indeferimento in varchar,
                        sOperador_atualizacao in varchar,
                        nHicb_id              in number,
                        nMedida_porte_cad     in number,
                        nAtan_id              in number,
                        nProc_id              in number,
                        nTsoi_id              in number,
                        nTido_id              in number,
                        nDm_tipo_solic_seamb  in number,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        nSose_id              out number) is
  nDsse_id              fep_docs_solic_seamb.dsse_id%type;
  v_tem_licenca varchar2(1):='N';
cursor c is
 select 'S'
  from fep_solic_seamb sose
  where sose.atan_id=nAtan_id
  and sose.tsoi_id=6
  and sose.tido_id=120;

  begin
    open c;
    fetch c into v_tem_licenca;
    if c%notfound then
      v_tem_licenca:='N';
    end if;
    close c;
    INSERT INTO fep_solic_seamb
      (sose_id,
       medida_porte_calc,
       dm_alteracao_cad,
       dm_alteracao_rt,
       motivo_indeferimento,
       operador_atualizacao,
       hicb_id,
       medida_porte_cad,
       atan_id,
       proc_id,
       tsoi_id,
       tido_id,
       dm_tipo_solic_seamb,
       data_inclusao,
       operador_inclusao,
       data_atualizacao)
    VALUES
      (SOSE_SEQ.nextval,
       nMedida_porte_calc,
       sDm_alteracao_cad,
       sDm_alteracao_rt,
       sMotivo_indeferimento,
       sOperador_atualizacao,
       nHicb_id,
       nMedida_porte_cad,
       nAtan_id,
       nProc_id,
       nTsoi_id,
       nTido_id,
       nDm_tipo_solic_seamb,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'));
    SELECT SOSE_SEQ.currval into nSose_id FROM dual;
    BEGIN
       pck_net_processos.sp_insere_docs_sose(nTido_id,
                                        nAtan_id,
                                        nSose_id,
                                        nMedida_porte_cad,
                                        nMedida_porte_calc,
                                        sDm_alteracao_rt,
                                        nDm_tipo_solic_seamb);
    END;
    commit;
/*    if nTido_id=120
    and v_tem_licenca='S' then
       INSERT INTO fep_docs_solic_seamb
       (dsse_id,
        sose_id,
        dm_tipo_doc_solic_seamb,
        data_inclusao,
        operador_inclusao,
        data_atualizacao,
        operador_atualizacao,
        data_entrega)
        VALUES
        (DSSE_SEQ.nextval,
         nSose_id,
         10,
         TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
         sOperador_inclusao,
         TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
         sOperador_atualizacao,
         null);
        SELECT DSSE_SEQ.currval into nDsse_id FROM dual;
         commit;
    end if;*/
  end;
--
  Procedure SP_SOSE_UPD(nSose_id              in number,
                        nMedida_porte_calc    in number,
                        sDm_alteracao_cad     in varchar,
                        sDm_alteracao_rt      in varchar,
                        sMotivo_indeferimento in varchar,
                        sOperador_atualizacao in varchar,
                        nHicb_id              in number,
                        nMedida_porte_cad     in number,
                        nAtan_id              in number,
                        nProc_id              in number,
                        nTsoi_id              in number,
                        nTido_id              in number,
                        nDm_tipo_solic_seamb  in number,
                        sData_atualizacao     in varchar,
                        sCancelar             in varchar default null) is -- Identifica se eh um cancelamento de solicitacao (Carlos Vinicius M Oliveira) is
  Begin
    -- Carlos Vinicius M Oliveira
    -- Data: 18/01/2016
    -- Reaproveitamento da procedure para efetuar update em caso de solicitacao cancelada (retira da lista tecnicos fepam).
    If sCancelar is null then
      UPDATE fep_solic_seamb
         SET medida_porte_calc    = nMedida_porte_calc,
             dm_alteracao_cad     = sDm_alteracao_cad,
             dm_alteracao_rt      = sDm_alteracao_rt,
             motivo_indeferimento = sMotivo_indeferimento,
             operador_atualizacao = sOperador_atualizacao,
             hicb_id              = nHicb_id,
             medida_porte_cad     = nMedida_porte_cad,
             atan_id              = nAtan_id,
             proc_id              = nProc_id,
             tsoi_id              = nTsoi_id,
             tido_id              = nTido_id,
             dm_tipo_solic_seamb  = nDm_tipo_solic_seamb,
             data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr')
       WHERE sose_id = nSose_id;
   Else
      -- Deixar preenchido o hicb_id da solicitação pra não perder o histórico com o boleto -- Cátia Jardim
      UPDATE fep_solic_seamb
         SET -- hicb_id              = null, -- Retira o vinculo com o historico de cobranca (boleto)
             tsoi_id              = 23,   -- Muda status da solicitacao para "Cancelada".
             operador_atualizacao = sOperador_atualizacao,
             data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr')
       WHERE sose_id = nSose_id;
   End if;
   Commit;
  End;
--
  Procedure SP_SOSE_DEL(nSose_id in number) IS
  BEGIN
    DELETE FROM fep_aux_sose_problemas axsp WHERE axsp.sose_id = nSose_id;
    DELETE FROM fep_solic_seamb WHERE sose_id = nSose_id;
    commit;
  end;
  Procedure SP_SOSE_SRC_PENDENTES(cur out sys_refcursor) as
  begin
    open cur for
      select fss.sose_id,
       fss.atan_id,
       fss.proc_id,
       fss.tsoi_id,
       fss.tido_id,
    --   dm_tipo_solic_seamb,
       fss.data_inclusao,
       fss.operador_inclusao,
       fss.data_atualizacao,
       fss.operador_atualizacao,
       fss.hicb_id,
       fss.medida_porte_cad,
       fss.medida_porte_calc,
       fss.motivo_indeferimento,
       fss.dm_alteracao_cad,
       fss.dm_alteracao_rt ,
             (TO_CHAR(faa.atan_id) || ' - ' || faa.descricao) as descricao,
             (TO_CHAR(fp.pess_id) || ' - ' || fp.razao_social) as razao_social,
             FASXP_QTD_ERROS(fss.sose_id) as QTD_ERROS,
             pck_seamb.fc_sose_prorr_judicial(fss.sose_id) mensagem,
           --  decode(fss.tido_id,120,decode(pck_net_processos.fc_licenca_nova(faa.atan_id),'S',1,'N',2),
           --             151,decode(pck_net_processos.fc_licenca_nova(faa.atan_id),'S',1,'N',2),
           --             340,5,
           --             140,6)
           pck_net_processos.FC_tipo_documento_sose(fss.sose_id) dm_tipo_solic_seamb
        from FEP_SOLIC_SEAMB fss
       INNER JOIN FEP_ATIVIDADES_ANTROPICAS faa ON fss.atan_id =
                                                   faa.atan_id
       INNER JOIN FEP_RESPONSABILIDADES fr ON fss.atan_id = fr.atan_id
       INNER JOIN FEP_PESSOAS fp ON fr.pess_id = fp.pess_id
       WHERE (fr.tipa_id = '1' AND FR.DATA_FIM is null)
         AND ((fss.tsoi_id = 3) OR (fss.tsoi_id = 11))
       ORDER BY QTD_ERROS, fss.data_inclusao, fss.sose_id;
  end;

  Procedure SP_SOSE_SRC_PENDENTES_RT(cur out sys_refcursor) as
  begin
    open cur for
      select fss.*,
             (TO_CHAR(faa.atan_id) || ' - ' || faa.descricao) as descricao,
             (TO_CHAR(fp.pess_id) || ' - ' || fp.razao_social) as razao_social,
             FASXP_QTD_ERROS(fss.sose_id) as QTD_ERROS
        from FEP_SOLIC_SEAMB fss
       INNER JOIN FEP_ATIVIDADES_ANTROPICAS faa ON fss.atan_id =
                                                   faa.atan_id
       INNER JOIN FEP_RESPONSABILIDADES fr ON fss.atan_id = fr.atan_id
       INNER JOIN FEP_PESSOAS fp ON fr.pess_id = fp.pess_id
       WHERE (fr.tipa_id = '1' AND FR.DATA_FIM is null)
         AND (fss.dm_alteracao_cad = 'S' AND fss.dm_alteracao_rt = 'S')
         AND ((fss.tsoi_id = 1) OR (fss.tsoi_id = 2) OR (fss.tsoi_id = 9))
         AND  fc_documento_lic_vigor(fss.atan_id) IS NOT NULL
         ORDER BY QTD_ERROS, fss.data_inclusao, fss.sose_id;
  end;

  Procedure SP_SOSE_SRC_PENDENTES_SOLIC(cur out sys_refcursor) as
  begin
    open cur for
      select fss.*,
             (TO_CHAR(faa.atan_id) || ' - ' || faa.descricao) as descricao,
             (TO_CHAR(fp.pess_id) || ' - ' || fp.razao_social) as razao_social,
             FASXP_QTD_ERROS(fss.sose_id) as QTD_ERROS
        from FEP_SOLIC_SEAMB fss
       INNER JOIN FEP_ATIVIDADES_ANTROPICAS faa ON fss.atan_id =
                                                   faa.atan_id
       INNER JOIN FEP_RESPONSABILIDADES fr ON fss.atan_id = fr.atan_id
       INNER JOIN FEP_PESSOAS fp ON fr.pess_id = fp.pess_id
       WHERE (fr.tipa_id = '1' AND FR.DATA_FIM is null)
         AND (fss.tsoi_id = 14)
         ORDER BY QTD_ERROS, fss.data_inclusao, fss.sose_id;
  end;

  Procedure SP_DSSE_GET(nDsse_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_docs_solic_seamb where dsse_id = nDsse_id;
  end;

  Procedure SP_DSSE_SRC(nDsse_id                 in number,
                        nSose_id                 in number,
                        nDm_tipo_doc_solic_seamb in number,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        sData_atualizacao        in varchar,
                        sOperador_atualizacao    in varchar,
                        sData_entrega            in varchar,
                        cur                      out sys_refcursor) as
  begin
    open cur for
      select *
        FROM fep_docs_solic_seamb

       WHERE (nDsse_id = 0 OR dsse_id = nDsse_id)
         AND (nSose_id = 0 OR sose_id = nSose_id)
         AND (nDm_tipo_doc_solic_seamb = 0 OR
             dm_tipo_doc_solic_seamb = nDm_tipo_doc_solic_seamb)
         AND (sData_inclusao = 'null' OR
             data_inclusao = TO_DATE(sData_inclusao, 'dd/mm/rrrr'))
         AND (sOperador_inclusao = 'null' OR
             operador_inclusao = sOperador_inclusao)
         AND (sData_atualizacao = 'null' OR
             data_atualizacao = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'))
         AND (sOperador_atualizacao = 'null' OR
             operador_atualizacao = sOperador_atualizacao)
         AND (sData_entrega = 'null' OR
             data_entrega = TO_DATE(sData_entrega, 'dd/mm/rrrr'));
  end;

  Procedure SP_DSSE_INS(nSoseid                 in number,
                        nDmtipodocsolicseamb in number,
                        sDatainclusao           in varchar,
                        sOperadorinclusao       in varchar,
                        sDataatualizacao        in varchar,
                        sOperadoratualizacao    in varchar,
                        sDataentrega            in varchar,
                        nDsseid                 out number) is
   cursor c2 (p_tido_id in number,
            p_sose_id in number) is
select 'S'
  from fep_docs_solic_seamb dsse
  where dsse.sose_id=p_sose_id
  and dsse.dm_tipo_doc_solic_seamb=p_tido_id;
v_tem_doc_tido varchar2(1):='N';
 begin
v_tem_doc_tido:='N';
       open c2(nDmtipodocsolicseamb,nSoseid);
       fetch c2 into v_tem_doc_tido;
       if c2%notfound then
          v_tem_doc_tido:='N';
       end if;
       close c2;
       if  v_tem_doc_tido='N' then
    INSERT INTO fep_docs_solic_seamb
      (dsse_id,
       sose_id,
       dm_tipo_doc_solic_seamb,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao,
       data_entrega,
       atea_id
       )
    VALUES
      (DSSE_SEQ.nextval,
       nSoseid,
       nDmtipodocsolicseamb,
       sysdate,
       sOperadorinclusao,
       TO_DATE(sDataatualizacao, 'dd/mm/rrrr'),
       sOperadoratualizacao,
       TO_DATE(sDataentrega, 'dd/mm/rrrr'),
       null
       );
    SELECT DSSE_SEQ.currval into nDsseid FROM dual;
    commit;
  end if;
  end;

Procedure SP_DSSE_INS_ATE(nSoseid                 in number,
                        nDmtipodocsolicseamb in number,
                        sDatainclusao           in varchar,
                        sOperadorinclusao       in varchar,
                        sDataatualizacao        in varchar,
                        sOperadoratualizacao    in varchar,
                        sDataentrega            in varchar,
                        nAtea_id                in number default null,
                        nDsseid                 out number) is
  begin
    INSERT INTO fep_docs_solic_seamb
      (dsse_id,
       sose_id,
       dm_tipo_doc_solic_seamb,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao,
       data_entrega,
       atea_id
       )
    VALUES
      (DSSE_SEQ.nextval,
       nSoseid,
       nDmtipodocsolicseamb,
       TO_DATE(sDatainclusao, 'dd/mm/rrrr'),
       sOperadorinclusao,
       TO_DATE(sDataatualizacao, 'dd/mm/rrrr'),
       sOperadoratualizacao,
       TO_DATE(sDataentrega, 'dd/mm/rrrr'),
       nAtea_id
       );
    SELECT DSSE_SEQ.currval into nDsseid FROM dual;
    commit;
  end;


  Procedure SP_S3i_DSSE_INS(nSose_id                 in number,
                        nDm_tipo_doc_solic_seamb in number,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        sData_atualizacao        in varchar,
                        sOperador_atualizacao    in varchar,
                        sData_entrega            in varchar,
                        natea_id                 in number default null,
                        nDsse_id                 out number) is
  begin
    INSERT INTO fep_docs_solic_seamb
      (dsse_id,
       sose_id,
       dm_tipo_doc_solic_seamb,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao,
       data_entrega,
       atea_id
       )
    VALUES
      (DSSE_SEQ.nextval,
       nSose_id,
       nDm_tipo_doc_solic_seamb,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao,
       TO_DATE(sData_entrega, 'dd/mm/rrrr'),
       natea_id
       );
    SELECT DSSE_SEQ.currval into nDsse_id FROM dual;
    commit;
  end;

  Procedure SP_DSSE_UPD(nDsse_id                 in number,
                        nSose_id                 in number,
                        nDm_tipo_doc_solic_seamb in number,
                        sData_atualizacao        in varchar,
                        sOperador_atualizacao    in varchar,
                        sData_entrega            in varchar) is
  begin
    UPDATE fep_docs_solic_seamb sose
       SET sose_id                 = nSose_id,
           dm_tipo_doc_solic_seamb = nDm_tipo_doc_solic_seamb,
           data_atualizacao        = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_atualizacao    = sOperador_atualizacao,
           data_entrega            = TO_DATE(sData_entrega, 'dd/mm/rrrr'),
           sose.atea_id            = null
     WHERE dsse_id = nDsse_id;
    commit;
  end;

 Procedure SP_DSSE_UPD_ATE(nDsse_id                 in number,
                        nSose_id                 in number,
                        nDm_tipo_doc_solic_seamb in number,
                        sData_atualizacao        in varchar,
                        sOperador_atualizacao    in varchar,
                        sData_entrega            in varchar,
                        nAtea_id                 in number default null) is
  begin
    UPDATE fep_docs_solic_seamb sose
       SET sose_id                 = nSose_id,
           dm_tipo_doc_solic_seamb = nDm_tipo_doc_solic_seamb,
           data_atualizacao        = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_atualizacao    = sOperador_atualizacao,
           data_entrega            = TO_DATE(sData_entrega, 'dd/mm/rrrr'),
           sose.atea_id            = nAtea_id
     WHERE dsse_id = nDsse_id;
    commit;
  end;

  Procedure SP_DSSE_DEL(nDsse_id in number) IS
  BEGIN
    DELETE FROM fep_docs_solic_seamb WHERE dsse_id = nDsse_id;
    commit;
  end;

  Procedure SP_PRCR_GET(nPrcr_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_aux_proc_cond_restr where prcr_id = nPrcr_id;
  end;

  Procedure SP_PRCR_SRC(nPrcr_id              in number,
                        nPoll_id              in number,
                        nPoll_id3             in number,
                        nSose_id              in number,
                        sDm_libera_especifico in varchar,
                        nPoll_id4             in number,
                        sData_inicio          in varchar,
                        nSold_id              in number,
                        nProc_id              in number,
                        nPess_id_tecnico      in number,
                        nSeto_id_tecnico      in number,
                        nDocu_id_parecer      in number,
                        nTido_id_parecer      in number,
                        nDocu_id_revogado     in number,
                        nDocu_id_renovacao    in number,
                        nDocu_id_licenca      in number,
                        nTido_id_licenca      in number,
                        sData_vencimento      in varchar,
                        sObservacao           in varchar,
                        sDm_ativo             in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSeto_id_assinatura   in number,
                        nPoll_id2             in number,
                        nPoll_id5             in number,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_aux_proc_cond_restr WHERE 0 = 0 ';

    IF nPoll_id != 0 THEN
      vSQL := vSQL || 'AND poll_id = ' || nPoll_id || ' ';
    END IF;

    IF nPoll_id3 != 0 THEN
      vSQL := vSQL || 'AND poll_id3 = ' || nPoll_id3 || ' ';
    END IF;

    IF nSose_id != 0 THEN
      vSQL := vSQL || 'AND sose_id = ' || nSose_id || ' ';
    END IF;

    IF sDm_libera_especifico != 'null' THEN
      vSQL := vSQL || 'AND dm_libera_especifico LIKE ''%' ||
              sDm_libera_especifico || '%'' ';
    END IF;

    IF nPoll_id4 != 0 THEN
      vSQL := vSQL || 'AND poll_id4 = ' || nPoll_id4 || ' ';
    END IF;

    IF sData_inicio != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inicio) = TO_DATE(''' || sData_inicio ||
              ''', ''dd/mm/rrrr'') ';
    END IF;

    IF nSold_id != 0 THEN
      vSQL := vSQL || 'AND sold_id = ' || nSold_id || ' ';
    END IF;

    IF nPrcr_id != 0 THEN
      vSQL := vSQL || 'AND prcr_id = ' || nPrcr_id || ' ';
    END IF;

    IF nProc_id != 0 THEN
      vSQL := vSQL || 'AND proc_id = ' || nProc_id || ' ';
    END IF;

    IF nPess_id_tecnico != 0 THEN
      vSQL := vSQL || 'AND pess_id_tecnico = ' || nPess_id_tecnico || ' ';
    END IF;

    IF nSeto_id_tecnico != 0 THEN
      vSQL := vSQL || 'AND seto_id_tecnico = ' || nSeto_id_tecnico || ' ';
    END IF;

    IF nDocu_id_parecer != 0 THEN
      vSQL := vSQL || 'AND docu_id_parecer = ' || nDocu_id_parecer || ' ';
    END IF;

    IF nTido_id_parecer != 0 THEN
      vSQL := vSQL || 'AND tido_id_parecer = ' || nTido_id_parecer || ' ';
    END IF;

    IF nDocu_id_revogado != 0 THEN
      vSQL := vSQL || 'AND docu_id_revogado = ' || nDocu_id_revogado || ' ';
    END IF;

    IF nDocu_id_renovacao != 0 THEN
      vSQL := vSQL || 'AND docu_id_renovacao = ' || nDocu_id_renovacao || ' ';
    END IF;

    IF nDocu_id_licenca != 0 THEN
      vSQL := vSQL || 'AND docu_id_licenca = ' || nDocu_id_licenca || ' ';
    END IF;

    IF nTido_id_licenca != 0 THEN
      vSQL := vSQL || 'AND tido_id_licenca = ' || nTido_id_licenca || ' ';
    END IF;

    IF sData_vencimento != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_vencimento) = TO_DATE(''' ||
              sData_vencimento || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sObservacao != 'null' THEN
      vSQL := vSQL || 'AND observacao LIKE ''%' || sObservacao || '%'' ';
    END IF;

    IF sDm_ativo != 'null' THEN
      vSQL := vSQL || 'AND dm_ativo LIKE ''%' || sDm_ativo || '%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' ||
              sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||
              sOperador_atualizacao || '%'' ';
    END IF;

    IF nSeto_id_assinatura != 0 THEN
      vSQL := vSQL || 'AND seto_id_assinatura = ' || nSeto_id_assinatura || ' ';
    END IF;

    IF nPoll_id2 != 0 THEN
      vSQL := vSQL || 'AND poll_id2 = ' || nPoll_id2 || ' ';
    END IF;

    IF nPoll_id5 != 0 THEN
      vSQL := vSQL || 'AND poll_id5 = ' || nPoll_id5 || ' ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_PRCR_INS(nPoll_id              in number,
                        nPoll_id3             in number,
                        nSose_id              in number,
                        sDm_libera_especifico in varchar,
                        nPoll_id4             in number,
                        sData_inicio          in varchar,
                        nSold_id              in number,
                        nProc_id              in number,
                        nPess_id_tecnico      in number,
                        nSeto_id_tecnico      in number,
                        nDocu_id_parecer      in number,
                        nTido_id_parecer      in number,
                        nDocu_id_revogado     in number,
                        nDocu_id_renovacao    in number,
                        nDocu_id_licenca      in number,
                        nTido_id_licenca      in number,
                        sData_vencimento      in varchar,
                        sObservacao           in varchar,
                        sDm_ativo             in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSeto_id_assinatura   in number,
                        nPoll_id2             in number,
                        nPoll_id5             in number,
                        nPrcr_id              out number) is
  begin
    INSERT INTO fep_aux_proc_cond_restr
      (prcr_id,
       poll_id,
       poll_id3,
       sose_id,
       dm_libera_especifico,
       poll_id4,
       data_inicio,
       sold_id,
       proc_id,
       pess_id_tecnico,
       seto_id_tecnico,
       docu_id_parecer,
       tido_id_parecer,
       docu_id_revogado,
       docu_id_renovacao,
       docu_id_licenca,
       tido_id_licenca,
       data_vencimento,
       observacao,
       dm_ativo,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao,
       seto_id_assinatura,
       poll_id2,
       poll_id5)
    VALUES
      (PRCR_SEQ.nextval,
       nPoll_id,
       nPoll_id3,
       nSose_id,
       sDm_libera_especifico,
       nPoll_id4,
       TO_DATE(sData_inicio, 'dd/mm/rrrr'),
       nSold_id,
       nProc_id,
       nPess_id_tecnico,
       nSeto_id_tecnico,
       nDocu_id_parecer,
       nTido_id_parecer,
       nDocu_id_revogado,
       nDocu_id_renovacao,
       nDocu_id_licenca,
       nTido_id_licenca,
       TO_DATE(sData_vencimento, 'dd/mm/rrrr'),
       sObservacao,
       sDm_ativo,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao,
       nSeto_id_assinatura,
       nPoll_id2,
       nPoll_id5);
    SELECT PRCR_SEQ.currval into nPrcr_id FROM dual;
    commit;
  end;

  Procedure SP_PRCR_UPD(nPrcr_id              in number,
                        nPoll_id              in number,
                        nPoll_id3             in number,
                        nSose_id              in number,
                        sDm_libera_especifico in varchar,
                        nPoll_id4             in number,
                        sData_inicio          in varchar,
                        nSold_id              in number,
                        nProc_id              in number,
                        nPess_id_tecnico      in number,
                        nSeto_id_tecnico      in number,
                        nDocu_id_parecer      in number,
                        nTido_id_parecer      in number,
                        nDocu_id_revogado     in number,
                        nDocu_id_renovacao    in number,
                        nDocu_id_licenca      in number,
                        nTido_id_licenca      in number,
                        sData_vencimento      in varchar,
                        sObservacao           in varchar,
                        sDm_ativo             in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSeto_id_assinatura   in number,
                        nPoll_id2             in number,
                        nPoll_id5             in number) is

   dDataAtual     date;
   dDataIni       date;
   dDataFim       date;
   vDataInf       varchar2(1) := 'N';
   vLicPend       varchar2(1) := 'N';

   nProc_id_lic      number(10);
   nSeto_id_assina   number(6);
   nSeto_id_doc      number(6);

   cursor c1 is
      select docu.proc_id,
             docu.seto_id,
             trunc(docu.data_inicio_vigencia) data_ini_vig,
             trunc(docu.data_fim_vigencia)    data_fim_vig
        from fep_documentos docu
       where docu.docu_id = nDocu_id_licenca;

  begin

    select trunc(sysdate) into dDataAtual from dual;
    open  c1;
    fetch c1 into nProc_id_lic, nSeto_id_doc, dDataIni, dDataFim;
    close c1;

    if dDataIni > dDataAtual then
       vLicPend := 'S';
    end if;

    if nDocu_id_revogado is not null then
       vDataInf := 'S';
    end if;

    if nSeto_id_doc is null then
       nSeto_id_doc := nSeto_id_tecnico;
    end if;

    nSeto_id_assina := pck_proc_assinat.FC_SETO_ASSINAT_PROC( nProc_id_lic,  nDocu_id_licenca);

    if nSeto_id_assina is null then
       nSeto_id_assina := nSeto_id_assinatura;
    end if;

    begin


      UPDATE fep_aux_proc_cond_restr
         SET pess_id_tecnico      = nPess_id_tecnico,
             seto_id_tecnico      = nSeto_id_doc,
             docu_id_parecer      = nDocu_id_parecer,
             tido_id_parecer      = nTido_id_parecer,
             docu_id_licenca      = nDocu_id_licenca,
             tido_id_licenca      = nTido_id_licenca,
             seto_id_assinatura   = nSeto_id_assina,
             docu_id_revogado     = nDocu_id_revogado,
             data_inicio_vigencia = dDataIni,
             data_fim_vigencia    = dDataFim,
             dm_data_fim_inf      = vDataInf,
             dm_gera_lic_pendente = vLicPend,
             data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
             operador_atualizacao = sOperador_atualizacao
       WHERE prcr_id = nPrcr_id;
             commit;
    end;
    --------------------------------------------------------------
    --- Insere nas tabelas para fazer fluxo de ciencia das chefias
    ---                             ( Malu 03/10/2013 )
    --------------------------------------------------------------
    if pck_processos.fc_prcr_ramo(nPrcr_id) in ( 4710.10, 4710.11, 4710.12, 4710.20, 4710.30 ) then
       if nTido_id_licenca in ( 120, 151, 530, 860 ) and
          nDocu_id_parecer is not null and
          nDocu_id_licenca is not null then

          -- insere condic?es e restric?es
          if nTido_id_licenca in ( 120, 151) then
             -- 120 - Licenca de Operac?o
             begin
                pck_processos.pr_prcr_cond_restr(nPrcr_id);
                commit;
             end;
          elsif nTido_id_licenca = 530 then
             -- 530 - Indeferimento de Licenca de Operac?o
             begin
                pck_processos.pr_prcr_indef_SOSE(nPrcr_id);
                commit;
             end;
             -- Inclui a tabela auxiliar para relatorio indeferimento
             begin
                pck_proc_assinat.pr_prcr_tab_Indef(nPrcr_id);
                commit;
             end;
          elsif nTido_id_licenca = 860 then
             -- 860 - Decis?o Administrativa de Revogac?o de Licenca
             begin
                pck_processos.pr_prcr_decisao_adm(nPrcr_id);
                commit;
             end;
          end if;

          -- licenca
          begin
            update fep_documentos
               set situacao = 'C'
             where docu_id  =  nDocu_id_licenca;
                  commit;
          end;

          -- parecer
          begin
            update fep_documentos
               set situacao    = 'X',
                   dm_revisado = 'N'
             where docu_id  =  nDocu_id_parecer;
                  commit;
          end;

          -- insere na tabela para ciencia das chefias
          begin
            pck_proc_assinat.pr_scac_inclusao(nPrcr_id, nDocu_id_parecer, nDocu_id_licenca);
            commit;
          end;

       end if;
     end if;
  end;

  Procedure SP_PRCR_DEL(nPrcr_id in number) IS
  BEGIN
    DELETE FROM fep_aux_proc_cond_restr WHERE prcr_id = nPrcr_id;
    commit;
  end;

  Procedure SP_GERA_PROC_SEAMB_DOCS(nHicb_id in number) is
  begin
    PCK_SEAMB.PR_GERA_PROC_SEAMB_DOCS(nHicb_id);
    commit;
  end;

  Procedure SP_SODC_GET(nSodc_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_solic_seamb_documentos where sodc_id = nSodc_id;
  end;

  Procedure SP_SODC_SRC(nSodc_id              in number,
                        nSose_id              in number,
                        nDocu_id              in number,
                        sDm_ativo             in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_solic_seamb_documentos WHERE 0 = 0 ';

    IF nSodc_id != 0 THEN
      vSQL := vSQL || 'AND sodc_id = ' || nSodc_id || ' ';
    END IF;

    IF nSose_id != 0 THEN
      vSQL := vSQL || 'AND sose_id = ' || nSose_id || ' ';
    END IF;

    IF nDocu_id != 0 THEN
      vSQL := vSQL || 'AND docu_id = ' || nDocu_id || ' ';
    END IF;

    IF sDm_ativo != 'null' THEN
      vSQL := vSQL || 'AND dm_ativo LIKE ''%' || sDm_ativo || '%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' ||
              sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||
              sOperador_atualizacao || '%'' ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_SODC_INS(nSose_id              in number,
                        nDocu_id              in number,
                        sDm_ativo             in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSodc_id              out number) is
  begin
    INSERT INTO fep_solic_seamb_documentos
      (sodc_id,
       sose_id,
       docu_id,
       dm_ativo,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao)
    VALUES
      (SODC_SEQ.nextval,
       nSose_id,
       nDocu_id,
       sDm_ativo,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao);
    SELECT SODC_SEQ.currval into nSodc_id FROM dual;
    commit;
  end;

  Procedure SP_SODC_UPD(nSodc_id  in number,
                        nSose_id  in number,
                        nDocu_id  in number,
                        sDm_ativo in varchar,

                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar) is
  begin
    UPDATE fep_solic_seamb_documentos
       SET sose_id  = nSose_id,
           docu_id  = nDocu_id,
           dm_ativo = sDm_ativo,

           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_atualizacao = sOperador_atualizacao
     WHERE sodc_id = nSodc_id;
    commit;
  end;

  Procedure SP_SODC_DEL(nSodc_id in number) IS
  BEGIN
    DELETE FROM fep_solic_seamb_documentos WHERE sodc_id = nSodc_id;
    commit;
  end;

  Procedure SP_AXSP_GET(nAxsp_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_aux_sose_problemas where axsp_id = nAxsp_id;
  end;

  Procedure SP_AXSP_SRC(nAxsp_id              in number,
                        nSose_id              in number,
                        sDescricao            in varchar,
                        sData_atendimento     in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_aux_sose_problemas WHERE 0 = 0 ';

    IF nAxsp_id != 0 THEN
      vSQL := vSQL || 'AND axsp_id = ' || nAxsp_id || ' ';
    END IF;

    IF nSose_id != 0 THEN
      vSQL := vSQL || 'AND sose_id = ' || nSose_id || ' ';
    END IF;

    IF sDescricao != 'null' THEN
      vSQL := vSQL || 'AND descricao LIKE ''%' || sDescricao || '%'' ';
    END IF;

    IF sData_atendimento != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atendimento) = TO_DATE(''' ||
              sData_atendimento || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' ||
              sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||
              sOperador_atualizacao || '%'' ';
    END IF;

    vSQL := vSQL || ' ORDER BY axsp_id DESC ';

    open cur for vSQL;
  end;

  Procedure SP_AXSP_INS(nSose_id              in number,
                        sDescricao            in varchar,
                        sData_atendimento     in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nAxsp_id              out number) is
  begin
    INSERT INTO fep_aux_sose_problemas
      (axsp_id,
       sose_id,
       descricao,
       data_atendimento,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao)
    VALUES
      (AXSP_SEQ.nextval,
       nSose_id,
       sDescricao,
       TO_DATE(sData_atendimento, 'dd/mm/rrrr'),
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao);
    SELECT AXSP_SEQ.currval into nAxsp_id FROM dual;
    commit;
  end;

  Procedure SP_AXSP_UPD(nAxsp_id          in number,
                        nSose_id          in number,
                        sDescricao        in varchar,
                        sData_atendimento in varchar,

                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar) is
  begin
    UPDATE fep_aux_sose_problemas
       SET sose_id          = nSose_id,
           descricao        = sDescricao,
           data_atendimento = TO_DATE(sData_atendimento, 'dd/mm/rrrr'),

           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_atualizacao = sOperador_atualizacao
     WHERE axsp_id = nAxsp_id;
    commit;
  end;

  Procedure SP_AXSP_DEL(nAxsp_id in number) IS
  BEGIN
    DELETE FROM fep_aux_sose_problemas WHERE axsp_id = nAxsp_id;
    commit;
  end;

  Function FASXP_QTD_ERROS(nsose_id in number) return number is
    erros number;
  begin
    SELECT count(*)
      into erros
      FROM fep_aux_sose_problemas asxp
     WHERE asxp.data_atendimento is null
       and asxp.sose_id = nsose_id;
    return erros;
  end;

  Function busca_tido(nTido in Number) return varchar2 is
    Result varchar2(200);
  begin

    begin
      select (tido.abreviatura || ' - ' || tido.descricao)
        into Result
        from fep_tipos_documentos tido
       where tido.tido_id = nTido;
    end;
    return(result);

  end busca_tido;

  function BUSCA_STATUS_DOC_PROCESSO(nSituacao in varchar2) return varchar2 is
    vSituacao varchar2(30);
  begin

    begin
      select c.rv_meaning
        into vSituacao
        from cg_ref_codes c
       where c.rv_low_value = nSituacao
         and c.rv_domain = 'DM_SITUACAO_PROC';
    exception
      when others then
        vSituacao := '';
    end;
    return(vSituacao);

  end BUSCA_STATUS_DOC_PROCESSO;

  Procedure SP_DOCU_DEVOLVE(nDocu_id         in number,
                            nDocu_id_parecer in number,
                            nSose_id         in number) AS
    TIDO    NUMBER;
    TSOI    NUMBER;
    ALTRT   VARCHAR(1);
    HICB    NUMBER;
    VLRPAGO NUMBER;
  BEGIN
    UPDATE FEP_AUX_PROC_COND_RESTR APCR
       SET APCR.DOCU_ID_PARECER  = NULL,
           APCR.DOCU_ID_LICENCA  = NULL,
           APCR.TIDO_ID_PARECER  = NULL,
           APCR.TIDO_ID_LICENCA  = NULL,
           APCR.DATA_ATUALIZACAO = SYSDATE
     WHERE APCR.SOSE_ID = nSose_id;
    COMMIT;

    DELETE FROM FEP_PROCESSOS_DOCUMENTOS PD
     WHERE PD.DOCU_ID = nDocu_id
        OR PD.DOCU_ID = nDocu_id_parecer;
    COMMIT;

    DELETE FROM FEP_SOLIC_SEAMB_DOCUMENTOS SSD
     WHERE SSD.DOCU_ID = nDocu_id
        OR SSD.DOCU_ID = nDocu_id_parecer;
    COMMIT;

    DELETE FROM FEP_DOCUMENTOS_FROTAS DF
     WHERE DF.DOCU_ID = nDocu_id
        OR DF.DOCU_ID = nDocu_id_parecer;
    COMMIT;

    DELETE FROM FEP_DOCUMENTOS DOC WHERE DOC.DOCU_ID = nDocu_id;
    COMMIT;

    DELETE FROM FEP_DOCUMENTOS DOC WHERE DOC.DOCU_ID = nDocu_id_parecer;
    COMMIT;

    SELECT SOSE.TIDO_ID, SOSE.TSOI_ID, SOSE.DM_ALTERACAO_RT, SOSE.HICB_ID
      INTO TIDO, TSOI, ALTRT, HICB
      FROM FEP_SOLIC_SEAMB SOSE
     WHERE SOSE.SOSE_ID = nSose_id;

    IF (TIDO  in ( 120, 151) AND TSOI = 5) THEN
      UPDATE FEP_SOLIC_SEAMB SOSE
         SET SOSE.TSOI_ID = 3
       WHERE SOSE.SOSE_ID = nSose_id;
    END IF;

    IF (TIDO = 340 AND TSOI = 5) THEN
      UPDATE FEP_SOLIC_SEAMB SOSE
         SET SOSE.TSOI_ID = 11
       WHERE SOSE.SOSE_ID = nSose_id;
    END IF;

    IF (TIDO = 340 AND TSOI = 15) THEN
      UPDATE FEP_SOLIC_SEAMB SOSE
         SET SOSE.TSOI_ID = 14
       WHERE SOSE.SOSE_ID = nSose_id;
    END IF;

    IF (ALTRT = 'S' AND HICB IS NOT NULL) THEN
      SELECT HICO.VALOR_PAGO
        INTO VLRPAGO
        FROM FEP_HISTORICOS_COBRANCAS HICO
       WHERE HICO.HICB_ID = HICB;
      IF (VLRPAGO IS NOT NULL AND VLRPAGO > 0) THEN
        UPDATE FEP_SOLIC_SEAMB SOSE
           SET SOSE.TSOI_ID = 11
         WHERE SOSE.SOSE_ID = nSose_id;
      ELSE
        UPDATE FEP_SOLIC_SEAMB SOSE
           SET SOSE.TSOI_ID = 2
         WHERE SOSE.SOSE_ID = nSose_id;
      END IF;
    END IF;

    IF (ALTRT = 'S' AND HICB IS NULL) THEN
      UPDATE FEP_SOLIC_SEAMB SOSE
         SET SOSE.TSOI_ID = 9
       WHERE SOSE.SOSE_ID = nSose_id;
    END IF;

    COMMIT;

  END;

  Procedure SP_PROC_VIAG_SRC(nProc_id in number, cur out sys_refcursor) as
  begin
    open cur for

      SELECT SUBSTR(LPAD(proc.numero, 6, 0) || '-' ||
                    LPAD(proc.orig_id, 4, 0) || '/' || LPAD(proc.ano, 2, 0) || '-' ||
                    (proc.dv),
                    1,
                    16) AS Processo,
             proc.proc_id
        FROM fep_processos proc
       WHERE proc.numero = nProc_id
       ORDER BY proc.ano DESC;

  end;

  Procedure SP_PROC_VIAG_UPD_SRC(nViag_id in number, cur out sys_refcursor) as
  begin
    open cur for

      SELECT SUBSTR(LPAD(proc.numero, 6, 0) || '-' ||
                    LPAD(proc.orig_id, 4, 0) || '/' || LPAD(proc.ano, 2, 0) || '-' ||
                    (proc.dv),
                    1,
                    16) AS Processo,
             proc.proc_id,
             viag.viag_id
        FROM fep_processos proc, fep_viagens viag
       WHERE proc.proc_id(+) = viag.proc_id
         AND viag.viag_id = nViag_id
       ORDER BY proc.ano DESC;

  end;

  -- DOCUMENTOS - PUBLICAC?O
  Procedure SP_DOCA_GET(nDocu_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_documentos_assinados where docu_id = nDocu_id;
  end;

  Procedure SP_DOCA_SRC(nDocu_id                in number,
                        sResponsavel_publicacao in varchar,
                        sData_publicacao        in varchar,
                        cur                     out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_documentos_assinados WHERE 0 = 0 ';

    IF nDocu_id != 0 THEN
      vSQL := vSQL || 'AND docu_id = ' || nDocu_id || ' ';
    END IF;

    IF sResponsavel_publicacao != 'null' THEN
      vSQL := vSQL || 'AND responsavel_publicacao LIKE ''%' ||
              sResponsavel_publicacao || '%'' ';
    END IF;

    IF sData_publicacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_publicacao) = TO_DATE(''' ||
              sData_publicacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_DOCA_INS(nDocu_id                in number,
                        sResponsavel_publicacao in varchar,
                        sData_publicacao        in varchar) is
  begin
    INSERT INTO fep_documentos_assinados
      (docu_id, responsavel_publicacao, data_publicacao)
    VALUES
      (nDocu_id,
       sResponsavel_publicacao,
       TO_DATE(sData_publicacao, 'dd/mm/rrrr'));
    commit;
  end;

  Procedure SP_DOCA_UPD(nDocu_id                in number,
                        sResponsavel_publicacao in varchar,
                        sData_publicacao        in varchar) is
  begin
    UPDATE fep_documentos_assinados
       SET responsavel_publicacao = sResponsavel_publicacao,
           data_publicacao        = TO_DATE(sData_publicacao, 'dd/mm/rrrr')
     WHERE docu_id = nDocu_id;
    commit;
  end;

  Procedure SP_DOCA_DEL(nDocu_id in number) IS
  BEGIN
    DELETE FROM fep_documentos_assinados WHERE docu_id = nDocu_id;
    commit;
  end;

  -- DOCUMENTOS - ASSINANTES
  Procedure SP_DOAS_GET(nDoas_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_documentos_assinantes where doas_id = nDoas_id;
  end;

  Procedure SP_DOAS_GET2(nDocu_id                in number,
                         sResponsavel_assinatura in varchar,
                         cur                     out sys_refcursor) as
  begin
    open cur for
      select *
        FROM fep_documentos_assinantes
       where docu_id = nDocu_id
         and responsavel_assinatura = sResponsavel_assinatura;
  end;

  Procedure SP_DOAS_SRC(nDoas_id                in number,
                        nDocu_id                in number,
                        sResponsavel_assinatura in varchar,
                        sData_assinatura        in varchar,
                        cur                     out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_documentos_assinantes WHERE 0 = 0 ';

    IF nDoas_id != 0 THEN
      vSQL := vSQL || 'AND doas_id = ' || nDoas_id || ' ';
    END IF;

    IF nDocu_id != 0 THEN
      vSQL := vSQL || 'AND docu_id = ' || nDocu_id || ' ';
    END IF;

    IF sResponsavel_assinatura != 'null' THEN
      vSQL := vSQL || 'AND responsavel_assinatura LIKE ''%' ||
              sResponsavel_assinatura || '%'' ';
    END IF;

    IF sData_assinatura != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_assinatura) = TO_DATE(''' ||
              sData_assinatura || ''', ''dd/mm/rrrr'') ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_DOAS_INS(nDocu_id                in number,
                        sResponsavel_assinatura in varchar,
                        sData_assinatura        in varchar,
                        nDoas_id                out number) is
  begin
    INSERT INTO fep_documentos_assinantes
      (doas_id, docu_id, responsavel_assinatura, data_assinatura)
    VALUES
      (DOAS_SEQ.nextval,
       nDocu_id,
       sResponsavel_assinatura,
       TO_DATE(sData_assinatura, 'dd/mm/rrrr'));
    SELECT DOAS_SEQ.currval into nDoas_id FROM dual;
    commit;
  end;

  Procedure SP_DOAS_UPD(nDoas_id                in number,
                        nDocu_id                in number,
                        sResponsavel_assinatura in varchar,
                        sData_assinatura        in varchar) is
  begin
    UPDATE fep_documentos_assinantes
       SET docu_id                = nDocu_id,
           responsavel_assinatura = sResponsavel_assinatura,
           data_assinatura        = TO_DATE(sData_assinatura, 'dd/mm/rrrr')
     WHERE doas_id = nDoas_id;
    commit;
  end;

  Procedure SP_DOAS_DEL(nDoas_id in number) IS
  BEGIN
    DELETE FROM fep_documentos_assinantes WHERE doas_id = nDoas_id;
    commit;
  end;

  -- DOCUMENTOS - PUBLICAC?O E ASSINATURA
  Procedure SP_DOCA_ASSINA(nDocu_id                in number,
                           sResponsavel_assinatura in varchar,
                           sData_assinatura        in varchar,
                           nDoas_id                out number) is
  begin
    INSERT INTO fep_documentos_assinantes
      (doas_id, docu_id, responsavel_assinatura, data_assinatura)
    VALUES
      (DOAS_SEQ.nextval,
       nDocu_id,
       sResponsavel_assinatura,
       TO_DATE(sData_assinatura, 'dd/mm/rrrr'));
    SELECT DOAS_SEQ.currval into nDoas_id FROM dual;
    commit;
  end;

  Procedure SP_DOCA_PUBLICA(nDocu_id                in number,
                            sResponsavel_publicacao in varchar,
                            sData_publicacao        in varchar) is
  begin
    UPDATE fep_documentos_assinados
       SET responsavel_publicacao = sResponsavel_publicacao,
           data_publicacao        = TO_DATE(sData_publicacao, 'dd/mm/rrrr')
     WHERE docu_id = nDocu_id;
    commit;
  end;

  -- DOCUMENTOS - DIRETORIOS E PASTAS
  PROCEDURE PR_PASTAS_ASSIN_DIGITAL(vNomeUsuario in varchar2,
                                    cur          out sys_refcursor)

   IS
    /* CTZ - Fepam
    ** ----------------------------------
    **NOME.......: Jose Ramiro
    **CRIAC?O....: 18/08/2010
    **ALTERAC?O..:
    **SISTEMA....: Assinatura Digital
    **RESUMO.....: procedure para retornar os diretorios de pesquisa dos documentos a serem assinados
    **...........: conforme a base de dados que a pessoa estiver conectada,
    **
    */

    vNomeBase           VARCHAR2(50);
    vDirDocsUnsigned    VARCHAR2(100);
    vDirDocsSigned      VARCHAR2(100);
    vDirDocsUnpublished VARCHAR2(100);

  BEGIN

    BEGIN
      SELECT VALUE INTO vNomeBase FROM V$PARAMETER WHERE NAME = 'db_name';
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Erro: Nome da Base de dados n?o encontrado! - ' ||
                             SQLERRM);
    END;

    IF vNomeBase IN ('HML', 'HOMOLOGA') THEN

      SELECT t.description
        INTO vDirDocsUnsigned
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_HOMOLOGA_UNSIGNED';

      SELECT t.description
        INTO vDirDocsSigned
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_HOMOLOGA_SIGNED';

      SELECT t.description
        INTO vDirDocsUnpublished
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_HOMOLOGA_UNPUBLISHED';

    ELSIF vNomeBase = 'FPROD' THEN

      SELECT t.description
        INTO vDirDocsUnsigned
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_FPROD_UNSIGNED';

      SELECT t.description
        INTO vDirDocsSigned
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_FPROD_SIGNED';

      SELECT t.description
        INTO vDirDocsUnpublished
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_FPROD_UNPUBLISHED';

    END IF;


/*
-- Alterado por Malu em 11/09/2013
    OPEN cur FOR
      SELECT vDirDocsUnsigned || pado.nome_pasta Dir_path_unsigned,
             vDirDocsUnpublished || pado.nome_pasta Dir_path_unpublished,
             vDirDocsSigned Dir_path_signed,
             pado.nome_pasta
        FROM fep_acessos_pastas_documentos acpd,
             fep_pastas_documentos         pado,
             v_rhu_funcionarios            vrhu
       WHERE acpd.pado_id = pado.pado_id
         AND acpd.pess_id = vrhu.pess_id
         AND vrhu.username = vNomeUsuario;
*/
-- Alterado por Alexander em 15/04/2026 CS-68659
    OPEN cur FOR
      SELECT vDirDocsUnsigned || DECODE(pado.nome_pasta,
                                        'DBIO', 'SEMA\',
                                        'DLF',  'SEMA\',
                                        'DRH',  'SEMA\',
                                        'DUC',  'SEMA\',
                                        'FAUNA','SEMA\',
                                        'FLORA','SEMA\',
                                        ''
                                        ) /*|| pado.nome_pasta*/ Dir_path_unsigned,
             vDirDocsUnpublished || DECODE(pado.nome_pasta,
                                          'DBIO', 'SEMA\',
                                          'DLF',  'SEMA\',
                                          'DRH',  'SEMA\',
                                          'DUC',  'SEMA\',
                                          'FAUNA','SEMA\',
                                          'FLORA','SEMA\',
                                          ''
                                          ) /*|| pado.nome_pasta*/ Dir_path_unpublished,
             vDirDocsSigned Dir_path_signed,
             pado.nome_pasta
        FROM fep_acessos_pastas_documentos acpd,
             fep_pastas_documentos         pado,
             fep_funcionarios              func
       WHERE acpd.pado_id = pado.pado_id
         AND acpd.pess_id = func.pess_id
         AND func.username = vNomeUsuario;

  END;

  PROCEDURE PR_DIRETORIO_ASSIN_DIGITAL(vNomeUsuario in varchar2,
                                       cur out sys_refcursor)

   IS
    /* CTZ - Fepam
    ** ----------------------------------
    **NOME.......: Jose Ramiro
    **CRIAC?O....: 18/08/2010
    **ALTERAC?O..: Rafael Rigon Bortolon
    **SISTEMA....: Assinatura Digital
    **RESUMO.....: procedure para retornar os diretorios no servidor onde devem ser criadas as pastas a partir
    **...........: da tela de criac?o de pastas no fepam.net - menu processos
    **
    */

    vNomeBase           VARCHAR2(50);
    vDirDocsUnsigned    VARCHAR2(100);
    vDirDocsSigned      VARCHAR2(100);
    vDirDocsUnpublished VARCHAR2(100);

  BEGIN

    BEGIN
      SELECT VALUE INTO vNomeBase FROM V$PARAMETER WHERE NAME = 'db_name';
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Erro: Nome da Base de dados n?o encontrado! - ' ||
                             SQLERRM);
    END;

    IF vNomeBase IN ('HML', 'HML11G') THEN

      SELECT t.description
        INTO vDirDocsUnsigned
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_HOMOLOGA_UNSIGNED';

      SELECT t.description
        INTO vDirDocsSigned
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_HOMOLOGA_SIGNED';

      SELECT t.description
        INTO vDirDocsUnpublished
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_HOMOLOGA_UNPUBLISHED';

    ELSIF vNomeBase = 'PROD' THEN

      SELECT t.description
        INTO vDirDocsUnsigned
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_FPROD_UNSIGNED';

      SELECT t.description
        INTO vDirDocsSigned
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_FPROD_SIGNED';

      SELECT t.description
        INTO vDirDocsUnpublished
        FROM tpl_parameters t
       WHERE t.parameter_name = 'DOCS_FPROD_UNPUBLISHED';

    END IF;

-- Alterado por Alexander em 15/04/2026 CS-68659
/*    OPEN cur FOR
      SELECT vDirDocsUnsigned    as Dir_Docs_Unsigned,
             vDirDocsSigned      as Dir_Docs_Signed,
             vDirDocsUnpublished as Dir_Docs_Unpublished
        FROM dual;*/

    OPEN cur FOR
      SELECT vDirDocsUnsigned || DECODE(pado.nome_pasta,
                                        'DBIO', 'SEMA\',
                                        'DLF',  'SEMA\',
                                        'DRH',  'SEMA\',
                                        'DUC',  'SEMA\',
                                        'FAUNA','SEMA\',
                                        'FLORA','SEMA\',
                                        ''
                                        ) /*|| pado.nome_pasta*/ Dir_Docs_Unsigned, --Dir_path_unsigned,
             vDirDocsUnpublished || DECODE(pado.nome_pasta,
                                          'DBIO', 'SEMA\',
                                          'DLF',  'SEMA\',
                                          'DRH',  'SEMA\',
                                          'DUC',  'SEMA\',
                                          'FAUNA','SEMA\',
                                          'FLORA','SEMA\',
                                          ''
                                          ) /*|| pado.nome_pasta*/ Dir_Docs_Unpublished, --Dir_path_unpublished,
             vDirDocsSigned Dir_Docs_Signed, --Dir_path_signed,
             pado.nome_pasta
        FROM fep_acessos_pastas_documentos acpd,
             fep_pastas_documentos         pado,
             fep_funcionarios              func
       WHERE acpd.pado_id = pado.pado_id
         AND acpd.pess_id = func.pess_id
         AND func.username = vNomeUsuario;

  END;

  -- DOCUMENTOS - PASTAS PARA ASSINATURA
  Procedure SP_PADO_GET(nPado_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_pastas_documentos where pado_id = nPado_id;
  end;

  Procedure SP_PADO_SRC(nPado_id              in number,
                        sNome_pasta           in varchar,
                        sDescricao            in varchar,
                        sOperador_inclusao    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_pastas_documentos WHERE 0 = 0 ';

    IF nPado_id != 0 THEN
      vSQL := vSQL || 'AND pado_id = ' || nPado_id || ' ';
    END IF;

    IF sNome_pasta != 'null' THEN
      vSQL := vSQL || 'AND nome_pasta LIKE ''%' || sNome_pasta || '%'' ';
    END IF;

    IF sDescricao != 'null' THEN
      vSQL := vSQL || 'AND descricao LIKE ''%' || sDescricao || '%'' ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||
              sOperador_atualizacao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' ||
              sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_PADO_INS(sNome_pasta           in varchar,
                        sDescricao            in varchar,
                        sOperador_inclusao    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        nPado_id              out number) is
  begin
    INSERT INTO fep_pastas_documentos
      (pado_id,
       nome_pasta,
       descricao,
       operador_inclusao,
       data_inclusao,
       operador_atualizacao,
       data_atualizacao)
    VALUES
      (PADO_SEQ.nextval,
       sNome_pasta,
       sDescricao,
       sOperador_inclusao,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_atualizacao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'));
    SELECT PADO_SEQ.currval into nPado_id FROM dual;
    commit;
  end;
--
procedure SP_PESS_GET(ncgc_cpf  in number,
                      sOperador in varchar2,
                      cur  out sys_refcursor) as
  begin
   SP_ACPI_GET(ncgc_cpf,
             sOperador);
    open cur for
select pess.pess_id,
       pess.razao_social,
       pess.fisica_juridica,
       pess.cgc,
       pess.cpf,
       case when pess.fisica_juridica='J' then
            substr(lpad(to_char(pess.cgc),14,'0'),1,2)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),3,3)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),6,3)||'/'||
            substr(lpad(to_char(pess.cgc),14,'0'),9,4)||'-'||
            substr(lpad(to_char(pess.cgc),14,'0'),13,2)
            when pess.fisica_juridica='F' then
              substr(lpad(to_char(pess.cpf),11,'0'),1,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),4,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),9,3)||'-'||
           substr(lpad(to_char(pess.cpf),11,'0'),10,2)
       end doc,
       pess.tilo_id,
       pess.endereco,
       pess.bairro,
       pess.cep,
       pess.muni_id,
       muni.nome municipio,
       pess.telefone,
       pess.fax,
       pess.email,
       -- End corresp
       pess.tilo_id_corresp,
       pess.endereco_corresp,
       pess.bairro_corresp,
       pess.muni_id_corresp,
       munic.nome municipio_corresp,
       pess.cep_corresp,
       -- Contato
       pess.nome_contato,
       pess.carg_id,
       carg.descricao cargo,
       pess.telefone_fixo_contato,
       pess.telefone_celular_contato,
       pess.fax_contato,
       pess.email_contato,
       --campos obrigatorios
       pess.data_inclusao,
       pess.data_atualizacao,
       pess.operador_inclusao,
       pess.operador_atualizacao,
       conserta_bem,     --'N'
        nvl((select distinct acin.username
        from fep_pessoas pess,
     FEP_ACESSOS_PESSOAS_INTERNET acpi,
     fep_acessos_internet acin
where acpi.pess_id=pess.pess_id
and acin.acin_id=acpi.acin_id
and  (pess.cgc=ncgc_cpf
  or   pess.cpf=ncgc_cpf)),'XXXXXX') username
from fep_pessoas pess,
     fep_municipios muni,
     fep_municipios munic,
     fep_cargos carg
where muni.muni_id=pess.muni_id
and munic.muni_id=muni_id_corresp
and carg.carg_id(+)=pess.carg_id
and (pess.cgc=ncgc_cpf
 or   pess.cpf=ncgc_cpf);
END SP_PESS_GET;
--
  Procedure SP_PADO_UPD(nPado_id    in number,
                        sNome_pasta in varchar,
                        sDescricao  in varchar,

                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar) is
  begin
    UPDATE fep_pastas_documentos
       SET nome_pasta = sNome_pasta,
           descricao  = sDescricao,

           operador_atualizacao = sOperador_atualizacao,
           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr')
     WHERE pado_id = nPado_id;
    commit;
  end;

  Procedure SP_PADO_DEL(nPado_id in number) IS
  BEGIN
    DELETE FROM fep_pastas_documentos WHERE pado_id = nPado_id;
    commit;
  end;

  -- DOCUMENTOS - ACESSOS A PASTAS DE ASSINATURA
  Procedure SP_ACPD_GET(nAcpd_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_acessos_pastas_documentos where acpd_id = nAcpd_id;
  end;

  Procedure SP_ACPD_GET_ACESSO_PESSOA(nPess_id in number,
                                      nPado_id in number,
                                      cur      out sys_refcursor) as
  begin
    open cur for
      select *
        FROM fep_acessos_pastas_documentos
       where pess_id = nPess_id
         and pado_id = nPado_id;
  end;

  Procedure SP_ACPD_GET_DADOS_PESSOA(nPess_id in number,
                                     cur      out sys_refcursor) as
  begin
    open cur for

      SELECT vrhu.nome as Nome_Pessoa,
             DECODE(vrhu.dm_origem, 1, 'FEPAM', 2, 'SEMA') as Origem
        FROM v_rhu_funcionarios vrhu
       WHERE vrhu.pess_id = nPess_id;

  end;

  Procedure SP_ACPD_SRC(nAcpd_id              in number,
                        nPess_id              in number,
                        sOperador_inclusao    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        nPado_id              in number,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * from fep_acessos_pastas_documentos where 0 = 0';

    IF nPess_id != 0 THEN
      vSQL := vSQL || 'AND pess_id = ' || nPess_id || ' ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||
              sOperador_atualizacao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' ||
              sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF nAcpd_id != 0 THEN
      vSQL := vSQL || 'AND acpd_id = ' || nAcpd_id || ' ';
    END IF;

    IF nPado_id != 0 THEN
      vSQL := vSQL || 'AND pado_id = ' || nPado_id || ' ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_ACPD_SRC_GRID(nPado_id in number,
                             nPess_id in number,
                             cur      out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin

    vSQL := '
  SELECT acpd.*,
         vrhu.nome as nome_pessoa,
         DECODE(vrhu.dm_origem,1,''FEPAM'',2,''SEMA'') as Origem,
         pado.nome_pasta
    FROM fep_acessos_pastas_documentos acpd,
         fep_pastas_documentos         pado,
         v_rhu_funcionarios            vrhu
   WHERE acpd.pado_id = pado.pado_id
     AND acpd.pess_id = vrhu.pess_id
     AND vrhu.situacao in (1,2)';

    IF nPado_id != 0 THEN
      vSQL := vSQL || 'AND acpd.pado_id = ' || nPado_id || ' ';
    END IF;

    IF nPess_id != 0 THEN
      vSQL := vSQL || 'AND acpd.pess_id = ' || nPess_id || ' ';
    END IF;

    vSQL := vSQL || ' ORDER BY vrhu.nome, pado.nome_pasta';

    open cur for vSQL;
  end;

  Procedure SP_ACPD_SRC_COMBO_PESSOAS(cur out sys_refcursor) as
  begin
    open cur for

      SELECT vrhu.pess_id,
             vrhu.nome || ' - ' ||
             DECODE(vrhu.dm_origem, 1, 'FEPAM', 2, 'SEMA') as Nome_Pessoa
        FROM v_rhu_funcionarios vrhu
       WHERE vrhu.situacao = 1
         AND vrhu.tipo_func_estag NOT IN (20, 21) -- ESTAGIARIO-SEMA
       ORDER BY vrhu.nome;

  end;

  Procedure SP_ACPD_SRC_DADOS_PASTAS(nPess_id in number,
                                     cur      out sys_refcursor) as
  begin
    open cur for

      SELECT pado.nome_pasta, acpd.*
        FROM fep_acessos_pastas_documentos acpd,
             fep_pastas_documentos         pado,
             v_rhu_funcionarios            vrhu
       WHERE acpd.pado_id = pado.pado_id
         AND acpd.pess_id = vrhu.pess_id
         AND acpd.pess_id = nPess_id;

  end;

  Procedure SP_ACPD_INS(nPess_id              in number,
                        sOperador_inclusao    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        nPado_id              in number,
                        nAcpd_id              out number) is
  begin
    INSERT INTO fep_acessos_pastas_documentos
      (acpd_id,
       pess_id,
       operador_inclusao,
       data_inclusao,
       operador_atualizacao,
       data_atualizacao,
       pado_id)
    VALUES
      (ACPD_SEQ.nextval,
       nPess_id,
       sOperador_inclusao,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_atualizacao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       nPado_id);
    SELECT ACPD_SEQ.currval into nAcpd_id FROM dual;
    commit;
  end;

  Procedure SP_ACPD_UPD(nAcpd_id in number,
                        nPess_id in number,

                        sOperador_atualizacao in varchar,
                        sData_atualizacao     in varchar,
                        nPado_id              in number) is
  begin
    UPDATE fep_acessos_pastas_documentos
       SET pess_id = nPess_id,

           operador_atualizacao = sOperador_atualizacao,
           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           pado_id              = nPado_id
     WHERE acpd_id = nAcpd_id;
    commit;
  end;

  Procedure SP_ACPD_DEL(nAcpd_id in number) IS
  BEGIN
    DELETE FROM fep_acessos_pastas_documentos WHERE acpd_id = nAcpd_id;
    commit;
  end;

  -- GERAC?O AUTOMATICA DE PARECER E LICENCAS
  procedure SP_GER_AUTO_EMPREENDIMENTO(nAtan_id in number,
                                       cur      out sys_refcursor) as
    vImpLocal    varchar2(5);
    vLicenciador varchar2(5);
    vImpReg      varchar2(5);
    vDmConv      varchar2(5);
    vImpacto     varchar2(5);
    nRaat        number(7, 2);
    nId_Atan     number(10);
    nMedidaPorte number(12, 4);
    vDisLic      varchar2(5);
  begin

    begin
      select ata1.atan_id,
             ata1.raat_id,
             ata1.medida_porte,
             muni.licenciador,
             pck_cadastros.fc_impacto_regional(ata1.atan_id) imp_reg,
             pck_arr_bloquetos.fc_arr_convenio_muni(ata1.muni_id,
                                                    ata1.raat_id,
                                                    substr(busca_porte(ata1.raat_id,
                                                                       ata1.medida_porte,
                                                                       null),
                                                           1,
                                                           1)) dm_convenio,
             fc_impacto_local(ata1.raat_id,
                              substr(busca_porte(ata1.raat_id,
                                                 ata1.medida_porte,
                                                 null),
                                     1,
                                     1)) imp_loc
        into nId_Atan,
             nRaat,
             nMedidaPorte,
             vLicenciador,
             vImpReg,
             vDmConv,
             vImpacto
        from fep_atividades_antropicas ata1, fep_municipios muni
       where ata1.atan_id = nAtan_id
         and ata1.muni_id = muni.muni_id;
    exception
      when no_data_found then
        nRaat        := 0;
        nId_Atan     := 0;
        nMedidaPorte := 0;
        vLicenciador := null;
        vImpReg      := null;
        vDmConv      := null;
        vImpacto     := null;
    end;

    if vImpReg = 'S' then
      --Verifica se possui impacto local
      vImpLocal := 'N?O';
    else
      if vImpReg = 'N' and vDmConv = 'N' and vLicenciador = 'S' then
        vImpLocal := 'SIM';
      end if;
    end if;

    if (nAtan_id > 0) then
      open cur for
        select atan.atan_id ATAN_ID,
               (pess.pess_id || ' - ' || pess.razao_social) EMPREENDEDOR,
               pess.cgc CNPJ,
               pess.cpf CPF,
               pess.documento_estrangeiro DOC_ESTRANGEIRO,
               (atan.atan_id || ' - ' || atan.descricao) EMPREENDIMENTO,
               to_char(atan.data_inicio_funcionamento, 'dd/mm/rrrr') DATA_INICIO,
               tilo.tilo_id,
               tilo.descricao LOGRADOURO,
               atan.endereco,
               atan.muni_id,
               muni.nome MUNICIPIO,
               atan.bairro BAIRRO,
               muni.unfe_id UF,
               atan.cep CEP,
               atan.telefone_fixo FONE_FIXO,
               atan.telefone_celular FONE_CEL,
               atan.email EMAIL,
               atan.raat_id RAMO_ATIV,
               raat.descricao DESCR_RAMO,
               atan.medida_porte MEDIDA_PORTE,
               crme.abreviatura CRITERIO_MEDIDA,
               crme.descricao DESCR_MEDIDA,
               decode(BUSCA_PORTE(atan.raat_id, atan.medida_porte, null),
                      'E',
                      'EXCEPCIONAL',
                      'G',
                      'GRANDE',
                      'M',
                      'MEDIO',
                      'I',
                      'MINIMO',
                      'P',
                      'PEQUENO') PORTE,
               decode(raat.potencial,
                      'A',
                      'ALTO',
                      'B',
                      'BAIXO',
                      'M',
                      'MEDIO') POTENCIAL,
               substr(pck_cadastros.fc_descricao_dominio('DM_GRUPO_LIC_AUT',
                                                         raat.dm_grupo_aut,
                                                         0),
                      1,
                      32) GRUPO_GERACAO,
               atan.pess_id_responsavel COD_TEC,
               BUSCA_TEC_RESP(atan.pess_id_responsavel) TEC_RESP,
               vImpLocal IMP_LOCAL,
               atan.observacao OBS,
               to_char(atan.data_inclusao, 'dd/mm/rrrr') data_inclusao,
               atan.operador_inclusao,
               to_char(atan.data_atualizacao, 'dd/mm/rrrr') data_atualizacao,
               atan.operador_atualizacao
          from fep_atividades_antropicas atan,
               fep_pessoas               pess,
               fep_tipos_logradouros     tilo,
               fep_municipios            muni,
               fep_ramos_atividades      RAAT,
               fep_criterios_medicoes    crme
         where atan.atan_id = nAtan_id
           and atan.pess_id = pess.pess_id
           and atan.tilo_id = tilo.tilo_id
           and atan.muni_id = muni.muni_id
           and atan.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id;
    end if;

  end;

  Procedure SP_GER_SRC_COMBO_LOGRADOUROS(cur out sys_refcursor) as
  begin
    open cur for

      select tilo.tilo_id, tilo.descricao LOGRADOURO
        from fep_tipos_logradouros tilo
       order by descricao;

  end;

  Procedure SP_GER_SRC_COMBO_MUNICIPIOS(cur out sys_refcursor) as
  begin
    open cur for

      select muni.muni_id, muni.nome MUNICIPIO
        from fep_municipios muni
       where muni.unfe_id = 'RS'
       order by nome;

  end;

  Procedure SP_GER_SRC_COMBO_TECNICOS(cur out sys_refcursor) as
  begin
    open cur for

      select pess.pess_id COD_TEC, pess.razao_social TEC_RESP
        from fep_funcionarios ff, fep_pessoas pess
       where ff.pess_id = pess.pess_id
       order by pess.razao_social;

  end;

  Procedure SP_GER_PRCR_GERACAO(nProc_id in number, cur out sys_refcursor) as
  begin

    begin
      open cur for
        select prcr.prcr_id
          from fep_aux_proc_cond_restr prcr, fep_documentos docu
         where prcr.proc_id = nProc_id
           and prcr.docu_id_revogado = docu.docu_id(+)
           and prcr.dm_ativo = 'S'
           and prcr.irca_id IS NULL
           and prcr.foag_id IS NULL;

    end;

  end;

  Procedure SP_GER_DOC_GERACAO(nPrcr_id in number, cur out sys_refcursor) as
  begin

    begin
      open cur for
        select prcr.prcr_id,
               prcr.proc_id,
               prcr.dm_alteracao_doc,
               decode(prcr.dm_alteracao_doc, 'S', 'SIM', 'N', 'N?O') ALTERACAO_DOC,
               decode(prcr.dm_ativo, 'S', 'SIM', 'N', 'N?O') ATIVO,
               prcr.tido_id_licenca,
               (prcr.tido_id_licenca || ' - ' ||
               BUSCA_TIDO(prcr.tido_id_licenca)) LISTA_INICIAL,
               BUSCA_TIDO(prcr.tido_id_licenca) TIPO_DOC_EMITIR,
               prcr.pess_id_tecnico,
               pess.razao_social NOME_TEC,
               prcr.nro_bloqueto,
               prcr.seto_id_tecnico,
               seto.sigla SIGLA_SETO,
               seto.nome NOME_SETO,
               prcr.seto_id_assinatura,
               seto2.sigla SIGLA_SETO_ASSIN,
               seto2.nome NOME_SETO_ASSIN,
               prcr.observacao,
               prcr.docu_id_revogado,
               docu.numero NUM_REVOGA,
               docu.ano ANO_REVOGA,
               docu.tido_id TIPO_REVOGA,
               substr(pck_cadastros.fc_descricao_dominio('DM_SITUACAO_DOCU',
                                                         docu.situacao,
                                                         0),
                      1,
                      20) SITUACAO_REVOGA,
               docu.data_fim_vigencia DATA_FIM_VIG_REV,
               prcr.docu_id_renovacao,
               docu2.numero NUM_RENOVA,
               docu2.ano ANO_RENOVA,
               docu2.tido_id TIPO_RENOVA,
               substr(pck_cadastros.fc_descricao_dominio('DM_SITUACAO_DOCU',
                                                         docu2.situacao,
                                                         0),
                      1,
                      20) SITUACAO_RENOVA,
               docu2.data_fim_vigencia DATA_FIM_VIG_REN,
               prcr.descricao_atividade,
               to_char(prcr.data_inicio_vigencia, 'dd/mm/rrrr') data_inicio_vigencia,
               to_char(prcr.data_fim_vigencia, 'dd/mm/rrrr') data_fim_vigencia,
               prcr.dm_data_fim_inf,
               decode(prcr.dm_implocal, 'S', 'SIM', 'N', 'N?O') IMP_LOCAL,
               to_char(prcr.data_inclusao, 'dd/mm/rrrr') data_inclusao,
               prcr.operador_inclusao,
               to_char(prcr.data_atualizacao, 'dd/mm/rrrr') data_atualizacao,
               prcr.operador_atualizacao,
               prcr.irpt_id
          from fep_aux_proc_cond_restr prcr,
               fep_setores             seto,
               fep_setores             seto2,
               fep_pessoas             pess,
               fep_aux_func_ultimos    fult,
               fep_documentos          docu,
               fep_documentos          docu2
         where prcr.prcr_id = nPrcr_id
           and prcr.pess_id_tecnico = pess.pess_id
           and prcr.seto_id_assinatura = seto2.seto_id
           and prcr.seto_id_tecnico = seto.seto_id
           and prcr.pess_id_tecnico = fult.pess_id
           and prcr.docu_id_renovacao = docu.docu_id(+)
           and prcr.docu_id_revogado = docu2.docu_id(+);

    end;

  end;

  procedure SP_VALIDA_PARECER_ALT_DOC(nPrcr_id in Number,
                                      cur      out sys_refcursor) is
    vDmAltDoc   VARCHAR2(1);
    nBloqueto   NUMBER(18);
    nDocuId_Rev NUMBER(10);
    vMsgAltDoc  VARCHAR2(2000);
    vMsgBloqDoc VARCHAR2(2000);
    nProcId     NUMBER(10);

  BEGIN
    SELECT prcr.dm_alteracao_doc,
           prcr.nro_bloqueto,
           prcr.docu_id_revogado,
           prcr.proc_id
      INTO vDmAltDoc, nBloqueto, nDocuId_Rev, nProcId
      FROM fep_aux_proc_cond_restr prcr
     WHERE prcr.prcr_id = nPrcr_id
       AND prcr.dm_ativo = 'S';

    -- Alterac?o de Documento
    IF vDmAltDoc = 'S' THEN
      IF nDocuId_Rev IS NULL THEN
        vMsgAltDoc := ('Erro: N?o tem documento a ser revogado. N?o pode ser Alterac?o de Documento. Ver em (Dados Gerac?o).');
      END IF;
      IF (nBloqueto IS NULL OR nBloqueto = 0) THEN
        vMsgBloqDoc := ('Erro: Faltou informar Nro do Bloqueto de Pagamento da Alterac?o de Documento. Ver em (Dados Gerac?o).');
      END IF;
    END IF;

    OPEN cur for
      select vMsgAltDoc as Msg_Alt_Doc,
             vMsgBloqDoc as Msg_Bloq_Doc,
             nBloqueto,
             nProcId
        from Dual;
  END;

  procedure SP_VALIDA_PARECER_NUM_BLOQUETO(nNumBloqueto in number,
                                           nProcId      in Number,
                                           cur          out sys_refcursor) is

    nValorPago  NUMBER(13, 2) := 0;
    nValorPagar NUMBER(13, 2) := 0;
    nDocu_id    NUMBER(10) := NULL;
    vDocumento  VARCHAR2(20);

    vMsgPgtoAlt VARCHAR2(2000);
    vMsgPorcDif VARCHAR2(2000);
    vMsgTipoBol VARCHAR2(2000);
    vMsgBolUtil VARCHAR2(2000);
    vMsgVlrDoc  VARCHAR2(2000);

    CURSOR c1 IS
      SELECT ata1.raat_id raat_id,
             ata1.medida_porte medida_porte_cad_atual,
             SUBSTR(busca_porte(ata1.raat_id, ata1.medida_porte, NULL),
                    1,
                    1) porte_cad_atual,
             raat.potencial potencial,
             cobr.tido_id tido_id,
             cobr.medida_porte medida_porte_boleto_cad,
             SUBSTR(busca_porte(ata1.raat_id, cobr.medida_porte, NULL),
                    1,
                    1) porte_boleto_cad,
             cobr.medida_porte_inf medida_porte_inf,
             SUBSTR(busca_porte(ata1.raat_id, cobr.medida_porte_inf, NULL),
                    1,
                    1) porte_boleto_inf,
             cobr.proc_id,
             cobr.valor_doc_origem,
             cobp.data_emissao,
             hipa.valor_parcela,
             hipa.status
        FROM fep_atividades_antropicas ata1,
             fep_ramos_atividades      raat,
             fep_responsabilidades     resp,
             fep_processos             proc,
             fep_cobrancas             cobr,
             fep_cobrancas_parcelas    cobp,
             fep_historicos_cobrancas  hicb,
             fep_historicos_pagamentos hipa
       WHERE proc.proc_id = nProcId
         AND proc.resp_id = resp.resp_id
         AND resp.atan_id = ata1.atan_id
         AND ata1.raat_id = raat.raat_id
         AND cobp.nro_bloqueto = nNumBloqueto
         AND cobp.cobr_id = cobr.cobr_id
         AND cobr.hicb_id = hicb.hicb_id
         AND hipa.nro_bloqueto = nNumBloqueto
         AND hipa.hicb_id = hicb.hicb_id;

    r1 c1%rowtype;

    CURSOR c2 IS
      SELECT docu.docu_id, SUBSTR(docu.numero || '/' || docu.ano, 1, 20)
        FROM fep_documentos docu
       WHERE docu.nro_bloqueto = nNumBloqueto;

  BEGIN

    OPEN c1;
    FETCH c1
      INTO r1;
    IF c1%notfound THEN
      CLOSE c1;

      vMsgPgtoAlt := ('Erro: N?o encontrado pagamento de Alterac?o de Documento para este Processo com este N? de Boleto., E,
                    OFG, 0');
    END IF;

    IF r1.proc_id != nProcId THEN
      CLOSE c1;
      vMsgPorcDif := ('Erro: Processo deste Parecer e diferente do informado para emiss?o do Boleto informado., E,
                    OFG, 0');
    END IF;

    IF r1.tido_id NOT IN (140) THEN
      CLOSE c1;
      vMsgTipoBol := ('Erro: Tipo de Documento do Boleto n?o e Atualizac?o de Documento Licenciatorio., E,
                    OFG, 0');
    END IF;

    OPEN c2;
    FETCH c2
      INTO nDocu_id, vDocumento;
    CLOSE c2;
    IF nDocu_id IS NOT NULL THEN
      vMsgBolUtil := ('Erro: Nro Boleto informado ja foi utilizado para o Parecer n?' ||
                     vDocumento || '., E, OFG, 0');
    END IF;

    IF r1.tido_id = 140 THEN
      -- Valor a Pagar quando da emiss?o do boleto
      nValorPagar := pck_arr_bloquetos.fc_arr_valor_documen(r1.raat_id,
                                                            r1.tido_id,
                                                            r1.medida_porte_cad_atual,
                                                            'N',
                                                            1,
                                                            4,
                                                            r1.data_emissao,
                                                            NULL,NULL,null,null,null,null);
    END IF;

    IF r1.status = 5 THEN
      nValorPago := r1.valor_doc_origem;
    END IF;

    -- verifica se fez o calculo correto
    -- message('ALO  Valor a Pagar: ' || nValorPagar || '  /  Valor Pago: ' || nValorPago); pause;

    IF NVL(nValorPago, 0) < NVL(nValorPagar, 0) THEN
      CLOSE c1;
      vMsgVlrDoc := ('Erro: Valor Doc Alterac?o R$' ||
                    REPLACE(REPLACE(REPLACE(TO_CHAR(nValorPagar,
                                                     '999,990.99'),
                                             '.',
                                             '*'),
                                     ',',
                                     '.'),
                             '*',
                             ',') ||
                    ' diferente do Valor gerado para ser Pago R$' ||
                    REPLACE(REPLACE(REPLACE(TO_CHAR(nValorPago,
                                                     '999,990.99'),
                                             '.',
                                             '*'),
                                     ',',
                                     '.'),
                             '*',
                             ',') || '. Verificar com Arrecadac?o antes de gerar Parecer Vinculado., E,
                   OFG, 0');
    END IF;

    open cur for
      select vMsgPgtoAlt as Msg_Pgto_Alt,
             vMsgPorcDif as Msg_Porc_Dif,
             vMsgTipoBol as Msg_Tipo_Bol,
             vMsgBolUtil as Msg_Bol_Util,
             vMsgVlrDoc  as Msg_Vlr_Doc
        from dual;
  END;

  Procedure SP_UPD_DOC_GERACAO(nPrcr_id    in number,
                               vAlt_doc    in varchar2,
                               nTido_id    in number,
                               nNroBloq    in Number,
                               vObs        in varchar2,
                               vDescrAtiv  in varchar2,
                               vDataIni    in varchar2,
                               vDataFim    in varchar2,
                               vDataFimInf in varchar2) as

    vAltDocu varchar2(1);
  begin

    if (nPrcr_id > 0) then

      update fep_aux_proc_cond_restr prcr
         set prcr.dm_alteracao_doc     = vAlt_doc,
             prcr.tido_id_licenca      = nTido_id,
             prcr.nro_bloqueto         = nNroBloq,
             prcr.observacao           = vObs,
             prcr.descricao_atividade  = vDescrAtiv,
             prcr.data_inicio_vigencia = to_date(vDataIni, 'DD/MM/RRRR'),
             prcr.data_fim_vigencia    = to_date(vDataFim, 'DD/MM/RRRR'),
             prcr.dm_data_fim_inf      = vDataFimInf
       where prcr.prcr_id = nPrcr_id;

      commit;
    end if;

  end;

  Procedure SP_UPD_CAD_EMPREENDIMENTO(nAtan_id    in number,
                                      vDataInicio in varchar2,
                                      vTiloID     in varchar2,
                                      vEndereco   in varchar2,
                                      vBairro     in varchar2,
                                      nMunID      in number,
                                      nCEP        in number,
                                      vFoneFixo   in varchar2,
                                      vCelular    in varchar2,
                                      vEMail      in varchar2,
                                      nMedPorte   in number,
                                      nCodTec     in number,
                                      vObs        in varchar2) as

  begin

    if (nAtan_id > 0) then

      update fep_atividades_antropicas atan
         set atan.data_inicio_funcionamento = to_date(vDataInicio,
                                                      'DD/MM/RRRR'),
             atan.tilo_id                   = vTiloID,
             atan.endereco                  = vEndereco,
             atan.bairro                    = vBairro,
             atan.cep                       = nCEP,
             atan.muni_id                   = nMunID,
             atan.telefone_fixo             = vFoneFixo,
             atan.telefone_celular          = vCelular,
             atan.email                     = vEMail,
             atan.medida_porte              = nMedPorte,
             atan.pess_id_responsavel       = nCodTec,
             atan.observacao                = vObs
       where atan.atan_id = nAtan_id;

      commit;
    end if;

  end;

  procedure SP_GER_COND_RESTR_RAMO(nPrcr_id in number,
                                   cur      out sys_refcursor) as

  begin

    if (nPrcr_id > 0) then

      open cur for

        select (prcr.clcr_id || ' - ' || prcr.sequencia_clcr || ' - ' ||
               clcr.descricao) classes,
               prcr.clcr_id,
               prcr.sequencia_clcr,
               clcr.descricao descricao_classe,
               prcr.sequencia,
               prcr.tipo_item,
               prcr.sequencia_sub,
               prcr.nivel,
               prcr.abreviatura,
               prcr.tipo_cond,
               prcr.incluido,
               prcr.descricao,
               prcr.dm_parecer,
               prcr.dm_licenca,
               prcr.dm_imprimir_seq,
               prcr.especial_negrito,
               prcr.dm_opc_autom,
               prcr.dm_ignorar_opcional_aut,
               prcr.dm_tipo_cond_restr,
               prcr.axge_id,
               prcr.prcr_id,
               prcr.cors_id,
               prcr.lcrs_id,
               prcr.crpr_id,
               TO_CHAR(prcr.data_inclusao, 'dd/mm/rrrr') data_inclusao,
               prcr.operador_inclusao
          from fep_aux_gera_cond_restr     prcr,
               fep_classes_cond_restricoes clcr
         where prcr.prcr_id = nPrcr_id
           and prcr.clcr_id = clcr.clcr_id
         order by prcr.sequencia;

    else
      open cur for
        SELECT * FROM fep_processos WHERE 1 = 2;

    end if;

  end;

  Procedure SP_GET_COND_RESTR_RAMO(nPrcr_id in number,
                                   nAxge_id in Number,
                                   cur      out sys_refcursor) as

  begin

    if (nPrcr_id > 0) then

      open cur for

        select (prcr.clcr_id || ' - ' || prcr.sequencia_clcr || ' - ' ||
               clcr.descricao) CLASSES,
               prcr.clcr_id,
               prcr.sequencia_clcr,
               clcr.descricao descricao_classe,
               prcr.sequencia,
               prcr.tipo_item,
               prcr.sequencia_sub,
               prcr.nivel,
               prcr.abreviatura,
               prcr.tipo_cond,
               replace(nvl(prcr.incluido, 'S'), 'X', 'S') incluido,
               prcr.descricao,
               prcr.dm_parecer,
               prcr.dm_licenca,
               prcr.dm_imprimir_seq,
               prcr.especial_negrito,
               prcr.dm_opc_autom,
               prcr.dm_ignorar_opcional_aut,
               prcr.dm_tipo_cond_restr,
               prcr.axge_id,
               prcr.prcr_id,
               prcr.cors_id,
               prcr.lcrs_id,
               prcr.crpr_id,
               TO_CHAR(prcr.data_inclusao, 'dd/mm/rrrr') data_inclusao,
               prcr.operador_inclusao,

               --CAMPOS INCLUIDOS PARA EDIC?O
               prcr.sequencia Seq,
               prcr.tipo_item TipoItem,
               prcr.sequencia_sub SeqSub,
               prcr.abreviatura vAbreviatura,
               prcr.tipo_cond TipoCond,
               replace(nvl(prcr.incluido, 'S'), 'X', 'S') vIncl,
               nvl(prcr.dm_parecer, 0) vdmparecer,
               nvl(prcr.dm_imprimir_seq, 0) vdmimpseq,
               nvl(prcr.dm_opc_autom, 0) vdmopcautom,
               nvl(prcr.dm_tipo_cond_restr, 0) dmtipocondrestr,
               nvl(prcr.dm_licenca, 0) vdmlicenca,
               nvl(prcr.especial_negrito, 0) vespneg,
               nvl(prcr.dm_ignorar_opcional_aut, 0) vdmignoraoptaut

          from fep_aux_gera_cond_restr     prcr,
               fep_classes_cond_restricoes clcr

         where prcr.prcr_id = nPrcr_id
           and prcr.axge_id = nAxge_id
           and prcr.clcr_id = clcr.clcr_id;

    else
      open cur for
        SELECT * FROM fep_processos WHERE 1 = 2;

    end if;

  end;

  Procedure SP_VALIDA_SEQ_ITEM(nAtan_id in number,
                               nClcr_id in number,
                               nSeq     in number,
                               nSeqSub  in number,
                               cur      out sys_refcursor) as

    nCont    Number(10);
    vMessage varchar2(100);
    nPrcr_id Number(10);
    nProc_id Number(10);
    nCont2   Number(10);
    nCrprId  Number(10);

  begin

    begin
      select proc.proc_id proc_id
        into nProc_id
        from fep_processos             proc,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_pessoas               pess,
             fep_pessoas               pes1,
             fep_pessoas               pes2,
             fep_pessoas               pes3,
             fep_setores               seto,
             fep_municipios            muni,
             fep_ramos_atividades      raat,
             fep_criterios_medicoes    crme,
             fep_tipos_documentos      tido
       WHERE proc.resp_id = resp.resp_id
         and proc.seto_id = seto.seto_id(+)
         and resp.pess_id = pess.pess_id
         and resp.atan_id = ata1.atan_id
         and ata1.atan_id = nAtan_id
         and ata1.raat_id = raat.raat_id
         and raat.crme_id = crme.crme_id
         and ata1.muni_id = muni.muni_id(+)
         and ata1.pess_id_responsavel = pes1.pess_id(+)
         and proc.pess_id_respondido = pes2.pess_id(+)
         and proc.pess_id = pes3.pess_id
         and proc.tido_id = tido.tido_id
         and tido.sucd_id IN (12, 15, 22)
         and raat.dm_grupo_aut in (1, 2, 3, 4)
         and raat.dm_condicao_lic = 'S'
         and proc.situacao not in ('A', 'J', 'P', 'S')
         and to_number(to_char(proc.data_entrada, 'rrrr')) > 1995
         and ((fc_gerar_aut_dicopi(proc.proc_id) = 'S') or
             (proc.libera_geracao_aut = 'S') or
             (proc.dm_libera_arrecadacao = 'S'))
      union all
      select proc.proc_id proc_id
        from fep_processos             proc,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_pessoas               pess,
             fep_pessoas               pes1,
             fep_pessoas               pes2,
             fep_pessoas               pes3,
             fep_setores               seto,
             fep_municipios            muni,
             fep_ramos_atividades      raat,
             fep_criterios_medicoes    crme,
             fep_tipos_documentos      tido
       where proc.resp_id = resp.resp_id
         and proc.seto_id = seto.seto_id(+)
         and resp.pess_id = pess.pess_id
         and resp.atan_id = ata1.atan_id
         and ata1.atan_id = nAtan_id
         and ata1.raat_id = raat.raat_id
         and raat.crme_id = crme.crme_id
         and ata1.muni_id = muni.muni_id(+)
         and ata1.pess_id_responsavel = pes1.pess_id(+)
         and proc.pess_id_respondido = pes2.pess_id(+)
         and proc.pess_id = pes3.pess_id
         and proc.tido_id = tido.tido_id
         and proc.tido_id = 300
         and not exists (select null
                from fep_documentos docu
               where docu.tido_id = proc.tido_id
                 and docu.proc_id = proc.proc_id)
         and proc.situacao in ('L', 'W', 'E');
    exception
      when no_data_found then
        nProc_id := 0;

    end;

    if nProc_id > 0 then
      begin
        select prcr.prcr_id
          into nPrcr_id
          from fep_aux_proc_cond_restr prcr, fep_documentos docu
         where prcr.proc_id = nProc_id
           and prcr.docu_id_revogado = docu.docu_id(+)
           and prcr.dm_ativo = 'S'
           and prcr.irca_id IS NULL
           and prcr.foag_id IS NULL;
      exception
        when no_data_found then
          nPrcr_id := 0;
      end;
    end if;

    if nPrcr_id > 0 then
      begin
        select count(*) --Verifica se possuem outros registros com a mesma sequencia
          into nCont
          from fep_aux_gera_cond_restr     prcr,
               fep_classes_cond_restricoes clcr
         where prcr.prcr_id = nPrcr_id
           and prcr.clcr_id = nClcr_id
           and prcr.clcr_id = clcr.clcr_id
           and prcr.sequencia = nSeq
           and prcr.sequencia_sub = nSeqSub;
      exception
        when no_data_found then
          nCont := 0;
      end;

      begin
        select count(*)
          into nCont2
          from fep_aux_cond_restr_proc crpr
         where crpr.prcr_id = nPrcr_id
           and crpr.clcr_id = nClcr_id
           and crpr.sequencia = nSeq
           and crpr.sequencia_sub = nSeqSub;
      exception
        when no_data_found then
          nCont2 := 0;
      end;

    end if;

    if (nCont2 > 0) or (nCont > 0) then
      vMessage := 'Existem outros registros cadastrados com a mesma Classe e Sequencia informadas.';

      open cur for
        SELECT vMessage as retMensagem FROM Dual;
    else
      open cur for
        SELECT vMessage as retMensagem FROM Dual where 1 = 2;
    end if;
  end;

  Procedure SP_VALIDA_SEQ_ITEM_EDICAO(nAxge_id in Number,
                                      nAtan_id in number,
                                      nClcr_id in number,
                                      nSeq     in number,
                                      nSeqSub  in number,
                                      cur      out sys_refcursor)

   as

    nCont    Number(10);
    vMessage varchar2(100);
    nPrcr_id Number(10);
    nProc_id Number(10);
    nCont2   Number(10);
    nCrprId  Number(10);

  begin

    begin
      select proc.proc_id proc_id
        into nProc_id
        from fep_processos             proc,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_pessoas               pess,
             fep_pessoas               pes1,
             fep_pessoas               pes2,
             fep_pessoas               pes3,
             fep_setores               seto,
             fep_municipios            muni,
             fep_ramos_atividades      raat,
             fep_criterios_medicoes    crme,
             fep_tipos_documentos      tido
       WHERE proc.resp_id = resp.resp_id
         and proc.seto_id = seto.seto_id(+)
         and resp.pess_id = pess.pess_id
         and resp.atan_id = ata1.atan_id
         and ata1.atan_id = nAtan_id
         and ata1.raat_id = raat.raat_id
         and raat.crme_id = crme.crme_id
         and ata1.muni_id = muni.muni_id(+)
         and ata1.pess_id_responsavel = pes1.pess_id(+)
         and proc.pess_id_respondido = pes2.pess_id(+)
         and proc.pess_id = pes3.pess_id
         and proc.tido_id = tido.tido_id
         and tido.sucd_id IN (12, 15, 22)
         and raat.dm_grupo_aut in (1, 2, 3, 4)
         and raat.dm_condicao_lic = 'S'
         and proc.situacao not in ('A', 'J', 'P', 'S')
         and to_number(to_char(proc.data_entrada, 'rrrr')) > 1995
         and ((fc_gerar_aut_dicopi(proc.proc_id) = 'S') or
             (proc.libera_geracao_aut = 'S') or
             (proc.dm_libera_arrecadacao = 'S'))
      union all
      select proc.proc_id proc_id
        from fep_processos             proc,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_pessoas               pess,
             fep_pessoas               pes1,
             fep_pessoas               pes2,
             fep_pessoas               pes3,
             fep_setores               seto,
             fep_municipios            muni,
             fep_ramos_atividades      raat,
             fep_criterios_medicoes    crme,
             fep_tipos_documentos      tido
       where proc.resp_id = resp.resp_id
         and proc.seto_id = seto.seto_id(+)
         and resp.pess_id = pess.pess_id
         and resp.atan_id = ata1.atan_id
         and ata1.atan_id = nAtan_id
         and ata1.raat_id = raat.raat_id
         and raat.crme_id = crme.crme_id
         and ata1.muni_id = muni.muni_id(+)
         and ata1.pess_id_responsavel = pes1.pess_id(+)
         and proc.pess_id_respondido = pes2.pess_id(+)
         and proc.pess_id = pes3.pess_id
         and proc.tido_id = tido.tido_id
         and proc.tido_id = 300
         and not exists (select null
                from fep_documentos docu
               where docu.tido_id = proc.tido_id
                 and docu.proc_id = proc.proc_id)
         and proc.situacao in ('L', 'W', 'E');
    exception
      when no_data_found then
        nProc_id := 0;

    end;

    if nProc_id > 0 then
      begin
        select prcr.prcr_id
          into nPrcr_id
          from fep_aux_proc_cond_restr prcr, fep_documentos docu
         where prcr.proc_id = nProc_id
           and prcr.docu_id_revogado = docu.docu_id(+)
           and prcr.dm_ativo = 'S'
           and prcr.irca_id IS NULL
           and prcr.foag_id IS NULL;
      exception
        when no_data_found then
          nPrcr_id := 0;
      end;
    end if;

    if nPrcr_id > 0 then
      begin
        select count(*) --Verifica se possuem outros registros com a mesma sequencia
          into nCont
          from fep_aux_gera_cond_restr     prcr,
               fep_classes_cond_restricoes clcr
         where prcr.prcr_id = nPrcr_id
           and prcr.axge_id <> nAxge_id
           and prcr.clcr_id = nClcr_id
           and prcr.clcr_id = clcr.clcr_id
           and prcr.sequencia = nSeq
           and prcr.sequencia_sub = nSeqSub;
      exception
        when no_data_found then
          nCont := 0;
      end;

      begin
        SELECT axge.crpr_id
          INTO nCrprId
          FROM fep_aux_gera_cond_restr axge
         WHERE axge.prcr_id = nPrcr_id
           AND axge.axge_id = nAxge_id;
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          nCrprId := 0;
      end;

      if nCrprId > 0 then
        begin
          select count(*)
            into nCont2
            from fep_aux_cond_restr_proc crpr
           where crpr.prcr_id = nPrcr_id
             and crpr.clcr_id = nClcr_id
             and crpr.sequencia = nSeq
             and crpr.sequencia_sub = nSeqSub;
        exception
          when no_data_found then
            nCont2 := 0;
        end;
      end if;

    end if;

    if (nCont2 > 0) or (nCont > 0) then
      vMessage := 'Existem outros registros cadastrados com a mesma Classe e Sequencia informadas.';

      open cur for
        SELECT vMessage FROM Dual;
    else
      open cur for
        SELECT vMessage FROM Dual where 1 = 2;
    end if;
  end;

  Procedure SP_AXGE_GET(nAxge_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_aux_gera_cond_restr where axge_id = nAxge_id;
  end;

  Procedure SP_AXGE_SRC(nAxge_id                 in number,
                        nPrcr_id                 in number,
                        nLcrs_id                 in number,
                        nCrpr_id                 in number,
                        nClcr_id                 in number,
                        nTipo_item               in number,
                        nNivel                   in number,
                        nSequencia               in number,
                        nSequencia_sub           in number,
                        sAbreviatura             in varchar,
                        sDescricao               in varchar,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        nSequencia_clcr          in number,
                        nTipo_cond               in number,
                        sDm_parecer              in varchar,
                        sDm_licenca              in varchar,
                        sDm_imprimir_seq         in varchar,
                        sEspecial_negrito        in varchar,
                        sIncluido                in varchar,
                        sDm_ignorar_opcional_aut in varchar,
                        nDm_tipo_cond_restr      in number,
                        sDm_opc_autom            in varchar,
                        nCors_id                 in number,
                        cur                      out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_aux_gera_cond_restr WHERE 0 = 0 ';

    IF nAxge_id != 0 THEN
      vSQL := vSQL || 'AND axge_id = ' || nAxge_id || ' ';
    END IF;

    IF nPrcr_id != 0 THEN
      vSQL := vSQL || 'AND prcr_id = ' || nPrcr_id || ' ';
    END IF;

    IF nLcrs_id != 0 THEN
      vSQL := vSQL || 'AND lcrs_id = ' || nLcrs_id || ' ';
    END IF;

    IF nCrpr_id != 0 THEN
      vSQL := vSQL || 'AND crpr_id = ' || nCrpr_id || ' ';
    END IF;

    IF nClcr_id != 0 THEN
      vSQL := vSQL || 'AND clcr_id = ' || nClcr_id || ' ';
    END IF;

    IF nTipo_item != 0 THEN
      vSQL := vSQL || 'AND tipo_item = ' || nTipo_item || ' ';
    END IF;

    IF nNivel != 0 THEN
      vSQL := vSQL || 'AND nivel = ' || nNivel || ' ';
    END IF;

    IF nSequencia != 0 THEN
      vSQL := vSQL || 'AND sequencia = ' || nSequencia || ' ';
    END IF;

    IF nSequencia_sub != 0 THEN
      vSQL := vSQL || 'AND sequencia_sub = ' || nSequencia_sub || ' ';
    END IF;

    IF sAbreviatura != 'null' THEN
      vSQL := vSQL || 'AND abreviatura LIKE ''%' || sAbreviatura || '%'' ';
    END IF;

    IF sDescricao != 'null' THEN
      vSQL := vSQL || 'AND descricao LIKE ''%' || sDescricao || '%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF nSequencia_clcr != 0 THEN
      vSQL := vSQL || 'AND sequencia_clcr = ' || nSequencia_clcr || ' ';
    END IF;

    IF nTipo_cond != 0 THEN
      vSQL := vSQL || 'AND tipo_cond = ' || nTipo_cond || ' ';
    END IF;

    IF sDm_parecer != 'null' THEN
      vSQL := vSQL || 'AND dm_parecer LIKE ''%' || sDm_parecer || '%'' ';
    END IF;

    IF sDm_licenca != 'null' THEN
      vSQL := vSQL || 'AND dm_licenca LIKE ''%' || sDm_licenca || '%'' ';
    END IF;

    IF sDm_imprimir_seq != 'null' THEN
      vSQL := vSQL || 'AND dm_imprimir_seq LIKE ''%' || sDm_imprimir_seq ||
              '%'' ';
    END IF;

    IF sEspecial_negrito != 'null' THEN
      vSQL := vSQL || 'AND especial_negrito LIKE ''%' || sEspecial_negrito ||
              '%'' ';
    END IF;

    IF sIncluido != 'null' THEN
      vSQL := vSQL || 'AND incluido LIKE ''%' || sIncluido || '%'' ';
    END IF;

    IF sDm_ignorar_opcional_aut != 'null' THEN
      vSQL := vSQL || 'AND dm_ignorar_opcional_aut LIKE ''%' ||
              sDm_ignorar_opcional_aut || '%'' ';
    END IF;

    IF nDm_tipo_cond_restr != 0 THEN
      vSQL := vSQL || 'AND dm_tipo_cond_restr = ' || nDm_tipo_cond_restr || ' ';
    END IF;

    IF sDm_opc_autom != 'null' THEN
      vSQL := vSQL || 'AND dm_opc_autom LIKE ''%' || sDm_opc_autom ||
              '%'' ';
    END IF;

    IF nCors_id != 0 THEN
      vSQL := vSQL || 'AND cors_id = ' || nCors_id || ' ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_AXGE_INS(nPrcr_id                 in number,
                        nLcrs_id                 in number,
                        nCrpr_id                 in number,
                        nClcr_id                 in number,
                        nTipo_item               in number,
                        nNivel                   in number,
                        nSequencia               in number,
                        nSequencia_sub           in number,
                        sAbreviatura             in varchar,
                        sDescricao               in varchar,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        nSequencia_clcr          in number,
                        nTipo_cond               in number,
                        sDm_parecer              in varchar,
                        sDm_licenca              in varchar,
                        sDm_imprimir_seq         in varchar,
                        sEspecial_negrito        in varchar,
                        sIncluido                in varchar,
                        sDm_ignorar_opcional_aut in varchar,
                        nDm_tipo_cond_restr      in number,
                        sDm_opc_autom            in varchar,
                        nCors_id                 in number,
                        nAxge_id                 out number) is
  begin
    INSERT INTO fep_aux_gera_cond_restr
      (axge_id,
       prcr_id,
       lcrs_id,
       crpr_id,
       clcr_id,
       tipo_item,
       nivel,
       sequencia,
       sequencia_sub,
       abreviatura,
       descricao,
       data_inclusao,
       operador_inclusao,
       sequencia_clcr,
       tipo_cond,
       dm_parecer,
       dm_licenca,
       dm_imprimir_seq,
       especial_negrito,
       incluido,
       dm_ignorar_opcional_aut,
       dm_tipo_cond_restr,
       dm_opc_autom,
       cors_id)
    VALUES
      (AXGE_SEQ.nextval,
       nPrcr_id,
       nLcrs_id,
       nCrpr_id,
       nClcr_id,
       nTipo_item,
       nNivel,
       nSequencia,
       nSequencia_sub,
       sAbreviatura,
       sDescricao,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       nSequencia_clcr,
       nTipo_cond,
       sDm_parecer,
       sDm_licenca,
       sDm_imprimir_seq,
       sEspecial_negrito,
       sIncluido,
       sDm_ignorar_opcional_aut,
       nDm_tipo_cond_restr,
       sDm_opc_autom,
       nCors_id);
    SELECT AXGE_SEQ.currval into nAxge_id FROM dual;
    commit;
  end;

  Procedure SP_INS_COND_RESTR_RAMO(nAtan_id         in Number,
                                   nClcrId          in Number,
                                   nSeq             in Number,
                                   nTipoItem        in Number,
                                   nNivel           in Number,
                                   nSeqSub          in Number,
                                   vAbreviatura     in Varchar,
                                   vDescricao       in Varchar,
                                   vOperIncl        in varchar2,
                                   nTipoCond        in Number,
                                   vDmParecer       in varchar2,
                                   vDmLicenca       in varchar2,
                                   vDmImpSeq        in varchar2,
                                   vEspNeg          in varchar2,
                                   vIncl            in varchar2,
                                   vDmIgnoraOptAut  in varchar2,
                                   nDmTipoCondRestr in Number,
                                   vDmOpcAutom      in varchar2)

   as

    vDataAtual DATE := SYSDATE;
    vUsuario   VARCHAR2(30) := USER;
    nProc_id   Number(10);
    nPrcr_id   Number(10);
    nSeqClcr   Number(10);
    nCrprId    NUMBER(10);

  BEGIN

    IF nAtan_id > 0 then

      BEGIN
        select proc.proc_id proc_id
          into nProc_id
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         WHERE proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtan_id
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and tido.sucd_id IN (12, 15, 22)
           and raat.dm_grupo_aut in (1, 2, 3, 4)
           and raat.dm_condicao_lic = 'S'
           and proc.situacao not in ('A', 'J', 'P', 'S')
           and to_number(to_char(proc.data_entrada, 'rrrr')) > 1995
           and ((fc_gerar_aut_dicopi(proc.proc_id) = 'S') or
               (proc.libera_geracao_aut = 'S') or
               (proc.dm_libera_arrecadacao = 'S'))
        union all
        select proc.proc_id proc_id
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         where proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtan_id
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and proc.tido_id = 300
           and not exists (select null
                  from fep_documentos docu
                 where docu.tido_id = proc.tido_id
                   and docu.proc_id = proc.proc_id)
           and proc.situacao in ('L', 'W', 'E');
      exception
        when no_data_found then
          nProc_id := 0;

      END;
    END IF;

    IF nProc_id > 0 THEN
      BEGIN
        SELECT prcr.prcr_id
          INTO nPrcr_id
          FROM fep_aux_proc_cond_restr prcr, fep_documentos docu
         WHERE prcr.proc_id = nProc_id
           AND prcr.docu_id_revogado = docu.docu_id(+)
           AND prcr.dm_ativo = 'S'
           AND prcr.irca_id IS NULL
           AND prcr.foag_id IS NULL;
      EXCEPTION
        WHEN no_data_found THEN
          nProc_id := 0;
      END;
    END IF;

    IF (nPrcr_id > 0) THEN

      IF nTipoCond = 3 THEN
        --Permite incluir somente se for especifico
        BEGIN
          SELECT crpr_seq.nextval INTO nCrprId FROM dual;
        END;

        BEGIN
          INSERT INTO fep_aux_cond_restr_proc crpr
            (CRPR_ID,
             PRCR_ID,
             ABREVIATURA,
             DESCRICAO,
             TIPO_ITEM,
             SEQUENCIA,
             SEQUENCIA_SUB,
             DM_IMPRIMIR_SEQ,
             ESPECIAL_NEGRITO,
             DM_PARECER,
             DM_LICENCA,
             OPERADOR_INCLUSAO,
             DATA_INCLUSAO,
             OPERADOR_ATUALIZACAO,
             DATA_ATUALIZACAO,
             NIVEL,
             CLCR_ID)
          VALUES
            (nCrprId,
             nPrcr_id,
             vAbreviatura,
             vDescricao,
             nTipoItem,
             nSeq,
             nSeqSub,
             vDmImpSeq,
             vEspNeg,
             vDmParecer,
             vDmLicenca,
             vUsuario,
             vDataAtual,
             vUsuario,
             vDataAtual,
             nNivel,
             nClcrId);
          commit;
        END;

        BEGIN
          --Busca o CLCR_ID
          SELECT clcr.sequencia
            INTO nSeqClcr
            FROM fep_classes_cond_restricoes clcr
           WHERE clcr.clcr_id = nClcrId;
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            nSeqClcr := 0;
        END;

        IF nSeqClcr > 0 THEN
          BEGIN
            INSERT INTO fep_aux_gera_cond_restr
            VALUES
              (axge_seq.nextval,
               nPrcr_id,
               NULL,
               nCrprId,
               nClcrId,
               nTipoItem,
               nNivel,
               nSeq,
               nSeqSub,
               vAbreviatura,
               vDescricao,
               vDataAtual,
               vOperIncl,
               nSeqClcr,
               nTipoCond,
               vDmParecer,
               vDmLicenca,
               vDmImpSeq,
               vEspNeg,
               vIncl,
               vDmIgnoraOptAut,
               nDmTipoCondRestr,
               vDmOpcAutom,
               null);
            commit;
          END;
        END IF;
      END IF;
    END IF;
  END;

  Procedure SP_UPD_COND_RESTR_RAMO(nAtan_id         in Number,
                                   nAxge_id         in Number,
                                   nClcrId          in Number,
                                   nSeq             in Number,
                                   nTipoItem        in Number,
                                   nNivel           in Number,
                                   nSeqSub          in Number,
                                   vAbreviatura     in Varchar,
                                   vDescricao       in Varchar,
                                   vOperIncl        in varchar2,
                                   nTipoCond        in Number,
                                   vDmParecer       in varchar2,
                                   vDmLicenca       in varchar2,
                                   vDmImpSeq        in varchar2,
                                   vEspNeg          in varchar2,
                                   vIncl            in varchar2,
                                   vDmIgnoraOptAut  in varchar2,
                                   nDmTipoCondRestr in Number,
                                   vDmOpcAutom      in varchar2)

   as

    vDataAtual DATE := SYSDATE;
    vUsuario   VARCHAR2(30) := USER;
    nCrprId    Number(10);
    nProc_id   Number(10);
    nPrcr_id   Number(10);
    nSeqClcr   Number(10);
    nCont      Number(10);

  BEGIN

    IF nAtan_id > 0 then

      BEGIN
        select proc.proc_id proc_id
          into nProc_id
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         WHERE proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtan_id
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and tido.sucd_id IN (12, 15, 22)
           and raat.dm_grupo_aut in (1, 2, 3, 4)
           and raat.dm_condicao_lic = 'S'
           and proc.situacao not in ('A', 'J', 'P', 'S')
           and to_number(to_char(proc.data_entrada, 'rrrr')) > 1995
           and ((fc_gerar_aut_dicopi(proc.proc_id) = 'S') or
               (proc.libera_geracao_aut = 'S') or
               (proc.dm_libera_arrecadacao = 'S'))
        union all
        select proc.proc_id proc_id
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         where proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtan_id
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and proc.tido_id = 300
           and not exists (select null
                  from fep_documentos docu
                 where docu.tido_id = proc.tido_id
                   and docu.proc_id = proc.proc_id)
           and proc.situacao in ('L', 'W', 'E');
      exception
        when no_data_found then
          nProc_id := 0;

      END;
    END IF;

    IF nProc_id > 0 THEN
      BEGIN
        SELECT prcr.prcr_id
          INTO nPrcr_id
          FROM fep_aux_proc_cond_restr prcr, fep_documentos docu
         WHERE prcr.proc_id = nProc_id
           AND prcr.docu_id_revogado = docu.docu_id(+)
           AND prcr.dm_ativo = 'S'
           AND prcr.irca_id IS NULL
           AND prcr.foag_id IS NULL;
      EXCEPTION
        WHEN no_data_found THEN
          nProc_id := 0;
      END;
    END IF;

    IF (nPrcr_id > 0) THEN

      IF nTipoCond = 3 THEN

        BEGIN
          SELECT axge.crpr_id
            INTO nCrprId
            FROM fep_aux_gera_cond_restr axge
           WHERE axge.prcr_id = nPrcr_id
             AND axge.axge_id = nAxge_id;
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            nCrprId := 0;
        END;

        IF nCrprId > 0 THEN

          BEGIN
            UPDATE fep_aux_cond_restr_proc
               SET ABREVIATURA          = vAbreviatura,
                   DESCRICAO            = vDescricao,
                   TIPO_ITEM            = nTipoItem,
                   SEQUENCIA            = nSeq,
                   SEQUENCIA_SUB        = nSeqSub,
                   DM_IMPRIMIR_SEQ      = vDmImpSeq,
                   ESPECIAL_NEGRITO     = vEspNeg,
                   DM_PARECER           = vDmParecer,
                   DM_LICENCA           = vDmLicenca,
                   OPERADOR_ATUALIZACAO = vUsuario,
                   DATA_ATUALIZACAO     = vDataAtual,
                   NIVEL                = nNivel,
                   CLCR_ID              = nClcrId,
                   DM_EXCLUIR           = NULL
             WHERE CRPR_ID = nCrprId;
            COMMIT;
          END;

          BEGIN
            --Busca o CLCR_ID
            SELECT clcr.sequencia
              INTO nSeqClcr
              FROM fep_classes_cond_restricoes clcr
             WHERE clcr.clcr_id = nClcrId;
          EXCEPTION
            WHEN NO_DATA_FOUND THEN
              nSeqClcr := 0;
          END;

          BEGIN

            UPDATE fep_aux_gera_cond_restr axge
               SET axge.lcrs_id                 = NUll,
                   axge.clcr_id                 = nClcrId,
                   axge.tipo_item               = nTipoItem,
                   axge.nivel                   = nNivel,
                   axge.sequencia               = nSeq,
                   axge.sequencia_sub           = nSeqSub,
                   axge.abreviatura             = vAbreviatura,
                   axge.descricao               = vDescricao,
                   axge.data_inclusao           = vDataAtual,
                   axge.operador_inclusao       = vUsuario,
                   axge.sequencia_clcr          = nSeqClcr,
                   axge.tipo_cond               = nTipoCond,
                   axge.dm_parecer              = vDmParecer,
                   axge.dm_licenca              = vDmLicenca,
                   axge.dm_imprimir_seq         = vDmImpSeq,
                   axge.especial_negrito        = vEspNeg,
                   axge.incluido                = vIncl,
                   axge.dm_ignorar_opcional_aut = vDmOpcAutom,
                   axge.dm_tipo_cond_restr      = nDmTipoCondRestr,
                   axge.dm_opc_autom            = vDmOpcAutom
             WHERE axge.prcr_id = nPrcr_id
               and axge.axge_id = nAxge_id;
            commit;
          END;

        END IF;
      END IF;
    END IF;
  end;

  Procedure SP_AXGE_UPD(nAxge_id       in number,
                        nPrcr_id       in number,
                        nLcrs_id       in number,
                        nCrpr_id       in number,
                        nClcr_id       in number,
                        nTipo_item     in number,
                        nNivel         in number,
                        nSequencia     in number,
                        nSequencia_sub in number,
                        sAbreviatura   in varchar,
                        sDescricao     in varchar,

                        nSequencia_clcr          in number,
                        nTipo_cond               in number,
                        sDm_parecer              in varchar,
                        sDm_licenca              in varchar,
                        sDm_imprimir_seq         in varchar,
                        sEspecial_negrito        in varchar,
                        sIncluido                in varchar,
                        sDm_ignorar_opcional_aut in varchar,
                        nDm_tipo_cond_restr      in number,
                        sDm_opc_autom            in varchar,
                        nCors_id                 in number) is
  begin
    UPDATE fep_aux_gera_cond_restr
       SET prcr_id       = nPrcr_id,
           lcrs_id       = nLcrs_id,
           crpr_id       = nCrpr_id,
           clcr_id       = nClcr_id,
           tipo_item     = nTipo_item,
           nivel         = nNivel,
           sequencia     = nSequencia,
           sequencia_sub = nSequencia_sub,
           abreviatura   = sAbreviatura,
           descricao     = sDescricao,

           sequencia_clcr          = nSequencia_clcr,
           tipo_cond               = nTipo_cond,
           dm_parecer              = sDm_parecer,
           dm_licenca              = sDm_licenca,
           dm_imprimir_seq         = sDm_imprimir_seq,
           especial_negrito        = sEspecial_negrito,
           incluido                = sIncluido,
           dm_ignorar_opcional_aut = sDm_ignorar_opcional_aut,
           dm_tipo_cond_restr      = nDm_tipo_cond_restr,
           dm_opc_autom            = sDm_opc_autom,
           cors_id                 = nCors_id
     WHERE axge_id = nAxge_id;
    commit;
  end;

  Procedure SP_AXGE_DEL(nAxge_id in number) IS
  BEGIN
    DELETE FROM fep_aux_gera_cond_restr WHERE axge_id = nAxge_id;
    commit;
  end;

  --- PROCESSO EMPREENDIMENTOS ---

  procedure SP_GER_PROC_EMPREENDIMENTO(nAtan_id in number,
                                       cur      out sys_refcursor) as

    vImpLocal    varchar2(5);
    vLicenciador varchar2(5);
    vImpReg      varchar2(5);
    vDmConv      varchar2(5);
    vImpacto     varchar2(5);
    nRaat        number(7, 2);
    nId_Atan     number(10);
    nMedidaPorte number(12, 4);
    vDisLic      varchar2(5);

    nCont                number(10);
    nNumProcEmpto        number(10);
    vHabBtnListProc      varchar2(1);
    nProcId              number(10);
    nPrcrId              number(10);
    vUltimaLicenca       varchar2(60);
    vProcessoUltLicenca  varchar2(60);
    vSituacaoUltLicenca  varchar2(1);
    vDataVencUltLicenca  varchar2(10);
    vUltLicencaRenovavel varchar2(1);
    nUltimoDocuId        Number(10);
    nUltimoProcIdLic     Number(10);
    nTido_ult_lic        Number(5);
    vDmUltLicAutom       varchar2(1);
    NumProcPendentes     Number(10);
    vExisteParecer       varchar2(1);
    nContParecer         Number(10);
    nContPosto           Number(10);
    nContador            Number(10);
    vHabBtnGeraParecer   varchar2(1);
    nDmGrupoAut          Number(2);
    vSituacao            varchar2(240);
    nTidoId              Number(10);
    nContProducao        Number(10);
    nNumFuncionarios     Number(10);
    vHabBtnParecerPDF    varchar2(1);
    nLiberaGerar         Number(1) := 0;
    vHabBtnGerarLicenca  varchar2(1);
    nNroDiasVencer       varchar2(10);
    nProcIdUltLicenca    number(10);
    vDmRevPend           varchar(1);
    vDdmGeraLicPendente  varchar2(1);
    nContLicVigor        number(10);
    vUsuario             VARCHAR2(30);
    dDataAtual           DATE;
    vMessageDicopi       varchar2(500);
    vMessageSeamb        varchar2(500);
    vMessageIrriga       varchar2(500);
    vMessageNotAnalise   varchar2(500);
    vHabCampoRevPend     varchar2(1);
    vErroUpdate          varchar2(500);
    vExisteProducao      varchar2(1);

  begin

    if (nAtan_id > 0) then

      begin
        select proc.proc_id,
               raat.dm_grupo_aut,
               BUSCA_STATUS_DOC_PROCESSO(proc.situacao),
               proc.tido_id
          into nProcId, nDmGrupoAut, vSituacao, nTidoId
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         where proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtan_id
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and tido.sucd_id IN (12, 15, 22)
           and raat.dm_grupo_aut in (1, 2, 3, 4)
           and raat.dm_condicao_lic = 'S'
           and proc.situacao not in ('A', 'J', 'P', 'S')
           and to_number(to_char(proc.data_entrada, 'rrrr')) > 1995
           and ((fc_gerar_aut_dicopi(proc.proc_id) = 'S') or
               (proc.libera_geracao_aut = 'S') or
               (proc.dm_libera_arrecadacao = 'S'))
        union all
        select proc.proc_id,
               raat.dm_grupo_aut,
               BUSCA_STATUS_DOC_PROCESSO(proc.situacao),
               proc.tido_id
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         where proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtan_id
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and proc.tido_id = 300
           and not exists (select null
                  from fep_documentos docu
                 where docu.tido_id = proc.tido_id
                   and docu.proc_id = proc.proc_id)
           and proc.situacao in ('L', 'W', 'E');
      exception
        when no_data_found then
          nProcId     := 0;
          nDmGrupoAut := 0;
          vSituacao   := null;
          nTidoId     := 0;

      end;

      begin
        select count(*) -- Se tiver mais de um Processo, habilita os bot?es
          into nCont
          from fep_processos proc, fep_responsabilidades resp
         where proc.resp_id = resp.resp_id
           and resp.atan_id = nAtan_id;
      exception
        when no_data_found then
          nCont := 0;
      end;

      nNumProcEmpto := nCont; --Busca o valor a ser mostrado no campo N? Processos Empto
      if nCont > 0 then
        vHabBtnListProc := 'S';
      else
        vHabBtnListProc := 'N';
      end if;

      if nProcId > 0 then
        -- Verifica o ultimo Documento de Licenciamento Emitido do mesmo tipo do processo atual
        begin
          SELECT docu.documento,
                 docu.processo,
                 docu.situacao situacao,
                 docu.data_fim_vigencia data_fim_vigencia,
                 docu.lic_renovavel,
                 docu.docu_id,
                 docu.proc_id,
                 docu.tido_id,
                 docu.geracao_automatica
            INTO vUltimaLicenca,
                 vProcessoUltLicenca,
                 vSituacaoUltLicenca,
                 vDataVencUltLicenca,
                 vUltLicencaRenovavel,
                 nUltimoDocuId,
                 nUltimoProcIdLic,
                 nTido_ult_lic,
                 vDmUltLicAutom
            FROM (select SUBSTR(docu.numero || ' / ' || docu.ano || ' - ' ||
                                tido.abreviatura,
                                1,
                                25) documento,
                         SUBSTR(LPAD(proc.numero, 6, 0) || ' ' ||
                                LPAD(proc.orig_id, 4, 0) || ' ' ||
                                LPAD(proc.ano, 2, 0) || ' ' || (proc.dv),
                                1,
                                16) processo,
                         docu.situacao situacao,
                         docu.data_fim_vigencia data_fim_vigencia,
                         docu.renovavel lic_renovavel,
                         docu.docu_id docu_id,
                         docu.proc_id proc_id,
                         docu.tido_id tido_id,
                         docu.geracao_automatica geracao_automatica,
                         RANK() Over(ORDER BY docu.data_fim_vigencia desc) AS Rank
                    FROM fep_processos         proc,
                         fep_processos         proc1,
                         fep_responsabilidades resp,
                         fep_documentos        docu,
                         fep_tipos_documentos  tido
                   WHERE proc.resp_id = resp.resp_id
                     and proc.proc_id = docu.proc_id
                     and docu.tido_id = tido.tido_id
                     and resp.atan_id = nAtan_id
                     and proc1.proc_id = nProcId
                     and proc1.tido_id = docu.tido_id
                   order by docu.data_emissao DESC) docu
           WHERE ROWNUM = 1;
        exception
          when no_data_found then
            vUltimaLicenca       := NUll;
            vProcessoUltLicenca  := NUll;
            vSituacaoUltLicenca  := NUll;
            vDataVencUltLicenca  := NUll;
            vUltLicencaRenovavel := NUll;
            nUltimoDocuId        := 0;
            nUltimoProcIdLic     := 0;
            nTido_ult_lic        := 0;
            vDmUltLicAutom       := NUll;
        end;

      end if;

      if vUltimaLicenca IS NULL then
        -- Verifica o Ultimo Documento de Licenciamento Emitido
        begin
          SELECT docu.documento,
                 docu.processo,
                 docu.situacao,
                 docu.data_fim_vigencia,
                 docu.lic_renovavel,
                 docu.DocId,
                 docu.proc_doc,
                 docu.tido_id,
                 docu.geracao_automatica,
                 docu.id_processo
            into vUltimaLicenca,
                 vProcessoUltLicenca,
                 vSituacaoUltLicenca,
                 vDataVencUltLicenca,
                 vUltLicencaRenovavel,
                 nUltimoDocuId,
                 nUltimoProcIdLic,
                 nTido_ult_lic,
                 vDmUltLicAutom,
                 nProcIdUltLicenca
            FROM (select SUBSTR(docu.numero || ' / ' || docu.ano || ' - ' ||
                                tido.abreviatura,
                                1,
                                25) documento,
                         SUBSTR(LPAD(proc.numero, 6, 0) || ' ' ||
                                LPAD(proc.orig_id, 4, 0) || ' ' ||
                                LPAD(proc.ano, 2, 0) || ' ' || (proc.dv),
                                1,
                                16) processo,
                         docu.situacao situacao,
                         docu.data_fim_vigencia data_fim_vigencia,
                         docu.renovavel lic_renovavel,
                         (docu.docu_id) DocId,
                         docu.proc_id as proc_doc,
                         docu.tido_id tido_id,
                         docu.geracao_automatica geracao_automatica,
                         proc.proc_id as id_processo,
                         RANK() Over(ORDER BY docu.data_fim_vigencia desc) AS Rank
                    from fep_processos              proc,
                         fep_responsabilidades      resp,
                         fep_documentos             docu,
                         fep_tipos_documentos       tido,
                         fep_sub_classes_documentos sucd
                   where proc.resp_id = resp.resp_id
                     and proc.proc_id = docu.proc_id
                     and docu.tido_id = tido.tido_id
                     and tido.sucd_id = sucd.sucd_id
                     and sucd.cldo_id in (1, 2, 3, 4, 5, 6)
                     and resp.atan_id = nAtan_id
                   order by docu.data_emissao DESC) docu
           WHERE ROWNUM = 1;
        exception
          when no_data_found then
            vUltimaLicenca       := NUll;
            vProcessoUltLicenca  := NUll;
            vSituacaoUltLicenca  := NUll;
            vDataVencUltLicenca  := NUll;
            vUltLicencaRenovavel := NUll;
            nUltimoDocuId        := 0;
            nUltimoProcIdLic     := 0;
            nTido_ult_lic        := 0;
            vDmUltLicAutom       := NUll;
            nProcIdUltLicenca    := 0;
        end;

      end if;

      -- Verifica o Numero de Processos de Licencimaneto da sub-classe 12 Pendentes para o Empeendimento
      NumProcPendentes := FC_CONTA_PROC_PENDENTE(nAtan_id);

      begin
        -- Verifica se existe parecer gerado
        select COUNT(*)
          into nContParecer
          from fep_aux_proc_cond_restr prcr
         where prcr.proc_id = nProcId
           and prcr.dm_ativo = 'S';
      exception
        when no_data_found then
          nContParecer := 0;
      end;

      if nContParecer > 0 then
        vExisteParecer := 'S';
      else
        vExisteParecer := 'N';
      end if;

      begin
        select COUNT(*)
          into nContador
          from fep_aux_proc_cond_restr prcr, fep_documentos docu
         where prcr.proc_id = nProcId
           and prcr.dm_ativo = 'S'
           and prcr.docu_id_revogado = docu.docu_id
           and ((docu.tido_id = nTidoId) or
               (docu.tido_id = 120 and nTidoId = 151) or
               (docu.tido_id = 530 and nTidoId = 120))
           and docu.situacao = 'E'
           and docu.proc_id = nProcId;
      exception
        when no_data_found then
          nContador := 0;
      end;

      -- Busca o campo N? Funcionarios
      begin
        select NVL(indu.nrofun_producao, 0) +
               NVL(indu.nrofun_administracao, 0) +
               NVL(indu.nrofun_outros, 0)
          into nNumFuncionarios
          from fep_industrias indu
         where indu.atan_id = nAtan_id;
      exception
        when no_data_found then
          nNumFuncionarios := 0;
      end;

      --Verifica se existem em Produc?o
      begin
        select SUM(NVL(prod.qtd_maxima_mes, 0))
          into nContProducao
          from fep_produtos prod
         where prod.atan_id = nAtan_id;
      exception
        when no_data_found then
          nContProducao := 0;
      end;

      if nContProducao > 0 then
        vExisteProducao := 'S';
      else
        vExisteProducao := 'N';
      end if;

      if nProcId > 0 then
        --Busca o prcr_id
        begin
          select prcr.prcr_id
            into nPrcrId
            from fep_aux_proc_cond_restr prcr, fep_documentos docu
           where prcr.proc_id = nProcId
             and prcr.docu_id_revogado = docu.docu_id(+)
             and prcr.dm_ativo = 'S'
             and prcr.irca_id IS NULL
             and prcr.foag_id IS NULL;
        exception
          when no_data_found then
            nPrcrId := 0;
        end;

      end if;

      if nDmGrupoAut = 1 then
        -- DICOPI

        -- Para poder gerar Parecer no minimo tem que ter informado Nro de Funcionario e Produc?o
        if nNumFuncionarios > 0 and nContProducao > 0 then
          if vSituacao IN ('EM ANALISE') then
            --- em andamento
            vHabBtnGeraParecer := 'S';
          else
            -- verifica se ja foi gerado documento para o processo
            if vSituacao IN ('DOC EMITIDO') then
              --- documento ja emitido para o processo
              if nContador > 0 then
                vHabBtnGeraParecer := 'S';
              end if;
            end if;
          end if;
        else
          vHabBtnGeraParecer := 'S';
          vMessageDicopi     := 'ATENC?O: A situac?o do Processo deve estar EM ANALISE, N? de Funcionarios e Produc?o devem estar informados para ' ||
                                'habilitar o bot?o (Gerar PARECER Em Trabalho) !';
        end if;
      end if;

      if nDmGrupoAut = 2 then
        -- SEAMB

        begin
          -- Verifica se tem cadastro no posto de combustivel
          select COUNT(*)
            into nContPosto
            from fep_postos_combustiveis ptcb
           where ptcb.atan_id = nAtan_id;
        exception
          when no_data_found then
            nContPosto := 0;
        end;

        if nContPosto > 0 and vSituacao IN ('EM ANALISE') then
          vHabBtnGeraParecer := 'S';
        else
          if vSituacao IN ('DOC EMITIDO') then
            if nContador > 0 then
              vHabBtnGeraParecer := 'S';
            end if;
          else
            vHabBtnGeraParecer := 'S';
            vMessageSeamb      := 'ATENC?O: A situac?o do Processo deve estar EM ANALISE e ' ||
                                  'deve ter cadastro do Posto de Combustivel (CADF4400) para ' ||
                                  'habilitar o bot?o (Gerar PARECER Em Trabalho) !';

          end if;

        end if;

      end if;

      if nDmGrupoAut IN (3, 4) then
        -- 3-IRRIGAC?O   4-LABS

        if vSituacao IN ('EM ANALISE') then
          --- Em andamento
          vHabBtnGeraParecer := 'S';
        else
          -- verifica se ja foi gerado documento para o processo
          if vSituacao IN ('DOC EMITIDO') then
            --- documento ja emitido para o processo
            if nContador > 0 then
              vHabBtnGeraParecer := 'S';
            end if;
          else
            vHabBtnGeraParecer := 'S';
            vMessageIrriga     := 'ATENC?O: A situac?o do Processo deve estar EM ANALISE para ' ||
                                  'habilitar o bot?o (Gerar PARECER Em Trabalho) !';
          end if;
        end if;
      end if;

      if NVL(nDmGrupoAut, 0) NOT IN (1, 2, 3, 4) then
        if vSituacao IN ('EM ANALISE') then
          --- em andamento
          vHabBtnGeraParecer := 'S';
        else
          vHabBtnGeraParecer := 'S';
          vMessageNotAnalise := 'ATENC?O: A situac?o do Processo deve estar EM ANALISE para ' ||
                                'habilitar o bot?o (Gerar PARECER Em Trabalho) !';
        end if;
      end if;

      if vSituacao = 'EM ANALISE' then
        -- em andamento
        nLiberaGerar := 1;
      else
        if vSituacao = 'DOC EMITIDO' then
          -- processo com documento emitido
          if nContador > 0 then
            nLiberaGerar := 1; -- tem rev do documento do mesmo processo
          end if;
        end if;
      end if;

      if nLiberaGerar = 1 then
        if nPrcrId IS NOT NULL then
          if nDmGrupoAut = 1 then
            -- DICOPI
            if nNumFuncionarios > 0 and nContProducao > 0 then
              vHabBtnParecerPDF   := 'S';
              vHabBtnGerarLicenca := 'S';
            end if;
          end if;

          if nDmGrupoAut IN (2, 3, 4) then
            -- 2-SEAMB  3-IRRIGACAO  4-LABS
            vHabBtnParecerPDF   := 'S';
            vHabBtnGerarLicenca := 'S';
          end if;

          if NVL(nDmGrupoAut, 0) NOT IN (1, 2, 3, 4) then
            -- Isenc?o Lic
            vHabBtnParecerPDF   := 'S';
            vHabBtnGerarLicenca := 'S';
          end if;

        end if;

      end if;

      -- verifica se pode ficar como pendente
      vDmRevPend := '';

      IF vSituacao = 'EM ANDAMENTO' THEN

        nNroDiasVencer := TRUNC(vDataVencUltLicenca) - TRUNC(SYSDATE);

        IF nProcIdUltLicenca = nProcId THEN

          vDmRevPend := 'R'; -- sendo igual a R so pode revogar

        ELSE
          IF nTido_ult_lic = 120 AND nTidoId = 120 THEN
            -- so pode colocar como pendente se faltar ate 20 dias para a licenca vencer
            IF nNroDiasVencer < 21 THEN
              vHabCampoRevPend := 'S';

              IF nProcId IS NOT NULL THEN

                begin
                  select prcr.dm_gera_lic_pendente
                    into vDdmGeraLicPendente
                    from fep_aux_proc_cond_restr prcr
                   where prcr.prcr_id = nPrcrId;
                exception
                  when no_data_found then
                    vDdmGeraLicPendente := null;
                end;

                IF vDdmGeraLicPendente = 'S' THEN
                  vDmRevPend := 'P';
                ELSE
                  vDmRevPend := 'R';
                END IF;
              END IF;
            ELSE
              vDmRevPend := 'R';
            END IF;
          END IF;
        END IF;
      ELSE

        begin
          -- verifica se tem algum doc licenciatorio em vigor
          select COUNT(*)
            into nContLicVigor
            from fep_responsabilidades      resp,
                 fep_processos              proc,
                 fep_documentos             docu,
                 fep_tipos_documentos       tido,
                 fep_sub_classes_documentos sucd
           where resp.atan_id = nAtan_id
             and resp.resp_id = proc.resp_id
             and proc.proc_id = docu.proc_id
             and docu.tido_id = tido.tido_id
             and tido.sucd_id = sucd.sucd_id
             and sucd.cldo_id IN (1, 2, 3, 4, 5, 6)
             and docu.situacao = 'E';
        exception
          when no_data_found then
            nContLicVigor := 0;
        end;

        IF nPrcrId IS NOT NULL AND nContLicVigor = 0 THEN
          SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;
          -- n?o tem mais documento em vigor
          BEGIN
            UPDATE fep_aux_proc_cond_restr
               SET docu_id_revogado     = NULL,
                   motivo_revogacao     = NULL,
                   dm_gera_lic_pendente = NULL,
                   data_inicio_vigencia = NULL,
                   data_fim_vigencia    = NULL,
                   dm_data_fim_inf      = 'N',
                   operador_atualizacao = vUsuario,
                   data_atualizacao     = dDataAtual
             WHERE prcr_id = nPrcrId
               AND (docu_id_revogado IS NOT NULL OR
                   motivo_revogacao IS NOT NULL OR
                   dm_gera_lic_pendente IS NOT NULL);
            commit;
          EXCEPTION
            WHEN OTHERS THEN
              vErroUpdate := 'Erro na atualizac?o da tabela fep_aux_proc_cond_restr ';
          END;

        END IF;
      END IF;

      open cur for
        SELECT proc.proc_id proc_id,
               BUSCA_STATUS_DOC_PROCESSO(proc.situacao) situacao,
               proc.data_entrada data_entrada,
               substr(lpad(proc.numero, 6, 0) || ' ' ||
                      lpad(proc.orig_id, 4, 0) || ' ' ||
                      lpad(proc.ano, 2, 0) || ' ' || (proc.dv),
                      1,
                      16) processo,
               resp.atan_id empreendimento,
               ata1.descricao empreendimento_descricao,
               ata1.raat_id raat_id,
               raat.descricao raat_descricao,
               ata1.medida_porte medida_porte,
               substr(busca_porte(ata1.raat_id, ata1.medida_porte, null),
                      1,
                      1) dm_porte,
               raat.crme_id crme_id,
               crme.abreviatura crme_abreviatura,
               crme.descricao crme_descricao,
               resp.pess_id empreendedor,
               pess.razao_social empreendedor_razao_social,
               ata1.muni_id atan_muni_id,
               muni.nome atan_municipio,
               ata1.pess_id_responsavel atan_cod_tecnico_resp,
               pes1.razao_social atan_nome_tecnico_resp,
               proc.pess_id_respondido proc_cod_tecnico_resp,
               pes2.razao_social proc_nome_tecnico_resp,
               proc.pess_id requerente,
               pes3.razao_social requerente_nome,
               to_number(to_char(proc.data_entrada, 'mm')) mes_entrada,
               to_number(to_char(proc.data_entrada, 'rrrr')) ano_entrada,
               proc.seto_id seto_id,
               seto.sigla seto_sigla,
               seto.nome seto_nome,
               proc.tido_id tido_id,
               tido.abreviatura tido_abreviatura,
               tido.descricao tido_descricao,
               nNumProcEmpto NUM_PROC_EMPTO, --Busca o valor a ser mostrado no campo N? Processos Empto
               vHabBtnListProc HAB_LIST_PROC, --Habilita Bot?o Lista de Processos
               vUltimaLicenca ULTIMA_LICENCA, -- ** Este bloco verifica o Ultimo Documento de Licenciamento Emitido
               vProcessoUltLicenca PROC_UTLIMA_LICENCA,
               decode(vSituacaoUltLicenca,
                      'T',
                      'AGUARDA ASSINATURA',
                      'C',
                      'AGUARDA LIBERAC?O CHEFIA',
                      'A',
                      'ANULADO',
                      'F',
                      'CANCELADO',
                      'S',
                      'CASSADO',
                      'L',
                      'DOC VINCULADO',
                      'B',
                      'EM TRABALHO',
                      'E',
                      'EM VIGOR',
                      'O',
                      'N?O EXPEDIDO',
                      'N',
                      'N?O JULGADO (AI)',
                      'P',
                      'PENDENTE',
                      'G',
                      'PRORROGADO',
                      'R',
                      'REVOGADO',
                      'D',
                      'SUBSTITUIDO',
                      'U',
                      'SUSPENSO',
                      'V',
                      'VENCIDO') SIT_ULTIMA_LICENCA,
               vDataVencUltLicenca DT_VENCTO_ULT_LICENCA,
               decode(vUltLicencaRenovavel, 'S', 'SIM', 'N', 'N?O') ULT_LICENCA_RENOVAVEL,
               nUltimoDocuId ULTIMO_DOC_ID,
               nUltimoProcIdLic ULTIMO_PROC_ID_LIC,
               (nTido_ult_lic || ' - ' || tido.abreviatura || ' - ' ||
               tido.descricao) TIDO_ULT_LIC,
               decode(vDmUltLicAutom, 'S', 'SIM', 'N', 'N?O') ULT_LIC_AUTOM,
               nProcIdUltLicenca PROC_ID_ULT_LICENCA, -- ** Este bloco verifica o Ultimo Documento de Licenciamento Emitido
               NumProcPendentes NUM_PROC_PENDENTES, -- Verifica o Numero de Processos de Licencimaneto da sub-classe 12 Pendentes
               vExisteParecer EXISTE_PARECER, -- Verifica se existe parecer gerado
               vHabBtnGeraParecer HAB_BTN_PARECER, -- Habilita bot?o gerar parecer
               vHabBtnParecerPDF HAB_BTN_PDF,
               vHabBtnGerarLicenca HAB_GERAR_LICENCA,
               nNroDiasVencer NUM_DIAS_VENCER, --Retorna valor no campo Nro Dias Vencer
               vDmRevPend REVOGA_PENDENTE, --Campo que determina se revoga licenca atual 'R' ou se fica pendente 'P'
               vMessageDicopi MESS_DICOPI,
               vMessageSeamb MESS_SEAMB,
               vMessageIrriga MESS_IRRIGA,
               vMessageNotAnalise MESS_ANALISE,
               vHabCampoRevPend HAB_CAMPO_PEND, --Habilita campo Rev Pendente
               vErroUpdate MESS_ERRO_UPD,
               nPrcrId PRCR_ID,
               nNumFuncionarios NUM_FUNCIONARIOS,
               vExisteProducao EXISTE_PRODUCAO
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         WHERE proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtan_id
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and tido.sucd_id IN (12, 15, 22)
           and raat.dm_grupo_aut in (1, 2, 3, 4)
           and raat.dm_condicao_lic = 'S'
           and proc.situacao not in ('A', 'J', 'P', 'S')
           and to_number(to_char(proc.data_entrada, 'rrrr')) > 1995
           and ((fc_gerar_aut_dicopi(proc.proc_id) = 'S') or
               (proc.libera_geracao_aut = 'S') or
               (proc.dm_libera_arrecadacao = 'S'))
        union all
        select proc.proc_id proc_id,
               BUSCA_STATUS_DOC_PROCESSO(proc.situacao) situacao,
               proc.data_entrada data_entrada,
               substr(lpad(proc.numero, 6, 0) || ' ' ||
                      lpad(proc.orig_id, 4, 0) || ' ' ||
                      lpad(proc.ano, 2, 0) || ' ' || (proc.dv),
                      1,
                      16) processo,
               resp.atan_id empreendimento,
               ata1.descricao empreendimento_descricao,
               ata1.raat_id raat_id,
               raat.descricao raat_descricao,
               ata1.medida_porte medida_porte,
               substr(busca_porte(ata1.raat_id, ata1.medida_porte, null),
                      1,
                      1) dm_porte,
               raat.crme_id crme_id,
               crme.abreviatura crme_abreviatura,
               crme.descricao crme_descricao,
               resp.pess_id empreendedor,
               pess.razao_social empreendedor_razao_social,
               ata1.muni_id atan_muni_id,
               muni.nome atan_municipio,
               ata1.pess_id_responsavel atan_cod_tecnico_resp,
               pes1.razao_social atan_nome_tecnico_resp,
               proc.pess_id_respondido proc_cod_tecnico_resp,
               pes2.razao_social proc_nome_tecnico_resp,
               proc.pess_id requerente,
               pes3.razao_social requerente_nome,
               to_number(to_char(proc.data_entrada, 'mm')) mes_entrada,
               to_number(to_char(proc.data_entrada, 'rrrr')) ano_entrada,
               proc.seto_id seto_id,
               seto.sigla seto_sigla,
               seto.nome seto_nome,
               proc.tido_id tido_id,
               tido.abreviatura tido_abreviatura,
               tido.descricao tido_descricao,
               nNumProcEmpto NUM_PROC_EMPTO,
               vHabBtnListProc HAB_LIST_PROC,
               vUltimaLicenca,
               vProcessoUltLicenca,
               vSituacaoUltLicenca,
               vDataVencUltLicenca,
               vUltLicencaRenovavel,
               nUltimoDocuId,
               nUltimoProcIdLic,
               (nTido_ult_lic || ' - ' || tido.abreviatura || ' - ' ||
               tido.descricao) Tido_ult_lic,
               vDmUltLicAutom,
               nProcIdUltLicenca,
               NumProcPendentes,
               vExisteParecer,
               vHabBtnGeraParecer,
               vHabBtnParecerPDF,
               vHabBtnGerarLicenca,
               nNroDiasVencer,
               vDmRevPend,
               vMessageDicopi,
               vMessageSeamb,
               vMessageIrriga,
               vMessageNotAnalise,
               vHabCampoRevPend,
               vErroUpdate,
               nPrcrId,
               nNumFuncionarios,
               vExisteProducao
          from fep_processos             proc,
               fep_responsabilidades     resp,
               fep_atividades_antropicas ata1,
               fep_pessoas               pess,
               fep_pessoas               pes1,
               fep_pessoas               pes2,
               fep_pessoas               pes3,
               fep_setores               seto,
               fep_municipios            muni,
               fep_ramos_atividades      raat,
               fep_criterios_medicoes    crme,
               fep_tipos_documentos      tido
         where proc.resp_id = resp.resp_id
           and proc.seto_id = seto.seto_id(+)
           and resp.pess_id = pess.pess_id
           and resp.atan_id = ata1.atan_id
           and ata1.atan_id = nAtan_id
           and ata1.raat_id = raat.raat_id
           and raat.crme_id = crme.crme_id
           and ata1.muni_id = muni.muni_id(+)
           and ata1.pess_id_responsavel = pes1.pess_id(+)
           and proc.pess_id_respondido = pes2.pess_id(+)
           and proc.pess_id = pes3.pess_id
           and proc.tido_id = tido.tido_id
           and proc.tido_id = 300
           and not exists (select null
                  from fep_documentos docu
                 where docu.tido_id = proc.tido_id
                   and docu.proc_id = proc.proc_id)
           and proc.situacao in ('L', 'W', 'E');
    else
      open cur for
        SELECT * FROM fep_processos WHERE 1 = 2;

    end if;

  end;

  -- fep_aux_cond_restr_informacoes --
  Procedure SP_AINF_GET(nAinf_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select *
        FROM fep_aux_cond_restr_informacoes
       where ainf_id = nAinf_id;
  end;

  procedure SP_AINF_GET_INFO_PARECER(nPrcr_id in number,
                                     nAinf_id in Number,
                                     cur      out sys_refcursor) as

  begin

    if (nPrcr_id > 0) then
      open cur for
        select ainf.texto,
               ainf.linha,
               ainf.ainf_id,
               ainf.prcr_id,
               TO_CHAR(ainf.data_inclusao, 'dd/mm/rrrr') data_inclusao,
               ainf.operador_inclusao,
               TO_CHAR(ainf.data_atualizacao, 'dd/mm/rrrr') data_atualizacao,
               ainf.operador_atualizacao
          from fep_aux_cond_restr_informacoes ainf
         where ainf.prcr_id = nPrcr_id
           and ainf.ainf_id = nAinf_id;
    end if;

  end;

  Procedure SP_AINF_RETORNA_SEQ(nPrcr_id in number, cur out sys_refcursor) as

    nAinfId number(10);
    nLinha  number(5);

  begin
    begin
      select aseq.prcr_id, aseq.linha
        into nAinfId, nLinha
        from (select ainf.prcr_id,
                     ainf.linha,
                     RANK() Over(ORDER BY ainf.linha desc) AS Rank
                from fep_aux_cond_restr_informacoes ainf
               where ainf.prcr_id = nPrcr_id
               order by ainf.linha desc) aseq
       where ROWNUM = 1;
    exception
      when no_data_found then
        nAinfId := 0;
        nLinha  := 0;
    end;

    begin
      if (nAinfId = 0 or nAinfId is null) and
         (nLinha = 0 or nLinha is null) then
        nLinha := 10;
      else
        nLinha := nLinha + 10;
      end if;

    end;

    begin
      open cur for
        select nLinha as retSeq from dual;
    end;

  end;

  Procedure SP_AINF_SRC(nAinf_id              in number,
                        nPrcr_id              in number,
                        nLinha                in number,
                        sTexto                in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_aux_cond_restr_informacoes WHERE 0 = 0 ';

    IF nAinf_id != 0 THEN
      vSQL := vSQL || 'AND ainf_id = ' || nAinf_id || ' ';
    END IF;

    IF nPrcr_id != 0 THEN
      vSQL := vSQL || 'AND prcr_id = ' || nPrcr_id || ' ';
    END IF;

    IF nLinha != 0 THEN
      vSQL := vSQL || 'AND linha = ' || nLinha || ' ';
    END IF;

    IF sTexto != 'null' THEN
      vSQL := vSQL || 'AND texto LIKE ''%' || sTexto || '%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' ||
              sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||
              sOperador_atualizacao || '%'' ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_AINF_SRC_LISTA_POR_PRCRID(nPrcr_id in number,
                                         cur      out sys_refcursor) as
  begin
    if (nPrcr_id > 0) then
      open cur for
        select ainf.ainf_id,
               ainf.texto,
               ainf.linha,
               ainf.ainf_id,
               ainf.prcr_id,
               ainf.data_inclusao,
               ainf.operador_inclusao,
               ainf.data_atualizacao,
               ainf.operador_atualizacao

          from fep_aux_cond_restr_informacoes ainf

         where ainf.prcr_id = nPrcr_id

         order by ainf.linha;
    end if;
  end;

PROCEDURE SP_AINF_INS(nPrcr_id in number,
                                        vTexto   in varchar) IS

  nLinha     VARCHAR2(10);
  vUsuario   VARCHAR2(30);

BEGIN

  BEGIN
    SELECT USER INTO vUsuario FROM DUAL;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      vUsuario := NULL;
  END;

  BEGIN
    SELECT (aseq.linha + 10)
      INTO nLinha
      FROM (SELECT ainf.linha, RANK() Over(ORDER BY ainf.linha desc) AS Rank
              FROM fep_aux_cond_restr_informacoes ainf
             WHERE ainf.prcr_id = nPrcr_id
             ORDER BY ainf.linha DESC) aseq
     WHERE ROWNUM = 1;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      nLinha := 0;
  END;

  IF(nLinha = 0) THEN
     nLinha := 10;
  END IF;


  BEGIN
    INSERT INTO fep_aux_cond_restr_informacoes
      (ainf_id,
       prcr_id,
       linha,
       texto,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao)
    VALUES
      (AINF_SEQ.nextval,
       nPrcr_id,
       nLinha,
       vTexto,
       sysdate,
       vUsuario,
       sysdate,
       vUsuario);
  END;

  COMMIT;


END;


PROCEDURE SP_AINF_UPD(nPrcr_id IN NUMBER,
                                        nAinf_id IN NUMBER,
                                        nLinha   IN NUMBER,
                                        vTexto   IN VARCHAR2) IS

  vErro         VARCHAR2(3) := 'NO';
  vUsuario      VARCHAR2(30);
  nContLinha    NUMBER(10);
  dDataAtualiza DATE;
  nCont         NUMBER(10) := 0;
  nSeq          NUMBER(10) := 0;
  nResult       NUMBER(10);

BEGIN

  IF ((nLinha MOD 10) <> 0) THEN
    vErro := 'YES';
  ELSE
    IF (vErro = 'NO') THEN
      BEGIN
        SELECT USER INTO vUsuario FROM DUAL;
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          vUsuario := NULL;
      END;

      BEGIN
        SELECT COUNT(*)
          INTO nContLinha
          FROM fep_aux_cond_restr_informacoes AINF
         WHERE AINF.PRCR_ID = nPrcr_id
           AND AINF.Linha = nLinha;
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          nContLinha := 0;
      END;

      IF (nContLinha > 0) THEN

        dDataAtualiza := sysdate;
        BEGIN
          UPDATE fep_aux_cond_restr_informacoes AINF
             SET AINF.LINHA = nLinha, AINF.DATA_ATUALIZACAO = sysdate
           WHERE AINF.AINF_ID = nAinf_id;
        END;

        BEGIN
          FOR dataLoop IN (SELECT *
                             FROM fep_aux_cond_restr_informacoes AINF
                            WHERE AINF.PRCR_ID = nPrcr_id
                            ORDER BY AINF.LINHA,
                                     (AINF.DATA_ATUALIZACAO) DESC) LOOP

            IF (nCont = 0) THEN
              nSeq := dataLoop.Linha;
            ELSE

              IF (dataLoop.Linha <= nSeq) THEN

                IF ((dataLoop.Linha - nSeq) > 10) THEN
                  nSeq := (dataLoop.Linha - nSeq);
                ELSE
                  nSeq := nSeq + 10;
                END IF;

                BEGIN
                  UPDATE fep_aux_cond_restr_informacoes AINF
                     SET AINF.LINHA = nSeq
                   WHERE AINF.AINF_ID = dataLoop.Ainf_Id;
                END;
              ELSE
                nSeq := dataLoop.Linha;
              END IF;

            END IF;
            nCont := nCont + 1;

          END LOOP;

        END;

      END IF;

      BEGIN
        UPDATE fep_aux_cond_restr_informacoes
           SET prcr_id              = nPrcr_id,
               linha                = nLinha,
               texto                = vTexto,
               data_atualizacao     = sysdate,
               operador_atualizacao = vUsuario
         WHERE ainf_id = nAinf_id;
      END;

      COMMIT;
    END IF;
  END IF;

END;


  Procedure SP_AINF_UPD_INFO_PARECER(nPrcr_id in number,
                                     vTexto   in varchar2,
                                     nSeq     in number,
                                     nUserID  in number,
                                     nAinfId  in Number) as

    vOperador varchar(30);
    nCont     Number(10);

  begin

    begin
      select faux.username
        into vOperador
        from fep_aux_func_ultimos faux
       where faux.pess_id = nUserID;
    exception
      when no_data_found then
        vOperador := null;

    end;

    begin
      select count(*)
        into nCont
        from fep_aux_cond_restr_informacoes ainf
       where ainf.prcr_id = nPrcr_id
         and ainf.ainf_id = nAinfId;
    exception
      when no_data_found then
        nCont := 0;
    end;

    if (nAinfId > 0 and nAinfId is not null) then
      update fep_aux_cond_restr_informacoes ainf
         set ainf.texto                = vTexto,
             ainf.linha                = nSeq,
             ainf.data_inclusao        = to_date(sysdate, 'DD/MM/RRRR'),
             ainf.operador_inclusao    = vOperador,
             ainf.data_atualizacao     = to_date(sysdate, 'DD/MM/RRRR'),
             ainf.operador_atualizacao = vOperador
       where ainf.prcr_id = nPrcr_id
         and ainf.ainf_id = nAinfId;
      commit;
    else
      insert into fep_aux_cond_restr_informacoes ainf
      values
        (ainf_seq.nextval,
         nPrcr_id,
         nSeq,
         vTexto,
         to_date(sysdate, 'DD/MM/RRRR'),
         vOperador,
         to_date(sysdate, 'DD/MM/RRRR'),
         vOperador,
         null);
      commit;

    end if;

  end;

  Procedure SP_AINF_DEL(nAinf_id in number) IS
  BEGIN
    DELETE FROM fep_aux_cond_restr_informacoes WHERE ainf_id = nAinf_id;
    commit;
  end;

  Procedure SP_AINF_DEL_INFO_PARECER(nPrcr_id in number,
                                     nSeq     in number,
                                     nAinfId  in Number) as
  begin

    if (nAinfId > 0 and nAinfId is not null) then
      delete from fep_aux_cond_restr_informacoes ainf
       where ainf.prcr_id = nPrcr_id
         and ainf.ainf_id = nAinfId
         and ainf.linha = nSeq;
      commit;

    end if;

  end;

  PROCEDURE SP_AINF_DEL_INFO_PARECER_2(nPrcr_id IN NUMBER,
                                       nAinf_id IN NUMBER) IS

  vUsuario      VARCHAR2(30);
  nContReg      NUMBER(10);
  dDataAtualiza DATE;
  nCont         NUMBER(10) := 0;
  nLinha        NUMBER(10) := 0;
  nResult       NUMBER(10);

  BEGIN

    BEGIN
      SELECT USER INTO vUsuario FROM DUAL;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        vUsuario := NULL;
    END;

    BEGIN
      SELECT COUNT(*)
        INTO nContReg
        FROM fep_aux_cond_restr_informacoes AINF
       WHERE AINF.PRCR_ID = nPrcr_id;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        nContReg := 0;
    END;

    IF (nContReg > 0) THEN

      ---------------------------------------------
      IF (nAinf_id > 0 AND nAinf_id IS NOT NULL) THEN
        DELETE FROM fep_aux_cond_restr_informacoes ainf
         WHERE ainf.prcr_id = nPrcr_id
           AND ainf.ainf_id = nAinf_id;
        COMMIT;
      END IF;
      ---------------------------------------------

      BEGIN
        UPDATE fep_aux_cond_restr_informacoes AINF
           SET AINF.OPERADOR_ATUALIZACAO = vUsuario,
               AINF.DATA_ATUALIZACAO     = sysdate
         WHERE AINF.AINF_ID = nAinf_id;
      END;

      --Ordena Registros
      BEGIN
        FOR dataLoop IN (SELECT *
                           FROM fep_aux_cond_restr_informacoes AINF
                          WHERE AINF.PRCR_ID = nPrcr_id
                          ORDER BY AINF.LINHA, (AINF.DATA_ATUALIZACAO) DESC) LOOP

          IF (nCont = 0) THEN
            IF (dataLoop.Linha) > 10 THEN
              nLinha := 10;
              BEGIN
                UPDATE fep_aux_cond_restr_informacoes AINF
                   SET AINF.LINHA = nLinha
                 WHERE AINF.AINF_ID = dataLoop.Ainf_Id;
              END;
            END IF;
          ELSE
            BEGIN
              UPDATE fep_aux_cond_restr_informacoes AINF
                 SET AINF.LINHA = nLinha
               WHERE AINF.AINF_ID = dataLoop.Ainf_Id;
            END;

          END IF;
          nCont := nCont + 1;
          IF nCont = 1 THEN
            nLinha := nLinha + 20;
          ELSE
            IF (nCont > 1) THEN
              nLinha := nLinha + 10;
            END IF;
          END IF;

        END LOOP;
        COMMIT;
      END;

    END IF;

  END;





  -- fep_aux_cond_restr_par_lic --
  Procedure SP_ACRL_GET(nAcrl_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_aux_cond_restr_par_lic where acrl_id = nAcrl_id;
  end;

  Procedure SP_ACRL_SRC(nAcrl_id              in number,
                        nCrpr_id              in number,
                        nPrcr_id              in number,
                        nLcrs_id              in number,
                        sCors_descricao       in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_aux_cond_restr_par_lic WHERE 0 = 0 ';

    IF nCrpr_id != 0 THEN
      vSQL := vSQL || 'AND crpr_id = ' || nCrpr_id || ' ';
    END IF;

    IF nAcrl_id != 0 THEN
      vSQL := vSQL || 'AND acrl_id = ' || nAcrl_id || ' ';
    END IF;

    IF nPrcr_id != 0 THEN
      vSQL := vSQL || 'AND prcr_id = ' || nPrcr_id || ' ';
    END IF;

    IF nLcrs_id != 0 THEN
      vSQL := vSQL || 'AND lcrs_id = ' || nLcrs_id || ' ';
    END IF;

    IF sCors_descricao != 'null' THEN
      vSQL := vSQL || 'AND cors_descricao LIKE ''%' || sCors_descricao ||
              '%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' ||
              sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||
              sOperador_atualizacao || '%'' ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_ACRL_SRC_RESUL_GERACAO(nPrcr_id in number,
                                      cur      out sys_refcursor) as

  begin
    if (nPrcr_id > 0) then
      open cur for
        SELECT clcr.sequencia SEQ_CLASSE,
               clcr.descricao DESCR_CLASSE,
               cors.sequencia SEQ,
               decode(cors.tipo_item, 1, 'Item', 2, 'Sub Item') TIPO_ITEM,
               cors.sequencia_sub SEQ_SUB,
               cors.nivel NIVEL,
               cors.abreviatura DESCR_ABREV,
               decode(lcrs.tipo,
                      1,
                      'Padr?o',
                      2,
                      'Opcional',
                      3,
                      'Especifica') TIPO_CONDICAO,
               acrl.cors_descricao COND_RESTR,
               decode(lcrs.dm_parecer, 'S', 'SIM', 'N', 'N?O') LISTA_PARECER,
               decode(lcrs.dm_licenca, 'S', 'SIM', 'N', 'N?O') LISTA_LICENCA,
               acrl.prcr_id,
               cors.clcr_id CLCR_ID,
               acrl.data_atualizacao,
               acrl.operador_atualizacao,
               lcrs.cors_id CORS_ID,
               acrl.lcrs_id,
               acrl.crpr_id,
               acrl.acrl_id,
               acrl.operador_inclusao,
               acrl.data_inclusao

          from fep_aux_cond_restr_par_lic  acrl,
               fep_listas_cond_restricoes  lcrs,
               fep_condicoes_restricoes    cors,
               fep_classes_cond_restricoes clcr

         WHERE acrl.prcr_id = nPrcr_id
           and acrl.lcrs_id = lcrs.lcrs_id
           and lcrs.cors_id = cors.cors_id
           and acrl.crpr_id is null
           and cors.clcr_id = clcr.clcr_id
        union all
        select clcr.sequencia SEQ_CLASSE,
               clcr.descricao DESCR_CLASSE,
               crpr.sequencia SEQ,
               decode(crpr.tipo_item, 1, 'Item', 2, 'Sub Item') TIPO_ITEM,
               crpr.sequencia_sub SEQ_SUB,
               crpr.nivel NIVEL,
               crpr.abreviatura DESCR_ABREV,
               decode(3, 3, 'Especifica') TIPO_CONDICAO,
               acrl.cors_descricao COND_RESTR,
               decode(crpr.dm_parecer, 'S', 'SIM', 'N', 'N?O') LISTA_PARECER,
               decode(crpr.dm_licenca, 'S', 'SIM', 'N', 'N?O') LISTA_LICENCA,
               acrl.prcr_id PRCR_ID,
               crpr.clcr_id CLCR_ID,
               acrl.data_atualizacao DATA_ATUALIZA,
               acrl.operador_atualizacao OPER_ATUALIZA,
               to_number(null) CORS_ID,
               acrl.lcrs_id LCRS_ID,
               acrl.crpr_id CRPR_ID,
               acrl.acrl_id ACRL_ID,
               acrl.operador_inclusao OPER_INCLUSAO,
               acrl.data_inclusao DATA_INCLUSAO
          from fep_aux_cond_restr_par_lic  acrl,
               fep_aux_cond_restr_proc     crpr,
               fep_classes_cond_restricoes clcr
         where acrl.prcr_id = nPrcr_id
           and acrl.crpr_id = crpr.crpr_id
           and acrl.crpr_id is not null
           and crpr.clcr_id = clcr.clcr_id
         order by SEQ_CLASSE;
    end if;

  end;

  Procedure SP_ACRL_SRC_RESUL_GER_DET(nPrcr_id in number,
                                      nAcrl_id in number,
                                      cur      out sys_refcursor) as

  begin
    if (nPrcr_id > 0) then
      open cur for
        SELECT clcr.sequencia SEQ_CLASSE,
               clcr.descricao DESCR_CLASSE,
               cors.sequencia SEQ,
               decode(cors.tipo_item, 1, 'Item', 2, 'Sub Item') TIPO_ITEM,
               cors.sequencia_sub SEQ_SUB,
               cors.nivel NIVEL,
               cors.abreviatura DESCR_ABREV,
               decode(lcrs.tipo,
                      1,
                      'Padr?o',
                      2,
                      'Opcional',
                      3,
                      'Especifica') TIPO_CONDICAO,
               acrl.cors_descricao COND_RESTR,
               decode(lcrs.dm_parecer, 'S', 'SIM', 'N', 'N?O') LISTA_PARECER,
               decode(lcrs.dm_licenca, 'S', 'SIM', 'N', 'N?O') LISTA_LICENCA,
               acrl.prcr_id,
               cors.clcr_id CLCR_ID,
               acrl.data_atualizacao,
               acrl.operador_atualizacao,
               lcrs.cors_id CORS_ID,
               acrl.lcrs_id,
               acrl.crpr_id,
               acrl.acrl_id,
               acrl.operador_inclusao,
               acrl.data_inclusao

          from fep_aux_cond_restr_par_lic  acrl,
               fep_listas_cond_restricoes  lcrs,
               fep_condicoes_restricoes    cors,
               fep_classes_cond_restricoes clcr

         WHERE acrl.prcr_id = nPrcr_id
           and acrl.lcrs_id = lcrs.lcrs_id
           and lcrs.cors_id = cors.cors_id
           and acrl.crpr_id is null
           and acrl.acrl_id = nAcrl_id
           and cors.clcr_id = clcr.clcr_id
        union all
        select clcr.sequencia SEQ_CLASSE,
               clcr.descricao DESCR_CLASSE,
               crpr.sequencia SEQ,
               decode(crpr.tipo_item, 1, 'Item', 2, 'Sub Item') TIPO_ITEM,
               crpr.sequencia_sub SEQ_SUB,
               crpr.nivel NIVEL,
               crpr.abreviatura DESCR_ABREV,
               decode(3, 3, 'Especifica') TIPO_CONDICAO,
               acrl.cors_descricao COND_RESTR,
               decode(crpr.dm_parecer, 'S', 'SIM', 'N', 'N?O') LISTA_PARECER,
               decode(crpr.dm_licenca, 'S', 'SIM', 'N', 'N?O') LISTA_LICENCA,
               acrl.prcr_id PRCR_ID,
               crpr.clcr_id CLCR_ID,
               acrl.data_atualizacao DATA_ATUALIZA,
               acrl.operador_atualizacao OPER_ATUALIZA,
               to_number(null) CORS_ID,
               acrl.lcrs_id LCRS_ID,
               acrl.crpr_id CRPR_ID,
               acrl.acrl_id ACRL_ID,
               acrl.operador_inclusao OPER_INCLUSAO,
               acrl.data_inclusao DATA_INCLUSAO
          from fep_aux_cond_restr_par_lic  acrl,
               fep_aux_cond_restr_proc     crpr,
               fep_classes_cond_restricoes clcr
         where acrl.prcr_id = nPrcr_id
           and acrl.crpr_id = crpr.crpr_id
           and acrl.crpr_id is not null
           and acrl.acrl_id = nAcrl_id
           and crpr.clcr_id = clcr.clcr_id
         order by SEQ_CLASSE;
    end if;
  end;

  Procedure SP_ACRL_INS(nCrpr_id              in number,
                        nPrcr_id              in number,
                        nLcrs_id              in number,
                        sCors_descricao       in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nAcrl_id              out number) is
  begin
    INSERT INTO fep_aux_cond_restr_par_lic
      (acrl_id,
       crpr_id,
       prcr_id,
       lcrs_id,
       cors_descricao,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao)
    VALUES
      (ACRL_SEQ.nextval,
       nCrpr_id,
       nPrcr_id,
       nLcrs_id,
       sCors_descricao,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao);
    SELECT ACRL_SEQ.currval into nAcrl_id FROM dual;
    commit;
  end;

  Procedure SP_ACRL_UPD(nAcrl_id        in number,
                        nCrpr_id        in number,
                        nPrcr_id        in number,
                        nLcrs_id        in number,
                        sCors_descricao in varchar,

                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar) is
  begin
    UPDATE fep_aux_cond_restr_par_lic
       SET crpr_id        = nCrpr_id,
           prcr_id        = nPrcr_id,
           lcrs_id        = nLcrs_id,
           cors_descricao = sCors_descricao,

           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_atualizacao = sOperador_atualizacao
     WHERE acrl_id = nAcrl_id;
    commit;
  end;

  Procedure SP_ACRL_DEL(nAcrl_id in number) IS
  BEGIN
    DELETE FROM fep_aux_cond_restr_par_lic WHERE acrl_id = nAcrl_id;
    commit;
  end;

  -- FEP_CLASSES_COND_RESTRICOES --
  Procedure SP_CLCR_GET(nClcr_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_classes_cond_restricoes where clcr_id = nClcr_id;
  end;

  Procedure SP_CLCR_SRC(nClcr_id              in number,
                        sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSequencia            in number,
                        sTitulo_classe        in varchar,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_classes_cond_restricoes WHERE 0 = 0 ';

    IF nClcr_id != 0 THEN
      vSQL := vSQL || 'AND clcr_id = ' || nClcr_id || ' ';
    END IF;

    IF sDescricao != 'null' THEN
      vSQL := vSQL || 'AND descricao LIKE ''%' || sDescricao || '%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' ||
              sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||
              sOperador_atualizacao || '%'' ';
    END IF;

    IF nSequencia != 0 THEN
      vSQL := vSQL || 'AND sequencia = ' || nSequencia || ' ';
    END IF;

    IF sTitulo_classe != 'null' THEN
      vSQL := vSQL || 'AND titulo_classe LIKE ''%' || sTitulo_classe ||
              '%'' ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_CLCR_SRC_LISTAR_CLASSES(cur out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'SELECT clcr.clcr_id,
                  clcr.sequencia,
                  (clcr.clcr_id||'' - ''||clcr.sequencia||'' - ''||clcr.descricao) Descricao

           FROM   fep_classes_cond_restricoes clcr

           ORDER  BY clcr.clcr_id ';

    open cur for vSQL;
  end;

  Procedure SP_CLCR_INS(sDescricao            in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSequencia            in number,
                        sTitulo_classe        in varchar,
                        nClcr_id              out number) is
  begin
    INSERT INTO fep_classes_cond_restricoes
      (clcr_id,
       descricao,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao,
       sequencia,
       titulo_classe)
    VALUES
      (CLCR_SEQ.nextval,
       sDescricao,
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao,
       nSequencia,
       sTitulo_classe);
    SELECT CLCR_SEQ.currval into nClcr_id FROM dual;
    commit;
  end;

  Procedure SP_CLCR_UPD(nClcr_id   in number,
                        sDescricao in varchar,

                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        nSequencia            in number,
                        sTitulo_classe        in varchar) is
  begin
    UPDATE fep_classes_cond_restricoes
       SET descricao = sDescricao,

           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_atualizacao = sOperador_atualizacao,
           sequencia            = nSequencia,
           titulo_classe        = sTitulo_classe
     WHERE clcr_id = nClcr_id;
    commit;
  end;

  Procedure SP_CLCR_DEL(nClcr_id in number) IS
  BEGIN
    DELETE FROM fep_classes_cond_restricoes WHERE clcr_id = nClcr_id;
    commit;
  end;

  ---- Validac?o e Exclus?o em FEP_AUX_GERA_COND_RESTR ----
  procedure SP_VALIDA_SEQ_ITEM_DEL(nAxge_id  in Number,
                                   nTipoCond in Number,
                                   cur       out sys_refcursor) as
    vMessage varchar2(100);
    nCont    Number(10);
  begin

    begin
      select count(*)
        into nCont
        from fep_aux_gera_cond_restr axge
       where axge.axge_id = nAxge_id;
    exception
      when no_data_found then
        nCont := 0;
    end;

    if (nTipoCond <> 3) then
      vMessage := 'Para remover o registro Tipo de Condic?o deve ser Especifico!';

      open cur for
        SELECT vMessage FROM DUAL;
    else
      if nCont = 0 then
        vMessage := 'Registro inexistente';
        open cur for
          SELECT vMessage FROM DUAL;
      else
        open cur for
          SELECT vMessage FROM Dual where 1 = 2;
      end if;

    end if;

  end;

  procedure SP_DEL_COND_RESTR_RAMO(nAxge_id in Number, nTipoCond in Number) as
  BEGIN
    IF nTipoCond = 3 THEN
      BEGIN
        DELETE FROM fep_aux_gera_cond_restr axge
         WHERE axge.axge_id = nAxge_id;
        commit;
      END;
    END IF;
  END;

  ---- FEP_AUX_GERA_COND_RETR ----
  Procedure SP_AGCR_GET(nAxge_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_aux_gera_cond_restr where axge_id = nAxge_id;
  end;

  Procedure SP_AGCR_SRC(nAxge_id                 in number,
                        nPrcr_id                 in number,
                        nLcrs_id                 in number,
                        nCrpr_id                 in number,
                        nClcr_id                 in number,
                        nTipo_item               in number,
                        nNivel                   in number,
                        nSequencia               in number,
                        nSequencia_sub           in number,
                        sAbreviatura             in varchar,
                        sDescricao               in varchar,
                        sData_inclusao           in varchar,
                        sOperador_inclusao       in varchar,
                        nSequencia_clcr          in number,
                        nTipo_cond               in number,
                        sDm_parecer              in varchar,
                        sDm_licenca              in varchar,
                        sDm_imprimir_seq         in varchar,
                        sEspecial_negrito        in varchar,
                        sIncluido                in varchar,
                        sDm_ignorar_opcional_aut in varchar,
                        nDm_tipo_cond_restr      in number,
                        sDm_opc_autom            in varchar,
                        nCors_id                 in number,
                        cur                      out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_aux_gera_cond_restr WHERE 0 = 0 ';

    IF nAxge_id != 0 THEN
      vSQL := vSQL || 'AND axge_id = ' || nAxge_id || ' ';
    END IF;

    IF nPrcr_id != 0 THEN
      vSQL := vSQL || 'AND prcr_id = ' || nPrcr_id || ' ';
    END IF;

    IF nLcrs_id != 0 THEN
      vSQL := vSQL || 'AND lcrs_id = ' || nLcrs_id || ' ';
    END IF;

    IF nCrpr_id != 0 THEN
      vSQL := vSQL || 'AND crpr_id = ' || nCrpr_id || ' ';
    END IF;

    IF nClcr_id != 0 THEN
      vSQL := vSQL || 'AND clcr_id = ' || nClcr_id || ' ';
    END IF;

    IF nTipo_item != 0 THEN
      vSQL := vSQL || 'AND tipo_item = ' || nTipo_item || ' ';
    END IF;

    IF nNivel != 0 THEN
      vSQL := vSQL || 'AND nivel = ' || nNivel || ' ';
    END IF;

    IF nSequencia != 0 THEN
      vSQL := vSQL || 'AND sequencia = ' || nSequencia || ' ';
    END IF;

    IF nSequencia_sub != 0 THEN
      vSQL := vSQL || 'AND sequencia_sub = ' || nSequencia_sub || ' ';
    END IF;

    IF sAbreviatura != 'null' THEN
      vSQL := vSQL || 'AND abreviatura LIKE ''%' || sAbreviatura || '%'' ';
    END IF;

    IF sDescricao != 'null' THEN
      vSQL := vSQL || 'AND descricao LIKE ''%' || sDescricao || '%'' ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF nSequencia_clcr != 0 THEN
      vSQL := vSQL || 'AND sequencia_clcr = ' || nSequencia_clcr || ' ';
    END IF;

    IF nTipo_cond != 0 THEN
      vSQL := vSQL || 'AND tipo_cond = ' || nTipo_cond || ' ';
    END IF;

    IF sDm_parecer != 'null' THEN
      vSQL := vSQL || 'AND dm_parecer LIKE ''%' || sDm_parecer || '%'' ';
    END IF;

    IF sDm_licenca != 'null' THEN
      vSQL := vSQL || 'AND dm_licenca LIKE ''%' || sDm_licenca || '%'' ';
    END IF;

    IF sDm_imprimir_seq != 'null' THEN
      vSQL := vSQL || 'AND dm_imprimir_seq LIKE ''%' || sDm_imprimir_seq ||
              '%'' ';
    END IF;

    IF sEspecial_negrito != 'null' THEN
      vSQL := vSQL || 'AND especial_negrito LIKE ''%' || sEspecial_negrito ||
              '%'' ';
    END IF;

    IF sIncluido != 'null' THEN
      vSQL := vSQL || 'AND incluido LIKE ''%' || sIncluido || '%'' ';
    END IF;

    IF sDm_ignorar_opcional_aut != 'null' THEN
      vSQL := vSQL || 'AND dm_ignorar_opcional_aut LIKE ''%' ||
              sDm_ignorar_opcional_aut || '%'' ';
    END IF;

    IF nDm_tipo_cond_restr != 0 THEN
      vSQL := vSQL || 'AND dm_tipo_cond_restr = ' || nDm_tipo_cond_restr || ' ';
    END IF;

    IF sDm_opc_autom != 'null' THEN
      vSQL := vSQL || 'AND dm_opc_autom LIKE ''%' || sDm_opc_autom ||
              '%'' ';
    END IF;

    IF nCors_id != 0 THEN
      vSQL := vSQL || 'AND cors_id = ' || nCors_id || ' ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_AGCR_DEL(nAxge_id in number) IS
  BEGIN
    DELETE FROM fep_aux_gera_cond_restr WHERE axge_id = nAxge_id;
    commit;
  end;

  Procedure SP_GERA_PARECER_TRABALHO(nAtan_id IN NUMBER,
                                     cur      out sys_refcursor) IS

    vDescrCond VARCHAR2(2000) := NULL;
    dDataAtual DATE;
    vUsuario   VARCHAR2(30);
    vIgnorar   VARCHAR2(1);
    nTipoCond  NUMBER(1);
    vIncluido  VARCHAR2(1);
    vGerAutom  VARCHAR2(1) := NULL;
    nContador  NUMBER(5);
    nIncluir   NUMBER(1);
    dDataFunc  DATE := NULL;

    vMessClasse varchar2(2000);
    vMessInsert varchar2(2000);
    nPrcrId     Number(10);
    nRaatId     Number(7, 2);

    -- codigos  cors_id (901,902,903,904,905,906,907,908,909,910,911,912,913,914)
    -- s?o exclusivos para uso em autorizac?o MTR     ( Malu 18/09/2009 )

    -- codigos  cors_id (922,923,924,925) s?o para DISLIC  ( Malu 16/10/2009 )

    CURSOR c6 IS --Busca Processo e Raat_id
      SELECT proc.proc_id, ata1.raat_id
        FROM fep_processos             proc,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_pessoas               pess,
             fep_pessoas               pes1,
             fep_pessoas               pes2,
             fep_pessoas               pes3,
             fep_setores               seto,
             fep_municipios            muni,
             fep_ramos_atividades      raat,
             fep_criterios_medicoes    crme,
             fep_tipos_documentos      tido
       WHERE proc.resp_id = resp.resp_id
         AND proc.seto_id = seto.seto_id(+)
         AND resp.pess_id = pess.pess_id
         AND resp.atan_id = ata1.atan_id
         AND ata1.atan_id = nAtan_id
         AND ata1.raat_id = raat.raat_id
         AND raat.crme_id = crme.crme_id
         AND ata1.muni_id = muni.muni_id(+)
         AND ata1.pess_id_responsavel = pes1.pess_id(+)
         AND proc.pess_id_respondido = pes2.pess_id(+)
         AND proc.pess_id = pes3.pess_id
         AND proc.tido_id = tido.tido_id
         AND tido.sucd_id IN (12, 15, 22)
         AND raat.dm_grupo_aut in (1, 2, 3, 4)
         AND raat.dm_condicao_lic = 'S'
         AND proc.situacao not in ('A', 'J', 'P', 'S');
    r6 c6%rowtype;

    CURSOR c7 IS -- Busca o Prcr_id
      select prcr.prcr_id
        from fep_aux_proc_cond_restr prcr, fep_documentos docu
       where prcr.proc_id = r6.proc_id
         and prcr.docu_id_revogado = docu.docu_id(+)
         and prcr.dm_ativo = 'S'
         and prcr.irca_id IS NULL;
    r7 c7%rowtype;

    CURSOR c1 IS
      SELECT clcr.sequencia sequencia_clcr,
             cors.sequencia,
             cors.sequencia_sub,
             lcrs.lcrs_id,
             TO_NUMBER(NULL) crpr_id,
             cors.clcr_id,
             cors.tipo_item,
             cors.nivel,
             cors.abreviatura,
             cors.descricao descricao_cors,
             lcrs.tipo tipo_cond,
             lcrs.dm_parecer,
             lcrs.dm_licenca,
             cors.dm_imprimir_seq,
             cors.especial_negrito,
             cors.cors_id,
             DECODE(cors.dm_sisauto, 'S', 'S', 'N') dm_sisauto
        FROM fep_listas_cond_restricoes  lcrs,
             fep_condicoes_restricoes    cors,
             fep_classes_cond_restricoes clcr
       WHERE lcrs.raat_id = r6.raat_id
         AND lcrs.cors_id = cors.cors_id
         AND lcrs.data_fim_validade IS NULL
         AND cors.data_fim_validade IS NULL
         AND cors.clcr_id = clcr.clcr_id
         AND cors.cors_id NOT IN
             (901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 922, 923, 924, 925)
      UNION ALL
      SELECT clcr.sequencia sequencia_clcr,
             crpr.sequencia,
             crpr.sequencia_sub,
             TO_NUMBER(NULL) lcrs_id,
             crpr.crpr_id,
             crpr.clcr_id,
             crpr.tipo_item,
             crpr.nivel,
             crpr.abreviatura,
             crpr.descricao descricao_cors,
             3 tipo_cond,
             crpr.dm_parecer,
             crpr.dm_licenca,
             crpr.dm_imprimir_seq,
             crpr.especial_negrito,
             TO_NUMBER(NULL) cors_id,
             'N' dm_sisauto
        FROM fep_aux_cond_restr_proc crpr, fep_classes_cond_restricoes clcr
       WHERE crpr.prcr_id = r7.prcr_id
         AND crpr.clcr_id = clcr.clcr_id
       ORDER BY 1, 2, 3;
    r1 c1%rowtype;

    CURSOR c2 IS
      SELECT acrl.cors_descricao
        FROM fep_aux_cond_restr_par_lic acrl
       WHERE acrl.lcrs_id = r1.lcrs_id
         AND r1.lcrs_id IS NOT NULL
         AND acrl.prcr_id = r7.prcr_id;
    r2 c2%rowtype;

    CURSOR c3 IS
      SELECT cree.dm_ignorar, cree.tipo_cond_restr, cree.operador_inclusao
        FROM fep_aux_cond_restr_especiais cree
       WHERE cree.lcrs_id = r1.lcrs_id
         AND r1.lcrs_id IS NOT NULL
         AND cree.prcr_id = r7.prcr_id;
    r3 c3%rowtype;

    CURSOR c4 IS
      SELECT COUNT(*)
        FROM fep_aux_gera_cond_restr axge
       WHERE axge.prcr_id = r7.prcr_id
         AND axge.clcr_id = r1.clcr_id
         AND axge.sequencia = r1.sequencia
         AND axge.sequencia_sub = r1.sequencia_sub
         AND axge.tipo_cond = r1.tipo_cond
         AND axge.tipo_item = r1.tipo_item;

    CURSOR c5 IS
      SELECT ata1.data_inicio_funcionamento
        FROM fep_atividades_antropicas ata1
       WHERE ata1.atan_id = nAtan_id;

  BEGIN

    OPEN c7;
    FETCH c7
      INTO r7;
    IF c7%found THEN
      nPrcrId := r7.prcr_id;
    ELSE
      CLOSE c7;
    END IF;

    SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;

    BEGIN
      DELETE FROM fep_aux_gera_cond_restr WHERE prcr_id = nPrcrId;
      commit;
    END;

    OPEN c1;
    LOOP
      FETCH c1
        INTO r1;
      IF c1%notfound THEN
        CLOSE c1;
        EXIT;
      ELSE

        nIncluir := 1;

        vGerAutom  := NULL;
        vDescrCond := r1.descricao_cors;
        OPEN c2;
        FETCH c2
          INTO r2;
        IF c2%found THEN
          vDescrCond := r2.cors_descricao;
        END IF;
        CLOSE c2;

        vIgnorar := 'N';
        IF r1.tipo_cond IN (1, 3) THEN
          -- 1-Padr?o  3-Especifica
          vIncluido := 'X';
        ELSE
          vIncluido := NULL;
        END IF;

        nTipoCond := NULL;
        OPEN c3;
        FETCH c3
          INTO r3;
        IF c3%found THEN
          vIncluido := 'X';
          vIgnorar  := r3.dm_ignorar;
          nTipoCond := r3.tipo_cond_restr;
          vUsuario  := r3.operador_inclusao;

          IF r1.tipo_cond = 2 THEN
            -- opcional
            IF r3.operador_inclusao LIKE '%AUTOM%' THEN
              vGerAutom := 'S';
            ELSE
              vGerAutom := 'N';
            END IF;
          END IF;

        END IF;
        CLOSE c3;

        IF vIncluido = 'X' AND nTipoCond IS NULL THEN
          nTipoCond := 1;
        END IF;

        OPEN c4;
        FETCH c4
          INTO nContador;
        CLOSE c4;

        IF nContador > 0 THEN
          vMessClasse := ('Erro: Encontrado mesma Classe: ' || r1.clcr_id ||
                         ' Seq: ' || r1.sequencia || ' SeqSub: ' ||
                         r1.sequencia_sub || ' Tipo Item: ' ||
                         r1.tipo_item || '.' || 'E' || 'OFG' || 0);
        END IF;

        OPEN c6;
        FETCH c6
          INTO r6;
        IF c6%found THEN
          nRaatId := r6.raat_id;
          CLOSE c6;
        END IF;

        ---- Verifica se Condic?o e para ser mostrada na Lista
        IF r1.dm_sisauto = 'N' THEN
          nIncluir := 0;
        ELSE
          IF r1.dm_sisauto = 'S' THEN
            IF nIncluir = 1 THEN
              IF r1.cors_id = 711 THEN
                IF nRaatId NOT IN (2710.20, 2710.21) THEN
                  -- Vinicolas c/Sisauto
                  nIncluir := 0;
                END IF;
              END IF;
              IF r1.cors_id = 712 THEN
                IF nRaatId IN (2710.20, 2710.21) THEN
                  -- Vinicolas c/Sisauto
                  nIncluir := 0;
                END IF;
              END IF;
            END IF;
            -- Tabela de Parametros e Padr?o de Emiss?o para n?o SISAUTO
            IF r1.cors_id IN (108, 177, 202, 184) THEN
              nIncluir := 0;
            END IF;
          END IF;

        END IF;

        IF nIncluir = 1 THEN
          IF r1.cors_id = 743 THEN
            IF nRaatId NOT IN (2080.00, 2080.10, 2080.20) THEN
              -- Fabricac?o de Tinta
              nIncluir := 0;
            END IF;
          END IF;

          IF r1.cors_id IN (716, 717, 718) THEN
            OPEN c5;
            FETCH c5
              INTO dDataFunc;
            CLOSE c5;
            IF dDataFunc IS NULL OR
               dDataFunc < TO_DATE('07/12/2006', 'dd/mm/rrrr') THEN
              nIncluir := 0;
            END IF;
          END IF;

          BEGIN
            INSERT INTO fep_aux_gera_cond_restr
              (AXGE_ID,
               PRCR_ID,
               LCRS_ID,
               CRPR_ID,
               CLCR_ID,
               TIPO_ITEM,
               NIVEL,
               SEQUENCIA,
               SEQUENCIA_SUB,
               ABREVIATURA,
               DESCRICAO,
               DATA_INCLUSAO,
               OPERADOR_INCLUSAO,
               SEQUENCIA_CLCR,
               TIPO_COND,
               DM_PARECER,
               DM_LICENCA,
               DM_IMPRIMIR_SEQ,
               ESPECIAL_NEGRITO,
               INCLUIDO,
               DM_IGNORAR_OPCIONAL_AUT,
               DM_TIPO_COND_RESTR,
               DM_OPC_AUTOM,
               CORS_ID)
            VALUES
              (axge_seq.nextval,
               nPrcrId,
               r1.lcrs_id,
               r1.crpr_id,
               r1.clcr_id,
               r1.tipo_item,
               r1.nivel,
               r1.sequencia,
               r1.sequencia_sub,
               r1.abreviatura,
               vDescrCond,
               dDataAtual,
               vUsuario,
               r1.sequencia_clcr,
               r1.tipo_cond,
               r1.dm_parecer,
               r1.dm_licenca,
               r1.dm_imprimir_seq,
               r1.especial_negrito,
               vIncluido,
               vIgnorar,
               nTipoCond,
               vGerAutom,
               r1.cors_id);
            commit;
          EXCEPTION
            WHEN OTHERS THEN
              vMessInsert := ('Erro: Inclus?o fep_aux_gera_cond_restr ) ' ||
                             SQLCODE || '-' || SQLERRM || '.' || 'E' ||
                             'OFG' || 0);
          END;
        END IF;
      END IF;
    END LOOP;

    IF (vMessClasse IS NOT NULL) OR (vMessInsert IS NOT NULL) THEN
      OPEN cur FOR
        SELECT vMessClasse vMessClasse, vMessInsert vMessInsert FROM DUAL;

    ELSE
      OPEN cur FOR
        SELECT vMessClasse vMessClasse, vMessInsert vMessInsert
          FROM DUAL
         WHERE 1 = 2;
    END IF;
  END;

  ---- Condic?es, Restric?es e Ramos de Atividades ----
  procedure SP_SETO_COND_RESTR(nPess_id in Number, cur out sys_refcursor) as
  begin

    open cur for
      select seto.seto_id SETO_RESP,
             seto.sigla   SETO_SIGLA,
             seto.nome    SETO_NOME
        from fep_setores seto, fep_setores_funcionarios sefu
       where sefu.pess_id = nPess_id
         and sefu.seto_id = seto.seto_id
       order by seto.seto_id;

  end;

  procedure SP_DESCR_RESTR_RAMO_ATIV(nRaat_ID in Number,
                                     cur      out sys_refcursor) as
  begin

    open cur for
      select raat.descricao Descr_ramo
        from fep_ramos_atividades raat
       where raat.raat_id = nRaat_ID;
  end;

  procedure SP_UPD_DESCR_RESTR_RAMO_ATIV(nRaat_ID   in Number,
                                         vDescrRamo varchar2) as

  begin

  UPDATE fep_ramos_atividades raat
     SET raat.descricao = vDescrRamo
   WHERE raat.raat_id = nRaat_ID;

  commit;

  end;

procedure SP_RAMO_ATIV_SETOR(nSeto_id in Number,
                               nPess_id in Number,
                               cur      out sys_refcursor) as
  begin

    open cur for
       select raat.raat_id       RAMO_ATIV,
             raat.descricao     DESCR_RAMO,
             FC_QT_PADRAO(raat.raat_id) QT_COND_PAD,
             FC_QT_OPCIONAL(raat.raat_id)QT_COND_OPC,
             FC_QT_PARAMETROS(1, raat.raat_id) QT_PAR_PCR1,
             FC_QT_PARAMETROS(2, raat.raat_id) QT_PAR_PCR2,
             FC_QT_PARAMETROS(3, raat.raat_id) QT_PAR_PCR3,
             FC_QT_PARAMETROS(4, raat.raat_id) QT_PAR_PCR4
        from fep_ramos_atividades raat, fep_ramos_funcionarios rafu
       where raat.seto_id = nSeto_id
         and raat.raat_id = rafu.raat_id
         and rafu.pess_id = nPess_id;

  end;
  procedure SP_SRC_COMBO_COND_RAMO_ATIV(nSeto_ID in Number,
                                    cur      out sys_refcursor) as
  begin

    open cur for
      SELECT (CORS.CORS_ID||'|'||CORS.SEQUENCIA||'|'||CORS.TIPO_ITEM||'|'||CORS.SEQUENCIA_SUB) ID_SEQ,
     (CORS.CORS_ID||' - '||CORS.SEQUENCIA||' - '|| CORS.ABREVIATURA) DESCR_COND
     FROM FEP_CLASSES_COND_RESTRICOES CLCR,
          FEP_CONDICOES_RESTRICOES CORS
     WHERE CORS.DATA_FIM_VALIDADE IS NULL
     AND CLCR.CLCR_ID(+) = CORS.CLCR_ID
     AND CORS.SETO_ID = nSeto_ID
     ORDER BY CORS.SEQUENCIA ASC, CORS.SEQUENCIA_SUB ASC;

  end;

  procedure SP_COND_RESTR_RAMO_ATIV(nSeto_id     in number,
                                    nCors_id     in number,
                                    nSequencia   in number,
                                    nTipoItem    in number,
                                    nSeqSub      in number,
                                    vAbreviatura in varchar2,
                                    vDescricao   in varchar2,
                                    vDataIniVal  in varchar2,
                                    vDataFimVal  in varchar2,
                                    vDmParecer   in varchar2,
                                    vDmLicenca   in varchar2,
                                    vRaat_ID     in varchar2,
                                    cur          out sys_refcursor) AS
  vSQL VARCHAR2(4000);

  begin


  vSQL := '

      select cors.cors_id COD_COND,
             decode(lcrs.tipo, 1, ''Padr?o'', 2, ''Opcional'') TIPO_COND,
             cors.sequencia SEQUENCIA,
             decode(cors.tipo_item, 1, ''Item'', 2, ''SubItem'') TIPO_ITEM,
             cors.sequencia_sub SEQ_SUB,
             cors.abreviatura ABREVIATURA_COND,
             decode(cors.dm_imprimir_seq, ''N'', ''N?O'', ''S'', ''SIM'') IMP_SEQ,
             decode(cors.especial_negrito, ''N'', ''N?O'', ''S'', ''SIM'') IMP_NEGRITO,
             decode(lcrs.dm_parecer, ''N'', ''N?O'', ''S'', ''SIM'') PARECER,
             decode(lcrs.dm_licenca, ''N'', ''N?O'', ''S'', ''SIM'') LICENCA,
             lcrs_id
        from fep_condicoes_restricoes cors, fep_listas_cond_restricoes lcrs
        WHERE 0 = 0 ';

  IF nSeto_ID != 0 THEN
    vSQL := vSQL || 'AND cors.seto_id = ' || nSeto_ID || ' ';
  END IF;

  IF nCors_id != 0 THEN
    vSQL := vSQL || 'AND cors.cors_id = ' || nCors_id || ' ';
  END IF;

  vSQL := vSQL || 'AND cors.cors_id = lcrs.cors_id ' || ' ';

  IF nSequencia != 0 THEN
    vSQL := vSQL || 'AND cors.sequencia = ' || nSequencia || ' ';
  END IF;

  IF nTipoItem != 0 THEN
    vSQL := vSQL || 'AND cors.tipo_item = ' || nTipoItem || ' ';
  END IF;

  IF nSeqSub != 0 THEN
    vSQL := vSQL || 'AND cors.sequencia_sub = ' || nSeqSub || ' ';
  END IF;

  IF vAbreviatura != 'null' THEN
    vSQL := vSQL || 'AND UPPER(cors.abreviatura) LIKE ''%' || vAbreviatura || '%'' ';
  END IF;

  IF vDescricao != 'null' THEN
    vSQL := vSQL || 'AND UPPER(cors.descricao) LIKE ''%' || vDescricao || '%'' ';
  END IF;

  vSQL := vSQL || 'AND cors.seto_id = lcrs.seto_id ' || ' ';

  IF vRaat_ID != 'null' THEN
    vSQL := vSQL || 'AND lcrs.raat_id = TO_NUMBER('||vRaat_ID||')'||' ';
  END IF;

  IF vDmParecer != 'null' THEN
    vSQL := vSQL || 'AND lcrs.dm_parecer = ''' || vDmParecer || ''' ';
  END IF;

  IF vDmLicenca != 'null' THEN
    vSQL := vSQL || 'AND lcrs.dm_licenca = ''' || vDmLicenca || ''' ';
  END IF;

  IF vDataIniVal != 'null' THEN
    vSQL := vSQL || 'AND lcrs.data_inicio_validade = ' || 'to_date(''' || vDataIniVal || ''',''dd/mm/rrrr'')';
  END IF;

  IF vDataFimVal != 'null' THEN
    vSQL := vSQL || 'AND lcrs.data_fim_validade = ' || 'to_date(''' || vDataFimVal || ''',''dd/mm/rrrr'')';
  END IF;

  vSQL := vSQL || 'order by cors.cors_id';

  IF (vSQL IS NOT NULL) THEN
    open cur for vSQL;

  ELSE
    OPEN cur FOR
      SELECT * FROM DUAL WHERE 1 = 2;

  END IF;

  end;


  procedure SP_RESULTADO_ASSOC_ATIV(nRaat_ID in Number,
                                    cur      out sys_refcursor) as
  begin

    open cur for
      SELECT lcrs.raat_id,
             cors.clcr_id CLCR_ID,
             clcr.sequencia SEQ_CLASSE,
             clcr.descricao DESCR_CLASSE,
             count(*) TOTAL
        from fep_condicoes_restricoes    cors,
             fep_listas_cond_restricoes  lcrs,
             fep_classes_cond_restricoes clcr,
             fep_ramos_atividades        raat
       WHERE cors.cors_id = lcrs.cors_id
         and cors.data_fim_validade is null
         and lcrs.data_fim_validade is null
         and cors.clcr_id = clcr.clcr_id(+)
         and lcrs.raat_id = raat.raat_id
         and raat.raat_id = nRaat_ID
       group by cors.clcr_id, clcr.sequencia, lcrs.raat_id, clcr.descricao;

  end;

  procedure SP_CLASSE_RESTR_RAMO_SETOR(nLcrs_ID in Number,
                                       cur      out sys_refcursor) as
  begin

    open cur for
      select cors.clcr_id CLASSE,
             (cors.sequencia || ' - ' || clcr.descricao) SEQUENCIA,
             to_char(lcrs.data_inicio_validade, 'DD/MM/RRRR') DATA_INI_COND,
             (seto.seto_id || ' - ' || seto.sigla || ' - ' || seto.nome) SETO_NOME,
             to_char(lcrs.data_fim_validade, 'DD/MM/RRRR') DATA_FIM_COND,
             cors.descricao DESCR_COND_RESTR,
             (raat.raat_id || ' - ' || raat.descricao) RAMO_ATIV,
             decode(raat.potencial, 'A', 'ALTO', 'B', 'BAIXO', 'M', 'MEDIO') POTENCIAL,
             to_char(lcrs.data_inclusao, 'DD/MM/RRRR') data_inclusao,
             lcrs.operador_inclusao,
             to_char(lcrs.data_atualizacao, 'DD/MM/RRRR') data_atualizacao,
             lcrs.operador_atualizacao,
             lcrs.lcrs_id
        from fep_condicoes_restricoes    cors,
             fep_listas_cond_restricoes  lcrs,
             fep_classes_cond_restricoes clcr,
             fep_setores                 seto,
             fep_ramos_atividades        raat
       where lcrs.lcrs_id = nLcrs_ID
         and lcrs.seto_id = seto.seto_id
         and lcrs.raat_id = raat.raat_id
         and lcrs.cors_id = cors.cors_id
         and cors.clcr_id = clcr.clcr_id;

  end;

  procedure SP_DETALHE_ASSOC_ATIV(nRaat_ID in Number,
                                  nClcr_ID in Number,
                                  cur      out sys_refcursor) as
  begin

    open cur for
      SELECT cors.sequencia SEQUENCIA,
             decode(cors.tipo_item, 1, 'Item', 2, 'SubItem') TIPO,
             cors.sequencia_sub SEQ_SUB,
             decode(decode(cors.cors_id, 83, 2, lcrs.tipo),
                    1,
                    'Padr?o',
                    2,
                    'Opcional') TIPO_OPCAO,
             cors.abreviatura ABREV,
             decode(lcrs.dm_parecer, 'S', 'SIM', 'N', 'N?O') LISTA_PARECER,
             decode(lcrs.dm_licenca, 'S', 'SIM', 'N', 'N?O') LISTA_LICENCA,
             decode(decode(cors.cors_id, 83, 'S', cors.especial_negrito),
                    'S',
                    'SIM',
                    'N',
                    'N?O') IMP_NEGRITO,
             decode(cors.dm_imprimir_seq, 'S', 'SIM', 'N', 'N?O') IMP_SEQ,
             cors.cors_id CORS_ID,
             lcrs.lcrs_id LCRS_ID
        from fep_condicoes_restricoes    cors,
             fep_listas_cond_restricoes  lcrs,
             fep_classes_cond_restricoes clcr,
             fep_ramos_atividades        raat
       WHERE cors.cors_id = lcrs.cors_id
         and cors.data_fim_validade is null
         and lcrs.data_fim_validade is null
         and cors.clcr_id = clcr.clcr_id(+)
         and clcr.clcr_id = nClcr_ID
         and lcrs.raat_id = raat.raat_id
         and raat.raat_id = nRaat_ID
       order by cors.sequencia;
  end;

  ---- Condic?es, Restric?es e Setor ----
  procedure SP_SRC_COMBO_COND_CLASSE(cur out sys_refcursor) as
  begin
    open cur for

         SELECT CLCR.CLCR_ID,
               (CLCR.CLCR_ID||' - '||CLCR.Sequencia||' - '||CLCR.DESCRICAO) Classe
         FROM FEP_CLASSES_COND_RESTRICOES CLCR
         ORDER BY CLCR.CLCR_ID;

  end;

  procedure SP_COND_RESTR_RAMO_SETOR(nSeto_ID     in number,
                                     nClcr_id     in number,
                                     nSequencia   in number,
                                     nTipo_item   in number,
                                     nSeqSub      in number,
                                     nNivel       in number,
                                     vAbreviatura in varchar2,
                                     vDescricao   in varchar2,
                                     cur      out sys_refcursor) as



  vSQL VARCHAR2(4000);

  begin

  vSQL := 'select (cors.clcr_id || '' - '' || cors.sequencia) COND_CLASSES,
           decode(cors.tipo_item, 1, ''Item'', 2, ''SubItem'') TIPO,
           cors.nivel NIVEL,
           cors.sequencia,
           cors.sequencia_sub SEQ_SUB,
           cors.dm_imprimir_seq,
           decode(cors.dm_imprimir_seq, ''N'', ''N?O'', ''S'', ''SIM'') IMP_SEQ,
           decode(cors.especial_negrito, ''N'', ''N?O'', ''S'', ''SIM'') IMP_NEGRITO,
           cors.abreviatura ABREV,
           decode(cors.Dm_Lp, ''N'', ''N?O'', ''S'', ''SIM'') INCL_LP,
           decode(cors.dm_li, ''N'', ''N?O'', ''S'', ''SIM'') INCL_LI,
           decode(cors.dm_lo, ''N'', ''N?O'', ''S'', ''SIM'') INCL_LO,
           cors.cors_id,
           cors.clcr_id
      from fep_condicoes_restricoes cors
      where 0 = 0';


   IF nSeto_ID != 0 THEN
     vSQL := vSQL || 'AND cors.seto_id = ' || nSeto_ID || ' ';
    END IF;


    IF nClcr_id != 0 THEN
      vSQL := vSQL || 'AND cors.clcr_id =' || nClcr_id || ' ';
    END IF;

    IF nSequencia != 0 THEN
      vSQL := vSQL || 'AND cors.sequencia =' || nSequencia || ' ';
    END IF;

    IF nTipo_item != 0 THEN
      vSQL := vSQL || 'AND cors.tipo_item =' || nTipo_item || ' ';
    END IF;

    IF nSeqSub != 0 THEN
      vSQL := vSQL || 'AND cors.sequencia_sub =' || nSeqSub || ' ';
    END IF;

    IF nNivel != 0 THEN
      vSQL := vSQL || 'AND cors.nivel =' || nNivel || ' ';
    END IF;

    IF vAbreviatura != 'null' THEN
      vSQL := vSQL || 'AND cors.abreviatura LIKE ''%' || vAbreviatura ||
              '%'' ';
    END IF;

    IF vDescricao != 'null' THEN
      vSQL := vSQL || 'AND cors.descricao LIKE ''%' || vDescricao ||
              '%'' ';
    END IF;

    vSQL := vSQL || ' ORDER BY cors.clcr_id, cors.sequencia';

  IF (vSQL IS NOT NULL) THEN
    open cur for vSQL;
  ELSE
    OPEN cur FOR
      SELECT * FROM fep_processos WHERE 1 = 2;
  END IF;

  end;


  --- FEP_CONDICOES_RESTRICOES ---
  Procedure SP_CORS_GET(nCors_id in number, cur out sys_refcursor) as
  begin
    open cur for
      select * FROM fep_condicoes_restricoes where cors_id = nCors_id;
  end;

  Procedure SP_CORS_SRC(nCors_id              in number,
                        nDm_reciclo           in number,
                        nDm_solo              in number,
                        nDm_tipo_pcr          in number,
                        sDm_sisauto           in varchar,
                        sDm_param1            in varchar,
                        nSeto_id              in number,
                        sDescricao            in varchar,
                        sData_inicio_validade in varchar,
                        sData_fim_validade    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        sAbreviatura          in varchar,
                        nSequencia            in number,
                        nTipo_item            in number,
                        nSequencia_sub        in number,
                        sEspecial_negrito     in varchar,
                        sDm_imprimir_seq      in varchar,
                        sDm_lp                in varchar,
                        sDm_li                in varchar,
                        sDm_lo                in varchar,
                        nNivel                in number,
                        nClcr_id              in number,
                        cur                   out sys_refcursor) as
    vSQL VARCHAR2(4000);
  begin
    vSQL := 'select * FROM fep_condicoes_restricoes WHERE 0 = 0 ';

    IF nDm_reciclo != 0 THEN
      vSQL := vSQL || 'AND dm_reciclo = ' || nDm_reciclo || ' ';
    END IF;

    IF nDm_solo != 0 THEN
      vSQL := vSQL || 'AND dm_solo = ' || nDm_solo || ' ';
    END IF;

    IF nDm_tipo_pcr != 0 THEN
      vSQL := vSQL || 'AND dm_tipo_pcr = ' || nDm_tipo_pcr || ' ';
    END IF;

    IF sDm_sisauto != 'null' THEN
      vSQL := vSQL || 'AND dm_sisauto LIKE ''%' || sDm_sisauto || '%'' ';
    END IF;

    IF sDm_param1 != 'null' THEN
      vSQL := vSQL || 'AND dm_param1 LIKE ''%' || sDm_param1 || '%'' ';
    END IF;

    IF nSeto_id != 0 THEN
      vSQL := vSQL || 'AND seto_id = ' || nSeto_id || ' ';
    END IF;

    IF nCors_id != 0 THEN
      vSQL := vSQL || 'AND cors_id = ' || nCors_id || ' ';
    END IF;

    IF sDescricao != 'null' THEN
      vSQL := vSQL || 'AND descricao LIKE ''%' || sDescricao || '%'' ';
    END IF;

    IF sData_inicio_validade != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inicio_validade) = TO_DATE(''' ||
              sData_inicio_validade || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sData_fim_validade != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_fim_validade) = TO_DATE(''' ||
              sData_fim_validade || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sData_inclusao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_inclusao) = TO_DATE(''' ||
              sData_inclusao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_inclusao != 'null' THEN
      vSQL := vSQL || 'AND operador_inclusao LIKE ''%' ||
              sOperador_inclusao || '%'' ';
    END IF;

    IF sData_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND TRUNC(data_atualizacao) = TO_DATE(''' ||
              sData_atualizacao || ''', ''dd/mm/rrrr'') ';
    END IF;

    IF sOperador_atualizacao != 'null' THEN
      vSQL := vSQL || 'AND operador_atualizacao LIKE ''%' ||
              sOperador_atualizacao || '%'' ';
    END IF;

    IF sAbreviatura != 'null' THEN
      vSQL := vSQL || 'AND abreviatura LIKE ''%' || sAbreviatura || '%'' ';
    END IF;

    IF nSequencia != 0 THEN
      vSQL := vSQL || 'AND sequencia = ' || nSequencia || ' ';
    END IF;

    IF nTipo_item != 0 THEN
      vSQL := vSQL || 'AND tipo_item = ' || nTipo_item || ' ';
    END IF;

    IF nSequencia_sub != 0 THEN
      vSQL := vSQL || 'AND sequencia_sub = ' || nSequencia_sub || ' ';
    END IF;

    IF sEspecial_negrito != 'null' THEN
      vSQL := vSQL || 'AND especial_negrito LIKE ''%' || sEspecial_negrito ||
              '%'' ';
    END IF;

    IF sDm_imprimir_seq != 'null' THEN
      vSQL := vSQL || 'AND dm_imprimir_seq LIKE ''%' || sDm_imprimir_seq ||
              '%'' ';
    END IF;

    IF sDm_lp != 'null' THEN
      vSQL := vSQL || 'AND dm_lp LIKE ''%' || sDm_lp || '%'' ';
    END IF;

    IF sDm_li != 'null' THEN
      vSQL := vSQL || 'AND dm_li LIKE ''%' || sDm_li || '%'' ';
    END IF;

    IF sDm_lo != 'null' THEN
      vSQL := vSQL || 'AND dm_lo LIKE ''%' || sDm_lo || '%'' ';
    END IF;

    IF nNivel != 0 THEN
      vSQL := vSQL || 'AND nivel = ' || nNivel || ' ';
    END IF;

    IF nClcr_id != 0 THEN
      vSQL := vSQL || 'AND clcr_id = ' || nClcr_id || ' ';
    END IF;

    open cur for vSQL;
  end;

  Procedure SP_CORS_INS(nDm_reciclo           in number,
                        nDm_solo              in number,
                        nDm_tipo_pcr          in number,
                        sDm_sisauto           in varchar,
                        sDm_param1            in varchar,
                        nSeto_id              in number,
                        sDescricao            in varchar,
                        sData_inicio_validade in varchar,
                        sData_fim_validade    in varchar,
                        sData_inclusao        in varchar,
                        sOperador_inclusao    in varchar,
                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        sAbreviatura          in varchar,
                        nSequencia            in number,
                        nTipo_item            in number,
                        nSequencia_sub        in number,
                        sEspecial_negrito     in varchar,
                        sDm_imprimir_seq      in varchar,
                        sDm_lp                in varchar,
                        sDm_li                in varchar,
                        sDm_lo                in varchar,
                        nNivel                in number,
                        nClcr_id              in number,
                        nCors_id              out number) is
  begin
    INSERT INTO fep_condicoes_restricoes
      (cors_id,
       dm_reciclo,
       dm_solo,
       dm_tipo_pcr,
       dm_sisauto,
       dm_param1,
       seto_id,
       descricao,
       data_inicio_validade,
       data_fim_validade,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao,
       abreviatura,
       sequencia,
       tipo_item,
       sequencia_sub,
       especial_negrito,
       dm_imprimir_seq,
       dm_lp,
       dm_li,
       dm_lo,
       nivel,
       clcr_id)
    VALUES
      (CORS_SEQ.nextval,
       nDm_reciclo,
       nDm_solo,
       nDm_tipo_pcr,
       sDm_sisauto,
       sDm_param1,
       nSeto_id,
       sDescricao,
       TO_DATE(sData_inicio_validade, 'dd/mm/rrrr'),
       TO_DATE(sData_fim_validade, 'dd/mm/rrrr'),
       TO_DATE(sData_inclusao, 'dd/mm/rrrr'),
       sOperador_inclusao,
       TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
       sOperador_atualizacao,
       sAbreviatura,
       nSequencia,
       nTipo_item,
       nSequencia_sub,
       sEspecial_negrito,
       sDm_imprimir_seq,
       sDm_lp,
       sDm_li,
       sDm_lo,
       nNivel,
       nClcr_id);
    SELECT CORS_SEQ.currval into nCors_id FROM dual;
    commit;
  end;

  Procedure SP_CORS_UPD(nCors_id              in number,
                        nDm_reciclo           in number,
                        nDm_solo              in number,
                        nDm_tipo_pcr          in number,
                        sDm_sisauto           in varchar,
                        sDm_param1            in varchar,
                        nSeto_id              in number,
                        sDescricao            in varchar,
                        sData_inicio_validade in varchar,
                        sData_fim_validade    in varchar,

                        sData_atualizacao     in varchar,
                        sOperador_atualizacao in varchar,
                        sAbreviatura          in varchar,
                        nSequencia            in number,
                        nTipo_item            in number,
                        nSequencia_sub        in number,
                        sEspecial_negrito     in varchar,
                        sDm_imprimir_seq      in varchar,
                        sDm_lp                in varchar,
                        sDm_li                in varchar,
                        sDm_lo                in varchar,
                        nNivel                in number,
                        nClcr_id              in number) is
  begin
    UPDATE fep_condicoes_restricoes
       SET dm_reciclo           = nDm_reciclo,
           dm_solo              = nDm_solo,
           dm_tipo_pcr          = nDm_tipo_pcr,
           dm_sisauto           = sDm_sisauto,
           dm_param1            = sDm_param1,
           seto_id              = nSeto_id,
           descricao            = sDescricao,
           data_inicio_validade = TO_DATE(sData_inicio_validade,
                                          'dd/mm/rrrr'),
           data_fim_validade    = TO_DATE(sData_fim_validade, 'dd/mm/rrrr'),

           data_atualizacao     = TO_DATE(sData_atualizacao, 'dd/mm/rrrr'),
           operador_atualizacao = sOperador_atualizacao,
           abreviatura          = sAbreviatura,
           sequencia            = nSequencia,
           tipo_item            = nTipo_item,
           sequencia_sub        = nSequencia_sub,
           especial_negrito     = sEspecial_negrito,
           dm_imprimir_seq      = sDm_imprimir_seq,
           dm_lp                = sDm_lp,
           dm_li                = sDm_li,
           dm_lo                = sDm_lo,
           nivel                = nNivel,
           clcr_id              = nClcr_id
     WHERE cors_id = nCors_id;
    commit;
  end;

  Procedure SP_CORS_DEL(nCors_id in number) IS
  BEGIN
    DELETE FROM fep_condicoes_restricoes WHERE cors_id = nCors_id;
    commit;
  end;

  procedure SP_LISTA_RESTR_RAMO_SETOR(nCors_id in Number,
                                      cur      out sys_refcursor) as

  begin

    OPEN CUR FOR
    select clcr.clcr_id,
           clcr.sequencia,
           (clcr.sequencia || ' - ' || clcr.descricao) DESCR_SEQUENCIA,
           cors.seto_id,
           cors.tipo_item,
           DECODE(cors.tipo_item, 1, 'Item', 2, 'Sub Item') DESCR_TIPO_ITEM,
           cors.nivel,
           cors.sequencia_sub,
           to_char(cors.data_inicio_validade, 'DD/MM/RRRR') DATA_INICIO_VALIDADE,
           (seto.sigla || ' - ' || seto.nome) DESCR_SETO,
           to_char(cors.data_fim_validade, 'DD/MM/RRRR') DATA_FIM_VALIDADE,
           cors.dm_sisauto,
           cors.descricao DESCR_COND_RESTR,
           cors.abreviatura,
           cors.especial_negrito,
           cors.dm_imprimir_seq,
           cors.dm_tipo_pcr,
           decode(cors.dm_tipo_pcr,
                  1,
                  'PCR1',
                  2,
                  'PCR2',
                  3,
                  'PCR3',
                  4,
                  'PCR4') DESCR_TIPO_PCR,
           cors.dm_param1,
           cors.dm_reciclo,
           decode(cors.dm_reciclo,
                  1,
                  'Sem Reciclo',
                  2,
                  'Com Reciclo',
                  3,
                  'Com/Sem Reciclo') DESCR_RECICLO_PCR,
           cors.dm_solo,
           decode(cors.dm_solo,
                  1,
                  'Rec. Hidrico',
                  2,
                  'Solo',
                  3,
                  'Rec. Hidrico e Solo') DESCR_CORPO_PCR,
           cors.dm_lp,
           cors.dm_li,
           cors.dm_lo,
           to_char(cors.data_inclusao, 'DD/MM/RRRR') DATA_INCLUSAO,
           cors.operador_inclusao OPERADOR_INCLUSAO,
           to_char(cors.data_atualizacao, 'DD/MM/RRRR') DATA_ATUALIZACAO,
           cors.operador_atualizacao OPERADOR_ATUALIZACAO,
           cors.cors_id
      from fep_condicoes_restricoes    cors,
           fep_classes_cond_restricoes clcr,
           fep_setores                 seto
     where cors.cors_id = nCors_id
       and cors.clcr_id = clcr.clcr_id
       and cors.seto_id = seto.seto_id;

  end;

PROCEDURE SP_INS_RESTR_RAMO_SETOR(nClcr_id         IN NUMBER,
                                  nSequencia       IN NUMBER,
                                  nNivel           IN NUMBER,
                                  nSequencia_sub   IN NUMBER,
                                  dm_imprimir_seq  IN VARCHAR2,
                                  especial_negrito IN VARCHAR2,
                                  abreviatura      IN VARCHAR2,
                                  dm_lp            IN VARCHAR2,
                                  dm_li            IN VARCHAR2,
                                  dm_lo            IN VARCHAR2,
                                  nTipoItem        IN NUMBER,
                                  nSeto_id         IN NUMBER,
                                  vDtIniValidade   IN VARCHAR2,
                                  vDtFimValidade   IN VARCHAR2,
                                  vDmSISAUTO       IN VARCHAR2,
                                  vDescrCondRestr  IN VARCHAR2,
                                  nTipoPCR         IN NUMBER,
                                  vVazaoPCR        IN VARCHAR2,
                                  nDmReciclo       IN NUMBER,
                                  nDmSolo          IN NUMBER) IS
                                  vUsuario   VARCHAR2(30);


begin

    BEGIN
      SELECT USER INTO vUsuario FROM Dual;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        vUsuario := NULL;
    END;

    BEGIN
     /*Implementado apenas para compilar.*/
      select '' into vUsuario from dual;
     /* ******************************** */

     /*  Esta query de insert deve ser alterada, dessa forma n?o e correto ficar.
     /*  INSERT INTO fep_condicoes_restricoes cors
      VALUES
        (cors_seq.nextval,
         vDescrCondRestr,
         to_date(vDtIniValidade, 'DD/MM/RRRR'),
         to_date(vDtFimValidade, 'DD/MM/RRRR'),
         to_date(sysdate, 'DD/MM/RRRR'),
         vUsuario,
         to_date(sysdate, 'DD/MM/RRRR'),
         vUsuario,
         abreviatura,
         nSequencia,
         nTipoItem,
         nSequencia_sub,
         especial_negrito,
         nSeto_id,
         dm_imprimir_seq,
         dm_lp,
         dm_li,
         dm_lo,
         nNivel,
         nClcr_id,
         vDmSISAUTO,
         vVazaoPCR,
         nDmReciclo,
         nDmSolo,
         nTipoPCR,
         null, null, null, null, null, null, null, null, null, null, null, null, null, null );*/
    END;

    COMMIT;

end;

-- ESTA SP TERA QUE SER REVISTA POIS AINDA CHAMA A ANTIGA SP DE VALIDAC?O: SP_VALIDA_CORS
/*
PROCEDURE SP_UPD_RESTR_RAMO_SETOR(nCors_id         IN NUMBER,
                                                    nClcr_id         IN NUMBER,
                                                    nSequencia       IN NUMBER,
                                                    nNivel           IN NUMBER,
                                                    nSequencia_sub   IN NUMBER,
                                                    dm_imprimir_seq  IN VARCHAR2,
                                                    especial_negrito IN VARCHAR2,
                                                    abreviatura      IN VARCHAR2,
                                                    dm_lp            IN VARCHAR2,
                                                    dm_li            IN VARCHAR2,
                                                    dm_lo            IN VARCHAR2,
                                                    nTipoItem        IN NUMBER,
                                                    nSeto_id         IN NUMBER,
                                                    vDtIniValidade   IN VARCHAR2,
                                                    vDtFimValidade   IN VARCHAR2,
                                                    vDmSISAUTO       IN VARCHAR2,
                                                    vDescrCondRestr  IN VARCHAR2,
                                                    nTipoPCR         IN NUMBER,
                                                    vVazaoPCR        IN VARCHAR2,
                                                    nDmReciclo       IN NUMBER,
                                                    nDmSolo          IN NUMBER,
                                                    cur              out sys_refcursor) IS

  vErro      VARCHAR2(200);
  vErroLog   VARCHAR2(03);
  vMesUpdate VARCHAR2(200);
  vUsuario   VARCHAR(30);

  cur_val_cors sys_refcursor;

  type t_cur_val_cors is record(
    msg_seto_existe          VARCHAR2(200),
    msg_erro_cond_generica   VARCHAR2(200),
    msg_erro_tipo_reciclo    VARCHAR2(200),
    msg_erro_corpo_receptor  VARCHAR2(200),
    msg_erro_reciclo         VARCHAR2(200),
    msg_erro_param_corpo_rec VARCHAR2(200),
    msg_erro_seq             VARCHAR2(200),
    nivel_cond               NUMBER(10),
    erro                     VARCHAR2(3));
  v_val_cors t_cur_val_cors;

  nClcrId                 NUMBER(10);
  nSeq                    NUMBER(10);
  nNivelClCR              NUMBER(10);
  nSequenciaSub           NUMBER(10);
  DmImprimirSeq           VARCHAR2(1);
  EspecialNegrito         VARCHAR2(1);
  nTipo_item              NUMBER(10);
  vAbreviatura            VARCHAR2(60);
  DmLp                    VARCHAR2(1);
  DmLi                    VARCHAR2(1);
  DmLo                    VARCHAR2(1);
  nSetoId                 NUMBER(6);
  vDtInicioValidade       VARCHAR2(10);
  vDtFinalValidade        VARCHAR2(10);
  vDomSISAUTO             VARCHAR2(1);
  vDescrCondicaoRestricao VARCHAR2(2000);
  nTipo_PCR               NUMBER(1);
  vVazao_PCR              VARCHAR2(1);
  nDomReciclo             NUMBER(1);
  nDomSolo                VARCHAR2(1);
  vDataInclusao           VARCHAR2(10);
  vUser                   VARCHAR2(30);
  vDataAtual              VARCHAR2(10);

begin

  BEGIN
    SELECT cors.clcr_id,
           cors.sequencia,
           cors.nivel,
           cors.sequencia_sub,
           cors.dm_imprimir_seq,
           cors.especial_negrito,
           cors.tipo_item,
           cors.abreviatura,
           cors.dm_lp,
           cors.dm_li,
           cors.dm_lo,
           cors.seto_id,
           cors.data_inicio_validade,
           cors.data_fim_validade,
           cors.dm_sisauto,
           cors.descricao,
           cors.dm_tipo_pcr,
           cors.dm_param1,
           cors.dm_reciclo,
           cors.dm_solo,
           cors.data_inclusao,
           cors.operador_inclusao,
           cors.data_atualizacao,
           cors.operador_atualizacao
      INTO nClcrId,
           nSeq,
           nNivelClCR,
           nSequenciaSub,
           DmImprimirSeq,
           EspecialNegrito,
           nTipo_item,
           vAbreviatura,
           DmLp,
           DmLi,
           DmLo,
           nSetoId,
           vDtInicioValidade,
           vDtFinalValidade,
           vDomSISAUTO,
           vDescrCondicaoRestricao,
           nTipo_PCR,
           vVazao_PCR,
           nDomReciclo,
           nDomSolo,
           vDataInclusao,
           vUser,
           vDataAtual,
           vUser
      FROM fep_condicoes_restricoes cors
     WHERE cors.cors_id = nCors_id;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      nClcrId                 := 0;
      nSeq                    := 0;
      nNivelClCR              := 0;
      nSequenciaSub           := 0;
      DmImprimirSeq           := null;
      EspecialNegrito         := null;
      nTipo_item              := 0;
      vAbreviatura            := null;
      DmLp                    := null;
      DmLi                    := null;
      DmLo                    := null;
      nSetoId                 := 0;
      vDtInicioValidade       := null;
      vDtFinalValidade        := null;
      vDomSISAUTO             := null;
      vDescrCondicaoRestricao := null;
      nTipo_PCR               := 0;
      vVazao_PCR              := null;
      nDomReciclo             := 0;
      nDomSolo                := 0;
      vDataInclusao           := null;
      vUser                   := null;
      vDataAtual              := null;
      vUser                   := null;
  END;

  IF (nSeq          <> nSequencia)     OR
     (nSetoId       <> nSeto_id)       OR
     (nTipo_item    <> nTipoItem)      OR
     (nSequenciaSub <> nsequencia_sub) OR
     (nClcrId       <> nClcr_id)       OR
     (vVazaoPCR     <> vVazao_PCR)     OR
     (nDomReciclo   <> nDmReciclo)     OR
     (nDomSolo      <> nDmSolo)        THEN

        SP_VALIDA_CORS(nClcr_id,
                       nSequencia,
                       nsequencia_sub,
                       nNivel,
                       nSeto_id,
                       vDtIniValidade,
                       vDtFimValidade,
                       vDmSISAUTO,
                       vDescrCondRestr,
                       nTipoPCR,
                       vVazaoPCR,
                       nDmReciclo,
                       nDmSolo,
                       nTipoItem,
                       cur_val_cors);

          BEGIN
            LOOP
              FETCH cur_val_cors
                INTO v_val_cors;
              EXIT WHEN cur_val_cors%NOTFOUND;
            END LOOP;
          END;
  ELSE
     vErroLog := 'NO';
  END IF;

  IF (v_val_cors.erro = 'NO') OR
     (vErroLog        = 'NO') THEN

    BEGIN
      SELECT USER INTO vUsuario FROM Dual;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        vUsuario := NULL;
    END;

    BEGIN
      UPDATE fep_condicoes_restricoes cors
         SET cors.clcr_id              = nClcr_id,
             cors.sequencia            = nSequencia,
             cors.nivel                = nNivel,
             cors.sequencia_sub        = nsequencia_sub,
             cors.dm_imprimir_seq      = dm_imprimir_seq,
             cors.especial_negrito     = especial_negrito,
             cors.abreviatura          = abreviatura,
             cors.dm_lp                = dm_lp,
             cors.dm_li                = dm_li,
             cors.dm_lo                = dm_lo,
             cors.seto_id              = nSeto_id,
             cors.data_inicio_validade = to_date(vDtIniValidade,
                                                 'DD/MM/RRRR'),
             cors.data_fim_validade    = to_date(vDtFimValidade,
                                                 'DD/MM/RRRR'),
             cors.dm_sisauto           = vDmSISAUTO,
             cors.descricao            = vDescrCondRestr,
             cors.dm_tipo_pcr          = nTipoPCR,
             cors.dm_param1            = vVazaoPCR,
             cors.dm_reciclo           = nDmReciclo,
             cors.dm_solo              = nDmSolo,
             cors.data_inclusao        = to_date(sysdate, 'DD/MM/RRRR'),
             cors.operador_inclusao    = vUsuario,
             cors.data_atualizacao     = to_date(sysdate, 'DD/MM/RRRR'),
             cors.operador_atualizacao = vUsuario
       WHERE cors.cors_id = nCors_id;
      vMesUpdate := 'Atualizac?o realizada com sucesso!';
    EXCEPTION
      WHEN OTHERS THEN
        vErro := ('Erro ao atualizar FEP_CONDICOES_RESTRICOES');
    END;
    COMMIT;

    IF (vErro IS NOT NULL) THEN

      OPEN cur FOR
        SELECT NUll  MesErroSetoExiste,
               NULL  MesErroCondGenerica,
               NULL  MesErroTipoReciclo,
               NULL  MesErroCorpoReceptor,
               NULL  MesErroReciclo,
               NULL  MesErroParamCorpoRec,
               NULL  MesErroSeq,
               NULL  NivelCond,
               vErro MesErroUpdate,
               NULL  MesUpdate
          FROM DUAL;

    ELSE
      OPEN cur FOR
        SELECT NULL       MesErroSetoExiste,
               NULL       MesErroCondGenerica,
               NULL       MesErroTipoReciclo,
               NULL       MesErroCorpoReceptor,
               NULL       MesErroReciclo,
               NULL       MesErroParamCorpoRec,
               NULL       MesErroSeq,
               NULL       NivelCond,
               NULL       MesErroUpdate,
               vMesUpdate MesUpdate
          FROM DUAL;
    END IF;

  ELSE
    OPEN cur FOR
      SELECT v_val_cors.msg_seto_existe          MesErroSetoExiste,
             v_val_cors.msg_erro_cond_generica   MesErroCondGenerica,
             v_val_cors.msg_erro_tipo_reciclo    MesErroTipoReciclo,
             v_val_cors.msg_erro_corpo_receptor  MesErroCorpoReceptor,
             v_val_cors.msg_erro_reciclo         MesErroReciclo,
             v_val_cors.msg_erro_param_corpo_rec MesErroParamCorpoRec,
             v_val_cors.msg_erro_seq             MesErroSeq,
             v_val_cors.nivel_cond               NivelCond,
             NULL                                MesErroUpdate,
             NULL                                MesUpdate
        FROM DUAL;

  END IF;

end;
*/
PROCEDURE SP_VALIDA_CORS(nClcr_id        IN NUMBER,
                                           nSequencia      IN NUMBER,
                                           nSequencia_sub  IN NUMBER,
                                           nNivel          IN NUMBER,
                                           nSeto_id        IN NUMBER,
                                           vVazaoPCR       IN VARCHAR2,
                                           nDmReciclo      IN NUMBER,
                                           nDmSolo         IN NUMBER,
                                           nTipoItem       IN NUMBER,
                                           cur             out sys_refcursor) IS

  nCont                 NUMBER(5);
  vMesErroSetoExiste    VARCHAR2(200);
  vMesErroCondGenerica  VARCHAR2(200);
  vMesErroTipoReciclo   VARCHAR2(200);
  vMesErroCorpoReceptor VARCHAR2(200);
  vMesErroReciclo       VARCHAR2(200);
  vMesErroParamCorpoRec VARCHAR2(200);
  vMesErroSeq           VARCHAR2(200);
  nNivelCond            NUMBER(10);
  vErro                 VARCHAR2(3) := 'NO';

  CURSOR c1 IS
    SELECT COUNT(*)
      FROM fep_condicoes_restricoes cors
     WHERE cors.clcr_id = nClcr_id
       AND cors.sequencia = nSequencia
       AND cors.seto_id IS NOT NULL;

  CURSOR c2 IS
    SELECT COUNT(*)
      FROM fep_condicoes_restricoes cors
     WHERE cors.clcr_id = nClcr_id
       AND cors.sequencia = nSequencia
       AND cors.seto_id IS NULL;

  CURSOR c3 IS
    SELECT COUNT(*)
      FROM fep_condicoes_restricoes cors
     WHERE cors.clcr_id = nClcr_id
       AND cors.sequencia = nSequencia
       AND cors.sequencia_sub = nSequencia_sub
       AND cors.tipo_item = nTipoItem
       AND cors.seto_id = nSeto_id;

begin

  IF nSeto_id IS NULL THEN
    OPEN c1;
    FETCH c1
      INTO nCont;
    CLOSE c1;
    IF nCont > 0 THEN

      vMesErroSetoExiste := ('Erro1: Sequencia ' || nSequencia ||
                            ' da classe ' || nClcr_id ||
                            ' ja existe em outro setor. Utilize outra sequencia.');
      vErro              := 'YES';
    END IF;
  END IF;

  IF nSeto_id IS NOT NULL THEN
    OPEN c2;
    FETCH c2
      INTO nCont;
    CLOSE c2;
    IF nCont > 0 THEN
      vMesErroCondGenerica := ('Erro2: Sequencia ' || nSequencia ||
                              ' da classe ' || nClcr_id ||
                              ' ja existe numa condic?o generica (Generica=pode ser usada por qualquer setor). Utilize outra sequencia.');
      vErro                := 'YES';
    END IF;

    OPEN c3;
    FETCH c3
      INTO nCont;
    CLOSE c3;
    IF nCont > 0 THEN
      vMesErroSeq := ('Erro3: Sequencia, sequencia_sub e nivel ' ||
                     nSequencia || ' / ' || nSequencia_sub || ' / ' ||
                     nTipoItem || ' da classe ' || nClcr_id ||
                     ' ja existe para este setor. Verifique.');
      vErro       := 'YES';

    END IF;

  END IF;

  IF vVazaoPCR = 'S' THEN

    IF nDmReciclo IN (1, 2, 3) THEN
      NULL;
    ELSE
      vMesErroTipoReciclo := ('Erro: Faltou informar tipo de Reciclo para parametro dependente de Vaz?o de PCR1.');
      vErro               := 'YES';
    END IF;

    IF nDmSolo IN (1, 2, 3) THEN
      NULL;
    ELSE
      vMesErroCorpoReceptor := ('Erro: Faltou informar Corpo Receptor para parametro dependente de Vaz?o de PCR1.');
      vErro                 := 'YES';
    END IF;

  ELSE

    IF nDmReciclo IN (1, 2, 3) THEN
      vMesErroReciclo := ('Erro: Informar Reciclo somente se Parametro for dependente de Vaz?o para PCR1.');
      vErro           := 'YES';
    END IF;

    IF nDmSolo IN (1, 2, 3) THEN
      vMesErroParamCorpoRec := ('Erro: Informar Corpo Receptor somente se Parametro for dependente de Vaz?o para PCR1.');
      vErro                 := 'YES';
    END IF;

  END IF;

  -- Nivel 0 apenas para tipo Item
  IF nTipoItem = 1 THEN
    -- item
    nNivelCond := 0;
  ELSE
    -- Para Subitem o nivel deve ser 1 ou maior
    IF nNivel IS NULL THEN
      nNivelCond := 1;
    ELSE
      IF nNivel = 0 THEN
        nNivelCond := 1;
      END IF;
    END IF;
  END IF;

  IF (vErro = 'YES') THEN
    OPEN cur FOR
      SELECT vErro                 Erro,
             vMesErroSetoExiste    MesErroSetoExiste,
             vMesErroCondGenerica  MesErroCondGenerica,
             vMesErroTipoReciclo   MesErroTipoReciclo,
             vMesErroCorpoReceptor MesErroCorpoReceptor,
             vMesErroReciclo       MesErroReciclo,
             vMesErroParamCorpoRec MesErroParamCorpoRec,
             vMesErroSeq           MesErroSeq,
             nNivelCond            NivelCond
        FROM Dual;
  ELSE
    OPEN cur FOR
      SELECT vErro                 Erro,
             vMesErroSetoExiste    MesErroSetoExiste,
             vMesErroCondGenerica  MesErroCondGenerica,
             vMesErroTipoReciclo   MesErroTipoReciclo,
             vMesErroCorpoReceptor MesErroCorpoReceptor,
             vMesErroReciclo       MesErroReciclo,
             vMesErroParamCorpoRec MesErroParamCorpoRec,
             vMesErroSeq           MesErroSeq,
             nNivelCond            NivelCond
        FROM Dual;
  END IF;

end;

  -- Tipos Documentos --
  Procedure SP_DOCS_RESTR_RAMO_ATIV(nLcrs_ID in Number,
                                    cur      out sys_refcursor) As
  Begin

  Open cur For
    select (tido.tido_id || ' - ' || tido.abreviatura || ' - ' ||
           tido.descricao) TIPO_DOC,
           to_char(tilc.data_inicio, 'DD/MM/RRRR') DATA_INICIO,
           to_char(tilc.data_fim, 'DD/MM/RRRR') DATA_FIM,
           decode(tilc.dm_tipo,
                  1,
                  'Todos',
                  2,
                  'Novo',
                  3,
                  'Regularizac?o',
                  4,
                  'Renovac?o') TIPO_SOLIC_DOC,
           lcrs.lcrs_id,
           tido.tido_id,
           tilc.tilc_id,
           tilc.dm_tipo
      from fep_condicoes_restricoes    cors,
           fep_listas_cond_restricoes  lcrs,
           fep_classes_cond_restricoes clcr,
           fep_setores                 seto,
           fep_ramos_atividades        raat,
           fep_tido_cond_restr         TILC,
           fep_tipos_documentos        TIDO
     where tilc.tido_id = tido.tido_id
       and tilc.lcrs_id = lcrs.lcrs_id
       and lcrs.lcrs_id = nLcrs_ID
       and lcrs.seto_id = seto.seto_id
       and lcrs.raat_id = raat.raat_id
       and lcrs.cors_id = cors.cors_id
       and cors.clcr_id = clcr.clcr_id
     order by tido.tido_id;
  End;

  procedure SP_SRC_COMBO_TIPO_DOC(cur out sys_refcursor) as
  begin

    open cur for

         select tido.tido_id TIDO_ID,
                (tido.tido_id || ' - ' || tido.abreviatura || ' - ' ||
                 tido.descricao) TIPO_DOC
           from fep_tipos_documentos TIDO
       order by tido.tido_id;

  end;

  Procedure SP_INS_DOCS_RESTR_RAMO_ATIV(nLcrs_id    in number,
                                        nTido_id    in number,
                                        vDataInicio in varchar2,
                                        vDataFim    in varchar2,
                                        nDmTipo     in number) is
  vUsuario    VARCHAR2(200);
  begin

  BEGIN
  SELECT USER
  INTO vUsuario
  FROM Dual;
  EXCEPTION
     WHEN OTHERS THEN
        vUsuario := null;
  END;

  BEGIN

    INSERT INTO fep_tido_cond_restr  TILC (
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
          TIPO
        ) values (
           tilc_seq.NEXTVAL,
           nLcrs_id,
           nTido_id,
           to_date(vDataInicio,'DD,MM,RRRR'),
           to_date(vDataFim,'DD,MM,RRRR'),
           nDmTipo,
           to_date(sysdate,'DD,MM,RRRR'),
           vUsuario,
           to_date(sysdate,'DD,MM,RRRR'),
           vUsuario,
           'S',
           'S',
           1);
  END;
  COMMIT;

  end;

  Procedure SP_UPD_DOCS_RESTR_RAMO_ATIV(nTido_id    in number,
                                        nTilc_id    in number,
                                        nLcrs_id    in number,
                                        vDataInicio in varchar2,
                                        vDataFim    in varchar2,
                                        nDmTipo     in number,
                                        cur         out SYS_REFCURSOR) is
  vMesRetorno VARCHAR2(200);
  nCont       NUMBER(10);

  begin

  BEGIN
    SELECT COUNT(*)
      INTO nCont
      FROM fep_tido_cond_restr TILC
     WHERE TILC.LCRS_ID = nLcrs_id
       AND TILC.DM_TIPO = nDmTipo
       AND TILC.TIDO_ID = nTido_id;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      nCont := 0;

  END;

  IF (nCont > 0) THEN
    vMesRetorno := 'Erro: Tipo de condic?o e documento ja existem neste ramo!';

  ELSE
     IF (nCont = 0) THEN
        BEGIN
          UPDATE fep_tido_cond_restr TILC
             SET TILC.TIDO_ID     = nTido_id,
                 TILC.Data_Inicio = to_date(vDataInicio, 'DD/MM;RRRR'),
                 TILC.DATA_FIM    = to_date(vDataFim, 'DD/MM;RRRR'),
                 TILC.Dm_Tipo     = nDmTipo
           WHERE TILC.TILC_ID = nTilc_id;
        EXCEPTION
          WHEN OTHERS THEN
            vMesRetorno := 'Erro ao atualizar FEP_TIDO_COND_RESTR.';
        END;
        COMMIT;
     END IF;
  END IF;


  IF (vMesRetorno IS NULL) THEN
    vMesRetorno := 'Atualizac?o realizada com sucesso!';
  END IF;

  OPEN cur FOR
    SELECT vMesRetorno MesRetorno FROM DUAL;

  end;

  Procedure SP_DEL_DOCS_RESTR_RAMO_ATIV(nTilc_id in number) is
  begin

    DELETE FROM fep_tido_cond_restr TILC
     WHERE TILC.TILC_ID = nTilc_id;
  COMMIT;
  end;


  procedure SP_DOCS_DETALHE_RAMO_ATIV(nLcrs_ID in Number,
                                      nTido_ID in Number,
                                      cur      out sys_refcursor) as
  begin

  open cur for
    select (tido.tido_id || ' - ' || tido.abreviatura || ' - ' ||
           tido.descricao) TIPO_DOC,
           to_char(tilc.data_inclusao, 'DD/MM/RRRR') DATA_INCLUSAO,
           tilc.operador_inclusao OPER_INCLUSAO,
           to_char(tilc.data_atualizacao, 'DD/MM/RRRR') DATA_ATUALIZA,
           tilc.operador_atualizacao OPER_ATUALIZA,
           tilc.tilc_id,
           tilc.tido_id,
           lcrs.lcrs_id,
           to_char(tilc.data_inicio, 'DD/MM/RRRR') DATA_INICIO,
           to_char(tilc.data_fim, 'DD/MM/RRRR') DATA_FIM,
           decode(tilc.dm_tipo,
                  1,
                  'Todos',
                  2,
                  'Novo',
                  3,
                  'Regularizac?o',
                  4,
                  'Renovac?o') TIPO_SOLIC_DOC,
           tilc.dm_tipo dm_tipo
      from fep_condicoes_restricoes    cors,
           fep_listas_cond_restricoes  lcrs,
           fep_classes_cond_restricoes clcr,
           fep_setores                 seto,
           fep_ramos_atividades        raat,
           fep_tido_cond_restr         TILC,
           fep_tipos_documentos        TIDO
     where tilc.tido_id = nTido_ID
       and tilc.tido_id = tido.tido_id
       and tilc.lcrs_id = lcrs.lcrs_id
       and lcrs.lcrs_id = nLcrs_ID
       and lcrs.seto_id = seto.seto_id
       and lcrs.raat_id = raat.raat_id
       and lcrs.cors_id = cors.cors_id
       and cors.clcr_id = clcr.clcr_id
     order by tido.tido_id;
  end;


  PROCEDURE SP_DISPARA_GERACAO_PARECER(nAtan_id IN NUMBER,
                                       nPess_id IN NUMBER,
                                       cur      out sys_refcursor) IS
    nGera             NUMBER(1);
    vMessClasse       varchar2(2000);
    vMessInsert       varchar2(2000);
    vMesValidaGeracao varchar2(100);
    vObs              varchar2(300);
    nTipoImpacto      NUMBER(10);
    nDmGrupoAut       NUMBER(2);
    vImpLocal         VARCHAR2(5);
    nPess_Tecnico     NUMBER(10);
    nPrcr_id          NUMBER(10);
    vDmRevPend        VARCHAR2(1);

    vProcessoUltLicenca  varchar2(60);
    vSituacaoUltLicenca  varchar2(100);
    vDataVencUltLicenca  varchar2(10);
    vUltLicencaRenovavel varchar2(1);
    nUltimoDocuId        Number(10);
    nUltimoProcIdLic     Number(10);
    vTido_ult_lic        VARCHAR2(200);
    nTidoIdLicenca       NUMBER(20);
    nValorPagar          Number(13, 2);
    nValorPago           Number(13, 2);
    vHabBtnParecerPDF    varchar2(1);
    vHabBtnGerarLicenca  varchar2(1);
    nTido_id             Number(5);
    vDmPorte             varchar2(1);

    -- Retorna Mensagens do Cursor
    vMesUserNotFound           VARCHAR2(500);
    vMesEndNotFound            VARCHAR2(500);
    vMesCEPNotFound            VARCHAR2(500);
    vMesMunNotFound            VARCHAR2(500);
    vMesEmpreendNotFound       VARCHAR2(500);
    vMesCPFNotFound            VARCHAR2(500);
    vMesSetoAssinaNotFound     VARCHAR2(500);
    vMesSetoDuplicado          VARCHAR2(500);
    vMesDataEntradaMaior       VARCHAR2(500);
    vMesInfDocRevogado         VARCHAR2(500);
    vMesSitSuperaProc          VARCHAR2(500);
    vMesEmprLancAtivo          VARCHAR2(500);
    vMesEmpreendMunHabilita    VARCHAR2(500);
    vMesEmpreendConvenio       VARCHAR2(500);
    vMesSolicPrefeitura        VARCHAR2(500);
    vMesProblemaGeracao        VARCHAR2(500);
    vMesMaisDeUmRegFound       VARCHAR2(500);
    vMesDocGerDeclInvalido     VARCHAR2(500);
    vMesDocGerIndefInvalido    VARCHAR2(500);
    vMesErroAtualizaFepAux     VARCHAR2(500);
    vMesErroInclusaoFepAux     VARCHAR2(500);
    vMesInclCondRestrPar       VARCHAR2(500);
    vMesErroBuscaTecnico       VARCHAR2(500);
    vMesErroAutorizaTecnico    VARCHAR2(500);
    vMesExclRestrLic           VARCHAR2(500);
    vMesExclRestrGerAuto       VARCHAR2(500);
    vMesExclMotImpLocal        VARCHAR2(500);
    vMesExclParamPadroes       VARCHAR2(500);
    vMesExclProcCondRestr      VARCHAR2(500);
    vMesExclImprPostos         VARCHAR2(500);
    vMesGeraParecer            VARCHAR2(500);
    vMesCadPostoNotFound       VARCHAR2(500);
    vMesDocARevogar            VARCHAR2(500);
    vMesNivelSeqNotFound       VARCHAR2(500);
    vMesDataFimVigMaiorIni     VARCHAR2(500);
    vMesDataFimVigMaiorAtual   VARCHAR2(500);
    vMesDiasInstNotFound       VARCHAR2(500);
    vMesAreaPreservNotFound    VARCHAR2(500);
    vMesDescrTableContNotFound VARCHAR2(500);
    vMesTitleTableNotFound     VARCHAR2(500);
    vMesTableContamNotFound    VARCHAR2(500);
    vMesDistribNotFound        VARCHAR2(500);
    vMesDistribAPAEFound       VARCHAR2(500);
    vMesRespManutNotFound      VARCHAR2(500);
    vMesEstoqueNotFound        VARCHAR2(500);
    vMesTipoEquipNotFound      VARCHAR2(500);
    vMesQtdeEquipNotFound      VARCHAR2(500);
    vMesTanqueVencFound        VARCHAR2(500);
    vMesCond657Found           VARCHAR2(500);
    vMesCond657NotFound        VARCHAR2(500);
    vMesErroInclRestrEsp       VARCHAR2(500);
    vRevogacao                 VARCHAR2(500);
    vMesInfoCombNotFound       VARCHAR2(500);
    vMesErroDataVazamento      VARCHAR2(500);
    vMesErroAtualPostoComb     VARCHAR2(500);
    vMesItemEspOpcNivel0       VARCHAR2(500);
    vMesItemCrprOpcNivel0      VARCHAR2(500);
    vMesErroAtualPontuacao     VARCHAR2(500);
    vMesErroInclPostos         VARCHAR2(500);
    vMesErroUPDVencto          VARCHAR2(500);
    vMesErroUPDIdCRPR          VARCHAR2(500);
    vMesErroUPDEflu            VARCHAR2(500);
    vMesErroDelCRPRInfo        VARCHAR2(500);
    vMesErroMotivos            VARCHAR2(500);
    vMesErroDelParLic          VARCHAR2(500);
    vMesDelCRPR                VARCHAR2(500);
    vMesErroInclParLic         VARCHAR2(500);
    vMesErroInclAuxCRPR        VARCHAR2(500);
    vMesErroUPDPostos          VARCHAR2(500);
    vMesErroUPDAtiv            VARCHAR2(500);
    vMesErroDocRevoga          VARCHAR2(500);
    vMesBloqueto               VARCHAR2(500);
    vMesErroDocEmitido         VARCHAR2(500);
    vMesErroLanctoAtivo        VARCHAR2(500);
    vMesErroCPFNOTFound        VARCHAR2(500);
    vMesErroMaisPessoas        VARCHAR2(500);
    vMesErroCNPJ               VARCHAR2(500);
    vMesErroNoEstr             VARCHAR2(500);
    vMesErroLicenca            VARCHAR2(500);
    vMesEliminaRevoga          VARCHAR2(500);
    vMesGeracaoPDF             VARCHAR2(500);
    vMesErroCRPRNotFound       VARCHAR2(500);
    vFilePDFParecer            VARCHAR2(200);

    vVerifMensagem VARCHAR2(200);

    cur_ger_trab sys_refcursor;

    type t_cur_ger_trab is record(
      msg_1 VARCHAR2(200),
      msg_2 VARCHAR2(200));
    v_gera_trab t_cur_ger_trab;

    cur_val_ger sys_refcursor;

    type t_cur_val_ger is record(
      msg_1 VARCHAR2(200));
    v_val_ger t_cur_val_ger;

    cur_val_doc_sit sys_refcursor;

    type t_cur_val_doc_sit is record(
      msg_1 VARCHAR2(200),
      msg_2 VARCHAR2(200),
      msg_3 VARCHAR2(200),
      msg_4 VARCHAR2(300));
    v_val_doc_sit t_cur_val_doc_sit;

    cur_ger_emp sys_refcursor;

    type t_cur_ger is record(
      proc_id                   NUMBER(10),
      situacao                  VARCHAR2(30),
      data_entrada              VARCHAR2(10),
      processo                  VARCHAR2(200),
      atan_id                   NUMBER(10),
      nome_empreend             VARCHAR2(60),
      Raat_id                   NUMBER(7, 2),
      descr_raat                VARCHAR2(60),
      medida_porte              NUMBER(12, 4),
      dm_porte                  VARCHAR2(1),
      crme_id                   NUMBER(3),
      crme_abreviatura          VARCHAR2(12),
      crme_descricao            VARCHAR2(60),
      empreendedor              NUMBER(10),
      empreendedor_razao_social VARCHAR2(120),
      atan_muni_id              NUMBER(07),
      atan_municipio            VARCHAR2(50),
      atan_cod_tecnico_resp     NUMBER(10),
      atan_nome_tecnico_resp    VARCHAR2(120),
      proc_cod_tecnico_resp     NUMBER(10),
      proc_nome_tecnico_resp    VARCHAR2(120),
      requerente                NUMBER(10),
      requerente_nome           VARCHAR2(120),
      mes_entrada               NUMBER(02),
      ano_entrada               NUMBER(04),
      seto_id                   NUMBER(10),
      seto_sigla                VARCHAR2(20),
      seto_nome                 VARCHAR2(50),
      tido_id                   NUMBER(05),
      tido_abreviatura          VARCHAR2(06),
      tido_descricao            VARCHAR2(80),
      num_proc_empto            NUMBER(10),
      hab_list_proc             VARCHAR2(1),
      ultima_licenca            VARCHAR2(60),
      proc_ultima_licenca       VARCHAR2(60),
      sit_ultima_licenca        VARCHAR2(100),
      dt_vencto_ult_licenca     VARCHAR2(10),
      ult_licenca_renovavel     VARCHAR2(3),
      ultimo_doc_id             NUMBER(10),
      ultimo_proc_id_lic        NUMBER(10),
      tido_ult_lic              VARCHAR2(200),
      ult_lic_autom             VARCHAR2(3),
      proc_id_ult_licenca       NUMBER(10),
      num_proc_pendentes        NUMBER(10),
      existe_parecer            VARCHAR2(1),
      hab_btn_parecer           VARCHAR2(1),
      hab_btn_pdf               VARCHAR2(1),
      hab_gerar_licenca         VARCHAR2(1),
      num_dias_vencer           NUMBER(10),
      revoga_pendente           VARCHAR2(1),
      mess_dicopi               VARCHAR2(500),
      mess_seamb                VARCHAR2(500),
      mess_irriga               VARCHAR2(500),
      mess_analise              VARCHAR2(500),
      hab_campo_pend            VARCHAR2(1),
      mess_erro_upd             VARCHAR2(500),
      prcr_id                   NUMBER(10),
      num_funcionarios          NUMBER(10),
      existe_producao           VARCHAR2(1),
      DmGrupoAut                NUMBER(2),
      dm_origem                 NUMBER(1));
    v_gerar_parecer t_cur_ger;

    cur_ger_auto sys_refcursor;

    type t_cur_ger_auto is record(
      atan_id                   NUMBER(10),
      nome_empreendedor         VARCHAR2(131),
      cnpj                      NUMBER(14),
      cpf                       NUMBER(11),
      documento_estrangeiro     VARCHAR2(30),
      nome_empreend             VARCHAR2(71),
      data_inicio_funcionamento VARCHAR2(10),
      tilo_id                   VARCHAR2(10),
      descricao                 VARCHAR2(30),
      endereco                  VARCHAR2(120), --ALEXANDERSS CS_57085 10/07/2025
      muni_id                   NUMBER(7),
      nome_muni                 VARCHAR2(50),
      bairro                    VARCHAR2(60),  --ALEXANDERSS CS_57085 10/07/2025
      uf                        VARCHAR2(2),
      cep                       VARCHAR2(8),
      telefone_fixo             VARCHAR2(30),
      telefone_celular          VARCHAR2(30),
      email                     VARCHAR2(60),
      raat_id                   NUMBER(7, 2),
      raat_descricao            VARCHAR2(150),
      medida_porte              NUMBER(12, 4),
      criterio_medida           VARCHAR2(12),
      descricao_medida          VARCHAR2(60),
      porte                     VARCHAR2(15),
      potencial                 VARCHAR2(10),
      grupo_geracao             VARCHAR2(300),
      pess_id_responsavel       NUMBER(10),
      nome_tec_responsavel      VARCHAR2(140),
      impLocal                  VARCHAR2(5),
      obs                       VARCHAR2(120),
      data_inclusao             VARCHAR2(10),
      operador_inclusao         VARCHAR2(30),
      data_atualizacao          VARCHAR2(10),
      operador_atualizacao      VARCHAR2(30));
    v_ger_auto_emp t_cur_ger_auto;

  BEGIN
    --Valida a gerac?o dos pareceres
    SP_GERA_PARECER_TRABALHO(nAtan_id, cur_ger_trab);

    BEGIN
      LOOP
        FETCH cur_ger_trab
          INTO v_gera_trab;
        EXIT WHEN cur_ger_trab%NOTFOUND;
      END LOOP;
    END;

    vMessClasse := v_gera_trab.msg_1;
    vMessInsert := v_gera_trab.msg_2;

    IF (vMessClasse is not null) or (vMessInsert is not null) THEN

      OPEN CUR FOR
        SELECT vMessClasse                MESS_CLASSE,
               vMessInsert                MESS_INSERT,
               vMesValidaGeracao          MESS_VALIDA_GER,
               vObs                       MESS_OBS,
               vHabBtnParecerPDF          HAB_BTN_PDF,
               vHabBtnGerarLicenca        HAB_BTN_GERA_LIC,
               vMesUserNotFound           MESS_USER_NOT_FOUND,
               vMesEndNotFound            MESS_END_NOT_FOUND,
               vMesCEPNotFound            MESS_CEP_NOT_FOUND,
               vMesMunNotFound            MESS_MUN_NOT_FOUND,
               vMesEmpreendNotFound       MESS_EMPREEND_NOT_FOUND,
               vMesCPFNotFound            MESS_CPF_NOT_FOUND,
               vMesSetoAssinaNotFound     MESS_SETO_ASSINA_NOT_FOUND,
               vMesSetoDuplicado          MESS_SETO_DUPLICADO,
               vMesDataEntradaMaior       MESS_DATA_ENTRADA,
               vMesInfDocRevogado         MESS_INF_DOC_REVOGADO,
               vMesSitSuperaProc          MESS_SIT_SUPERA_PROC,
               vMesEmprLancAtivo          MESS_EMP_LANC_ATIVO,
               vMesEmpreendMunHabilita    MESS_EMP_MUN_HABILITA,
               vMesEmpreendConvenio       MESS_MUN_EMP_CONVENIO,
               vMesSolicPrefeitura        MESS_SOLIC_PREFEITURA,
               vMesProblemaGeracao        MESS_PROBLEMA_GERACAO,
               vMesMaisDeUmRegFound       MESS_MAIS_REG_FOUND,
               vMesDocGerDeclInvalido     MESS_DOC_GER_DECL_INVALIDO,
               vMesDocGerIndefInvalido    MESS_DOC_GER_INDEF_INVALIDO,
               vMesErroAtualizaFepAux     MESS_ERRO_UPDATE_FEP_AUX,
               vMesErroInclusaoFepAux     MESS_ERRO_INS_FEP_AUX,
               vMesInclCondRestrPar       MESS_INCL_COND_RESTR_PAR,
               vMesErroBuscaTecnico       MESS_ERRO_BUSCA_TECNICO,
               vMesErroAutorizaTecnico    MESS_ERRO_TECNICO,
               vMesExclRestrLic           MESS_EXCl_RESTR_LIC,
               vMesExclRestrGerAuto       MESS_AUTO_EXCL_GER_AUTO,
               vMesExclMotImpLocal        MESS_EXCL_MOT_IMP_LOCAL,
               vMesExclParamPadroes       MESS_EXCL_PARAM_PADROES,
               vMesExclProcCondRestr      MESS_EXCL_PROC_COND_RESTR,
               vMesExclImprPostos         MESS_EXCL_IMPR_POSTOS,
               vMesGeraParecer            MESS_GERA_PARECER,
               vMesCadPostoNotFound       MESS_CAD_POSTO_NOT_FOUND,
               vMesDocARevogar            MESS_DOC_REVOGAR,
               vMesNivelSeqNotFound       MESS_NIVEL_SEQ_NOT_FOUND,
               vMesDataFimVigMaiorIni     MESS_DATA_FIM_VIG_MAIOR_INI,
               vMesDataFimVigMaiorAtual   MESS_DATA_FIM_VIG_MAIOR_ATUAL,
               vMesDiasInstNotFound       MESS_DIAS_INST_NOT_FOUND,
               vMesAreaPreservNotFound    MESS_AREA_PRESERV_NOT_FOUND,
               vMesDescrTableContNotFound MESS_TABLE_CONT_NOT_FOUND,
               vMesTitleTableNotFound     MESS_TITLE_NOT_FOUND,
               vMesTableContamNotFound    MESS_TABLE_CONTAM_NOT_FOUND,
               vMesDistribNotFound        MESS_DISTRIB_NOT_FOUND,
               vMesDistribAPAEFound       MESS_DISTRIB_APAE_FOUND,
               vMesRespManutNotFound      MESS_RESP_MANUT_NOT_FOUND,
               vMesEstoqueNotFound        MESS_ESTOQUE_NOT_FOUND,
               vMesTipoEquipNotFound      MESS_TIPO_EQUI_NOT_FOUND,
               vMesQtdeEquipNotFound      MESS_QTDE_EQUIP_NOT_FOUND,
               vMesTanqueVencFound        MESS_TANQUE_VENC_FOUND,
               vMesCond657Found           MESS_COND657_FOUND,
               vMesCond657NotFound        MESS_COND657_NOT_FOUND,
               vMesErroInclRestrEsp       MESS_ERRO_INCL_RESTR_ESP,
               vRevogacao                 MESS_REVOGA,
               vMesInfoCombNotFound       MESS_INFO_COMB_NOT_FOUND,
               vMesErroDataVazamento      MESS_ERRO_DATA_VAZAMENTO,
               vMesErroAtualPostoComb     MESS_ERRO_ATUAL_POSTO_COMB,
               vMessClasse                MESS_ERRO_CLASSE,
               vMessInsert                MESS_ERRO_INSERT,
               vMesItemEspOpcNivel0       MESS_ITEM_ESP_NIVEL10,
               vMesItemCrprOpcNivel0      MESS_ITEM_CRPR_NIVEL10,
               vMesErroAtualPontuacao     MESS_ERRO_ATUAL_PUNTUACAO,
               vMesErroInclPostos         MESS_ERRO_INCL_POSTOS,
               vMesErroUPDVencto          MESS_ERRO_UPD_VECNTO,
               vMesErroUPDIdCRPR          MESS_ERRO_UPDATE_CRPR,
               vMesErroUPDEflu            MESS_ERRO_UPDATE_EFLU,
               vMesErroDelCRPRInfo        MESS_ERRO_DEL_CRPR,
               vMesErroMotivos            MESS_ERRO_MOTIVOS,
               vMesErroDelParLic          MESS_ERRO_DEL_PAR_LIC,
               vMesDelCRPR                MESS_DEL_CRPR,
               vMesErroInclParLic         MESS_ERRO_INS_PAR_LIC,
               vMesErroInclAuxCRPR        MESS_ERRO_INS_AUX_CRPR,
               vMesErroUPDPostos          MESS_ERRO_UPD_POSTOS,
               vMesErroUPDAtiv            MESS_ERRO_UPD_ATIV,
               vMesErroDocRevoga          MESS_ERRO_DOC_REVOGA,
               vMesBloqueto               MESS_BLOQUETO,
               vMesErroDocEmitido         MESS_ERRO_DOC_EMITIDO,
               vMesErroLanctoAtivo        MESS_ERRO_LANCTO_ATIVO,
               vMesErroCPFNOTFound        MESS_ERRO_CPF_NOT_FOUND,
               vMesErroMaisPessoas        MESS_ERRO_NUM_PESSOAS,
               vMesErroCNPJ               MESS_ERRO_CNPJ,
               vMesErroNoEstr             vMESS_ERRO_ESTR,
               vMesErroLicenca            MESS_ERRO_LICENCA,
               vMesEliminaRevoga          MESS_ELIMINA_REVOGA,
               vMesGeracaoPDF             MESS_GERA_PDF,
               vMesErroCRPRNotFound       MESS_ERRO_CRPR_NOT_FOUND,
               vFilePDFParecer            MESS_FILE_PDF_PARECER
          FROM DUAL;
      RETURN;
    ELSE

      -- Busca os campos para as demais procedures
      SP_GER_PROC_EMPREENDIMENTO(nAtan_id, cur_ger_emp);

      BEGIN
        LOOP
          FETCH cur_ger_emp
            INTO v_gerar_parecer;
          EXIT WHEN cur_ger_emp%NOTFOUND;
        END LOOP;
      END;

      -- Busca os demais campos utilizados pelas procedures chamadas
      SP_GER_AUTO_EMPREENDIMENTO(nAtan_id, cur_ger_auto);

      BEGIN
        LOOP
          FETCH cur_ger_auto
            INTO v_ger_auto_emp;
          EXIT WHEN cur_ger_auto%NOTFOUND;
        END LOOP;
      END;

      --Valida se ja existe parecer gerado
      SP_VERIFICA_PARECER_GERADO(v_gerar_parecer.prcr_id, cur_val_ger);
      BEGIN
        LOOP
          FETCH cur_val_ger
            INTO v_val_ger;
          EXIT WHEN cur_val_ger%NOTFOUND;
        END LOOP;
      END;

      vMesValidaGeracao := v_val_ger.msg_1;

      IF (vMesValidaGeracao is not null) THEN
        OPEN CUR FOR
          SELECT vMessClasse                MESS_CLASSE,
                 vMessInsert                MESS_INSERT,
                 vMesValidaGeracao          MESS_VALIDA_GER,
                 vObs                       MESS_OBS,
                 vHabBtnParecerPDF          HAB_BTN_PDF,
                 vHabBtnGerarLicenca        HAB_BTN_GERA_LIC,
                 vMesUserNotFound           MESS_USER_NOT_FOUND,
                 vMesEndNotFound            MESS_END_NOT_FOUND,
                 vMesCEPNotFound            MESS_CEP_NOT_FOUND,
                 vMesMunNotFound            MESS_MUN_NOT_FOUND,
                 vMesEmpreendNotFound       MESS_EMPREEND_NOT_FOUND,
                 vMesCPFNotFound            MESS_CPF_NOT_FOUND,
                 vMesSetoAssinaNotFound     MESS_SETO_ASSINA_NOT_FOUND,
                 vMesSetoDuplicado          MESS_SETO_DUPLICADO,
                 vMesDataEntradaMaior       MESS_DATA_ENTRADA,
                 vMesInfDocRevogado         MESS_INF_DOC_REVOGADO,
                 vMesSitSuperaProc          MESS_SIT_SUPERA_PROC,
                 vMesEmprLancAtivo          MESS_EMP_LANC_ATIVO,
                 vMesEmpreendMunHabilita    MESS_EMP_MUN_HABILITA,
                 vMesEmpreendConvenio       MESS_MUN_EMP_CONVENIO,
                 vMesSolicPrefeitura        MESS_SOLIC_PREFEITURA,
                 vMesProblemaGeracao        MESS_PROBLEMA_GERACAO,
                 vMesMaisDeUmRegFound       MESS_MAIS_REG_FOUND,
                 vMesDocGerDeclInvalido     MESS_DOC_GER_DECL_INVALIDO,
                 vMesDocGerIndefInvalido    MESS_DOC_GER_INDEF_INVALIDO,
                 vMesErroAtualizaFepAux     MESS_ERRO_UPDATE_FEP_AUX,
                 vMesErroInclusaoFepAux     MESS_ERRO_INS_FEP_AUX,
                 vMesInclCondRestrPar       MESS_INCL_COND_RESTR_PAR,
                 vMesErroBuscaTecnico       MESS_ERRO_BUSCA_TECNICO,
                 vMesErroAutorizaTecnico    MESS_ERRO_TECNICO,
                 vMesExclRestrLic           MESS_EXCl_RESTR_LIC,
                 vMesExclRestrGerAuto       MESS_AUTO_EXCL_GER_AUTO,
                 vMesExclMotImpLocal        MESS_EXCL_MOT_IMP_LOCAL,
                 vMesExclParamPadroes       MESS_EXCL_PARAM_PADROES,
                 vMesExclProcCondRestr      MESS_EXCL_PROC_COND_RESTR,
                 vMesExclImprPostos         MESS_EXCL_IMPR_POSTOS,
                 vMesGeraParecer            MESS_GERA_PARECER,
                 vMesCadPostoNotFound       MESS_CAD_POSTO_NOT_FOUND,
                 vMesDocARevogar            MESS_DOC_REVOGAR,
                 vMesNivelSeqNotFound       MESS_NIVEL_SEQ_NOT_FOUND,
                 vMesDataFimVigMaiorIni     MESS_DATA_FIM_VIG_MAIOR_INI,
                 vMesDataFimVigMaiorAtual   MESS_DATA_FIM_VIG_MAIOR_ATUAL,
                 vMesDiasInstNotFound       MESS_DIAS_INST_NOT_FOUND,
                 vMesAreaPreservNotFound    MESS_AREA_PRESERV_NOT_FOUND,
                 vMesDescrTableContNotFound MESS_TABLE_CONT_NOT_FOUND,
                 vMesTitleTableNotFound     MESS_TITLE_NOT_FOUND,
                 vMesTableContamNotFound    MESS_TABLE_CONTAM_NOT_FOUND,
                 vMesDistribNotFound        MESS_DISTRIB_NOT_FOUND,
                 vMesDistribAPAEFound       MESS_DISTRIB_APAE_FOUND,
                 vMesRespManutNotFound      MESS_RESP_MANUT_NOT_FOUND,
                 vMesEstoqueNotFound        MESS_ESTOQUE_NOT_FOUND,
                 vMesTipoEquipNotFound      MESS_TIPO_EQUI_NOT_FOUND,
                 vMesQtdeEquipNotFound      MESS_QTDE_EQUIP_NOT_FOUND,
                 vMesTanqueVencFound        MESS_TANQUE_VENC_FOUND,
                 vMesCond657Found           MESS_COND657_FOUND,
                 vMesCond657NotFound        MESS_COND657_NOT_FOUND,
                 vMesErroInclRestrEsp       MESS_ERRO_INCL_RESTR_ESP,
                 vRevogacao                 MESS_REVOGA,
                 vMesInfoCombNotFound       MESS_INFO_COMB_NOT_FOUND,
                 vMesErroDataVazamento      MESS_ERRO_DATA_VAZAMENTO,
                 vMesErroAtualPostoComb     MESS_ERRO_ATUAL_POSTO_COMB,
                 vMessClasse                MESS_ERRO_CLASSE,
                 vMessInsert                MESS_ERRO_INSERT,
                 vMesItemEspOpcNivel0       MESS_ITEM_ESP_NIVEL10,
                 vMesItemCrprOpcNivel0      MESS_ITEM_CRPR_NIVEL10,
                 vMesErroAtualPontuacao     MESS_ERRO_ATUAL_PUNTUACAO,
                 vMesErroInclPostos         MESS_ERRO_INCL_POSTOS,
                 vMesErroUPDVencto          MESS_ERRO_UPD_VECNTO,
                 vMesErroUPDIdCRPR          MESS_ERRO_UPDATE_CRPR,
                 vMesErroUPDEflu            MESS_ERRO_UPDATE_EFLU,
                 vMesErroDelCRPRInfo        MESS_ERRO_DEL_CRPR,
                 vMesErroMotivos            MESS_ERRO_MOTIVOS,
                 vMesErroDelParLic          MESS_ERRO_DEL_PAR_LIC,
                 vMesDelCRPR                MESS_DEL_CRPR,
                 vMesErroInclParLic         MESS_ERRO_INS_PAR_LIC,
                 vMesErroInclAuxCRPR        MESS_ERRO_INS_AUX_CRPR,
                 vMesErroUPDPostos          MESS_ERRO_UPD_POSTOS,
                 vMesErroUPDAtiv            MESS_ERRO_UPD_ATIV,
                 vMesErroDocRevoga          MESS_ERRO_DOC_REVOGA,
                 vMesBloqueto               MESS_BLOQUETO,
                 vMesErroDocEmitido         MESS_ERRO_DOC_EMITIDO,
                 vMesErroLanctoAtivo        MESS_ERRO_LANCTO_ATIVO,
                 vMesErroCPFNOTFound        MESS_ERRO_CPF_NOT_FOUND,
                 vMesErroMaisPessoas        MESS_ERRO_NUM_PESSOAS,
                 vMesErroCNPJ               MESS_ERRO_CNPJ,
                 vMesErroNoEstr             vMESS_ERRO_ESTR,
                 vMesErroLicenca            MESS_ERRO_LICENCA,
                 vMesEliminaRevoga          MESS_ELIMINA_REVOGA,
                 vMesGeracaoPDF             MESS_GERA_PDF,
                 vMesErroCRPRNotFound       MESS_ERRO_CRPR_NOT_FOUND,
                 vFilePDFParecer            MESS_FILE_PDF_PARECER
            FROM DUAL;
        RETURN;

      ELSE

        ----- Valida a situac?o do documento
        SP_VALIDA_GERAR_PARECER(v_gerar_parecer.atan_id, cur_val_doc_sit);

        BEGIN
          LOOP
            FETCH cur_val_doc_sit
              INTO v_val_doc_sit;
            EXIT WHEN cur_val_doc_sit%NOTFOUND;
          END LOOP;
        END;

        vObs := v_val_doc_sit.msg_4;

        IF (vObs is not null) THEN

          nGera := 0;

          OPEN CUR FOR
            SELECT vMessClasse                MESS_CLASSE,
                   vMessInsert                MESS_INSERT,
                   vMesValidaGeracao          MESS_VALIDA_GER,
                   vObs                       MESS_OBS,
                   vHabBtnParecerPDF          HAB_BTN_PDF,
                   vHabBtnGerarLicenca        HAB_BTN_GERA_LIC,
                   vMesUserNotFound           MESS_USER_NOT_FOUND,
                   vMesEndNotFound            MESS_END_NOT_FOUND,
                   vMesCEPNotFound            MESS_CEP_NOT_FOUND,
                   vMesMunNotFound            MESS_MUN_NOT_FOUND,
                   vMesEmpreendNotFound       MESS_EMPREEND_NOT_FOUND,
                   vMesCPFNotFound            MESS_CPF_NOT_FOUND,
                   vMesSetoAssinaNotFound     MESS_SETO_ASSINA_NOT_FOUND,
                   vMesSetoDuplicado          MESS_SETO_DUPLICADO,
                   vMesDataEntradaMaior       MESS_DATA_ENTRADA,
                   vMesInfDocRevogado         MESS_INF_DOC_REVOGADO,
                   vMesSitSuperaProc          MESS_SIT_SUPERA_PROC,
                   vMesEmprLancAtivo          MESS_EMP_LANC_ATIVO,
                   vMesEmpreendMunHabilita    MESS_EMP_MUN_HABILITA,
                   vMesEmpreendConvenio       MESS_MUN_EMP_CONVENIO,
                   vMesSolicPrefeitura        MESS_SOLIC_PREFEITURA,
                   vMesProblemaGeracao        MESS_PROBLEMA_GERACAO,
                   vMesMaisDeUmRegFound       MESS_MAIS_REG_FOUND,
                   vMesDocGerDeclInvalido     MESS_DOC_GER_DECL_INVALIDO,
                   vMesDocGerIndefInvalido    MESS_DOC_GER_INDEF_INVALIDO,
                   vMesErroAtualizaFepAux     MESS_ERRO_UPDATE_FEP_AUX,
                   vMesErroInclusaoFepAux     MESS_ERRO_INS_FEP_AUX,
                   vMesInclCondRestrPar       MESS_INCL_COND_RESTR_PAR,
                   vMesErroBuscaTecnico       MESS_ERRO_BUSCA_TECNICO,
                   vMesErroAutorizaTecnico    MESS_ERRO_TECNICO,
                   vMesExclRestrLic           MESS_EXCl_RESTR_LIC,
                   vMesExclRestrGerAuto       MESS_AUTO_EXCL_GER_AUTO,
                   vMesExclMotImpLocal        MESS_EXCL_MOT_IMP_LOCAL,
                   vMesExclParamPadroes       MESS_EXCL_PARAM_PADROES,
                   vMesExclProcCondRestr      MESS_EXCL_PROC_COND_RESTR,
                   vMesExclImprPostos         MESS_EXCL_IMPR_POSTOS,
                   vMesGeraParecer            MESS_GERA_PARECER,
                   vMesCadPostoNotFound       MESS_CAD_POSTO_NOT_FOUND,
                   vMesDocARevogar            MESS_DOC_REVOGAR,
                   vMesNivelSeqNotFound       MESS_NIVEL_SEQ_NOT_FOUND,
                   vMesDataFimVigMaiorIni     MESS_DATA_FIM_VIG_MAIOR_INI,
                   vMesDataFimVigMaiorAtual   MESS_DATA_FIM_VIG_MAIOR_ATUAL,
                   vMesDiasInstNotFound       MESS_DIAS_INST_NOT_FOUND,
                   vMesAreaPreservNotFound    MESS_AREA_PRESERV_NOT_FOUND,
                   vMesDescrTableContNotFound MESS_TABLE_CONT_NOT_FOUND,
                   vMesTitleTableNotFound     MESS_TITLE_NOT_FOUND,
                   vMesTableContamNotFound    MESS_TABLE_CONTAM_NOT_FOUND,
                   vMesDistribNotFound        MESS_DISTRIB_NOT_FOUND,
                   vMesDistribAPAEFound       MESS_DISTRIB_APAE_FOUND,
                   vMesRespManutNotFound      MESS_RESP_MANUT_NOT_FOUND,
                   vMesEstoqueNotFound        MESS_ESTOQUE_NOT_FOUND,
                   vMesTipoEquipNotFound      MESS_TIPO_EQUI_NOT_FOUND,
                   vMesQtdeEquipNotFound      MESS_QTDE_EQUIP_NOT_FOUND,
                   vMesTanqueVencFound        MESS_TANQUE_VENC_FOUND,
                   vMesCond657Found           MESS_COND657_FOUND,
                   vMesCond657NotFound        MESS_COND657_NOT_FOUND,
                   vMesErroInclRestrEsp       MESS_ERRO_INCL_RESTR_ESP,
                   vRevogacao                 MESS_REVOGA,
                   vMesInfoCombNotFound       MESS_INFO_COMB_NOT_FOUND,
                   vMesErroDataVazamento      MESS_ERRO_DATA_VAZAMENTO,
                   vMesErroAtualPostoComb     MESS_ERRO_ATUAL_POSTO_COMB,
                   vMessClasse                MESS_ERRO_CLASSE,
                   vMessInsert                MESS_ERRO_INSERT,
                   vMesItemEspOpcNivel0       MESS_ITEM_ESP_NIVEL10,
                   vMesItemCrprOpcNivel0      MESS_ITEM_CRPR_NIVEL10,
                   vMesErroAtualPontuacao     MESS_ERRO_ATUAL_PUNTUACAO,
                   vMesErroInclPostos         MESS_ERRO_INCL_POSTOS,
                   vMesErroUPDVencto          MESS_ERRO_UPD_VECNTO,
                   vMesErroUPDIdCRPR          MESS_ERRO_UPDATE_CRPR,
                   vMesErroUPDEflu            MESS_ERRO_UPDATE_EFLU,
                   vMesErroDelCRPRInfo        MESS_ERRO_DEL_CRPR,
                   vMesErroMotivos            MESS_ERRO_MOTIVOS,
                   vMesErroDelParLic          MESS_ERRO_DEL_PAR_LIC,
                   vMesDelCRPR                MESS_DEL_CRPR,
                   vMesErroInclParLic         MESS_ERRO_INS_PAR_LIC,
                   vMesErroInclAuxCRPR        MESS_ERRO_INS_AUX_CRPR,
                   vMesErroUPDPostos          MESS_ERRO_UPD_POSTOS,
                   vMesErroUPDAtiv            MESS_ERRO_UPD_ATIV,
                   vMesErroDocRevoga          MESS_ERRO_DOC_REVOGA,
                   vMesBloqueto               MESS_BLOQUETO,
                   vMesErroDocEmitido         MESS_ERRO_DOC_EMITIDO,
                   vMesErroLanctoAtivo        MESS_ERRO_LANCTO_ATIVO,
                   vMesErroCPFNOTFound        MESS_ERRO_CPF_NOT_FOUND,
                   vMesErroMaisPessoas        MESS_ERRO_NUM_PESSOAS,
                   vMesErroCNPJ               MESS_ERRO_CNPJ,
                   vMesErroNoEstr             vMESS_ERRO_ESTR,
                   vMesErroLicenca            MESS_ERRO_LICENCA,
                   vMesEliminaRevoga          MESS_ELIMINA_REVOGA,
                   vMesGeracaoPDF             MESS_GERA_PDF,
                   vMesErroCRPRNotFound       MESS_ERRO_CRPR_NOT_FOUND,
                   vFilePDFParecer            MESS_FILE_PDF_PARECER
              FROM DUAL;
        ELSE

          nGera := 1;

          --nDmGrupoAut := v_gerar_parecer.DmGrupoAut; descomentar PRM
          nDmGrupoAut := 2; --excluir

          IF (nDmGrupoAut = 2) THEN

            vImpLocal            := v_ger_auto_emp.impLocal;
            nPrcr_id             := v_gerar_parecer.prcr_id;
            nTido_id             := v_gerar_parecer.tido_id;
            vDmRevPend           := v_gerar_parecer.revoga_pendente;
            vSituacaoUltLicenca  := v_gerar_parecer.sit_ultima_licenca;
            vDataVencUltLicenca  := v_gerar_parecer.dt_vencto_ult_licenca;
            nUltimoDocuId        := v_gerar_parecer.ultimo_doc_id;
            vTido_ult_lic        := v_gerar_parecer.tido_ult_lic;
            vUltLicencaRenovavel := v_gerar_parecer.ult_licenca_renovavel;
            vDmPorte             := v_gerar_parecer.dm_porte;
            vHabBtnParecerPDF    := v_gerar_parecer.hab_btn_pdf;
            vHabBtnGerarLicenca  := v_gerar_parecer.hab_gerar_licenca;
            nTidoIdLicenca       := v_gerar_parecer.ultima_licenca;

            SP_VALIDA_RAMO_GERA_PARECER(nAtan_id,
                                        v_gerar_parecer.Raat_id,
                                        nPrcr_id,
                                        v_gerar_parecer.proc_id,
                                        nTido_id,
                                        v_gerar_parecer.data_entrada,
                                        nPess_id,
                                        vDmRevPend,
                                        nDmGrupoAut,
                                        vSituacaoUltLicenca,
                                        vDataVencUltLicenca,
                                        v_gerar_parecer.num_dias_vencer,
                                        vImpLocal,
                                        nTipoImpacto, --verificar
                                        nUltimoDocuId,
                                        nTidoIdLicenca, --verificar
                                        vUltLicencaRenovavel,
                                        nGera,
                                        v_ger_auto_emp.muni_id,
                                        v_gerar_parecer.dm_origem,
                                        v_gerar_parecer.nome_empreend,
                                        vDmPorte,
                                        nValorPagar,
                                        nValorPago,
                                        vHabBtnParecerPDF,
                                        vHabBtnGerarLicenca,
                                        vMesUserNotFound,
                                        vMesEndNotFound,
                                        vMesCEPNotFound,
                                        vMesMunNotFound,
                                        vMesEmpreendNotFound,
                                        vMesCPFNotFound,
                                        vMesSetoAssinaNotFound,
                                        vMesSetoDuplicado,
                                        vMesDataEntradaMaior,
                                        vMesInfDocRevogado,
                                        vMesSitSuperaProc,
                                        vMesEmprLancAtivo,
                                        vMesEmpreendMunHabilita,
                                        vMesEmpreendConvenio,
                                        vMesSolicPrefeitura,
                                        vMesProblemaGeracao,
                                        vMesMaisDeUmRegFound,
                                        vMesDocGerDeclInvalido,
                                        vMesDocGerIndefInvalido,
                                        vMesErroAtualizaFepAux,
                                        vMesErroInclusaoFepAux,
                                        vMesInclCondRestrPar,
                                        vMesErroBuscaTecnico,
                                        vMesErroAutorizaTecnico,
                                        vMesExclRestrLic,
                                        vMesExclRestrGerAuto,
                                        vMesExclMotImpLocal,
                                        vMesExclParamPadroes,
                                        vMesExclProcCondRestr,
                                        vMesExclImprPostos,
                                        vMesGeraParecer,
                                        vMesCadPostoNotFound,
                                        vMesDocARevogar,
                                        vMesNivelSeqNotFound,
                                        vMesDataFimVigMaiorIni,
                                        vMesDataFimVigMaiorAtual,
                                        vMesDiasInstNotFound,
                                        vMesAreaPreservNotFound,
                                        vMesDescrTableContNotFound,
                                        vMesTitleTableNotFound,
                                        vMesTableContamNotFound,
                                        vMesDistribNotFound,
                                        vMesDistribAPAEFound,
                                        vMesRespManutNotFound,
                                        vMesEstoqueNotFound,
                                        vMesTipoEquipNotFound,
                                        vMesQtdeEquipNotFound,
                                        vMesTanqueVencFound,
                                        vMesCond657Found,
                                        vMesCond657NotFound,
                                        vMesErroInclRestrEsp,
                                        vRevogacao,
                                        vMesInfoCombNotFound,
                                        vMesErroDataVazamento,
                                        vMesErroAtualPostoComb,
                                        vMessClasse,
                                        vMessInsert,
                                        vMesItemEspOpcNivel0,
                                        vMesItemCrprOpcNivel0,
                                        vMesErroAtualPontuacao,
                                        vMesErroInclPostos,
                                        vMesErroUPDVencto,
                                        vMesErroUPDIdCRPR,
                                        vMesErroUPDEflu,
                                        vMesErroDelCRPRInfo,
                                        vMesErroMotivos,
                                        vMesErroDelParLic,
                                        vMesDelCRPR,
                                        vMesErroInclParLic,
                                        vMesErroInclAuxCRPR,
                                        vMesErroUPDPostos,
                                        vMesErroUPDAtiv,
                                        vMesErroDocRevoga,
                                        vMesBloqueto,
                                        vMesErroDocEmitido,
                                        vMesErroLanctoAtivo,
                                        vMesErroCPFNOTFound,
                                        vMesErroMaisPessoas,
                                        vMesErroCNPJ,
                                        vMesErroNoEstr,
                                        vMesErroLicenca,
                                        vMesEliminaRevoga,
                                        vMesGeracaoPDF,
                                        vMesErroCRPRNotFound,
                                        vFilePDFParecer);

            OPEN CUR FOR
              SELECT vMessClasse                MESS_CLASSE,
                     vMessInsert                MESS_INSERT,
                     vMesValidaGeracao          MESS_VALIDA_GER,
                     vObs                       MESS_OBS,
                     vHabBtnParecerPDF          HAB_BTN_PDF,
                     vHabBtnGerarLicenca        HAB_BTN_GERA_LIC,
                     vMesUserNotFound           MESS_USER_NOT_FOUND,
                     vMesEndNotFound            MESS_END_NOT_FOUND,
                     vMesCEPNotFound            MESS_CEP_NOT_FOUND,
                     vMesMunNotFound            MESS_MUN_NOT_FOUND,
                     vMesEmpreendNotFound       MESS_EMPREEND_NOT_FOUND,
                     vMesCPFNotFound            MESS_CPF_NOT_FOUND,
                     vMesSetoAssinaNotFound     MESS_SETO_ASSINA_NOT_FOUND,
                     vMesSetoDuplicado          MESS_SETO_DUPLICADO,
                     vMesDataEntradaMaior       MESS_DATA_ENTRADA,
                     vMesInfDocRevogado         MESS_INF_DOC_REVOGADO,
                     vMesSitSuperaProc          MESS_SIT_SUPERA_PROC,
                     vMesEmprLancAtivo          MESS_EMP_LANC_ATIVO,
                     vMesEmpreendMunHabilita    MESS_EMP_MUN_HABILITA,
                     vMesEmpreendConvenio       MESS_MUN_EMP_CONVENIO,
                     vMesSolicPrefeitura        MESS_SOLIC_PREFEITURA,
                     vMesProblemaGeracao        MESS_PROBLEMA_GERACAO,
                     vMesMaisDeUmRegFound       MESS_MAIS_REG_FOUND,
                     vMesDocGerDeclInvalido     MESS_DOC_GER_DECL_INVALIDO,
                     vMesDocGerIndefInvalido    MESS_DOC_GER_INDEF_INVALIDO,
                     vMesErroAtualizaFepAux     MESS_ERRO_UPDATE_FEP_AUX,
                     vMesErroInclusaoFepAux     MESS_ERRO_INS_FEP_AUX,
                     vMesInclCondRestrPar       MESS_INCL_COND_RESTR_PAR,
                     vMesErroBuscaTecnico       MESS_ERRO_BUSCA_TECNICO,
                     vMesErroAutorizaTecnico    MESS_ERRO_TECNICO,
                     vMesExclRestrLic           MESS_EXCl_RESTR_LIC,
                     vMesExclRestrGerAuto       MESS_AUTO_EXCL_GER_AUTO,
                     vMesExclMotImpLocal        MESS_EXCL_MOT_IMP_LOCAL,
                     vMesExclParamPadroes       MESS_EXCL_PARAM_PADROES,
                     vMesExclProcCondRestr      MESS_EXCL_PROC_COND_RESTR,
                     vMesExclImprPostos         MESS_EXCL_IMPR_POSTOS,
                     vMesGeraParecer            MESS_GERA_PARECER,
                     vMesCadPostoNotFound       MESS_CAD_POSTO_NOT_FOUND,
                     vMesDocARevogar            MESS_DOC_REVOGAR,
                     vMesNivelSeqNotFound       MESS_NIVEL_SEQ_NOT_FOUND,
                     vMesDataFimVigMaiorIni     MESS_DATA_FIM_VIG_MAIOR_INI,
                     vMesDataFimVigMaiorAtual   MESS_DATA_FIM_VIG_MAIOR_ATUAL,
                     vMesDiasInstNotFound       MESS_DIAS_INST_NOT_FOUND,
                     vMesAreaPreservNotFound    MESS_AREA_PRESERV_NOT_FOUND,
                     vMesDescrTableContNotFound MESS_TABLE_CONT_NOT_FOUND,
                     vMesTitleTableNotFound     MESS_TITLE_NOT_FOUND,
                     vMesTableContamNotFound    MESS_TABLE_CONTAM_NOT_FOUND,
                     vMesDistribNotFound        MESS_DISTRIB_NOT_FOUND,
                     vMesDistribAPAEFound       MESS_DISTRIB_APAE_FOUND,
                     vMesRespManutNotFound      MESS_RESP_MANUT_NOT_FOUND,
                     vMesEstoqueNotFound        MESS_ESTOQUE_NOT_FOUND,
                     vMesTipoEquipNotFound      MESS_TIPO_EQUI_NOT_FOUND,
                     vMesQtdeEquipNotFound      MESS_QTDE_EQUIP_NOT_FOUND,
                     vMesTanqueVencFound        MESS_TANQUE_VENC_FOUND,
                     vMesCond657Found           MESS_COND657_FOUND,
                     vMesCond657NotFound        MESS_COND657_NOT_FOUND,
                     vMesErroInclRestrEsp       MESS_ERRO_INCL_RESTR_ESP,
                     vRevogacao                 MESS_REVOGA,
                     vMesInfoCombNotFound       MESS_INFO_COMB_NOT_FOUND,
                     vMesErroDataVazamento      MESS_ERRO_DATA_VAZAMENTO,
                     vMesErroAtualPostoComb     MESS_ERRO_ATUAL_POSTO_COMB,
                     vMessClasse                MESS_ERRO_CLASSE,
                     vMessInsert                MESS_ERRO_INSERT,
                     vMesItemEspOpcNivel0       MESS_ITEM_ESP_NIVEL10,
                     vMesItemCrprOpcNivel0      MESS_ITEM_CRPR_NIVEL10,
                     vMesErroAtualPontuacao     MESS_ERRO_ATUAL_PUNTUACAO,
                     vMesErroInclPostos         MESS_ERRO_INCL_POSTOS,
                     vMesErroUPDVencto          MESS_ERRO_UPD_VECNTO,
                     vMesErroUPDIdCRPR          MESS_ERRO_UPDATE_CRPR,
                     vMesErroUPDEflu            MESS_ERRO_UPDATE_EFLU,
                     vMesErroDelCRPRInfo        MESS_ERRO_DEL_CRPR,
                     vMesErroMotivos            MESS_ERRO_MOTIVOS,
                     vMesErroDelParLic          MESS_ERRO_DEL_PAR_LIC,
                     vMesDelCRPR                MESS_DEL_CRPR,
                     vMesErroInclParLic         MESS_ERRO_INS_PAR_LIC,
                     vMesErroInclAuxCRPR        MESS_ERRO_INS_AUX_CRPR,
                     vMesErroUPDPostos          MESS_ERRO_UPD_POSTOS,
                     vMesErroUPDAtiv            MESS_ERRO_UPD_ATIV,
                     vMesErroDocRevoga          MESS_ERRO_DOC_REVOGA,
                     vMesBloqueto               MESS_BLOQUETO,
                     vMesErroDocEmitido         MESS_ERRO_DOC_EMITIDO,
                     vMesErroLanctoAtivo        MESS_ERRO_LANCTO_ATIVO,
                     vMesErroCPFNOTFound        MESS_ERRO_CPF_NOT_FOUND,
                     vMesErroMaisPessoas        MESS_ERRO_NUM_PESSOAS,
                     vMesErroCNPJ               MESS_ERRO_CNPJ,
                     vMesErroNoEstr             vMESS_ERRO_ESTR,
                     vMesErroLicenca            MESS_ERRO_LICENCA,
                     vMesEliminaRevoga          MESS_ELIMINA_REVOGA,
                     vMesGeracaoPDF             MESS_GERA_PDF,
                     vMesErroCRPRNotFound       MESS_ERRO_CRPR_NOT_FOUND,
                     vFilePDFParecer            MESS_FILE_PDF_PARECER
                FROM DUAL;

          END IF;

        END IF;

      END IF;

    END IF;
  END;

  PROCEDURE SP_VERIFICA_PARECER_GERADO(nPrcr_id IN NUMBER,
                                       c2       out sys_refcursor) IS

    CURSOR c1 IS
      SELECT COUNT(*)
        FROM fep_aux_cond_restr_par_lic acrl
       WHERE acrl.prcr_id = nPrcr_id;

    nContador NUMBER(10);
    v_mess    VARCHAR2(100);

  BEGIN

    OPEN c1;
    FETCH c1
      INTO nContador;
    CLOSE c1;

    IF nContador > 0 THEN
      v_mess := 'Ja existe Parecer Gerado para o Processo. Deseja regerar?';
    END IF;

    OPEN c2 FOR
      SELECT v_mess MesValidaGeracao FROM DUAL;
  END;

  PROCEDURE SP_VALIDA_GERAR_PARECER(nAtan_id NUMBER, cur out sys_refcursor) IS

    vObs              VARCHAR2(300);
    vMessClasse       varchar2(2000);
    vMessInsert       varchar2(2000);
    vMesValidaGeracao varchar2(100);

  BEGIN
    -- Validac?es para os Ramos do Grupo de Gerac?o 1
    vObs := FC_ATAN_LIC_INDEFERIMENTO(nAtan_id);

    IF vObs IS NOT NULL THEN
      OPEN CUR FOR
        SELECT null MessClasse,
               null MessInsert,
               null MesValidaGeracao,
               vObs OBS
          FROM DUAL;
    ELSE
      OPEN CUR FOR
        SELECT null MessClasse,
               null MessInsert,
               null MesValidaGeracao,
               vObs OBS
          FROM DUAL
         WHERE 1 = 2;

    END IF;

  END;

  FUNCTION FC_ATAN_LIC_INDEFERIMENTO(nAtan_id Number) RETURN VARCHAR2 IS
    vDocumento VARCHAR2(20);
    vSituacao  VARCHAR2(20);
    vTipo_doc  VARCHAR2(80);
    vMsg       VARCHAR2(300);

    CURSOR proc IS
      SELECT docu.numero || '/' || docu.ano documento,
             DECODE(docu.situacao,
                    'B',
                    'Em Trabalho',
                    'T',
                    'Para Assinatura') situacao,
             tido.tido_id || ' - ' || tido.descricao tipo_doc
        FROM fep_processos              proc,
             fep_responsabilidades      resp,
             fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
       WHERE resp.atan_id = nAtan_id
         AND proc.resp_id = resp.resp_id
         AND proc.proc_id = docu.proc_id
         AND docu.situacao IN ('B', 'T')
         AND docu.tido_id = tido.tido_id
         AND tido.sucd_id = sucd.sucd_id
         AND sucd.cldo_id = 5;

    CURSOR prdc IS
      SELECT docu.numero || '/' || docu.ano documento,
             DECODE(docu.situacao,
                    'B',
                    'Em Trabalho',
                    'T',
                    'Para Assinatura') situacao,
             tido.tido_id || ' - ' || tido.descricao tipo_doc
        FROM fep_processos_documentos   prdc,
             fep_empreend_processos     epro,
             fep_responsabilidades      resp,
             fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
       WHERE epro.resp_id = resp.resp_id
         AND resp.atan_id = nAtan_id
         AND epro.proc_id = prdc.proc_id
         AND prdc.docu_id = docu.docu_id
         AND docu.situacao IN ('B', 'T')
         AND docu.tido_id = tido.tido_id
         AND tido.sucd_id = sucd.sucd_id
         AND sucd.cldo_id = 5;

  BEGIN
    --  chamado de suporte 19536
    --    alterado por Anilice em 15/02/2008
    --    solicito consistencia que nenhum doclic possa ser colocado para assinatura
    --    se houver qualquer tipo de indeferimento para assinatura ou em vigor no empreendimento
    --    classe do documento 5

    OPEN proc;
    FETCH proc
      INTO vDocumento, vSituacao, vTipo_doc;
    CLOSE proc;
    IF vDocumento IS NOT NULL THEN
      RETURN('Erro: O empreendimento ' || nAtan_id ||
             ' possui um documento ' || vTipo_doc || ' com situac?o ' ||
             vSituacao || '.');
    END IF;

    OPEN prdc;
    FETCH prdc
      INTO vDocumento, vSituacao, vTipo_doc;
    CLOSE prdc;
    IF vDocumento IS NOT NULL THEN
      RETURN('Erro: O empreendimento ' || nAtan_id ||
             ' possui um documento ' || vTipo_doc || ' com situac?o ' ||
             vSituacao || '.');
    END IF;
    RETURN(NULL);
  END;

  PROCEDURE SP_VALIDA_RAMO_GERA_PARECER(nAtan_id                   Number,
                                        nRaat_id                   Number,
                                        nPrcr_id                   IN OUT NUMBER,
                                        nProc_id                   Number,
                                        nTido_id                   IN OUT NUMBER,
                                        vDataEntrada               VARCHAR2,
                                        nPess_id                   Number,
                                        vDmRevPend                 IN OUT VARCHAR2,
                                        nDmGrupoAut                IN OUT NUMBER,
                                        vSituacaoUltLicenca        IN OUT VARCHAR2,
                                        vDataVencUltLicenca        IN OUT VARCHAR2,
                                        nNroDiasVencer             NUMBER,
                                        vImpLocal                  IN OUT VARCHAR2,
                                        nTipoImpacto               IN OUT NUMBER,
                                        nUltimoDocuId              IN OUT NUMBER,
                                        nTidoIdLicenca             IN OUT NUMBER, --ver
                                        vUltLicencaRenovavel       IN OUT VARCHAR2,
                                        nGera                      IN NUMBER,
                                        nMuni_id                   IN NUMBER,
                                        nOrigem                    IN NUMBER,
                                        vDescrAtan                 IN VARCHAR2,
                                        vDmPorte                   IN OUT VARCHAR2,
                                        nValorPagar                IN OUT NUMBER,
                                        nValorPago                 IN OUT NUMBER,
                                        vHabBtnParecerPDF          IN OUT VARCHAR2,
                                        vHabBtnGerarLicenca        IN OUT VARCHAR2,
                                        vMesUserNotFound           IN OUT VARCHAR2,
                                        vMesEndNotFound            IN OUT VARCHAR2,
                                        vMesCEPNotFound            IN OUT VARCHAR2,
                                        vMesMunNotFound            IN OUT VARCHAR2,
                                        vMesEmpreendNotFound       IN OUT VARCHAR2,
                                        vMesCPFNotFound            IN OUT VARCHAR2,
                                        vMesSetoAssinaNotFound     IN OUT VARCHAR2,
                                        vMesSetoDuplicado          IN OUT VARCHAR2,
                                        vMesDataEntradaMaior       IN OUT VARCHAR2,
                                        vMesInfDocRevogado         IN OUT VARCHAR2,
                                        vMesSitSuperaProc          IN OUT VARCHAR2,
                                        vMesEmprLancAtivo          IN OUT VARCHAR2,
                                        vMesEmpreendMunHabilita    IN OUT VARCHAR2,
                                        vMesEmpreendConvenio       IN OUT VARCHAR2,
                                        vMesSolicPrefeitura        IN OUT VARCHAR2,
                                        vMesProblemaGeracao        IN OUT VARCHAR2,
                                        vMesMaisDeUmRegFound       IN OUT VARCHAR2,
                                        vMesDocGerDeclInvalido     IN OUT VARCHAR2,
                                        vMesDocGerIndefInvalido    IN OUT VARCHAR2,
                                        vMesErroAtualizaFepAux     IN OUT VARCHAR2,
                                        vMesErroInclusaoFepAux     IN OUT VARCHAR2,
                                        vMesInclCondRestrPar       IN OUT VARCHAR2,
                                        vMesErroBuscaTecnico       IN OUT VARCHAR2,
                                        vMesErroAutorizaTecnico    IN OUT VARCHAR2,
                                        vMesExclRestrLic           IN OUT VARCHAR2,
                                        vMesExclRestrGerAuto       IN OUT VARCHAR2,
                                        vMesExclMotImpLocal        IN OUT VARCHAR2,
                                        vMesExclParamPadroes       IN OUT VARCHAR2,
                                        vMesExclProcCondRestr      IN OUT VARCHAR2,
                                        vMesExclImprPostos         IN OUT VARCHAR2,
                                        vMesGeraParecer            IN OUT VARCHAR2,
                                        vMesCadPostoNotFound       IN OUT VARCHAR2,
                                        vMesDocARevogar            IN OUT VARCHAR2,
                                        vMesNivelSeqNotFound       IN OUT VARCHAR2,
                                        vMesDataFimVigMaiorIni     IN OUT VARCHAR2,
                                        vMesDataFimVigMaiorAtual   IN OUT VARCHAR2,
                                        vMesDiasInstNotFound       IN OUT VARCHAR2,
                                        vMesAreaPreservNotFound    IN OUT VARCHAR2,
                                        vMesDescrTableContNotFound IN OUT VARCHAR2,
                                        vMesTitleTableNotFound     IN OUT VARCHAR2,
                                        vMesTableContamNotFound    IN OUT VARCHAR2,
                                        vMesDistribNotFound        IN OUT VARCHAR2,
                                        vMesDistribAPAEFound       IN OUT VARCHAR2,
                                        vMesRespManutNotFound      IN OUT VARCHAR2,
                                        vMesEstoqueNotFound        IN OUT VARCHAR2,
                                        vMesTipoEquipNotFound      IN OUT VARCHAR2,
                                        vMesQtdeEquipNotFound      IN OUT VARCHAR2,
                                        vMesTanqueVencFound        IN OUT VARCHAR2,
                                        vMesCond657Found           IN OUT VARCHAR2,
                                        vMesCond657NotFound        IN OUT VARCHAR2,
                                        vMesErroInclRestrEsp       IN OUT VARCHAR2,
                                        vRevogacao                 IN OUT VARCHAR2,
                                        vMesInfoCombNotFound       IN OUT VARCHAR2,
                                        vMesErroDataVazamento      IN OUT VARCHAR2,
                                        vMesErroAtualPostoComb     IN OUT VARCHAR2,
                                        vMessClasse                IN OUT VARCHAR2,
                                        vMessInsert                IN OUT VARCHAR2,
                                        vMesItemEspOpcNivel0       IN OUT VARCHAR2,
                                        vMesItemCrprOpcNivel0      IN OUT VARCHAR2,
                                        vMesErroAtualPontuacao     IN OUT VARCHAR2,
                                        vMesErroInclPostos         IN OUT VARCHAR2,
                                        vMesErroUPDVencto          IN OUT VARCHAR2,
                                        vMesErroUPDIdCRPR          IN OUT VARCHAR2,
                                        vMesErroUPDEflu            IN OUT VARCHAR2,
                                        vMesErroDelCRPRInfo        IN OUT VARCHAR2,
                                        vMesErroMotivos            IN OUT VARCHAR2,
                                        vMesErroDelParLic          IN OUT VARCHAR2,
                                        vMesDelCRPR                IN OUT VARCHAR2,
                                        vMesErroInclParLic         IN OUT VARCHAR2,
                                        vMesErroInclAuxCRPR        IN OUT VARCHAR2,
                                        vMesErroUPDPostos          IN OUT VARCHAR2,
                                        vMesErroUPDAtiv            IN OUT VARCHAR2,
                                        vMesErroDocRevoga          IN OUT VARCHAR2,
                                        vMesBloqueto               IN OUT VARCHAR2,
                                        vMesErroDocEmitido         IN OUT VARCHAR2,
                                        vMesErroLanctoAtivo        IN OUT VARCHAR2,
                                        vMesErroCPFNOTFound        IN OUT VARCHAR2,
                                        vMesErroMaisPessoas        IN OUT VARCHAR2,
                                        vMesErroCNPJ               IN OUT VARCHAR2,
                                        vMesErroNoEstr             IN OUT VARCHAR2,
                                        vMesErroLicenca            IN OUT VARCHAR2,
                                        vMesEliminaRevoga          IN OUT VARCHAR2,
                                        vMesGeracaoPDF             IN OUT VARCHAR2,
                                        vMesErroCRPRNotFound       IN OUT VARCHAR2,
                                        vFilePDFParecer            IN OUT VARCHAR2) IS

    v_ralert2n00 NUMBER;
    dDataAtual   DATE;
    vUsuario     VARCHAR2(30);
    --nTido_id       NUMBER(5); -- Parecer para LO ou LU
    nLcrs_id           NUMBER(10);
    nCors_id           NUMBER(10);
    nCrpr_id           NUMBER(10);
    nPess_Tecnico      NUMBER(10) := NULL;
    nContador          NUMBER(10);
    nIncluidos         NUMBER(5) := 0;
    nInclui            NUMBER(1) := 0;
    vCodigoPonto       VARCHAR2(6) := NULL;
    vLcrsDescricao     VARCHAR2(2000) := NULL;
    nSequencia         NUMBER(5);
    nSequenciaSub      NUMBER(5);
    vDocumentoRevogado VARCHAR2(120) := NULL;
    nTidoRevogado      NUMBER(5) := NULL;
    nDocuRevogado      NUMBER(10) := NULL;
    dDataFimVigAtual   DATE := NULL;
    vOperAtualizacao   VARCHAR2(30) := NULL;
    --vRevogacao         VARCHAR2(2000) := NULL;
    vCorsDescricao    VARCHAR2(2000) := NULL;
    vPeriodoValidade  VARCHAR2(60) := NULL;
    vPorte            VARCHAR2(1);
    nIncluiItem       NUMBER(3);
    dDataFimVigNovo   DATE := NULL;
    vMesLaudo         VARCHAR2(9) := NULL;
    nMesEmissao       NUMBER(2);
    vDataPrazo        VARCHAR2(10) := NULL;
    nAreaImplantada   NUMBER(9, 2) := NULL;
    vEquipamento      VARCHAR2(200) := NULL;
    vEstocagemPressao VARCHAR2(100) := NULL;
    nPess_distrib     NUMBER(10) := NULL;
    nPess_EPAE        NUMBER(10) := NULL;
    nPess_manut       NUMBER(10) := NULL;
    nPess_codigo      NUMBER(10) := NULL;
    vRazaoSocialDistr VARCHAR2(140) := NULL;
    nMes              NUMBER(2);
    nAno_A            NUMBER(4);
    nAno_B            NUMBER(4);
    vMesProjeto       VARCHAR2(9);
    vMesImplantacao   VARCHAR2(9);
    nDm_vazamento     NUMBER(1);
    dDataProjeto      DATE;
    dDataImplantacao  DATE;
    nDm_Monitoramento NUMBER(2);
    vNroLaudos        VARCHAR2(10) := NULL;
    vPeriodMon1       VARCHAR2(10) := NULL;
    vPeriodMon2       VARCHAR2(15) := NULL;
    vDescricao838     VARCHAR2(2000) := NULL;
    nDias648          NUMBER(3) := NULL;
    vMsgTido          VARCHAR2(100) := NULL;
    vMensagem         VARCHAR2(100);
    vErro             VARCHAR2(03) := 'NO';

    cur_reg sys_refcursor;

    type t_cursor is record(
      msg_1 VARCHAR2(200),
      msg_2 VARCHAR2(200));
    v_retorno_cursor t_cursor;

    CURSOR c2 IS
      SELECT cors.sequencia,
             cors.sequencia_sub,
             lcrs.lcrs_id lcrs_id,
             cors.cors_id cors_id,
             TO_NUMBER(NULL) crpr_id,
             cors.descricao
        FROM fep_listas_cond_restricoes lcrs, fep_condicoes_restricoes cors
       WHERE lcrs.raat_id = nRaat_id
         AND lcrs.cors_id = cors.cors_id
         AND lcrs.data_fim_validade IS NULL
         AND cors.data_fim_validade IS NULL
         AND lcrs.tipo = 1 -- Padrao
         AND NOT EXISTS (SELECT NULL
                FROM fep_aux_cond_restr_especiais cree
               WHERE cree.lcrs_id = lcrs.lcrs_id
                 AND cree.tipo_cond_restr = 2
                 AND cree.prcr_id = nPrcr_id) -- excluir condic?o
      UNION ALL
      SELECT cors.sequencia,
             cors.sequencia_sub,
             lcrs.lcrs_id lcrs_id,
             cors.cors_id cors_id,
             TO_NUMBER(NULL) crpr_id,
             cors.descricao
        FROM fep_listas_cond_restricoes lcrs, fep_condicoes_restricoes cors
       WHERE lcrs.raat_id = nRaat_id
         AND lcrs.cors_id = cors.cors_id
         AND lcrs.data_fim_validade IS NULL
         AND cors.data_fim_validade IS NULL
         AND lcrs.tipo = 2 -- Opcional
         AND cors.cors_id NOT IN (112) -- Revogado
         AND EXISTS (SELECT NULL
                FROM fep_aux_cond_restr_especiais cree
               WHERE cree.lcrs_id = lcrs.lcrs_id
                 AND cree.tipo_cond_restr = 1
                 AND cree.dm_ignorar = 'N'
                 AND cree.prcr_id = nPrcr_id) -- incluir condic?o
      UNION ALL
      SELECT cors.sequencia,
             cors.sequencia_sub,
             lcrs.lcrs_id lcrs_id,
             cors.cors_id cors_id,
             TO_NUMBER(NULL) crpr_id,
             vRevogacao
        FROM fep_listas_cond_restricoes lcrs,
             fep_condicoes_restricoes   cors,
             fep_aux_proc_cond_restr    prcr
       WHERE lcrs.raat_id = nRaat_id
         AND lcrs.cors_id = cors.cors_id
         AND prcr.prcr_id = nPrcr_id
         AND prcr.docu_id_revogado IS NOT NULL
         AND cors.cors_id = 112 -- Documento Revogado
         AND EXISTS (SELECT NULL
                FROM fep_aux_cond_restr_especiais cree
               WHERE cree.lcrs_id = lcrs.lcrs_id
                 AND cree.tipo_cond_restr = 1
                 AND cree.dm_ignorar = 'N'
                 AND cree.prcr_id = nPrcr_id) -- incluir condic?o
      UNION ALL
      SELECT crpr.sequencia,
             crpr.sequencia_sub,
             TO_NUMBER(NULL) lcrs_id,
             TO_NUMBER(NULL) cors_id,
             crpr.crpr_id crpr_id,
             crpr.descricao
        FROM fep_aux_cond_restr_proc crpr -- Condic?es especificas do processo
       WHERE crpr.prcr_id = nPrcr_id
       ORDER BY 1, 2;

    -- Acha o numero do documento revogado
    CURSOR c3 IS
      SELECT docu.docu_id,
             docu.tido_id,
             cors.descricao,
             SUBSTR(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(INITCAP(tido.descricao),
                                                                                            ' Fora Rs',
                                                                                            ' Fora RS'),
                                                                                    ' Iii',
                                                                                    ' III'),
                                                                            ' Ii',
                                                                            ' II'),
                                                                    ' Iv',
                                                                    ' IV'),
                                                            ' E ',
                                                            ' e '),
                                                    'Eia/',
                                                    'EIA/'),
                                            ' Para ',
                                            ' para '),
                                    ' De ',
                                    ' de '),
                            ' Do ',
                            ' do ') || ' N? ' ||
                    (LPAD(docu.numero, 5, '0') || '/' ||
                     LTRIM(RTRIM(TO_CHAR(docu.ano, '0000'))) || '-DL, de ' ||
                     SUBSTR(TO_CHAR(docu.data_inicio_vigencia, 'dd/mm/rrrr'),
                            1,
                            10)),
                    1,
                    120) documento,
             TRUNC(docu.data_fim_vigencia),
             docu.operador_atualizacao
        FROM fep_documentos             docu,
             fep_aux_proc_cond_restr    prcr,
             fep_listas_cond_restricoes lcrs,
             fep_condicoes_restricoes   cors,
             fep_tipos_documentos       tido
       WHERE prcr.prcr_id = nPrcr_id
         AND lcrs.cors_id = cors.cors_id
         AND prcr.docu_id_revogado = docu.docu_id
         AND docu.tido_id = tido.tido_id
         AND lcrs.cors_id = 112;

    -- Acha a data de fim de vigencia para cors_id = 116
    CURSOR c41 IS
      SELECT prcr.data_fim_vigencia
        FROM fep_aux_proc_cond_restr prcr
       WHERE prcr.prcr_id = nPrcr_id;

    -- Acha a descric?o para a Tabela de Contaminac?o cors_id = 838
    CURSOR c42 IS
      SELECT prcr.descricao_838
        FROM fep_aux_proc_cond_restr prcr
       WHERE prcr.prcr_id = nPrcr_id;

    -- prazo para implantac?o Bacia Contenc?o cors_id = 648
    CURSOR c43 IS
      SELECT prcr.nro_dias_648
        FROM fep_aux_proc_cond_restr prcr
       WHERE prcr.prcr_id = nPrcr_id;

    CURSOR C5 IS
      SELECT LOWER(SUBSTR(cgrf.rv_meaning, 1, 9)) mes_laudo_desc,
             atan.area_preservacao area,
             ptcb.descr_equipamento equipamento,
             ptcb.estocagem_pressao estocagem_pressao,
             ptcb.pess_id_distribuidora codigo_distrib,
             ptcb.pess_id_EPAE codigo_EPAE,
             ptcb.pess_id_manutencao codigo_manut,
             ptcb.dm_adeq_vazamento dm_vazamento,
             ptcb.dm_monitoramento_agua dm_monitoramento
        FROM fep_postos_combustiveis ptcb,
             fep_aux_proc_cond_restr prcr,
             cg_ref_codes            cgrf,
             fep_atividades_antropicas atan
       WHERE ptcb.atan_id = nAtan_id
         AND prcr.prcr_id = nPrcr_id
         AND ptcb.mes_laudo = cgrf.rv_low_value
         and ptcb.atan_id   = atan.atan_id
         AND cgrf.rv_domain = 'DM_MES';

    CURSOR C6 IS
      SELECT SUBSTR(pess.razao_social || ' pelo(s) telefone(s) ' ||
                    pess.telefone_fixo_contato,
                    1,
                    120) distribuidora_epae
        FROM fep_pessoas pess
       WHERE pess.pess_id = nPess_codigo;

    CURSOR C61 IS
      SELECT pess.razao_social
        FROM fep_pessoas pess
       WHERE pess.pess_id = nPess_codigo;

    CURSOR C7 IS
      SELECT SUBSTR(cgrf.rv_meaning, 1, 9) mes_projeto
        FROM cg_ref_codes cgrf
       WHERE cgrf.rv_low_value = nMes
         AND cgrf.rv_domain = 'DM_MES';

    CURSOR c8 IS
      SELECT COUNT(*)
        FROM fep_postos_combustiveis  ptcb,
             fep_tanques_combustiveis tqcb,
             fep_aux_proc_cond_restr  prcr
       WHERE prcr.prcr_id = nPrcr_id
         AND ptcb.atan_id = nAtan_id
         AND ptcb.ptcb_id = tqcb.ptcb_id
         AND tqcb.data_remocao IS NULL
         AND (tqcb.data_desativacao IS NULL OR
             (tqcb.data_desativacao IS NOT NULL AND
             NVL(tqcb.dm_tipo_troca, 0) != 2))
         AND (DECODE(tqcb.data_inf_troca,
                     NULL,
                     ADD_MONTHS(tqcb.data_instalacao - 1, 360),
                     tqcb.data_inf_troca) BETWEEN
             prcr.data_inicio_vigencia AND prcr.data_fim_vigencia);

  BEGIN

    SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;

    SP_VALIDA_RAMOS(nAtan_id,
                    nProc_id,
                    nTido_id,
                    vDataEntrada,
                    nPess_id,
                    nDmGrupoAut,
                    vDmRevPend,
                    vSituacaoUltLicenca,
                    nNroDiasVencer,
                    nPrcr_id,
                    vImpLocal,
                    nTipoImpacto,
                    vUsuario,
                    nPess_Tecnico, --ver de onde buscar
                    vMesUserNotFound,
                    vMesEndNotFound,
                    vMesCEPNotFound,
                    vMesMunNotFound,
                    vMesEmpreendNotFound,
                    vMesCPFNotFound,
                    vMesSetoAssinaNotFound,
                    vMesSetoDuplicado,
                    vMesDataEntradaMaior,
                    vMesInfDocRevogado,
                    vMesSitSuperaProc,
                    vMesEmprLancAtivo,
                    vMesEmpreendMunHabilita,
                    vMesEmpreendConvenio,
                    vMesSolicPrefeitura,
                    vErro);

    IF (vErro = 'NO') THEN

      SP_INSERT_UPDATE_PRCR(nAtan_id,
                            nRaat_id,
                            nPrcr_id,
                            nProc_id,
                            nTido_id,
                            2,
                            nUltimoDocuId,
                            vSituacaoUltLicenca,
                            vDmRevPend,
                            vImpLocal,
                            nTidoIdLicenca,
                            vUltLicencaRenovavel,
                            nDmGrupoAut,
                            vHabBtnParecerPDF,
                            vHabBtnGerarLicenca,
                            vMesProblemaGeracao,
                            vMesMaisDeUmRegFound,
                            vMesDocGerDeclInvalido,
                            vMesDocGerIndefInvalido,
                            vMesErroAtualizaFepAux,
                            vMesErroInclusaoFepAux,
                            vMesErroBuscaTecnico,
                            vMesErroAutorizaTecnico,
                            vErro); --- atualiza  fep_aux_proc_cond_restr
    END IF;

    IF (nGera = 1) AND (vErro = 'NO') THEN

      SP_EXCLUI_REGERACAO(nPrcr_id,
                          nDmGrupoAut,
                          nRaat_id,
                          vMesExclRestrLic,
                          vMesExclRestrGerAuto,
                          vMesExclMotImpLocal,
                          vMesExclParamPadroes,
                          vMesExclProcCondRestr,
                          vMesExclImprPostos,
                          vMesErroDelCRPRInfo,
                          vErro);

    END IF;

    IF (nGera = 1) AND (nTido_id IN (1220, 1221, 1243)) AND (vErro = 'NO') THEN

      SP_GERAR_OUTROS_DOCS(nAtan_id,
                           nMuni_id,
                           nProc_id,
                           nPrcr_id,
                           nRaat_id,
                           nDmGrupoAut,
                           nTido_id,
                           dDataAtual,
                           nOrigem,
                           nIncluidos,
                           nTipoImpacto,
                           vImpLocal,
                           vDmPorte,
                           nValorPagar,
                           nValorPago,
                           vMesErroDocRevoga,
                           vMesBloqueto,
                           vMesErroDocEmitido,
                           vMesErroLanctoAtivo,
                           vMesErroCPFNOTFound,
                           vMesErroMaisPessoas,
                           vMesErroCNPJ,
                           vMesErroNoEstr,
                           vMesErroLicenca,
                           vMesGeraParecer,
                           vMesErroUPDVencto,
                           vMesErroUPDIdCRPR,
                           vMesErroUPDEflu,
                           vMesErroDelCRPRInfo,
                           vMesErroMotivos,
                           vMesErroDelParLic,
                           vMesDelCRPR,
                           vMesErroInclParLic,
                           vMesErroInclAuxCRPR,
                           vMesErroUPDAtiv,
                           vDescrAtan,
                           vErro);

    END IF;

    IF (nGera = 1) AND (nTido_id NOT IN (1220, 1221, 1243)) AND
       (vErro = 'NO') THEN

      SP_VALIDA_GERACAO_SEAMB(nAtan_id,
                              nPrcr_id,
                              nRaat_id,
                              nProc_id,
                              0,
                              vDmPorte,
                              nValorPagar,
                              nValorPago,
                              nTido_id,
                              vImpLocal,
                              vMesErroDocRevoga,
                              vMesBloqueto,
                              vMesErroDocEmitido,
                              vMesErroLanctoAtivo,
                              vMesErroCPFNOTFound,
                              vMesErroMaisPessoas,
                              vMesErroCNPJ,
                              vMesErroNoEstr,
                              vMesErroLicenca,
                              vMesCadPostoNotFound,
                              vMesDocARevogar,
                              vMesNivelSeqNotFound,
                              vMesDataFimVigMaiorIni,
                              vMesDataFimVigMaiorAtual,
                              vMesDiasInstNotFound,
                              vMesAreaPreservNotFound,
                              vMesDescrTableContNotFound,
                              vMesTitleTableNotFound,
                              vMesTableContamNotFound,
                              vMesDistribNotFound,
                              vMesDistribAPAEFound,
                              vMesRespManutNotFound,
                              vMesEstoqueNotFound,
                              vMesTipoEquipNotFound,
                              vMesQtdeEquipNotFound,
                              vMesTanqueVencFound,
                              vMesCond657Found,
                              vMesCond657NotFound,
                              vMesEliminaRevoga,
                              vErro);

      IF vErro = 'NO' THEN
        -- insere o nome da atividade
        SP_NOME_ATIVIDADE(nAtan_id,
                          nPrcr_id,
                          vDescrAtan,
                          vMesErroUPDAtiv,
                          vErro);

      END IF;
      -- Verifica de tem documento a revogar informado
      OPEN c3;
      FETCH c3
        INTO nDocuRevogado, nTidoRevogado, vCorsDescricao, vDocumentoRevogado, dDataFimVigAtual, vOperAtualizacao;
      CLOSE c3;
      IF nDocuRevogado IS NOT NULL THEN
        IF vOperAtualizacao = 'DIS-CONSEMA 038/2003' AND
           dDataFimVigAtual = TO_DATE('24/07/2004', 'dd/mm/rrrr') THEN
          vRevogacao := 'esta licenca REVOGA a Licenca ' ||
                        vDocumentoRevogado ||
                        ', cujo prazo de validade foi prorrogado para 24/07/2004, atraves do ' ||
                        ' Art. 11, paragrafo unico, da Resoluc?o Consema 038/2003, de 18/07/2003.';
        ELSE
          vRevogacao := REPLACE(vCorsDescricao,
                                '[LIC_ANTERIOR]',
                                vDocumentoRevogado);
        END IF;

        IF vErro = 'NO' THEN
          -- inclui condic?o revogac?o
          SP_INSERT_CORS_ID(112,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;

      END IF;

      IF (vErro = 'NO') THEN
        SP_INCLUI_OPCIONAIS_SEAMB(nAtan_id,
                                  nPrcr_id,
                                  nRaat_id,
                                  vMesErroInclRestrEsp,
                                  vMesInfoCombNotFound,
                                  vMesErroDelCRPRInfo,
                                  vMesErroInclAuxCRPR,
                                  vMesErroDataVazamento,
                                  vMesErroAtualPostoComb,
                                  vErro);

      END IF;

      IF (vErro = 'NO') THEN
        -- placa de licenciamento
        SP_VERIFICA_PLACAS(nPrcr_id,
                           nRaat_id,
                           vDmPorte,
                           vMesErroInclRestrEsp,
                           vErro);
      END IF;

      IF (vErro = 'NO') THEN
        -- Datas de Vigencia da Licenca
        SP_VIGENCIA_DOCUMENTO(nProc_id,
                              nPrcr_id,
                              nRaat_id,
                              nUltimoDocuId,
                              nDmGrupoAut,
                              null,
                              null,
                              null,
                              null,
                              null,
                              vErro,
                              vMesErroUPDVencto,
                              vMesErroUPDIdCRPR,
                              vMesErroUPDEflu,
                              vDataVencUltLicenca,
                              vMesDataFimVigMaiorIni,
                              vMesDataFimVigMaiorAtual);

        OPEN c41;
        FETCH c41
          INTO dDataFimVigNovo;
        CLOSE c41;
      END IF;

      vPeriodoValidade := FC_PERIODO_VIGENCIA(nPrcr_id);

      -- Verifica se tem troca de tanques a fazer
      OPEN c8;
      FETCH c8
        INTO nContador;
      CLOSE c8;

      IF nContador > 0 THEN

        IF vErro = 'NO' THEN
          -- Tanques a trocar
          SP_INSERT_CORS_ID(657,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;

      END IF;

      IF vErro = 'NO' THEN
        SP_VALIDA_GERACAO_SEAMB(nAtan_id,
                                nPrcr_id,
                                nRaat_id,
                                nProc_id,
                                1,
                                vDmPorte,
                                nValorPagar,
                                nValorPago,
                                nTido_id,
                                vImpLocal,
                                vMesErroDocRevoga,
                                vMesBloqueto,
                                vMesErroDocEmitido,
                                vMesErroLanctoAtivo,
                                vMesErroCPFNOTFound,
                                vMesErroMaisPessoas,
                                vMesErroCNPJ,
                                vMesErroNoEstr,
                                vMesErroLicenca,
                                vMesCadPostoNotFound,
                                vMesDocARevogar,
                                vMesNivelSeqNotFound,
                                vMesDataFimVigMaiorIni,
                                vMesDataFimVigMaiorAtual,
                                vMesDiasInstNotFound,
                                vMesAreaPreservNotFound,
                                vMesDescrTableContNotFound,
                                vMesTitleTableNotFound,
                                vMesTableContamNotFound,
                                vMesDistribNotFound,
                                vMesDistribAPAEFound,
                                vMesRespManutNotFound,
                                vMesEstoqueNotFound,
                                vMesTipoEquipNotFound,
                                vMesQtdeEquipNotFound,
                                vMesTanqueVencFound,
                                vMesCond657Found,
                                vMesCond657NotFound,
                                vMesEliminaRevoga,
                                vErro);
      END IF;

      OPEN c2;
      LOOP
        FETCH c2
          INTO nSequencia, nSequenciaSub, nLcrs_id, nCors_id, nCrpr_id, vLcrsDescricao;
        IF c2%notfound THEN
          CLOSE c2;
          EXIT;
        ELSE

          IF nCors_id = 116 THEN
            -- Data de Fim de Vigencia
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[DATA_FIM]',
                                      FC_DISPLAY_DATA_VIGENCIA(dDataFimVigNovo));
          END IF;

          IF nCors_id = 189 THEN
            -- Periodo de Validade
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[PERIODO_VALIDADE]',
                                      vPeriodoValidade);
          END IF;

          OPEN c5;
          FETCH c5
            INTO vMesLaudo, nAreaImplantada, vEquipamento, vEstocagemPressao, nPess_distrib, nPess_EPAE, nPess_manut, nDm_vazamento, nDm_Monitoramento;
          CLOSE c5;

          -- 641 laudos de analise dos pocos de monitoramento
          -- 663 relatorio de manutenc?o dos dispositivos de controle dos vapores
          -- 665 comprovantes de entrega das embalagens pos-consumo ao coletor
          -- 666 comprovac?o da destinac?o final (Nota Fiscal ou MTR) para os demais residuos gerados
          -- 669 relatorio tecnico assinado por responsavel tecnico habilitado
          -- 676 relatorio tecnico e fotografico da area de preservac?o implantada
          -- 812 relatorio tecnico de inspec?o e manutenc?o periodica GNV

          IF nCors_id IN (641, 663, 665, 666, 669, 676, 812, 834, 916, 919) THEN
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[MES_LAUDO]',
                                      vMesLaudo);
          END IF;

          IF nCors_id IN (637, 639, 641, 691) THEN
            IF nDm_Monitoramento IN (1, 3) THEN
              -- trimestral
              vNroLaudos  := '04(quatro)';
              vPeriodMon1 := 'trimestral';
              vPeriodMon2 := 'trimestralmente';
            END IF;
            IF nDm_Monitoramento IN (2, 4) THEN
              -- semestral
              vNroLaudos  := '02(dois)';
              vPeriodMon1 := 'semestral';
              vPeriodMon2 := 'semestralmente';
            END IF;
            vLcrsDescricao := REPLACE(REPLACE(REPLACE(vLcrsDescricao,
                                                      '[NRO_LAUDOS]',
                                                      vNroLaudos),
                                              '[PERIOD_MON1]',
                                              vPeriodMon1),
                                      '[PERIOD_MON2]',
                                      vPeriodMon2);
          END IF;

          IF nCors_id IN (676, 697) THEN
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[AREA]',
                                      LTRIM(RTRIM(REPLACE(TO_CHAR(nAreaImplantada,
                                                                  '9999990.99'),
                                                          '.',
                                                          ','))));
          END IF;

          -- 648 prazo para implantac?o Bacia Contenc?o
          IF nCors_id IN (648) THEN
            OPEN c43;
            FETCH c43
              INTO nDias648;
            CLOSE c43;
            vDataPrazo     := SUBSTR(TO_CHAR(SYSDATE + nDias648,
                                             'dd/mm/rrrr'),
                                     1,
                                     10);
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[DATA_PRAZO]',
                                      vDataPrazo);
          END IF;

          -- 673 prazo para apresentar comprovante de treinamento de pessoal
          IF nCors_id IN (673) THEN
            vDataPrazo     := SUBSTR(TO_CHAR(SYSDATE + 90, 'dd/mm/rrrr'),
                                     1,
                                     10);
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[DATA_PRAZO]',
                                      vDataPrazo);
          END IF;

          -- 803 estocagem e pressao - GNC
          IF nCors_id IN (803) THEN
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[ESTOCAGEM_PRESSAO]',
                                      vEstocagemPressao);
          END IF;

          -- 804 equipamento GNC
          -- 808 equipamento GNV
          IF nCors_id IN (804, 808) THEN
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[EQUIPAMENTO]',
                                      vEquipamento);
          END IF;

          -- 651 Distribuidora
          -- 652 EPAE
          -- 821 no caso de emergencia dever?o ser acionados
          IF nCors_id IN (651, 652, 821) THEN
            IF nPess_distrib IS NOT NULL THEN
              nPess_codigo := nPess_distrib;
            ELSE
              nPess_codigo := nPess_EPAE;
            END IF;
            OPEN c6;
            FETCH c6
              INTO vRazaoSocialDistr;
            CLOSE c6;
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[DISTRIB_EPAE]',
                                      vRazaoSocialDistr);
          END IF;

          IF nCors_id IN (812, 834, 839) THEN
            nPess_codigo := nPess_manut;
            OPEN c61;
            FETCH c61
              INTO vRazaoSocialDistr;
            CLOSE c61;
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[EMPR_MANUT]',
                                      vRazaoSocialDistr);
          END IF;

          -- 642  projeto de adequac?o do sistema de detecc?o de vazamentos NBR 13784
          IF nCors_id IN (642) THEN

            IF (vErro = 'NO') THEN
              SP_DATAS_SEAMB_642(nAtan_id,
                                 dDataProjeto,
                                 dDataImplantacao,
                                 1,
                                 vMesErroDataVazamento,
                                 vMesErroAtualPostoComb,
                                 vErro);
            END IF;

            nMes   := TO_NUMBER(TO_CHAR(dDataProjeto, 'mm'));
            nAno_A := TO_NUMBER(TO_CHAR(dDataProjeto, 'rrrr'));
            OPEN c7;
            FETCH c7
              INTO vMesProjeto;
            CLOSE c7;

            nMes   := TO_NUMBER(TO_CHAR(dDataImplantacao, 'mm'));
            nAno_B := TO_NUMBER(TO_CHAR(dDataImplantacao, 'rrrr'));
            OPEN c7;
            FETCH c7
              INTO vMesImplantacao;
            CLOSE c7;

            vLcrsDescricao := REPLACE(REPLACE(REPLACE(REPLACE(vLcrsDescricao,
                                                              '[MES_PROJETO]',
                                                              vMesProjeto),
                                                      '[MES_IMPLANTACAO]',
                                                      vMesImplantacao),
                                              '[ANO_PROJETO]',
                                              nAno_A),
                                      '[ANO_IMPLANTACAO]',
                                      nAno_B);
          END IF;

          IF nCors_id IN (838) THEN
            OPEN c42;
            FETCH c42
              INTO vDescricao838;
            CLOSE c42;
            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[DESCR_TAB_CONTAMINACAO]',
                                      vDescricao838);
          END IF;

          -- 657 programac?o de troca de tanques
          IF nCors_id IN (657) THEN

            vLcrsDescricao := REPLACE(vLcrsDescricao,
                                      '[TROCA_TANQUE]',
                                      FC_TROCA_TANQUE(nPrcr_id, nAtan_id));
          END IF;

          IF (vErro = 'NO') THEN
            BEGIN
              INSERT INTO fep_aux_cond_restr_par_lic
                (ACRL_ID,
                 PRCR_ID,
                 LCRS_ID,
                 CORS_DESCRICAO,
                 DATA_INCLUSAO,
                 OPERADOR_INCLUSAO,
                 DATA_ATUALIZACAO,
                 OPERADOR_ATUALIZACAO,
                 CRPR_ID)
              VALUES
                (acrl_seq.nextval,
                 nPrcr_id,
                 nLcrs_id,
                 vLcrsDescricao,
                 dDataAtual,
                 vUsuario,
                 dDataAtual,
                 vUsuario,
                 nCrpr_id);
              COMMIT;
              nIncluidos := nIncluidos + 1;

            EXCEPTION
              WHEN OTHERS THEN

                vMesInclCondRestrPar := ('Erro: ( Inclusao em fep_aux_cond_restr_par_lic ) ' ||
                                        SQLCODE || '-' || SQLERRM);
                vErro                := 'YES';
            END;

          END IF;

        END IF;
      END LOOP;

      --------------------------------------------------------------------------------------
      IF (vErro = 'NO') THEN
        -- Incluida a Tabela Auxiliar em 28/10/2008 ( Malu )
        SP_GERA_PARECER_TRABALHO(nAtan_id, cur_reg);

      END IF;

      BEGIN
        LOOP
          FETCH cur_reg
            INTO v_retorno_cursor;
          EXIT WHEN cur_reg%NOTFOUND;
        END LOOP;
      END;

      vMessClasse := v_retorno_cursor.msg_1;
      vMessInsert := v_retorno_cursor.msg_2;

      -- Verifica se tem Sub Nivel Opcional sem o Nivel 0
      -- Se encontrar incluir o Nivel zero, conforme solicitac?o da Regina em 07/11/2008
      nIncluiItem := 0;

      IF (vMessClasse IS NULL) AND (vMessInsert IS NULL) THEN

        SP_INCLUI_SUB_AXGE(nAtan_id,
                           nPrcr_id,
                           nIncluiItem,
                           vMesItemEspOpcNivel0,
                           vMesItemCrprOpcNivel0);

      END IF;

      IF nIncluiItem > 0 THEN
        -- regera a tabela auxiliar
        SP_GERA_PARECER_TRABALHO(nAtan_id, cur_reg);

        BEGIN
          LOOP
            FETCH cur_reg
              INTO v_retorno_cursor;
            EXIT WHEN cur_reg%NOTFOUND;
          END LOOP;
        END;

        vMessClasse := v_retorno_cursor.msg_1;
        vMessInsert := v_retorno_cursor.msg_2;

      END IF;

      --------------------------------------------------------------------------------------

      IF nIncluidos > 0 THEN
        -- verifica a pontuacao
        SP_PONTUACAO_COND_RESTR(nPrcr_id, vMesErroAtualPontuacao);

      END IF;

      --------------------------------------------------------------------------------------

    END IF;

    IF nGera = 1 THEN
      IF nIncluidos > 0 THEN
        IF (vMesErroAtualPontuacao IS NULL) THEN
          -- verif se tem parametros contaminac?o p/Imprimir
          SP_GERAR_CONTAM_POSTOS(nPrcr_id,
                                 vMesErroInclPostos,
                                 vMesErroUPDPostos,
                                 vErro);

        END IF;
      END IF;
    END IF;

    /*
    IF (vErro = 'NO') THEN

      SP_GERAR_DISPLAY_PDF(nGera,
                           nIncluidos,
                           nProc_id,
                           nPrcr_id,
                           nRaat_id,
                           nTido_id,
                           vMesGeracaoPDF,
                           vMesErroCRPRNotFound,
                           vHabBtnParecerPDF,
                           vHabBtnGerarLicenca,
                           vFilePDFParecer);

    END IF; */

  END;

  PROCEDURE SP_VALIDA_RAMOS(nAtan_id                IN NUMBER,
                            nProc_id                IN NUMBER,
                            nTido_id                IN NUMBER,
                            vDataEntrada            IN DATE,
                            nPess_id                IN NUMBER,
                            nDmGrupoAut             IN NUMBER,
                            vDmRevPend              IN VARCHAR2,
                            vSituacaoUltLicenca     IN VARCHAR2,
                            nNroDiasVencer          IN VARCHAR2,
                            nPrcr_id                IN NUMBER,
                            vImpLocal               IN OUT VARCHAR2,
                            nTipoImpacto            IN OUT NUMBER,
                            vUsuario                IN VARCHAR2,
                            nPess_Tecnico           IN OUT NUMBER,
                            vMesUserNotFound        IN OUT VARCHAR2,
                            vMesEndNotFound         IN OUT VARCHAR2,
                            vMesCEPNotFound         IN OUT VARCHAR2,
                            vMesMunNotFound         IN OUT VARCHAR2,
                            vMesEmpreendNotFound    IN OUT VARCHAR2,
                            vMesCPFNotFound         IN OUT VARCHAR2,
                            vMesSetoAssinaNotFound  IN OUT VARCHAR2,
                            vMesSetoDuplicado       IN OUT VARCHAR2,
                            vMesDataEntradaMaior    IN OUT VARCHAR2,
                            vMesInfDocRevogado      IN OUT VARCHAR2,
                            vMesSitSuperaProc       IN OUT VARCHAR2,
                            vMesEmprLancAtivo       IN OUT VARCHAR2,
                            vMesEmpreendMunHabilita IN OUT VARCHAR2,
                            vMesEmpreendConvenio    IN OUT VARCHAR2,
                            vMesSolicPrefeitura     IN OUT VARCHAR2,
                            vErro                   IN OUT VARCHAR2) IS

    nContador           NUMBER(5);
    vDocu_Vigor         VARCHAR2(30) := NULL;
    nSeto_id_assinatura NUMBER(6) := NULL;
    nDocu_id            number(10);

    vRazaoSocial VARCHAR2(60);

    CURSOR c1 IS
      SELECT aux.pess_id
        FROM fep_aux_func_ultimos aux
       WHERE aux.username = vUsuario
         AND aux.situacao = 1; -- ativo

    CURSOR c2 IS
      SELECT COUNT(*)
        FROM fep_processos proc, fep_responsabilidades resp
       WHERE proc.resp_id = resp.resp_id
         AND resp.atan_id = nAtan_id
         AND proc.proc_id != nProc_id
         AND proc.tido_id = nTido_id
         AND TRUNC(proc.data_entrada) > TRUNC(vDataEntrada)
         AND proc.situacao != 'A';

    CURSOR c3 IS
      SELECT COUNT(*)
        FROM v_pro_processos_aut_pendentes aux
       WHERE aux.empreendimento = nAtan_id
         AND aux.proc_id != nProc_id
         AND aux.tido_id = nTido_id
         AND TRUNC(aux.data_entrada) <= TRUNC(vDataEntrada);

    CURSOR c4 IS
      SELECT SUBSTR((docu.numero || ' / ' || docu.ano || ' - ' ||
                    tido.abreviatura),
                    1,
                    30)
        FROM fep_documentos        docu,
             fep_tipos_documentos  tido,
             fep_processos         proc,
             fep_responsabilidades resp
       WHERE proc.resp_id = resp.resp_id
         AND resp.atan_id = nAtan_id
         AND proc.proc_id = docu.proc_id
         AND docu.tido_id = nTido_id
         AND docu.tido_id = tido.tido_id
         AND docu.situacao = 'E'
         AND NOT EXISTS
       (SELECT NULL
                FROM fep_aux_proc_cond_restr prcr
               WHERE prcr.dm_ativo = 'S'
                 AND prcr.proc_id = nProc_id
                 AND prcr.docu_id_revogado IS NOT NULL);

    CURSOR c5 IS
      SELECT pess.pess_id,
             pess.cgc,
             pess.cpf,
             pess.documento_estrangeiro,
             pess.endereco,
             pess.cep,
             pess.muni_id,
             pess.endereco_corresp,
             pess.cep_corresp,
             pess.muni_id_corresp
        FROM fep_pessoas pess
       WHERE pess.pess_id = nPess_id;
    r5 c5%rowtype;

    CURSOR c6 IS
      SELECT COUNT(*)
        FROM fep_processos         proc,
             fep_responsabilidades resp,
             fep_documentos        docu
       WHERE resp.resp_id = proc.resp_id
         AND proc.proc_id != nProc_id
         AND resp.atan_id = nAtan_id
         AND proc.proc_id = docu.proc_id
         AND (docu.tido_id = nTido_id OR docu.tido_id = 530)
         AND docu.situacao IN ('B', 'T', 'E')
         AND NOT EXISTS
       (SELECT NULL
                FROM fep_aux_proc_cond_restr prcr
               WHERE prcr.dm_ativo = 'S'
                 AND prcr.proc_id = nProc_id
                 AND prcr.docu_id_revogado = docu.docu_id);

    -- Se empreendimento tem Pontos de Lancamentos Liquido ativo
    -- Vaz?o_dia_maxima tem que estar informado             cfme. chamado 14937-Regina
    --                                  Malu 28/09/2006
    CURSOR c7 IS
      SELECT COUNT(*)
        FROM fep_pontos_lanctos_liquidos poll
       WHERE NVL(poll.vazao_dia_maxima, 0) = 0
         AND poll.data_desativacao IS NULL
         AND poll.atan_id = nAtan_id;

  BEGIN

    OPEN c1;
    FETCH c1
      INTO nPess_Tecnico;
    CLOSE c1;

    IF nPess_Tecnico IS NULL THEN
      vMesUserNotFound := ('Erro: Usuario n?o encontrado como Funcionario ou n?o esta com situac?o Ativo em Recursos Humanos.');
      vErro            := 'YES';
    END IF;

    OPEN c5;
    FETCH c5
      INTO r5;
    IF c5%found THEN

      -- Endereco do Empreendedor
      IF r5.endereco IS NULL THEN

        vMesEndNotFound := ('Erro1: Faltou informar endereco do empreendedor ' ||
                           r5.pess_id || '. Atualize o cadastro antes.');
        vErro           := 'YES';

      END IF;

      IF r5.cep IS NULL THEN

        vMesCEPNotFound := ('Erro2: Faltou informar CEP do empreendedor ' ||
                           r5.pess_id || '. Atualize o cadastro antes.');

        vErro := 'YES';

      END IF;

      IF r5.muni_id IS NULL THEN

        vMesMunNotFound := ('Erro3: Faltou informar Municipio do empreendedor ' ||
                           r5.pess_id || '. Atualize o cadastro antes.');
        vErro           := 'YES';

      END IF;

      -- Endereco do Empreendedor
      IF r5.endereco IS NULL THEN

        vMesEmpreendNotFound := ('Erro4: Faltou informar endereco do empreendedor ' ||
                                r5.pess_id ||
                                '. Atualize o cadastro antes.');
        vErro                := 'YES';

      END IF;
      IF r5.cep IS NULL THEN

        vMesCEPNotFound := ('Erro5: Faltou informar CEP do empreendedor ' ||
                           r5.pess_id || '. Atualize o cadastro antes.');
        vErro           := 'YES';

      END IF;
      IF r5.muni_id IS NULL THEN

        vMesMunNotFound := ('Erro6: Faltou informar Municipio do empreendedor ' ||
                           r5.pess_id || '. Atualize o cadastro antes.');
        vErro           := 'YES';

      END IF;

      -- CNPJ / CPF
      IF r5.CGC IS NULL AND r5.CPF IS NULL AND
         r5.documento_estrangeiro IS NULL THEN

        vMesCPFNotFound := ('Erro7: Empreendedor ' || r5.pess_id ||
                           ' sem informac?o de CPF, CNPJ ou Doc Estrangeiro ' ||
                           '. Atualize o cadastro antes.');
        vErro           := 'YES';

      END IF;

    ELSE

      BEGIN
        SELECT atan.descricao
          INTO vRazaoSocial
          FROM fep_atividades_antropicas atan
         WHERE atan.atan_id = nAtan_id;
      EXCEPTION
        WHEN NO_DATA_FOUND THEN
          vRazaoSocial := NULL;
      END;

      vMesEmpreendNotFound := ('Erro8: Empreendedor ' || vRazaoSocial ||
                              ' n?o encontrado.');
      vErro                := 'YES';

    END IF;
    CLOSE c5;

    nSeto_id_assinatura := FC_SETOR_ASSINATURA(nProc_id,nDocu_id); -- Valida Setor de assinatura
    IF nSeto_id_assinatura IS NULL THEN

      vMesSetoAssinaNotFound := ('Erro9: N?o ha definic?o do Setor que assina os Documentos para este Ramo de Atividade. ' ||
                                'Atualizac?o no Cadastro do Ramo de Atividade/Portes.');
      vErro                  := 'YES';

    END IF;

    IF nDmGrupoAut != 3 THEN
      -- para Irrigac?o n?o precisa esta consistencia
      OPEN c6;
      FETCH c6
        INTO nContador;
      CLOSE c6;
      IF nContador > 0 THEN
        IF vDmRevPend = 'P' AND vSituacaoUltLicenca = 'E' AND
           nNroDiasVencer < 21 THEN
          NULL;
        ELSE

          vMesSetoDuplicado := ('Atenc?o_11: Ja existe Documento Licenciatorio em outro Processo para este Empreendimento com uma das Situac?es: Em Trabalho/Para Assinatura/Em Vigor. Verificar.');
          vErro             := 'YES';

        END IF;
      END IF;
    END IF;

    OPEN c2;
    FETCH c2
      INTO nContador;
    CLOSE c2;
    IF nContador > 0 THEN

      vMesDataEntradaMaior := ('Erro12: Existe(m) ' || nContador ||
                              ' Processo(s) deste Empreendimento com Data de Entrada posterior a deste Processo. Verificar.');
      vErro                := 'YES';

    END IF;

    IF nDmGrupoAut != 3 THEN
      -- para Irrigac?o n?o precisa esta consistencia
      OPEN c4;
      FETCH c4
        INTO vDocu_Vigor;
      CLOSE c4;
      IF vDocu_Vigor IS NOT NULL THEN
        IF vDmRevPend = 'P' AND vSituacaoUltLicenca = 'E' AND
           nNroDiasVencer < 21 THEN
          NULL;
        ELSE

          vMesInfDocRevogado := ('Atenc?o_13: Informar Documento Revogado para a Licenca n? ' ||
                                vDocu_Vigor ||
                                ' que esta com Situac?o EM VIGOR.');
          vErro              := 'YES';

        END IF;
      END IF;
    END IF;

    IF nPrcr_id IS NULL THEN
      OPEN c3;
      FETCH c3
        INTO nContador;
      CLOSE c3;
      IF nContador > 0 THEN

        vMesSitSuperaProc := ('Atenc?o15: Existe(m) ' || nContador ||
                             ' Processo(s) com situac?o SUPERADO para este Empreendimento, Data de Entrada anterior a deste Processo. Verificar.');
        vErro             := 'YES';

      END IF;
    END IF;

    SP_VALIDA_IMPACTO_LOCAL(nAtan_id,
                            nProc_id,
                            vImpLocal,
                            nTipoImpacto,
                            vMesEmpreendMunHabilita,
                            vMesEmpreendConvenio,
                            vMesSolicPrefeitura);

    IF (vMesEmpreendMunHabilita IS NOT NULL) OR
       (vMesEmpreendConvenio IS NOT NULL) OR
       (vMesSolicPrefeitura IS NOT NULL) THEN

      vErro := 'YES';

    END IF;

    IF vImpLocal = 'N' THEN

      IF nDmGrupoAut = 1 THEN
        -- DICOPI
        -- Verifica se tem ponto sem vaz?o dia maxima informada
        OPEN c7;
        FETCH c7
          INTO nContador;
        CLOSE c7;
        IF nContador > 0 THEN

          vMesEmprLancAtivo := ('Erro14: Empreendimento possui Ponto de Lancamento Ativo sem informac?o de Vaz?o/Dia/Maxima.');
          vErro             := 'YES';

        END IF;
      END IF;
    END IF;

  END;

  PROCEDURE SP_VALIDA_IMPACTO_LOCAL(nAtan_id                IN NUMBER,
                                    nProc_id                IN NUMBER,
                                    vImpLocal               IN OUT VARCHAR2,
                                    nTipoImpacto            IN OUT NUMBER,
                                    vMesEmpreendMunHabilita IN OUT VARCHAR2,
                                    vMesEmpreendConvenio    IN OUT VARCHAR2,
                                    vMesSolicPrefeitura     IN OUT VARCHAR2) IS
    dDataFimLic     DATE := NULL;
    vNomeMunicipio  VARCHAR2(50) := NULL;
    vLiberaImpLocal VARCHAR2(1);
    nTido_id        NUMBER(5) := NULL;
    nCldo_id        NUMBER(3) := NULL;
    vDmImpLocal     VARCHAR2(5);

    CURSOR c0 IS
      SELECT proc.tido_id, sucd.cldo_id
        FROM fep_processos              proc,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd
       WHERE proc.proc_id = nProc_id
         AND proc.tido_id = tido.tido_id
         AND tido.sucd_id = sucd.sucd_id;

    CURSOR c1 IS
      SELECT muni.nome
        FROM fep_processos             proc,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_ramos_atividades      raat,
             fep_ramos_portes          rapo,
             fep_municipios            muni
       WHERE proc.resp_id = resp.resp_id
         AND resp.atan_id = ata1.atan_id
         AND ata1.muni_id = muni.muni_id
         AND ata1.raat_id = raat.raat_id
         AND raat.raat_id = rapo.raat_id
         AND rapo.porte =
             SUBSTR(busca_porte(ata1.raat_id, ata1.medida_porte, NULL),
                    1,
                    1)
         AND raat.ramo_licenciavel = 1
         AND rapo.licenciavel = 'S'
         AND rapo.impacto_local = 'S'
         AND muni.licenciador = 'S'
         AND proc.proc_id = nProc_id;

    CURSOR c2 IS
      SELECT TRUNC(alim.data_final)
        FROM fep_aux_lic_implocal alim
       WHERE alim.atan_id = nAtan_id
         AND alim.tido_id = nTido_id;

  BEGIN

    IF SUBSTR(pck_cadastros.fc_impacto_regional(nAtan_id), 1, 1) = 'S' THEN

      -- se empreendimento e de Impacto Regional e licenciado pela FEPAM
      -- conforme Resoluc?o Conama 237/97.  Informac?o DL 013-2007    Malu 13/08/2008

      vImpLocal    := 'N';
      nTipoImpacto := 0;

    ELSE

      vImpLocal    := 'N';
      nTipoImpacto := 0;

      OPEN c0;
      FETCH c0
        INTO nTido_id, nCldo_id;
      CLOSE c0;

      -- Conforme Suporte 16085 - Empreendimentos de Impacto Local
      -- de Municipio Licenciador n?o podem receber Licenca da Fepam
      --                             Malu 15/01/2007

      IF nCldo_id IS NOT NULL THEN
        IF nCldo_id = 1 THEN

          OPEN c1;
          FETCH c1
            INTO vNomeMunicipio; -- Empreendimento deve ser licenciado pelo Municipio
          CLOSE c1;
          IF vNomeMunicipio IS NOT NULL THEN
            vLiberaImpLocal := pck_cadastros.fc_impacto_local_excecao(1,
                                                                      nAtan_id,
                                                                      NULL,
                                                                      NULL,
                                                                      NULL);

            IF vLiberaImpLocal = 'S' THEN
              -- cfme suporte 16225 - Louise    ( Malu 26/01/2007 )
              NULL; -- tem convenio TCA ETA CORSAN
            ELSE

              -- Verifica se e de Impacto Local, mas tem licenca em Vigor, pode emitir Licenca
              -- a data de validade da Licenca Dada
              OPEN c2;
              FETCH c2
                INTO dDataFimLic;
              CLOSE c2;

              -- e de impacto local - verifica se licenca
              -- cfme sup 21713  15/09/2008 - Malu
              IF dDataFimLic IS NOT NULL AND dDataFimLic > TRUNC(SYSDATE) THEN

                vMesEmpreendMunHabilita := ('Atenc?o1: O Empreendimento ' ||
                                           nAtan_id ||
                                           ' e de Imp Local em Mun habilitado. Mas possui ' ||
                                           'Licenca valida ate ' ||
                                           SUBSTR(TO_CHAR(dDataFimLic,
                                                           'dd/mm/rrrr'),
                                                   1,
                                                   10) ||
                                           '. Lic a ser emitida na Fepam n?o pode ultrapassar esta data.');
              ELSE
                vMesEmpreendMunHabilita := ('Atenc?o_1: O Empreendimento ' ||
                                           nAtan_id ||
                                           ' e de Impacto Local em Municipio Habilitado: ' ||
                                           vNomeMunicipio ||
                                           '. Devera ser Emitido Parecer para ' ||
                                           'Declarac?o de Licenciamento Municipalizado.');
                vImpLocal               := 'S';
                nTipoImpacto            := 1;
              END IF;

            END IF;

          END IF;
        END IF;
      END IF;

      SP_VALIDA_CONVENIO(nAtan_id,
                         nTido_id,
                         nProc_id,
                         vImpLocal,
                         nTipoImpacto,
                         vMesEmpreendConvenio,
                         vMesSolicPrefeitura);

    END IF;

  END;

  PROCEDURE SP_VALIDA_CONVENIO(nAtan_id             IN NUMBER,
                               nTido_id             IN NUMBER,
                               nProc_id             IN NUMBER,
                               vImpLocal            IN OUT VARCHAR2,
                               nTipoImpacto         IN OUT NUMBER,
                               vMesEmpreendConvenio IN OUT VARCHAR2,
                               vMesSolicPrefeitura  IN OUT VARCHAR2) IS

    wporte          VARCHAR2(1);
    wraat_id        NUMBER(7, 2);
    wmuni_id        NUMBER(7);
    wexiste         NUMBER(1);
    vDM_LOC_APP     VARCHAR2(1);
    vDM_MAIS_MUNIC  VARCHAR2(1);
    vDM_UC_ESTADUAL VARCHAR2(1);
    dDataFimLic     DATE := NULL;
    vMunicipio      VARCHAR2(50);
    nAtanId         Number(10);

    CURSOR c1 IS
      SELECT TRUNC(alim.data_final)
        FROM fep_aux_lic_implocal alim
       WHERE alim.atan_id = nAtan_id
         AND alim.tido_id = nTido_id;

    CURSOR c2 IS
      SELECT muni.nome
        FROM fep_municipios muni
       WHERE muni.muni_id = wmuni_id;

    CURSOR c3 IS
      SELECT atan.muni_id,
             atan.raat_id,
             BUSCA_PORTE(atan.raat_id, atan.medida_porte, NULL),
             atan.DM_LOC_APP,
             atan.DM_MAIS_MUNIC,
             atan.DM_UC_ESTADUAL
        FROM FEP_ATIVIDADES_ANTROPICAS ATAN
       WHERE atan.atan_id = nAtan_id;

  BEGIN

    -- Verifica se o municipio do empreendimento possui convenio somente para processos licenciatorios.
    -- Marcio em 18/10/2007, chamado 18602.
    BEGIN
      SELECT 1
        INTO wexiste
        FROM FEP_TIPOS_DOCUMENTOS tido, FEP_SUB_CLASSES_DOCUMENTOS sucd
       WHERE tido.tido_id = nTido_id
         AND tido.tido_id NOT IN (400, 410, 310, 330) -- Chamado 18646.
         AND tido.sucd_id = sucd.sucd_id
         AND sucd.cldo_id IN (1, 2, 3, 4, 5, 6); -- Licenciatorio.
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        wexiste := 0;
    END;

    IF nAtan_id IS NULL THEN
      IF nProc_id IS NOT NULL THEN
        IF FC_PROC_NOVO_MODELO(nProc_id) > 0 THEN
          -- proc modelo novo (Malu/Ani 31/03/2008)
          wexiste := 0; -- n?o valida porte pq pode ter mais de um empreendimento no processo
        END IF;
      END IF;
    ELSE
      nAtanId := nAtan_id;
    END IF;

    IF wexiste = 1 THEN
      -- Verifica se o municipio possui convenio. Marcio em 01/10/2007, chamado 18215.
      OPEN c3;
      FETCH c3
        INTO wmuni_id, wraat_id, wporte, vDM_LOC_APP, vDM_MAIS_MUNIC, vDM_UC_ESTADUAL;
      CLOSE c3;

      -- Se Impacto Regional n?o consistir convenios  ( Malu 26/08/2008 )
      IF vDM_LOC_APP = 'N' AND vDM_MAIS_MUNIC = 'N' AND
         vDM_UC_ESTADUAL = 'N' THEN

        IF PCK_ARR_BLOQUETOS.FC_ARR_CONVENIO_MUNI(wmuni_id,
                                                  wraat_id,
                                                  wporte) = 'S' THEN
          -- Convenio

          OPEN c1;
          FETCH c1
            INTO dDataFimLic;
          CLOSE c1;

          -- e de impacto local - verifica se licenca
          -- cfme sup 21713  15/09/2008 - Malu
          IF dDataFimLic IS NOT NULL AND dDataFimLic > TRUNC(SYSDATE) THEN

            vMesEmpreendConvenio := ('Atenc?o: O Empreendimento ' ||
                                    nAtan_id ||
                                    ' e de Municipio com Convenio. Mas possui ' ||
                                    'Licenca valida ate ' ||
                                    SUBSTR(TO_CHAR(dDataFimLic,
                                                    'dd/mm/rrrr'),
                                            1,
                                            10) ||
                                    '. Lic a ser emitida na Fepam n?o pode ultrapassar esta data.');
          ELSE
            OPEN c2;
            FETCH c2
              INTO vMunicipio;
            CLOSE c2;

            vMesSolicPrefeitura := ('Atenc?o_2: A Solicitac?o da Licenca devera ser solicitada junto a prefeitura de localizac?o ' ||
                                   'do empreendimento ( ' || vMunicipio ||
                                   ' ) de acordo com convenio firmado.');
            vImpLocal           := 'S';
            nTipoImpacto        := 2;
          END IF;
        END IF;
      END IF;
    END IF;

  END;

  PROCEDURE SP_INSERT_UPDATE_PRCR(nAtan_id                IN NUMBER,
                                  nRaat_id                IN NUMBER,
                                  nPrcr_id                IN OUT NUMBER,
                                  nProc_id                IN NUMBER,
                                  nTidoParecer            IN OUT NUMBER,
                                  nOrigem                 IN NUMBER,
                                  nUltimoDocuId           IN OUT NUMBER,
                                  vSituacaoUltLicenca     IN OUT VARCHAR2,
                                  vDmRevPend              IN OUT VARCHAR2,
                                  vImpLocal               IN OUT VARCHAR2,
                                  nTidoIdLicenca          IN OUT NUMBER,
                                  vUltLicencaRenovavel    IN OUT VARCHAR2,
                                  nDmGrupoAut             IN OUT NUMBER,
                                  vHabBtnParecerPDF       IN OUT VARCHAR2,
                                  vHabBtnGerarLicenca     IN OUT VARCHAR2,
                                  vMesProblemaGeracao     IN OUT VARCHAR2,
                                  vMesMaisDeUmRegFound    IN OUT VARCHAR2,
                                  vMesDocGerDeclInvalido  IN OUT VARCHAR2,
                                  vMesDocGerIndefInvalido IN OUT VARCHAR2,
                                  vMesErroAtualizaFepAux  IN OUT VARCHAR2,
                                  vMesErroInclusaoFepAux  IN OUT VARCHAR2,
                                  vMesErroBuscaTecnico    IN OUT VARCHAR2,
                                  vMesErroAutorizaTecnico IN OUT VARCHAR2,
                                  vErro                   IN OUT VARCHAR2) IS

    nPrcr_id1           NUMBER(10) := NULL;
    nPrcr_id2           NUMBER(10) := NULL;
    nTecnico            NUMBER(10) := NULL;
    nTido_id_par        NUMBER(5) := NULL;
    nTido_id_doc        NUMBER(5) := NULL;
    vUsuario            VARCHAR2(30);
    dDataAtual          DATE;
    nSeto_id            NUMBER(6);
    nSeto_id_assinatura NUMBER(6);
    nDocuRevogar        NUMBER(10) := NULL;
    nDocuRevInf         NUMBER(10) := NULL;
    vMotivoRev          VARCHAR2(500) := NULL;
    vSitRev             VARCHAR2(1);
    nIrts_id            NUMBER(10);
    nSitIRPT            NUMBER(2);
    nSafra              NUMBER(2);
    nHicb_id            NUMBER(10);
    vAlteraDoc          VARCHAR2(1) := 'N';
    nBloqueto           NUMBER(18) := NULL;
    nPrcr_ult           NUMBER(10);
    nContador           NUMBER(2);
    vLicPend            VARCHAR2(1);
    nDocuRenovar        NUMBER(10);
    nContExiste         NUMBER(2);
    nDocu_id            number(10);

    CURSOR c1 IS
      SELECT prcr.prcr_id,
             prcr.tido_id_parecer,
             prcr.tido_id_licenca,
             prcr.docu_id_revogado,
             prcr.motivo_revogacao,
             docu.situacao
        FROM fep_aux_proc_cond_restr prcr, fep_documentos docu
       WHERE prcr.proc_id = nProc_id
         AND prcr.docu_id_revogado = docu.docu_id(+)
         AND prcr.dm_ativo = 'S'
         AND prcr.irca_id IS NULL
         AND prcr.foag_id IS NULL;

    CURSOR c11 IS
      SELECT prcr.prcr_id
        FROM fep_aux_proc_cond_restr prcr
       WHERE prcr.proc_id = nProc_id
         AND prcr.irca_id IS NULL
         AND prcr.foag_id IS NULL
       ORDER BY prcr.prcr_id DESC;

    CURSOR c12 IS
      SELECT COUNT(*)
        FROM fep_aux_proc_cond_restr prcr
       WHERE prcr.proc_id = nProc_id
         AND prcr.irca_id IS NULL
         AND prcr.foag_id IS NULL
         AND prcr.dm_ativo = 'S';

    CURSOR c4 IS
      SELECT hipa.nro_bloqueto
        FROM fep_historicos_pagamentos hipa
       WHERE hipa.hicb_id = nHicb_id
         AND hipa.status = 5;

    CURSOR c5 IS
      SELECT COUNT(*)
        FROM fep_documentos docu, fep_processos proc
       WHERE docu.docu_id = nUltimoDocuId
         AND proc.proc_id = nProc_id
         AND docu.tido_id = proc.tido_id;

  BEGIN

    SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;

    nTecnico := FC_BUSCA_TECNICO(nRaat_id, nDmGrupoAut);

    IF nTecnico IS NULL THEN

      vMesErroBuscaTecnico := ('Erro10.1: Usuario n?o Autorizado a Gerar este documento.');
      vErro                := 'YES';

    END IF;

    nSeto_id := FC_BUSCA_SETOR(nRaat_id, nDmGrupoAut);

    IF nSeto_id IS NULL THEN

      vMesErroAutorizaTecnico := ('Erro10.2: Usuario n?o Autorizado a Gerar este documento.');
      vErro                   := 'YES';

    END IF;

    nSeto_id_assinatura := fc_setor_assinatura(nProc_id,nDocu_id);

    OPEN c1;
    FETCH c1
      INTO nPrcr_id1, nTido_id_par, nTido_id_doc, nDocuRevInf, vMotivoRev, vSitRev;
    CLOSE c1;

    OPEN c11;
    FETCH c11
      INTO nPrcr_ult;
    CLOSE c11;
    IF nPrcr_id1 IS NOT NULL THEN
      IF nPrcr_id1 != nPrcr_ult THEN

        vMesProblemaGeracao := ('Erro1: Problema na gerac?o. Registro PRCR ativo n?o e o ultimo para o processo. Avise a informatica.');
        vErro               := 'YES';

      END IF;
    END IF;
    OPEN c12;
    FETCH c12
      INTO nContador;
    CLOSE c12;
    IF nContador > 1 THEN

      vMesMaisDeUmRegFound := ('Erro2: Problema na gerac?o. Mais de um registro PRCR ativo para processo. Avise a informatica.');
      vErro                := 'YES';

    END IF;

    OPEN c5;
    FETCH c5
      INTO nContExiste;
    CLOSE c5;

    IF nDocuRevInf IS NOT NULL AND vSitRev = 'E' THEN
      -- se ja tem doc informado, deixa o que esta
      nDocuRevogar := nDocuRevInf;
    ELSE
      IF nUltimoDocuId IS NOT NULL AND vSituacaoUltLicenca = 'E' AND
         vDmRevPend != 'P' THEN

        IF nContExiste > 0 THEN
          nDocuRevogar := nUltimoDocuId; -- se doc em vigor do mesmo tipo, gera o doc a revogar
        END IF;
      ELSE
        nDocuRevogar := NULL;
        vMotivoRev   := NULL;
      END IF;
    END IF;

    IF vDmRevPend = 'P' THEN
      -- gerar a licenca como Pendente
      vLicPend := 'S';
    END IF;

    IF nTido_id_doc IS NULL THEN
      IF vImpLocal = 'S' THEN
        nTido_id_doc := 310;
      ELSE
        IF nTidoIdLicenca IS NULL THEN
          nTido_id_doc := nTido_id_doc; -- tido_id do processo
        ELSE
          nTido_id_doc := nTidoIdLicenca; --Criar campo na chamada buscando de prcr
        END IF;
      END IF;
    END IF;

    IF nTido_id_doc = 120 THEN
      nTido_id_par := 1202;
    END IF;
    IF nTido_id_doc = 151 THEN
      nTido_id_par := 1204;
    END IF;
    IF nTido_id_doc = 220 THEN
      nTido_id_par := 1212;
    END IF;
    IF nTido_id_doc = 221 THEN
      nTido_id_par := 1214;
    END IF;
    IF nTido_id_doc = 222 THEN
      nTido_id_par := 1215;
    END IF;
    IF nTido_id_doc = 224 THEN
      nTido_id_par := 1217;
    END IF;
    IF nTido_id_doc = 300 THEN
      nTido_id_par := 1220;
    END IF;
    IF nTido_id_doc = 310 THEN
      nTido_id_par := 1221;
    END IF;
    IF nTido_id_doc = 530 THEN
      nTido_id_par := 1243;
    END IF;

    IF vUltLicencaRenovavel = 'S' AND nContExiste > 0 THEN
      nDocuRenovar := nUltimoDocuId;
    ELSE
      nDocuRenovar := NULL;
    END IF;

    nTidoParecer := nTido_id_par;

    -- Incluir o registro para gerar as opc?es especiais
    IF (nPrcr_id1 IS NOT NULL) THEN

      nPrcr_id := nPrcr_id1;

      IF (vErro = 'NO') THEN
        BEGIN
          UPDATE fep_aux_proc_cond_restr
             SET pess_id_tecnico      = nTecnico,
                 seto_id_tecnico      = nSeto_id,
                 docu_id_renovacao    = nDocuRenovar,
                 tido_id_parecer      = nTido_id_par,
                 tido_id_licenca      = nTido_id_doc,
                 seto_id_assinatura   = nSeto_id_assinatura,
                 dm_implocal          = vImpLocal,
                 docu_id_revogado     = nDocuRevogar,
                 motivo_revogacao     = vMotivoRev,
                 operador_atualizacao = vUsuario,
                 data_atualizacao     = dDataAtual
           WHERE prcr_id = nPrcr_id1;
        EXCEPTION
          WHEN OTHERS THEN

            vMesErroAtualizaFepAux := ('Erro2: ( Atualizac?o fep_aux_proc_cond_restr ) ' ||
                                      SQLCODE || '-' || SQLERRM);
            vErro                  := 'YES';
        END;

      END IF;

    ELSE

      IF (vErro = 'NO') THEN
        SELECT prcr_seq.nextval INTO nPrcr_id2 FROM dual;
        BEGIN
          INSERT INTO fep_aux_proc_cond_restr
            (PRCR_ID,
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
             SETO_ID_ASSINATURA,
             POLL_ID,
             DM_LIBERA_ESPECIFICO,
             POLL_ID3,
             POLL_ID4,
             POLL_ID2,
             POLL_ID5,
             DATA_INICIO,
             SOLD_ID,
             SOSE_ID,
             DATA_INICIO_VIGENCIA,
             DATA_FIM_VIGENCIA,
             MOTIVO_REVOGACAO,
             DESCRICAO_ATIVIDADE,
             LARGURA_RECHIDR,
             DM_PARTICULADO,
             DM_DATA_FIM_INF,
             NRO_DIAS_648,
             DM_ALTERACAO_DOC,
             NRO_BLOQUETO,
             IRPT_ID,
             DM_IMPLOCAL,
             DM_GERA_LIC_PENDENTE)
          VALUES
            (nPrcr_id2,
             nProc_id,
             nTecnico,
             nSeto_id,
             NULL,
             nTido_id_par,
             nDocuRevogar,
             nDocuRenovar,
             NULL,
             nTido_id_doc,
             NULL,
             NULL,
             'S',
             dDataAtual,
             vUsuario,
             dDataAtual,
             vUsuario,
             nSeto_id_assinatura,
             NULL,
             'N',
             NULL,
             NULL,
             NULL,
             NULL,
             NULL,
             NULL,
             NULL,
             NULL,
             NULL,
             vMotivoRev,
             NULL,
             NULL,
             NULL,
             'N',
             NULL,
             vAlteraDoc,
             nBloqueto,
             null, -- Utilizado somente pela Irrigac?o
             vImpLocal,
             vLicPend);

          nPrcr_id            := nPrcr_id2;
          vHabBtnParecerPDF   := 'S';
          vHabBtnGerarLicenca := 'S';

        EXCEPTION
          WHEN OTHERS THEN
            vMesErroInclusaoFepAux := ('Erro3: ( Inclus?o fep_aux_proc_cond_restr ) ' ||
                                      SQLCODE || '-' || SQLERRM);
            vErro                  := 'YES';
        END;

      END IF;
    END IF;
  END;

  FUNCTION FC_BUSCA_TECNICO(nRaat_id IN NUMBER, nDmGrupoAut IN NUMBER)
    RETURN NUMBER IS

    nTecnico NUMBER(10);

    CURSOR c11 IS
      SELECT pere.pess_id
        FROM fep_pessoas_resp_ramos   pere,
             fep_funcionarios         func,
             fep_funcionarios_origens fuor
       WHERE pere.pess_id = func.pess_id
         AND func.username = (SELECT USER FROM dual)
         AND pere.raat_id = nRaat_id
         AND pere.data_fim IS NULL
         AND func.pess_id = fuor.pess_id(+)
         AND fuor.situacao IN (1, 2);

    CURSOR c12 IS
      SELECT func.pess_id
        FROM fep_funcionarios       func,
             fep_aux_func_ultimos   aux,
             fep_acessos_parametros acpa,
             fep_acessos_pessoas    acpe
       WHERE func.username = (SELECT USER FROM dual)
         AND func.pess_id = aux.pess_id
         AND acpa.parametro = 'DECL_ALT_RESPONSABILIDADE'
         AND acpa.acpa_id = acpe.acpa_id
         AND acpe.pess_id = func.pess_id
         AND aux.situacao IN (1, 2);

  BEGIN

    -- Foi usado o parametro DECL_ALT_RESPONSABILIDADE, quando for ramo diferente da DICOPI, SEAMB e IRRIGAC?O
    -- porque todos os tecnicos que tiverem este parametro
    -- ja dever?o ter a role RL_GERACAO_DOC_AUT e estar liberado para gerar nos diretorios de gerac?o automatica
    -- GrupoS:  1-DICOPI    2-SEMAB    3-IRRIGAC?O   4-LABS          (Malu  16/10/2009)

    IF nDmGrupoAut IN (1, 2, 3, 4) THEN
      OPEN c11;
      FETCH c11
        INTO nTecnico;
      CLOSE c11;
    ELSE
      OPEN c12;
      FETCH c12
        INTO nTecnico;
      CLOSE c12;
    END IF;

    RETURN(nTecnico);

  END;

  FUNCTION FC_BUSCA_SETOR(nRaat_id IN NUMBER, nDmGrupoAut IN NUMBER)
    RETURN NUMBER IS

    nSeto_id NUMBER(6);

    CURSOR c11 IS
      SELECT fuor.seto_id
        FROM fep_pessoas_resp_ramos   pere,
             fep_funcionarios         func,
             fep_funcionarios_origens fuor
       WHERE pere.pess_id = func.pess_id
         AND func.username = (SELECT USER FROM dual)
         AND pere.raat_id = nRaat_id
         AND pere.data_fim IS NULL
         AND func.pess_id = fuor.pess_id(+)
         AND fuor.situacao IN (1, 2);

    CURSOR c12 IS
      SELECT aux.seto_id
        FROM fep_funcionarios       func,
             fep_aux_func_ultimos   aux,
             fep_acessos_parametros acpa,
             fep_acessos_pessoas    acpe
       WHERE func.username = (SELECT USER FROM dual)
         AND func.pess_id = aux.pess_id
         AND acpa.parametro = 'DECL_ALT_RESPONSABILIDADE'
         AND acpa.acpa_id = acpe.acpa_id
         AND acpe.pess_id = func.pess_id
         AND aux.situacao IN (1, 2);

  BEGIN

    -- Foi usado o parametro DECL_ALT_RESPONSABILIDADE, quando for ramo diferente da DICOPI, SEAMB e IRRIGAC?O
    -- porque todos os tecnicos que tiverem este parametro
    -- ja dever?o ter a role RL_GERACAO_DOC_AUT e estar liberado para gerar nos diretorios de gerac?o automatica
    -- GrupoS:  1-DICOPI    2-SEMAB    3-IRRIGAC?O   4-LABS        (Malu  16/10/2009)

    IF nDmGrupoAut IN (1, 2, 3, 4) THEN
      OPEN c11;
      FETCH c11
        INTO nSeto_id;
      CLOSE c11;
    ELSE
      OPEN c12;
      FETCH c12
        INTO nSeto_id;
      CLOSE c12;
    END IF;

    /* IF nSeto_id IS NULL THEN
       tpl_msgalert.push('Erro10.2: Usuario n?o Autorizado a Gerar este documento.', 'E', 'OFG', 0);
       tpl_msgalert.raise_failure;
    END IF; */

    RETURN(nSeto_id);

  END;

  PROCEDURE SP_EXCLUI_REGERACAO(nPrcr_id              IN NUMBER,
                                nDmGrupoAut           IN NUMBER,
                                nRaat_id              IN NUMBER,
                                vMesExclRestrLic      IN OUT VARCHAR2,
                                vMesExclRestrGerAuto  IN OUT VARCHAR2,
                                vMesExclMotImpLocal   IN OUT VARCHAR2,
                                vMesExclParamPadroes  IN OUT VARCHAR2,
                                vMesExclProcCondRestr IN OUT VARCHAR2,
                                vMesExclImprPostos    IN OUT VARCHAR2,
                                vMesErroDelCRPRInfo   IN OUT VARCHAR2,
                                vErro                 IN OUT VARCHAR2) IS

  BEGIN
    -- exclui as condic?es e restricoes
    BEGIN
      DELETE FROM fep_aux_cond_restr_par_lic acrl
       WHERE acrl.prcr_id = nPrcr_id;
    EXCEPTION
      WHEN OTHERS THEN
        vMesExclRestrLic := ('Erro-1: ( Exclus?o de fep_aux_cond_restr_par_lic ) ' ||
                            SQLCODE || '-' || SQLERRM);
        vErro            := 'YES';
    END;

    -- exclui as condic?es especiais que foram geradas automaticamente
    IF vErro = 'NO' THEN
      BEGIN
        DELETE FROM fep_aux_cond_restr_especiais cree
         WHERE cree.prcr_id = nPrcr_id
           AND cree.operador_atualizacao LIKE '%-AUTOM.';
      EXCEPTION
        WHEN OTHERS THEN
          vMesExclRestrGerAuto := ('Erro-1: ( Exclus?o de fep_aux_cond_restr_especiais - cond geradas autom ) ' ||
                                  SQLCODE || '-' || SQLERRM);
          vErro                := 'YES';
      END;

    END IF;

    -- exclui as condic?es motivo impacto local que foram geradas automaticamente
    IF vErro = 'NO' THEN

      BEGIN
        DELETE FROM fep_aux_motivos_impLocal amlc
         WHERE amlc.prcr_id = nPrcr_id
           AND amlc.operador_atualizacao LIKE '%-AUTOM.';
      EXCEPTION
        WHEN OTHERS THEN
          vMesExclMotImpLocal := ('Erro-1A: ( Exclus?o de fep_aux_motivos_implocal - cond geradas autom ) ' ||
                                 SQLCODE || '-' || SQLERRM);
          vErro               := 'YES';
      END;
    END IF;

    IF nDmGrupoAut = 1 THEN
      -- DICOPI

      -- So inclui o que foi incluido automaticamente e n?o foi alterado
      IF vErro = 'NO' THEN
        BEGIN
          DELETE FROM fep_aux_param_padroes papd
           WHERE papd.prcr_id = nPrcr_id
             AND papd.operador_inclusao LIKE '%-AUTOM.'
             AND papd.operador_atualizacao LIKE '%-AUTOM.';
        EXCEPTION
          WHEN OTHERS THEN
            vMesExclParamPadroes := ('Erro-2: Exclus?o em fep_aux_param_padroes  (' ||
                                    nPrcr_id || ': ' || SQLCODE || '-' ||
                                    SQLERRM);
            vErro                := 'YES';
        END;
      END IF;

      -- limpa poll_id de fep_aux_proc_cond_restr
      IF vErro = 'NO' THEN
        BEGIN
          UPDATE fep_aux_proc_cond_restr prcr
             SET poll_id  = NULL,
                 poll_id2 = NULL,
                 poll_id3 = NULL,
                 poll_id4 = NULL,
                 poll_id5 = NULL
           WHERE prcr.prcr_id = nPrcr_id;
        EXCEPTION
          WHEN OTHERS THEN
            vMesExclProcCondRestr := ('Erro-3: ( Seta nulo para Poll_id de fep_aux_proc_cond_restr ) ' ||
                                     SQLCODE || '-' || SQLERRM);
            vErro                 := 'YES';
        END;
      END IF;
    END IF;

    -- exclui as informac?es incluidas automaticamente
    SP_EXCLUI_AINF(nPrcr_id, vMesErroDelCRPRInfo);

    IF (vMesErroDelCRPRInfo IS NOT NULL) THEN
      vErro := 'YES';
    END IF;

    -- exclui tabela parametos ontaminados
    IF vErro = 'NO' THEN
      BEGIN
        DELETE FROM fep_aux_impr_postos aipc
         WHERE aipc.prcr_id = nPrcr_id
           AND nRaat_id = 4751.30;
      EXCEPTION
        WHEN OTHERS THEN
          vMesExclImprPostos := ('Erro-5: ( Exclus?o de fep_aux_impr_postos ) ' ||
                                SQLCODE || '-' || SQLERRM);
          vErro              := 'YES';
      END;
    END IF;

  END;

  PROCEDURE SP_EXCLUI_AINF(nPrcr_id            IN NUMBER,
                           vMesErroDelCRPRInfo IN OUT VARCHAR2) IS
  BEGIN

    -- exclui as informac?es incluidas automaticamente
    BEGIN
      DELETE FROM fep_aux_cond_restr_informacoes ainf
       WHERE ainf.prcr_id = nPrcr_id
         AND ainf.operador_atualizacao LIKE '%-AUTOM.';
      commit;
    EXCEPTION
      WHEN OTHERS THEN
        vMesErroDelCRPRInfo := ('Erro-4A: ( Exclus?o de fep_aux_cond_restr_informacoes ) ' ||
                               SQLCODE || '-' || SQLERRM);
    END;

  END;

  PROCEDURE SP_GERAR_OUTROS_DOCS(nAtan_id            IN NUMBER,
                                 nMuni_id            IN NUMBER,
                                 nProc_id            IN NUMBER,
                                 nPrcr_id            IN NUMBER,
                                 nRaat_id            IN NUMBER,
                                 nDmGrupoAut         IN NUMBER,
                                 nTido_id            IN NUMBER,
                                 dDataAtual          IN DATE,
                                 nOrigem             IN NUMBER,
                                 nIncluidos          IN OUT NUMBER,
                                 nTipoImpacto        IN OUT NUMBER,
                                 vImpLocal           IN OUT VARCHAR2,
                                 vDmPorte            IN OUT VARCHAR2,
                                 nValorPagar         IN OUT NUMBER,
                                 nValorPago          IN OUT NUMBER,
                                 vMesErroDocRevoga   IN OUT VARCHAR2,
                                 vMesBloqueto        IN OUT VARCHAR2,
                                 vMesErroDocEmitido  IN OUT VARCHAR2,
                                 vMesErroLanctoAtivo IN OUT VARCHAR2,
                                 vMesErroCPFNOTFound IN OUT VARCHAR2,
                                 vMesErroMaisPessoas IN OUT VARCHAR2,
                                 vMesErroCNPJ        IN OUT VARCHAR2,
                                 vMesErroNoEstr      IN OUT VARCHAR2,
                                 vMesErroLicenca     IN OUT VARCHAR2,
                                 vMesGeraParecer     IN OUT NUMBER,
                                 vMesErroUPDVencto   IN OUT VARCHAR2,
                                 vMesErroUPDIdCRPR   IN OUT VARCHAR2,
                                 vMesErroUPDEflu     IN OUT VARCHAR2,
                                 vMesErroDelCRPRInfo IN OUT VARCHAR2,
                                 vMesErroMotivos     IN OUT VARCHAR2,
                                 vMesErroDelParLic   IN OUT VARCHAR2,
                                 vMesDelCRPR         IN OUT VARCHAR2,
                                 vMesErroInclParLic  IN OUT VARCHAR2,
                                 vMesErroInclAuxCRPR IN OUT VARCHAR2,
                                 vMesErroUPDAtiv     IN OUT VARCHAR2,
                                 vDescrAtan          IN VARCHAR2,
                                 vErro               IN OUT VARCHAR2) IS

    nGera     NUMBER(1) := 1;
    vMsgTido  VARCHAR2(100);
    nContador NUMBER(10);

  BEGIN

    -- P_origem  1 - Dicopi  2 - Seamb   3 - Irrigac?o   9 - Outros Ramos

    IF nGera = 1 AND nTido_id IN (1220, 1221, 1243) THEN

      SP_VALIDA_PAGTO(nAtan_id,
                      nRaat_id,
                      nProc_id,
                      nPrcr_id,
                      1,
                      vDmPorte,
                      nValorPagar,
                      nValorPago,
                      nTido_id,
                      vImpLocal,
                      vMesErroDocRevoga,
                      vMesBloqueto,
                      vMesErroDocEmitido,
                      vMesErroLanctoAtivo,
                      vMesErroCPFNOTFound,
                      vMesErroMaisPessoas,
                      vMesErroCNPJ,
                      vMesErroNoEstr,
                      vMesErroLicenca,
                      vErro);

      IF nTido_id IN (1220) THEN
        vMsgTido := ' - Iniciando Gerac?o Parecer de Isenc?o de Licenciamento ...';
      END IF;
      IF nTido_id IN (1221) THEN
        vMsgTido := ' - Iniciando Gerac?o Parecer de Declarac?o de Licenciamento Municipalizado ...';
      END IF;
      IF nTido_id IN (1243) THEN
        vMsgTido := ' - Iniciando Gerac?o Parecer de Indeferimento de LO ...';
      END IF;
      vMesGeraParecer := ('Processo n? ' || nProc_id || vMsgTido);

      IF (vErro = 'NO') THEN
        -- Insere o nome da atividade
        SP_NOME_ATIVIDADE(nAtan_id,
                          nPrcr_id,
                          vDescrAtan,
                          vMesErroUPDAtiv,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_ATUALIZA_PRCR_DADOS(nProc_id,
                               nRaat_id,
                               nDmGrupoAut,
                               1,
                               nPrcr_id,
                               null,
                               null,
                               null,
                               null,
                               null,
                               'N',
                               vMesErroUPDVencto,
                               vMesErroUPDIdCRPR,
                               vErro);
      END IF;

      IF nTido_id IN (1221) THEN
        IF (vErro = 'NO') THEN
          SP_INCLUI_INFORMACOES_IMPLOCAL(nPrcr_id,
                                         nTido_id,
                                         nOrigem,
                                         nDmGrupoAut,
                                         vMesErroDelCRPRInfo,
                                         vMesErroInclAuxCRPR,
                                         vErro);

        END IF;

        IF (vErro = 'NO') THEN
          SP_MOTIVO_IMPLOCAL(nAtan_id,
                             nMuni_id,
                             nTipoImpacto,
                             nDmGrupoAut,
                             nPrcr_id,
                             nTido_id, --nTidoIdParecer,
                             nOrigem,
                             vImpLocal,
                             vErro); --vMesDelImplocal);

        END IF;
      END IF;

      IF vErro = 'NO' THEN
        SP_VALIDA_MOTIVOS(nPrcr_id,
                          nTido_id,
                          nContador,
                          vMesErroMotivos,
                          vErro);
      END IF;

      IF vErro = 'NO' THEN
        IF nTido_id IN (1220) THEN
          -- DISLIC
          SP_INCLUI_CONDICOES(nPrcr_id,
                              nTido_id,
                              vMesErroDelParLic,
                              vMesDelCRPR,
                              vMesErroInclParLic,
                              vErro);
        END IF;
      END IF;

    END IF;

  END;

  PROCEDURE SP_VALIDA_PAGTO(nAtan_id            IN NUMBER,
                            nRaat_id            NUMBER,
                            nProc_id            IN NUMBER,
                            nPrcr_id            IN NUMBER,
                            nOrigem             IN NUMBER,
                            vDmPorte            IN OUT VARCHAR,
                            nValorPagar         IN OUT NUMBER,
                            nValorPago          IN OUT NUMBER,
                            nTido_id            IN NUMBER,
                            vImpLocal           IN OUT VARCHAR2,
                            vMesErroDocRevoga   IN OUT VARCHAR,
                            vMesBloqueto        IN OUT VARCHAR,
                            vMesErroDocEmitido  IN OUT VARCHAR,
                            vMesErroLanctoAtivo IN OUT VARCHAR,
                            vMesErroCPFNOTFound IN OUT VARCHAR,
                            vMesErroMaisPessoas IN OUT VARCHAR,
                            vMesErroCNPJ        IN OUT VARCHAR,
                            vMesErroNoEstr      IN OUT VARCHAR,
                            vMesErroLicenca     IN OUT VARCHAR,
                            vErro               IN OUT VARCHAR) IS

    nContador        NUMBER(5);
    nValorParcelas   NUMBER(13, 2) := NULL;
    nValorOutros     NUMBER(13, 2);
    dDataEmissao     DATE;
    nAnosLicenca     NUMBER(4) := 4; -- usar o valor padr?o
    nHicb_id         NUMBER(10);
    nTido_id_Lic     NUMBER(5);
    vEiaRima         VARCHAR2(1);
    nTido_id_proc    NUMBER(10);
    nTido_id_parecer NUMBER(10);
    nCldo_tido_lic   NUMBER(3);
    nCldo_docu_id    NUMBER(3);
    dDataConsist     DATE := TO_DATE('24/04/2006', 'dd/mm/rrrr');
    nPess_id         NUMBER(10);
    vFisJurEstr      VARCHAR2(1);
    nCPF             NUMBER(11);
    nCGC             NUMBER(14);
    vEstrangeiro     VARCHAR2(30);
    vGerarBoleto     VARCHAR2(1);
    vLiberaImpLocal  VARCHAR2(1);
    vLibera_proc     VARCHAR2(1);
    nBloqueto        NUMBER(18);
    vConsistir       VARCHAR2(1) := 'S';
    vDmAltDoc        VARCHAR2(1) := 'N';
    nDocuId_Rev      NUMBER(10);
    nProcId          NUMBER(10);
    --nValorPago       NUMBER(12, 2);
    nValorLic NUMBER(12, 2);

    vMsgAltDoc  VARCHAR2(2000);
    vMsgBloqDoc VARCHAR2(2000);

    cur_alt_doc sys_refcursor;

    type t_cursor is record(
      num_bloqueto NUMBER(18),
      msg_1        VARCHAR2(2000),
      msg_2        VARCHAR2(2000),
      proc_id      NUMBER(10));
    v_retorno_cursor t_cursor;

    CURSOR c0 IS
      SELECT sucd.cldo_id,
             proc.dm_eiarima,
             ata1.pess_id,
             pess.fisica_juridica,
             pess.cpf,
             pess.cgc,
             pess.documento_estrangeiro,
             raat.dm_gerar_boleto
        FROM fep_processos              proc,
             fep_responsabilidades      resp,
             fep_atividades_antropicas  ata1,
             fep_pessoas                pess,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_ramos_atividades       raat
       WHERE tido.tido_id = proc.tido_id
         AND tido.sucd_id = sucd.sucd_id
         AND proc.proc_id = nProc_id
         AND proc.resp_id = resp.resp_id
         AND resp.atan_id = ata1.atan_id
         AND ata1.pess_id = pess.pess_id
         AND ata1.raat_id = raat.raat_id;

    CURSOR c1 IS
      SELECT prcr.dm_alteracao_doc,
             prcr.nro_bloqueto,
             prcr.docu_id_revogado
        FROM fep_aux_proc_cond_restr prcr
       WHERE prcr.prcr_id = nPrcr_id
         AND prcr.dm_ativo = 'S';

    CURSOR c10 IS
      SELECT COUNT(*)
        FROM fep_processos             proc,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_ramos_atividades      raat,
             fep_ramos_portes          rapo,
             fep_municipios            muni
       WHERE proc.resp_id = resp.resp_id
         AND resp.atan_id = ata1.atan_id
         AND ata1.muni_id = muni.muni_id
         AND ata1.raat_id = raat.raat_id
         AND raat.raat_id = rapo.raat_id
         AND rapo.porte = vDmPorte
         AND raat.ramo_licenciavel = 1
         AND rapo.licenciavel = 'S'
         AND rapo.impacto_local = 'S'
         AND muni.licenciador = 'S'
         AND proc.proc_id = nProc_id;

    CURSOR c11 IS
      SELECT proc.nro_bloqueto, NVL(proc.valor_pago, 0) valor_pago
        FROM fep_processos             proc,
             fep_responsabilidades     resp,
             fep_atividades_antropicas ata1,
             fep_ramos_atividades      raat
       WHERE proc.proc_id = nProc_id
         AND proc.resp_id = resp.resp_id
         AND resp.atan_id = ata1.atan_id
         AND ata1.raat_id = raat.raat_id;

    -- Data de Emiss?o
    CURSOR c12 IS
      SELECT cobp.data_emissao
        FROM fep_cobrancas_parcelas cobp
       WHERE cobp.nro_bloqueto = nBloqueto;

    -- N?o encontrando em fep_cobrancas_parcelas procura em fep_historicos_pagamentos
    CURSOR c13 IS
      SELECT hipa.data_emissao
        FROM fep_historicos_pagamentos hipa
       WHERE hipa.nro_bloqueto = nBloqueto;

    CURSOR c4 IS
      SELECT hipa.hicb_id
        FROM fep_historicos_pagamentos hipa
       WHERE hipa.nro_bloqueto = nBloqueto;

    -- 3 - Emitido   5 - Pago
    CURSOR c51 IS
      SELECT SUM(hipa.valor_parcela)
        FROM fep_historicos_pagamentos hipa
       WHERE hipa.hicb_id = nHicb_id
         AND hipa.status IN (5);

    -- Valores Pagos ou a pagar de Cobranca diferente da cobranca do bloqueto do processo
    CURSOR c52 IS
      SELECT SUM(hipa.valor_parcela)
        FROM fep_historicos_pagamentos hipa, fep_historicos_cobrancas hicb
       WHERE hipa.hicb_id = hicb.hicb_id
         AND hipa.status IN (5)
         AND hicb.hicb_id != nHicb_id
         AND hicb.proc_id = nProc_id;

    CURSOR C53 IS
      SELECT PROC.DM_LIBERA_ARRECADACAO
        FROM FEP_PROCESSOS PROC
       WHERE PROC.PROC_ID = nProc_id;

    -- Acha a classe do Tipo de Documento a ser Emitido
    CURSOR c8 IS
      SELECT sucd.cldo_id
        FROM fep_tipos_documentos tido, fep_sub_classes_documentos sucd
       WHERE tido.tido_id = nTido_id_Lic
         AND tido.sucd_id = sucd.sucd_id;

    -- Se empreendimento tem Pontos de Lancamentos Liquido ativo
    -- Vaz?o_dia_maxima tem que estar informado             cfme. chamado 14937-Regina
    --                                  Malu 28/09/2006

    --     Alterada a validac?o apenas para os Ramos Ligados a Dicopi: 222, 2221, 2222, 2223
    --     conforme pedido de suporte 15091       ( Malu 10/10/2006 )

    CURSOR c9 IS
      SELECT COUNT(*)
        FROM fep_pontos_lanctos_liquidos poll,
             fep_processos               proc,
             fep_responsabilidades       resp,
             fep_atividades_antropicas   ata1,
             fep_ramos_atividades        raat
       WHERE NVL(poll.vazao_dia_maxima, 0) = 0
         AND poll.data_desativacao IS NULL
         AND poll.atan_id = resp.atan_id
         AND resp.resp_id = proc.resp_id
         AND resp.atan_id = ata1.atan_id
         AND ata1.raat_id = raat.raat_id
         AND raat.seto_id IN (222, 2221, 2222, 2223)
         AND proc.proc_id = nProc_id; /* :docu.proc_id; */

    CURSOR c91 IS
      SELECT COUNT(*)
        FROM fep_pessoas pess
       WHERE pess.pess_id_substituto IS NULL
         AND pess.cpf = nCPF;

    CURSOR c92 IS
      SELECT COUNT(*)
        FROM fep_pessoas pess
       WHERE pess.pess_id_substituto IS NULL
         AND pess.cgc = nCGC;

    CURSOR c93 IS
      SELECT COUNT(*)
        FROM fep_pessoas pess
       WHERE pess.pess_id_substituto IS NULL
         AND pess.documento_estrangeiro = vEstrangeiro;

    CURSOR c1120 IS
      SELECT COUNT(*)
        FROM fep_processos proc, fep_responsabilidades resp
       WHERE proc.tido_id IN (120, 151, 220, 221, 222, 224)
         AND proc.situacao IN ('E', 'L')
         AND proc.resp_id = resp.resp_id
         AND proc.proc_id = nProc_id /*:docu.proc_id*/
         AND EXISTS
       (SELECT NULL
                FROM fep_processos         proc1,
                     fep_documentos        docu1,
                     fep_responsabilidades resp1
               WHERE proc1.resp_id = resp1.resp_id
                 AND resp1.atan_id = resp.atan_id
                 AND proc1.proc_id != proc.proc_id
                 AND proc1.proc_id = docu1.proc_id
                 AND TRUNC(docu1.data_emissao) > TRUNC(proc.data_entrada)
                 AND docu1.tido_id IN (120, 151, 220, 221, 222, 224)
                 AND docu1.dm_prim_lic = 'S');

  BEGIN

    nValorPagar := NULL;
    nValorPago  := NULL;

    -- se documento de indeferimento n?o gera diferenca
    IF pck_processos.fc_is_tido_indef(nTido_id) = 'S' THEN
      vConsistir := 'N';
    ELSE
      OPEN c1;
      FETCH c1
        INTO vDmAltDoc, nBloqueto, nDocuId_Rev;
      CLOSE c1;

      -- Alterac?o de Documento
      IF vDmAltDoc = 'S' THEN
        IF nDocuId_Rev IS NULL THEN
          vMesErroDocRevoga := ('Erro: N?o tem documento a ser revogado. N?o pode ser Alterac?o de Documento. Ver em (Dados Gerac?o).');
          vErro             := 'YES';
        END IF;
        IF nBloqueto IS NULL THEN
          vMesBloqueto := ('Erro: Faltou informar Nro do Bloqueto de Pagamento da Alterac?o de Documento. Ver em (Dados Gerac?o).');
          vErro        := 'YES';
        END IF;

        --pr_valida_parecer_Alt_doc(nBloqueto); -- efetuar alterac?o em SP_VALIDA_PARECER_ALT_DOC Valida alterac?o do documento
        SP_VALIDA_PARECER_ALT_DOC(nPrcr_id, cur_alt_doc);
        BEGIN
          LOOP
            FETCH cur_alt_doc
              INTO v_retorno_cursor;
            EXIT WHEN cur_alt_doc%NOTFOUND;
          END LOOP;
        END;

        vMsgAltDoc  := v_retorno_cursor.msg_1;
        vMsgBloqDoc := v_retorno_cursor.msg_2;

        IF (vMsgAltDoc IS NOT NULL) OR (vMsgBloqDoc IS NOT NULL) THEN
          vErro := 'YES';
        END IF;

        vConsistir := 'N';
      END IF;
    END IF;

    IF vConsistir = 'S' THEN

      OPEN c0;
      FETCH c0
        INTO nCldo_docu_id, vEiaRima, nPess_id, vFisJurEstr, nCPF, nCGC, vEstrangeiro, vGerarBoleto;
      CLOSE c0;

      IF nTido_id IN (120, 151, 220, 221, 222, 224) THEN
        OPEN c1120;
        FETCH c1120
          INTO nContador;
        CLOSE c1120;
        IF nContador > 0 THEN
          vMesErroDocEmitido := ('Erro: O Empreendimento do Processo ja possui Documento emitido com ' ||
                                'Data de Emiss?o maior que Data de Entrada deste Processo.');
          vErro              := 'YES';
        END IF;
      END IF;

      IF nTido_id = 151 THEN
        nTido_id_parecer := 1204;
      ELSIF nTido_id = 300 THEN
        nTido_id_parecer := 1220;
      ELSIF nTido_id = 220 THEN
        nTido_id_parecer := 1212;
      ELSIF nTido_id = 221 THEN
        nTido_id_parecer := 1214;
      ELSIF nTido_id = 222 THEN
        nTido_id_parecer := 1215;
      ELSIF nTido_id = 224 THEN
        nTido_id_parecer := 1217;
      ELSE
        nTido_id_parecer := 1202;
      END IF;

      IF vImpLocal = 'S' THEN
        nTido_id_parecer := 1221;
      END IF;

      -- Retorna o Tipo de Licenca a ser emitida - para cobranca - Somente Docs Licenciatorios - classes 1 a 6
      SELECT pck_processos.fc_parecer_cobranca(nTido_id_parecer, vEiaRima)
        INTO nTido_id_Lic
        FROM dual;

      IF nTido_id_Lic IS NOT NULL THEN
        -- classes 1 a 6

        -- Classe do Documento a ser emitido, se e de Renovac?o e se e de Ampliac?o
        OPEN c8;
        FETCH c8
          INTO nCldo_tido_lic;
        CLOSE c8;

        -- Conforme Suporte 16085 - Empreendimentos de Impacto Local
        -- de Municipio Licenciador n?o podem receber Licenca da Fepam
        --                             Malu 15/01/2007
        IF nCldo_tido_lic IS NOT NULL THEN
          IF nCldo_tido_lic = 1 THEN
            IF pck_cadastros.fc_impacto_regional(nAtan_id) = 'N' THEN
              OPEN c10;
              FETCH c10
                INTO nContador; -- Empreendimento deve ser licenciado pelo Municipio
              CLOSE c10;
              IF nContador > 0 THEN
                vLiberaImpLocal := pck_cadastros.fc_impacto_local_excecao(1,
                                                                          nAtan_id,
                                                                          NULL,
                                                                          NULL,
                                                                          NULL);
                IF vLiberaImpLocal = 'S' THEN
                  -- cfme suporte 16225 - Louise    ( Malu 26/01/2007 )
                  NULL; -- tem convenio TCA ETA CORSAN
                  --        ELSE
                  --                   IF NVL(vImpLocal,'N') = 'N' THEN
                  --                      tpl_msgalert.push('Atenc?o_3: O Empreendimento ' || nAtan_id ||
                  --                                        ' e de Impacto Local em Municipio Habilitado: ' ||
                  --                                        :vppe.atan_municipio ||
                  --                                        '. Devera ser Emitido Parecer para ' ||
                  --                                        'Declarac?o de Licenciamento Municipalizado.', 'I', 'OFG', 0);
                  --                      vImpLocal := 'S';
                  --                   END IF;
                END IF;
              END IF;
            END IF;
          END IF;
        END IF;

        -- Verifica se tem ponto sem vaz?o dia maxima informada
        -- cfme sup 17849 - inclus?o de pareceres de MTR (tipo 1231) pela DL,
        -- n?o seja necessario validar a consistencia da DICOPI que verifica se
        -- EMPREENDIMENTO possui ponto de lancamento ativo sem informac?o de vaz?o/dia/maxima

        OPEN c9;
        FETCH c9
          INTO nContador;
        CLOSE c9;
        IF nContador > 0 THEN
          vMesErroLanctoAtivo := ('Erro: Empreendimento possui Ponto de Lancamento Ativo sem informac?o de Vaz?o/Dia/Maxima.');
          vErro               := 'YES';
        END IF;

        -- Validac?o incluida em 01/12/2006 - cfme solicitac?o Rejane / Louise  -   alterado por Malu
        -- Verifica se Empreendedor n?o tem informado CPF ou CNPJ
        IF nCPF IS NULL AND nCGC IS NULL AND vEstrangeiro IS NULL THEN
          vMesErroCPFNOTFound := ('Erro: Empreendedor Responsavel pelo Empreendimento n?o possui CPF ou CNPJ ou N? Estrangeiro.');
          vErro               := 'YES';
        END IF;

        -- N?o deve deixar colocar Parecer em Vigor/Para assinatura com CPF duplicados no banco
        IF nCPF IS NOT NULL THEN
          OPEN c91;
          FETCH c91
            INTO nContador;
          CLOSE c91;
          IF nContador > 1 THEN

            vMesErroMaisPessoas := ('Erro: CPF do Empreendedor Responsavel pelo Empreendimento existe para mais de uma pessoa no banco de dados. Verificar.');
            vErro               := 'YES';

          END IF;
        END IF;

        -- N?o deve deixar colocar Parecer em Vigor/Para assinatura com CNPJ duplicados no banco
        IF nCGC IS NOT NULL THEN
          OPEN c92;
          FETCH c92
            INTO nContador;
          CLOSE c92;
          IF nContador > 1 THEN
            vMesErroCNPJ := ('Erro: CNPJ do Empreendedor Responsavel pelo Empreendimento existe para mais de uma pessoa no banco de dados. Verificar.');
            vErro        := 'YES';
          END IF;
        END IF;

        -- N?o deve deixar colocar Parecer em Vigor/Para assinatura com N? Estrangeiro duplicados no banco
        IF vEstrangeiro IS NOT NULL THEN
          OPEN c93;
          FETCH c93
            INTO nContador;
          CLOSE c93;
          IF nContador > 1 THEN

            vMesErroNoEstr := ('Erro: N? Estrangeiro do Empreendedor Responsavel pelo Empreendimento existe para mais de uma pessoa no banco de dados. Verificar.');
            vErro          := 'YES';

          END IF;
        END IF;

      END IF;

      -- Verifica se o processo esta liberado para a pendencia de pagamento
      OPEN c53;
      FETCH c53
        INTO vLibera_proc;
      CLOSE c53;
      IF vLibera_proc = 'S' OR vGerarBoleto = 'N' THEN
        vConsistir := 'N';
      END IF;

      IF vConsistir = 'S' THEN

        -- Alterac?es para fazer validac?o com pagamentos    Malu - 16/02/2006

        OPEN c11;
        FETCH c11
          INTO nBloqueto, nValorPago;
        CLOSE c11;

        OPEN c12;
        FETCH c12
          INTO dDataEmissao; -- procura data na tabela fep_cobrancas_parcelas
        CLOSE c12;

        IF dDataEmissao IS NULL THEN
          OPEN c13;
          FETCH c13
            INTO dDataEmissao; -- procura data na tabela fep_historicos_pagamentos
          CLOSE c13;
        END IF;
        nProcId := nProc_id;

        -- Valor anterior era mais alto que valor atual q tem 85% de desconto
        -- ent?o calcula com o valor atual    Malu  19/06/2009
        IF nRaat_id IN (111.30, 111.40) THEN
          IF dDataEmissao < TO_DATE('01/01/2009', 'dd/mm/rrrr') THEN
            dDataEmissao := NULL;
            nProcId      := NULL;
          END IF;
        END IF;

        IF dDataEmissao < dDataConsist THEN
          NULL;
        ELSE
          nValorLic := pck_arr_bloquetos.fc_arr_valor_documen(nRaat_id,
                                                              nTido_id_lic,
                                                              vDmPorte,
                                                              'N',
                                                              1,
                                                              nAnosLicenca,
                                                              dDataEmissao,
                                                              nProcId,null,null,null,null,null);

          IF NVL(nValorLic, 0) > NVL(nValorPago, 0) THEN

            -- Verifica se existem mais parcelas para a cobranca
            OPEN c4;
            FETCH c4
              INTO nHicb_id;
            CLOSE c4;

            -- Verifica se existem mais parcelas para a cobranca
            OPEN c51;
            FETCH c51
              INTO nValorParcelas;
            CLOSE c51;

            -- Verifica se tem valores em algum outro Hicb diferente
            -- DO bloqueto informado no processo
            OPEN c52;
            FETCH c52
              INTO nValorOutros;
            CLOSE c52;
            nValorParcelas := NVL(nValorParcelas, 0) + NVL(nValorOutros, 0);

            nValorPagar := nValorLic;
            nValorPago  := nValorParcelas; -- total de todos os valores pagos para o processo

            IF NVL(nValorLic, 0) > NVL(nValorParcelas, 0) THEN
              IF nOrigem = 2 THEN
                -- gerac?o da licenca
                vMesErroLicenca := ('Erro1: Valor da Licenca R$' ||
                                   REPLACE(REPLACE(REPLACE(TO_CHAR(nValorLic,
                                                                    '999,990.99'),
                                                            '.',
                                                            '*'),
                                                    ',',
                                                    '.'),
                                            '*',
                                            ',') ||
                                   ' diferente do Valor ja Pago R$' ||
                                   REPLACE(REPLACE(REPLACE(TO_CHAR(nValorParcelas,
                                                                    '999,990.99'),
                                                            '.',
                                                            '*'),
                                                    ',',
                                                    '.'),
                                            '*',
                                            ',') ||
                                   '. Verificar com Arrecadac?o antes de continuar. Gerac?o cancelada.');
                vErro           := 'YES';

              ELSE
                vMesErroLicenca := ('Atenc?o: Valor da Licenca R$' ||
                                   REPLACE(REPLACE(REPLACE(TO_CHAR(nValorLic,
                                                                    '999,990.99'),
                                                            '.',
                                                            '*'),
                                                    ',',
                                                    '.'),
                                            '*',
                                            ',') ||
                                   ' diferente do Valor ja Pago R$' ||
                                   REPLACE(REPLACE(REPLACE(TO_CHAR(nValorParcelas,
                                                                    '999,990.99'),
                                                            '.',
                                                            '*'),
                                                    ',',
                                                    '.'),
                                            '*',
                                            ',') ||
                                   '. Verificar na Arrecadac?o antes de gerar LICENCA definitiva. ' ||
                                   'Liberada somente a Gerac?o do Parecer EM TRABALHO.');
                vErro           := 'YES';
              END IF;
            END IF;
          ELSE
            nValorPagar := nValorLic;
            nValorPago  := nValorPago; -- valor pago no bloqueto que tem informado no processo
          END IF;
        END IF;
      END IF;
    END IF;
  END;

PROCEDURE SP_NOME_ATIVIDADE(nAtan_id        IN NUMBER,
                                              nPrcr_id        IN NUMBER,
                                              vDescrAtan      IN VARCHAR2,
                                              vMesErroUPDAtiv IN OUT VARCHAR2,
                                              vErro           IN OUT VARCHAR2) IS

    nLcrs_id          NUMBER(10);
    vUsuario          VARCHAR2(30);
    dDataAtual        DATE;
    vDescricaoAtan    VARCHAR2(500) := NULL;
    vCulturas         VARCHAR2(300) := NULL;

    CURSOR c0 IS
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
              ata1.descricao,
            'ACESSORIO'     ,'ACESSORIO'),
            'AGROPECUARIA'  ,'AGROPECUARIA'),
            'AGROTOXICO'    ,'AGROTOXICO'),
            'ALUMINIO'      ,'ALUMINIO'),
            'ART '          ,'ARTEFATOS METALICOS '),
            'ASPERSAO'      ,'ASPERS?O'),
            'BENEF '        ,'BENEFICIAMENTO '),
            'BERCARIO'      ,'BERCARIO'),
            'CACAO'         ,'CAC?O'),
            'CALCADO'       ,'CALCADO'),
            'CARVAO'        ,'CARV?O'),
            'CLASSIFICACAO' ,'CLASSIFICAC?O'),
            'COMERCIO'      ,'COMERCIO'),
            'CONEXOES'      ,'CONEX?ES'),
            'CONSTRUCAO'    ,'CONSTRUC?O'),
            'COM TINGIM'    ,'COM TINGIMENTO'),
            'C/TING'        ,'COM TINGIMENTO'),
            'DE ACO'        ,'DE ACO'),
            'DEPOSITO'      ,'DEPOSITO'),
            'DOMESTICO'     ,'DOMESTICO'),
            'EM ACO'        ,'EM ACO'),
            'ENG DE'        ,'ENGENHO DE'),
            'ESTRUT '       ,'ESTRUTURAS '),
            'ESTR '         ,'ESTRUTURAS '),
            'EXTRACAO'      ,'EXTRAC?O'),
            'FAB '          ,'FABRICAC?O '),
            'FABRICACAO'    ,'FABRICAC?O'),
            'FEIJAO'        ,'FEIJ?O'),
            'FUNDICAO'      ,'FUNDIC?O'),
            'GRAOS'         ,'GR?OS'),
            'IMPRESSOES'    ,'IMPRESS?ES'),
            'IND '          ,'INDUSTRIA '),
            'IRRIGACAO'     ,'IRRIGAC?O'),
            'LAPIDACAO'     ,'LAPIDAC?O'),
            'MARMORE'       ,'MARMORE'),
            'MECANICA'      ,'MECANICA'),
            'METALICA'      ,'METALICA'),
            'METALICO'      ,'METALICO'),
            'METALIZACAO'   ,'METALIZAC?O'),
            'METALURGICA'   ,'METALURGICA'),
            'MINERIO'       ,'MINERIO'),
            'MONT MAQ '     ,'MONTAGEM DE MAQUINAS '),
            'MOVEIS'        ,'MOVEIS'),
            ' NAO '         ,' N?O '),
            'PARBOILIZACAO' ,'PARBOILIZAC?O'),
            'PECAS'         ,'PECAS'),
            'PLAST '        ,'PLASTICOS '),
            'PLASTICOS'     ,'PLASTICOS'),
            'PROD DE'       ,'PRODUC?O DE'),
            'PRODUCAO'      ,'PRODUC?O'),
            'RACOES'        ,'RAC?ES'),
            'SELECAO'       ,'SELEC?O'),
            'SERVICO'       ,'SERVICO'),
            'SINALIZACAO'   ,'SINALIZAC?O'),
            'SUBSTANCIA'    ,'SUBSTANCIA'),
            'USO INDL'      ,'USO INDUSTRIAL'),
            'VACUO'         ,'VACUO'),
            'LABORATORIO'   ,'LABORATORIO'),
            'ANALISE'       ,'ANALISE'),
            'VALVULAS'      ,'VALVULAS'),
            'VINICOLA'      ,'VINICOLA'),
            'ACRILICO'      ,'ACRILICO'),
            'DECORACAO'     ,'DECORAC?O'),
            '0',''),'1',''),'2',''),'3',''),'4',''),
            '5',''),'6',''),'7',''),'8',''),'9',''),
            ' / ','/'),' /','/'),'/ ','/'),
            '- FILIAL',''),'- MATRIZ',''),
                             1,100)    descricao_atividade
         FROM fep_atividades_antropicas ata1
        WHERE ata1.atan_id  = nAtan_id;

BEGIN


 IF vDescrAtan IS NULL THEN

    OPEN  c0;
    FETCH c0 INTO vDescricaoAtan;
    CLOSE c0;

    SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;
    vUsuario := vUsuario || '-' || 'AUTOM.';

    /*
    IF nAtan_id IN ( 111.30, 111.40 ) THEN
       vCulturas := fc_culturas_irrigacao(nAtan_id);
       vDescricaoAtan := vDescricaoAtan || ' DE ' || UPPER(vCulturas);
    END IF;
    */ --Somente Irrigac?o


    -- Insere os registros opcionais quando tem vazao

    BEGIN
      UPDATE fep_aux_proc_cond_restr
         SET descricao_atividade  = vDescricaoAtan,
             data_atualizacao     = dDataAtual,
             operador_atualizacao = vUsuario
       WHERE prcr_id = nPrcr_id;
    EXCEPTION
        WHEN OTHERS THEN
           vMesErroUPDAtiv := ('Erro1: ( Atualizac?o Descric?o da Atividade ) '
                              || SQLCODE || '-' || SQLERRM);
           vErro := 'YES';
    END;

 END IF;

END;

PROCEDURE SP_ATUALIZA_PRCR_DADOS(nProc_id         IN NUMBER,
                                                   nRaat_id         IN NUMBER,
                                                   nDmGrupoAut      IN NUMBER,
                                                   nTipo            IN NUMBER,
                                                   nPrcr_id         IN NUMBER,
                                                   nDocu_id         IN NUMBER,
                                                   vDataIniVigencia IN DATE,
                                                   vDataFimVigencia IN DATE,
                                                   nDocuIdParecer   IN NUMBER,
                                                   nDocuIdLicenca   IN NUMBER,
                                                   --nPoll_id         IN NUMBER,
                                                   vDataFimInf       IN VARCHAR2,
                                                   vMesErroUPDVencto IN OUT VARCHAR2,
                                                   vMesErroUPDIdCRPR IN OUT VARCHAR2,
                                                   vErro             IN OUT VARCHAR2) IS
  --vMesErroUPDEflu   IN OUT VARCHAR2) IS

  nPess_id_tecnico    NUMBER(10);
  nPoll_id            NUMBER(10) := NULL;
  nSeto_id_tecnico    NUMBER(6);
  vUsuario            VARCHAR2(30);
  dDataAtual          DATE;
  nTido_id_parecer    NUMBER(5);
  nTido_id_licenca    NUMBER(5);
  nSeto_id_assinatura NUMBER(6) := NULL;

  CURSOR c2 IS
    SELECT docu.tido_id
      FROM fep_documentos docu
     WHERE docu.docu_id = nDocuIdParecer;

  CURSOR c3 IS
    SELECT docu.tido_id
      FROM fep_documentos docu
     WHERE docu.docu_id = nDocuIdLicenca;

  CURSOR c4 IS
    SELECT prcr.poll_id
      FROM fep_aux_proc_cond_restr prcr
     WHERE prcr.prcr_id = nPrcr_id;

BEGIN

  -- atualiza a data de inicio/fim de vigencia
  IF nTipo = 1 THEN
    BEGIN
      UPDATE fep_aux_proc_cond_restr
         SET data_inicio_vigencia = vDataIniVigencia,
             data_fim_vigencia    = vDataFimVigencia,
             dm_data_fim_inf      = vDataFimInf
       WHERE prcr_id = nPrcr_id;
    EXCEPTION
      WHEN OTHERS THEN
        vMesErroUPDVencto := ('Erro4-1: Atualizac?o Datas Vencimento em fep_aux_proc_cond_restr ' ||
                             SQLCODE || '-' || SQLERRM);
        vErro             := 'YES';
    END;
  END IF;

  -- atualiza o Ponto de Emissao de Efluentes Liquidos - PCR1 ou PCR5
  /*
  IF nTipo = 3 THEN
    BEGIN
      UPDATE fep_aux_proc_cond_restr
         SET poll_id = p_poll_id
       WHERE prcr_id = nPrcr_id;
    EXCEPTION
      WHEN OTHERS THEN
        tpl_msgalert.push('Erro4-3: Atualizac?o Ponto de Emissao Efl Liquidos - poll_id ' ||
                          SQLCODE || '-' || SQLERRM || '.',
                          'E',
                          'OFG',
                          0);
        RAISE form_trigger_failure;
    END;
  END IF; */ --Somente efluentes, comentei

  -- atualiza o Id do Parecer e da Licenca e o Setor de assinatura
  IF nTipo = 4 THEN

    SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;

    -- se deixa de ter vaz?o apos execuc?o - apaga o registro do poll_id
    /*
    OPEN c4;
    FETCH c4
      INTO nPoll_id;
    CLOSE c4;

    IF :vppe.vazao_efluente IS NULL AND nPoll_id IS NOT NULL THEN
      nPoll_id := NULL;
    END IF;

    */ --Somente efluentes, comentei

    nSeto_id_assinatura := FC_SETOR_ASSINATURA(nProc_id,nDocuIdLicenca);
    nPess_id_tecnico    := FC_BUSCA_TECNICO(nRaat_id, nDmGrupoAut);
    nSeto_id_tecnico    := FC_BUSCA_SETOR(nRaat_id, nDmGrupoAut);

    OPEN c2;
    FETCH c2
      INTO nTido_id_parecer;
    CLOSE c2;

    OPEN c3;
    FETCH c3
      INTO nTido_id_licenca;
    CLOSE c3;

    IF vErro = 'NO' THEN
      BEGIN
        UPDATE fep_aux_proc_cond_restr
           SET pess_id_tecnico      = nPess_id_tecnico,
               seto_id_tecnico      = nSeto_id_tecnico,
               tido_id_parecer      = nTido_id_parecer,
               docu_id_parecer      = nDocuIdParecer,
               tido_id_licenca      = nTido_id_licenca,
               docu_id_licenca      = nDocuIdLicenca,
               seto_id_assinatura   = nSeto_id_assinatura,
               data_atualizacao     = dDataAtual,
               operador_atualizacao = vUsuario,
               poll_id              = nPoll_id
         WHERE prcr_id = nPrcr_id;
      EXCEPTION
        WHEN OTHERS THEN
          vMesErroUPDIdCRPR := ('Erro4-4: Atualizac?o Id Licenca em fep_aux_proc_cond_restr ' ||
                               SQLCODE || '-' || SQLERRM);
          vErro             := 'YES';
      END;

    END IF;
  END IF;

  -- atualiza o Ponto de Emissao de Efluentes Liquidos - PCR3
  /*
  IF nTipo = 5 THEN
    BEGIN
      UPDATE fep_aux_proc_cond_restr
         SET poll_id3 = nPoll_id
       WHERE prcr_id = nPrcr_id;
    EXCEPTION
      WHEN OTHERS THEN
        vMesErroUPDEflu := ('Erro4-5: Atualizac?o Ponto de Emissao Efl Liquidos - poll_id3 ' ||
                          SQLCODE || '-' || SQLERRM);
    END;
  END IF;

  -- atualiza o Ponto de Emissao de Efluentes Liquidos - PCR4

  IF nTipo = 6 THEN
    BEGIN
      UPDATE fep_aux_proc_cond_restr
         SET poll_id4 = nPoll_id
       WHERE prcr_id = nPrcr_id;
    EXCEPTION
      WHEN OTHERS THEN
        vMesErroUPDEflu := ('Erro4-6: Atualizac?o Ponto de Emissao Efl Liquidos - poll_id4 ' ||
                          SQLCODE || '-' || SQLERRM);
    END;
  END IF;

  -- atualiza o Ponto de Emissao de Efluentes Liquidos - PCR2
  IF nTipo = 7 THEN
    BEGIN
      UPDATE fep_aux_proc_cond_restr
         SET poll_id2 = nPoll_id
       WHERE prcr_id = nPrcr_id;
    EXCEPTION
      WHEN OTHERS THEN
        vMesErroUPDEflu := ('Erro4-7: Atualizac?o Ponto de Emissao Efl Liquidos - poll_id2 ' ||
                          SQLCODE || '-' || SQLERRM);
    END;
  END IF;

  -- atualiza o Ponto de Lancamento Efluentes Liquidos - PL
  IF nTipo = 8 THEN
    BEGIN
      UPDATE fep_aux_proc_cond_restr
         SET poll_id5 = nPoll_id
       WHERE prcr_id = nPrcr_id;
    EXCEPTION
      WHEN OTHERS THEN
        vMesErroUPDEflu := ('Erro4-8: Atualizac?o Ponto de Lancamento Efl Liquidos - poll_id5 ' ||
                          SQLCODE || '-' || SQLERRM);
    END;
  END IF; */ --Somente efluentes, comentei

END;

FUNCTION FC_SETOR_ASSINATURA(nProc_id IN NUMBER, nDocu_id in number) RETURN NUMBER IS

   nSeto_id   NUMBER(6);

BEGIN

  nSeto_id := pck_proc_assinat.FC_SETO_ASSINAT_PROC(nProc_id, nDocu_id);
  RETURN(nSeto_id);

END;


PROCEDURE SP_INCLUI_INFORMACOES_IMPLOCAL(nPrcr_id            IN NUMBER,
                                                           nTidoIdParecer      IN NUMBER,
                                                           nOrigem             IN NUMBER,
                                                           nDmGrupoAut         IN NUMBER,
                                                           vMesErroDelCRPRInfo IN OUT VARCHAR2,
                                                           vMesErroInclAuxCRPR IN OUT VARCHAR2,
                                                           vErro               IN OUT VARCHAR2) IS

  vTexto           VARCHAR2(1000);
  nLinha           NUMBER(5) := NULL;
  vUsuario         VARCHAR2(30);
  dDataAtual       DATE;
  nPess_codigo     NUMBER(10);
  vRazaoSocial     VARCHAR2(140);
  nContador        NUMBER(2);
  nAno             NUMBER(4);
  nMes             NUMBER(2);
  vMes             VARCHAR2(9);
  dDataProjeto     DATE;
  dDataImplantacao DATE;
  nCont            NUMBER(5);

  CURSOR c1 IS
    SELECT MAX(ainf.linha)
      FROM fep_aux_cond_restr_informacoes ainf
     WHERE ainf.prcr_id = nPrcr_id;
  /*
  CURSOR c5 IS
    SELECT COUNT(*)
      FROM fep_irrig_pareceres_tecnicos irpt,
           fep_irrig_ativ_solicitacoes  iras,
           fep_processos                proc
     WHERE irpt.irpt_id = 0 --:parameter.p_irpt_id
       AND irpt.situacao = 9
       AND irpt.iras_id = iras.iras_id
       AND iras.docu_id IS NULL
       AND iras.ativo = 'S'
       AND iras.dm_solic_encerrada = 'S'
       AND iras.dm_solic_cancelada = 'N'
       AND iras.proc_id = proc.proc_id
       AND proc.operador_inclusao LIKE '%27132-DL%'
       AND TRUNC(SYSDATE) > TO_DATE('31/05/2010', 'dd/mm/rrrr')
       AND EXISTS (SELECT NULL
              FROM fep_irrig_solic_listas_ativ slat
             WHERE slat.iras_id = iras.iras_id
               AND slat.dm_situacao = 1
               AND slat.dm_atendido = 'N'); */ --comentei por se tratar de campos especificos da DICOPI

BEGIN

  -- P_origem  1 - Dicopi  2 - Seamb   3 - Irrigac?o   9 - Outros Ramos

  SP_EXCLUI_AINF(nPrcr_id, vMesErroDelCRPRInfo);

  IF (vMesErroDelCRPRInfo IS NOT NULL) THEN
    vErro := 'YES';
  END IF;

  SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;
  vUsuario := vUsuario || '-' || 'AUTOM.';

  OPEN c1;
  FETCH c1
    INTO nLinha;
  CLOSE c1;
  IF nLinha IS NULL THEN
    nLinha := 0;
  END IF;

  IF nTidoIdParecer = 1243 AND nOrigem = 3 THEN
    -- Indeferimento de Irrigac?o
    /*
      IF :parameter.p_irpt_id IS NOT NULL THEN
        OPEN c5;
        FETCH c5
          INTO nCont;
        CLOSE c5;
        IF nCont > 0 THEN
          vTexto := 'Indeferimento pela n?o entrega de todos os documentos para analise do ' ||
                    'processo ate 31/05/2010.';
          nLinha := nLinha + 10;
          pr_inclui_informacoes_AINF(p_prcr_id,
                                     vUsuario,
                                     dDataAtual,
                                     nLinha,
                                     vTexto);
        END IF;
      END IF;

    ELSE */ --comentei por se tratar de campos especificos da DICOPI

    IF nDmGrupoAut != 3 THEN
      -- Irrigac?o n?o inclui
      vTexto := 'A atividade n?o se encontra em APP(Area de Preservac?o Permanente).';
      nLinha := nLinha + 10;

      IF (vErro = 'NO') THEN
        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;

    END IF;

    vTexto := 'O empreendimento localiza-se em municipio habilitado ' ||
              'para licenciamento da atividade com este porte.';
    nLinha := nLinha + 10;

    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

  END IF;

END;

PROCEDURE SP_MOTIVO_IMPLOCAL(nAtan_id        IN NUMBER,
                                               nMuni_id        IN NUMBER,
                                               nTipoImpacto    IN NUMBER,
                                               nDmGrupoAut     IN NUMBER,
                                               nPrcr_id        IN NUMBER,
                                               nTidoIdParecer  IN NUMBER,
                                               nOrigem         IN NUMBER,
                                               vMesDelImplocal IN OUT VARCHAR2,
                                               vErro           IN OUT VARCHAR2) IS

  vMotivo    VARCHAR2(1000) := NULL;
  nLinha     NUMBER(5) := NULL;
  vUsuario   VARCHAR2(30);
  dDataAtual DATE;
  nContador  NUMBER(5);
  vResolucao VARCHAR2(20);
  vConvenio  VARCHAR2(30);
  vOrigem    VARCHAR2(70);
  vAPP       VARCHAR2(50) := NULL;
  nCont      NUMBER(5);
  vMunicipio VARCHAR2(50);

  CURSOR c1 IS
    SELECT MAX(amlc.linha)
      FROM fep_aux_motivos_implocal amlc
     WHERE amlc.prcr_id = nPrcr_id;

  CURSOR c2 IS
    SELECT COUNT(*)
      FROM fep_aux_motivos_implocal amlc
     WHERE amlc.prcr_id = nPrcr_id;

  CURSOR c3 IS
    SELECT muni.resolucao_lic, muni.nome
      FROM fep_municipios muni
     WHERE muni.muni_id = nMuni_id;

  CURSOR c4 IS
    SELECT muco.nro_processo
      FROM fep_municipios_convenios muco
     WHERE muco.muni_id = nMuni_id
       AND muco.data_fim IS NULL;
  /*
  CURSOR c5 IS
     SELECT COUNT(*)
       FROM fep_irrig_pareceres_tecnicos irpt,
            fep_irrig_ativ_solicitacoes  iras,
            fep_processos                proc
      WHERE irpt.irpt_id  =  :parameter.p_irpt_id
        AND irpt.situacao = 9
        AND irpt.iras_id  = iras.iras_id
        AND iras.docu_id IS NULL
        AND iras.ativo = 'S'
        AND iras.dm_solic_encerrada = 'S'
        AND iras.dm_solic_cancelada = 'N'
        AND iras.proc_id = proc.proc_id
        AND proc.operador_inclusao LIKE '%27132-DL%'
        AND TRUNC(SYSDATE) > TO_DATE('31/05/2010','dd/mm/rrrr')
        AND EXISTS ( SELECT NULL
                       FROM fep_irrig_solic_listas_ativ slat
                      WHERE slat.iras_id = iras.iras_id
                        AND slat.dm_situacao = 1
                        AND slat.dm_atendido = 'N' ); */ --Comentei, somente DICOPI

BEGIN

  -- exclui as informac?es incluidas automaticamente
  BEGIN
    DELETE FROM fep_aux_motivos_implocal amlc
     WHERE amlc.prcr_id = nPrcr_id
       AND amlc.operador_atualizacao LIKE '%-AUTOM.';

    commit;

  EXCEPTION
    WHEN OTHERS THEN
      vMesDelImplocal := ('Erro-4A: ( Exclus?o de fep_aux_motivos_implocal) ' ||
                         SQLCODE || '-' || SQLERRM);
      vErro           := 'YES';
  END;

  SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;
  vUsuario := vUsuario || '-' || 'AUTOM.';

  -- P_origem  1 - Dicopi  2 - Seamb   3 - Irrigac?o   9 - Outros Ramos

  /*
  IF p_Tido_id_parecer = 1243 AND p_origem = 3 THEN  -- Indeferimento de Irrigac?o

     IF :parameter.p_irpt_id IS NOT NULL THEN
        OPEN  c5;
        FETCH c5 INTO nCont;
        CLOSE c5;
        IF nCont > 0 THEN
           vMotivo := 'N?o cumprimento da Clausula Terceira - DAS OBRIGAC?ES DOS COMPROMISSARIOS - ' ||
                      'do Protocolo de Intenc?es SEMA/FEPAM - IRGA - FARSUL - FEDERARROZ, de 15/03/2010, ' ||
                      'processo SEMA n? 1511-0500/10-3, conforme Ata de Reuni?o de 01/04/2010.';
        END IF;
     END IF;

  ELSE  */ --Comentei, irrigac?o

  IF nTipoImpacto = 1 THEN
    -- Resoluc?o 102
    OPEN c3;
    FETCH c3
      INTO vResolucao, vMunicipio;
    CLOSE c3;
    vOrigem := 'a Resoluc?o CONSEMA n.? ' || LTRIM(RTRIM(vResolucao)) || '. ';
  END IF;

  IF nTipoImpacto = 2 THEN
    -- Convenio com o Municipio
    OPEN c4;
    FETCH c4
      INTO vConvenio;
    CLOSE c4;
    vOrigem := 'o Convenio firmado n.? ' || LTRIM(RTRIM(vConvenio)) || '. ';
  END IF;

  IF nDmGrupoAut != 3 THEN
    vApp := 'fora de APP(Area de Preservac?o Permanente),';
  ELSE
    vApp := NULL; --  Grupo 3 - Irrigac?o n?o inclui
  END IF;

  vMotivo := '- com esta medida de porte, trata-se de atividade de ' ||
             'impacto local situada ' || vApp ||
             'em municipio habilitado de acordo com ' || vOrigem ||
             'Portanto, o licenciamento devera ser solicitado junto ao ' ||
             'municipio de ' || vMunicipio || '-RS.';
  --END IF;

  IF vMotivo IS NOT NULL THEN

    OPEN c1;
    FETCH c1
      INTO nLinha;
    CLOSE c1;

    IF nLinha IS NULL THEN
      nLinha := 10;
    ELSE
      nLinha := nLinha + 10;
    END IF;

    IF vErro = 'NO' THEN
      BEGIN
        INSERT INTO fep_aux_motivos_implocal
          (AMLC_ID,
           PRCR_ID,
           LINHA,
           TEXTO,
           DATA_INCLUSAO,
           OPERADOR_INCLUSAO,
           DATA_ATUALIZACAO,
           OPERADOR_ATUALIZACAO)
        VALUES
          (amlc_seq.nextval,
           nPrcr_id,
           nLinha,
           vMotivo,
           dDataatual,
           vUsuario,
           dDataatual,
           vUsuario);
        COMMIT;
      EXCEPTION
        WHEN OTHERS THEN
          vMesDelImplocal := ('Erro:(Inclus?o em fep_aux_motivos_implocal) ' ||
                             SQLCODE || '-' || SQLERRM);
          vErro           := 'YES';
      END;

      COMMIT;
    END IF;

  END IF;

END;


PROCEDURE SP_VALIDA_MOTIVOS(nPrcr_id        IN NUMBER,
                                              nTido_id        IN NUMBER,
                                              nContador       IN OUT NUMBER,
                                              vMesErroMotivos IN OUT VARCHAR2,
                                              vErro           IN OUT VARCHAR2) IS

  nCont    NUMBER(5);
  vMsgErro VARCHAR2(100);

  CURSOR c1 IS
    SELECT COUNT(*)
      FROM fep_aux_motivos_implocal amlc
     WHERE amlc.prcr_id = nPrcr_id;

BEGIN

  OPEN c1;
  FETCH c1
    INTO nCont;
  CLOSE c1;

  nContador := nCont;

  IF nCont = 0 THEN

    IF nTido_id = 1220 THEN
      vMsgErro := 'N?o informado Motivo da Declarac?o de Isenc?o do Licenciamento';
    END IF;
    IF nTido_id = 1221 THEN
      vMsgErro := 'N?o informado Motivo da Declarac?o de Licenciamento Municipalizado';
    END IF;
    IF nTido_id = 1243 THEN
      vMsgErro := 'N?o informado Motivo do Indeferimento de LO';
    END IF;

    IF (vMsgErro IS NOT NULL) THEN
       vErro := 'YES';
    END IF;

    vMesErroMotivos := ('Erro: ' || vMsgErro);

  END IF;

END;

PROCEDURE SP_INCLUI_CONDICOES(nPrcr_id           IN NUMBER,
                                                nTido_id           IN NUMBER,
                                                vMesErroDelParLic  IN OUT VARCHAR2,
                                                vMesDelCRPR        IN OUT VARCHAR2,
                                                vMesErroInclParLic IN OUT VARCHAR2,
                                                vErro              IN OUT VARCHAR2) IS

  dDataAtual DATE;
  vUsuario   VARCHAR2(30);

  CURSOR c1 IS
    SELECT cors.sequencia,
           cors.sequencia_sub,
           lcrs.lcrs_id lcrs_id,
           cors.cors_id cors_id,
           TO_NUMBER(NULL) crpr_id,
           cors.descricao descricao_cors
      FROM fep_listas_cond_restricoes lcrs, fep_condicoes_restricoes cors
     WHERE lcrs.raat_id = 3123
       AND lcrs.cors_id = cors.cors_id
       AND lcrs.data_fim_validade IS NULL
       AND cors.data_fim_validade IS NULL
       AND cors.cors_id IN (115, 922, 923, 924, 925)
       AND nTido_id = 300
     ORDER BY 1;
  r1 c1%rowtype;

BEGIN

  --  tido_id = 300-DISLIC Declarac?o de Isenc?o de Licenciamento

  SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;

  BEGIN
    DELETE FROM fep_aux_cond_restr_par_lic WHERE prcr_id = nPrcr_id;

    commit;

  EXCEPTION
    WHEN OTHERS THEN
      vMesErroDelParLic := ('Erro: ( Exclusao fep_aux_cond_restr_par_lic ) ' ||
                           SQLCODE || '-' || SQLERRM);
      vErro             := 'YES';
  END;

  BEGIN
    DELETE FROM fep_aux_cond_restr_proc WHERE prcr_id = nPrcr_id;

    commit;

  EXCEPTION
    WHEN OTHERS THEN
      vMesDelCRPR := ('Erro1: ( Exclusao fep_aux_cond_restr_proc ) ' ||
                     SQLCODE || '-' || SQLERRM);
      vErro       := 'YES';
  END;

  IF vErro = 'NO' THEN
    OPEN c1;
    LOOP
      FETCH c1
        INTO r1;
      IF c1%notfound THEN
        CLOSE c1;
        EXIT;
      ELSE
        BEGIN
          INSERT INTO fep_aux_cond_restr_par_lic
            (ACRL_ID,
             PRCR_ID,
             LCRS_ID,
             CORS_DESCRICAO,
             DATA_INCLUSAO,
             OPERADOR_INCLUSAO,
             DATA_ATUALIZACAO,
             OPERADOR_ATUALIZACAO,
             CRPR_ID)
          VALUES
            (acrl_seq.nextval,
             nPrcr_id,
             r1.Lcrs_id,
             r1.Descricao_cors,
             dDataAtual,
             vUsuario,
             dDataAtual,
             vUsuario,
             NULL);

          commit;

        EXCEPTION
          WHEN OTHERS THEN
            vMesErroInclParLic := ('Erro2: ( Inclusao em fep_aux_cond_restr_par_lic ) ' ||
                                  SQLCODE || '-' || SQLERRM);
            vErro              := 'YES';
        END;
      END IF;
    END LOOP;
  END IF;

END;

PROCEDURE SP_VALIDA_GERACAO_SEAMB(nAtan_id                   IN NUMBER,
                                                    nPrcr_id                   IN NUMBER,
                                                    nRaat_id                   IN NUMBER,
                                                    nProc_id                   IN NUMBER,
                                                    nOrigem                    IN NUMBER,
                                                    vDmPorte                   IN OUT VARCHAR2,
                                                    nValorPagar                IN OUT NUMBER,
                                                    nValorPago                 IN OUT NUMBER,
                                                    nTido_id                   IN NUMBER,
                                                    vImpLocal                  IN OUT VARCHAR2,
                                                    vMesErroDocRevoga          IN OUT VARCHAR2,
                                                    vMesBloqueto               IN OUT VARCHAR2,
                                                    vMesErroDocEmitido         IN OUT VARCHAR2,
                                                    vMesErroLanctoAtivo        IN OUT VARCHAR2,
                                                    vMesErroCPFNOTFound        IN OUT VARCHAR2,
                                                    vMesErroMaisPessoas        IN OUT VARCHAR2,
                                                    vMesErroCNPJ               IN OUT VARCHAR2,
                                                    vMesErroNoEstr             IN OUT VARCHAR2,
                                                    vMesErroLicenca            IN OUT VARCHAR2,
                                                    vMesCadPostoNotFound       IN OUT VARCHAR2,
                                                    vMesDocARevogar            IN OUT VARCHAR2,
                                                    vMesNivelSeqNotFound       IN OUT VARCHAR2,
                                                    vMesDataFimVigMaiorIni     IN OUT VARCHAR2,
                                                    vMesDataFimVigMaiorAtual   IN OUT VARCHAR2,
                                                    vMesDiasInstNotFound       IN OUT VARCHAR2,
                                                    vMesAreaPreservNotFound    IN OUT VARCHAR2,
                                                    vMesDescrTableContNotFound IN OUT VARCHAR2,
                                                    vMesTitleTableNotFound     IN OUT VARCHAR2,
                                                    vMesTableContamNotFound    IN OUT VARCHAR2,
                                                    vMesDistribNotFound        IN OUT VARCHAR2,
                                                    vMesDistribAPAEFound       IN OUT VARCHAR2,
                                                    vMesRespManutNotFound      IN OUT VARCHAR2,
                                                    vMesEstoqueNotFound        IN OUT VARCHAR2,
                                                    vMesTipoEquipNotFound      IN OUT VARCHAR2,
                                                    vMesQtdeEquipNotFound      IN OUT VARCHAR2,
                                                    vMesTanqueVencFound        IN OUT VARCHAR2,
                                                    vMesCond657Found           IN OUT VARCHAR2,
                                                    vMesCond657NotFound        IN OUT VARCHAR2,
                                                    vMesEliminaRevoga          IN OUT VARCHAR2,
                                                    vErro                      IN OUT VARCHAR2) IS

  nAtanId           NUMBER(10);
  nDocu_id_rev      NUMBER(10) := NULL;
  vMotivoRev        VARCHAR2(500) := NULL;
  nCree_id          NUMBER(10) := NULL;
  nCors_id          NUMBER(10) := NULL;
  dDataIni          DATE := NULL;
  dDataFim          DATE := NULL;
  nContador         NUMBER(2);
  nContTroca        NUMBER(2);
  nContVenc         NUMBER(2);
  nSequencia        NUMBER(5) := NULL;
  nClcr_id          NUMBER(10) := NULL;
  nDias_648         NUMBER(3) := NULL;
  nEficiencia       NUMBER(1) := NULL;
  vLavagem          VARCHAR2(1) := NULL;
  nTipoGas          NUMBER(1) := NULL;
  nArea676          NUMBER(9, 2) := NULL;
  nPess_id_distr    NUMBER(10) := NULL;
  nPess_id_epae     NUMBER(10) := NULL;
  nPess_id_manut    NUMBER(10) := NULL;
  vEstocPressao     VARCHAR2(100) := NULL;
  vEquipamento      VARCHAR2(200) := NULL;
  vDescricao838     VARCHAR2(2000) := NULL;
  vTitulo838        VARCHAR2(100) := NULL;
  vDmBaciaContencao VARCHAR2(1);

  CURSOR c1 IS
    SELECT prcr.docu_id_revogado,
           prcr.motivo_revogacao,
           prcr.data_inicio_vigencia,
           prcr.data_fim_vigencia,
           prcr.nro_dias_648,
           prcr.descricao_838,
           prcr.titulo_838
      FROM fep_aux_proc_cond_restr prcr
     WHERE prcr.prcr_id = nPrcr_id;

  CURSOR c2 IS
    SELECT cree.cree_id
      FROM fep_aux_cond_restr_especiais cree,
           fep_listas_cond_restricoes   lcrs
     WHERE cree.prcr_id = nPrcr_id
       AND cree.lcrs_id = lcrs.lcrs_id
       AND lcrs.cors_id = nCors_id;

  CURSOR c3 IS
    SELECT axge.sequencia, axge.clcr_id
      FROM fep_aux_gera_cond_restr axge
     WHERE axge.prcr_id = nPrcr_id
       AND axge.incluido = 'X'
       AND axge.tipo_item = 2 -- sub item
       AND axge.dm_tipo_cond_restr = 1 -- incluir
       AND NOT EXISTS (SELECT NULL
              FROM fep_aux_gera_cond_restr axge1
             WHERE axge1.prcr_id = axge.prcr_id
               AND axge1.clcr_id = axge.clcr_id
               AND axge1.sequencia = axge.sequencia
               AND axge1.nivel = 0);

  CURSOR c4 IS
    SELECT ptcb.atan_id,
           ptcb.dm_eficiencia,
           ptcb.dm_lavagem,
           ptcb.dm_tipo_gas,
           atan.area_preservacao,
           ptcb.pess_id_distribuidora,
           ptcb.pess_id_epae,
           ptcb.pess_id_manutencao,
           ptcb.estocagem_pressao,
           ptcb.descr_equipamento,
           ptcb.dm_bacia_contencao
      FROM fep_postos_combustiveis ptcb
         , fep_atividades_antropicas atan
     WHERE ptcb.atan_id = nAtan_id
     and   ptcb.atan_id = atan.atan_id
     ;

  CURSOR c5 IS
    SELECT COUNT(*)
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id;

  CURSOR c6 IS
    SELECT COUNT(*)
      FROM fep_postos_combustiveis ptcb, fep_tanques_combustiveis tqcb
     WHERE ptcb.atan_id = nAtan_id
       AND ptcb.ptcb_id = tqcb.ptcb_id
       AND tqcb.data_remocao IS NULL;

  CURSOR c7 IS
    SELECT COUNT(*)
      FROM fep_postos_combustiveis ptcb, fep_tanques_combustiveis tqcb
     WHERE ptcb.atan_id = nAtan_id
       AND ptcb.ptcb_id = tqcb.ptcb_id
       AND tqcb.data_remocao IS NULL
       AND (tqcb.data_desativacao IS NULL OR
           (tqcb.data_desativacao IS NOT NULL AND
           NVL(tqcb.dm_tipo_troca, 0) != 2))
       AND (DECODE(tqcb.data_inf_troca,
                   NULL,
                   ADD_MONTHS(tqcb.data_instalacao - 1, 360),
                   tqcb.data_inf_troca) < dDataIni);

  CURSOR c8 IS
    SELECT COUNT(*)
      FROM fep_postos_combustiveis ptcb, fep_tanques_combustiveis tqcb
     WHERE ptcb.atan_id = nAtan_id
       AND ptcb.ptcb_id = tqcb.ptcb_id
       AND tqcb.data_remocao IS NULL
       AND (tqcb.data_desativacao IS NULL OR
           (tqcb.data_desativacao IS NOT NULL AND
           NVL(tqcb.dm_tipo_troca, 0) != 2))
       AND (DECODE(tqcb.data_inf_troca,
                   NULL,
                   ADD_MONTHS(tqcb.data_instalacao - 1, 360),
                   tqcb.data_inf_troca) BETWEEN dDataIni AND dDataFim);

BEGIN

  SP_VER_PRCR_REVOGADO(nPrcr_id, vMesEliminaRevoga);

  IF (vMesEliminaRevoga IS NOT NULL) THEN
    vErro := 'YES';
  END IF;

  -- Valida se tem documento a ser revogado sem o motivo

  OPEN c1;
  FETCH c1
    INTO nDocu_id_rev, vMotivoRev, dDataIni, dDataFim, nDias_648, vDescricao838, vTitulo838;
  CLOSE c1;

  OPEN c4;
  FETCH c4
    INTO nAtanId, nEficiencia, vLavagem, nTipoGas, nArea676, nPess_id_distr, nPess_id_epae, nPess_id_manut, vEstocPressao, vEquipamento, vDmBaciaContencao;
  CLOSE c4;

  IF nAtan_id IS NULL THEN

    vMesCadPostoNotFound := ('Erro_01: Faltou informar o cadastro do Posto. Informar em (Posto Combustivel).');
    vErro                := 'YES';

  END IF;

  IF nDocu_id_rev IS NOT NULL AND vMotivoRev IS NULL THEN

    vMesDocARevogar := ('Erro_02: Existe Documento a ser revogado. Informar o motivo em (Dados Gerac?o).');
    vErro           := 'YES';

  END IF;

  -- Valida se tem algum subItem orf?o
  OPEN c3;
  FETCH c3
    INTO nSequencia, nClcr_id;
  CLOSE c3;
  IF nSequencia IS NOT NULL THEN

    vMesNivelSeqNotFound := ('Erro_03: N?o encontrado o Nivel 0 para a Sequencia ' ||
                            nSequencia || ' na Classe n? ' || nClcr_id);
    vErro                := 'YES';

  END IF;

  IF dDataIni IS NOT NULL AND dDataFim IS NOT NULL THEN
    IF dDataFim <= dDataIni THEN

      vMesDataFimVigMaiorIni := ('Erro_04: Data de Fim de Vigencia deve ser maior que Data de Inicio de Vigencia. Verificar em (Dados Gerac?o).');
      vErro                  := 'YES';

    END IF;
    IF dDataFim <= TRUNC(SYSDATE) THEN

      vMesDataFimVigMaiorAtual := ('Erro_05: Data de Fim de Vigencia deve ser maior que Data Atual. Verificar em (Dados Gerac?o).');
      vErro                    := 'YES';

    END IF;
  END IF;

  -- Prazo para Instalac?o de bacia de contenc?o

  IF vDmBaciaContencao = 'N' THEN
    nCree_id := NULL;
    nCors_id := 648;
    OPEN c2;
    FETCH c2
      INTO nCree_id;
    CLOSE c2;
    IF nCree_id IS NOT NULL THEN
      IF nDias_648 IS NULL THEN

        vMesDiasInstNotFound := ('Erro_06: Faltou informar o n? de dias para Instalar bacia de contenc?o armazenagem oleo toneis. (Cors Id 648). ' ||
                                'Informar em (Dados Gerac?o).');
        vErro                := 'YES';

      END IF;
    END IF;
  END IF;

  -- Area de Preservac?o
  IF nArea676 IS NOT NULL THEN
    nCree_id := NULL;
    nCors_id := 676;
    OPEN c2;
    FETCH c2
      INTO nCree_id;
    CLOSE c2;
    IF nCree_id IS NOT NULL THEN
      IF nArea676 IS NULL THEN

        vMesAreaPreservNotFound := ('Erro_07: Faltou informar a Area de Preservac?o a implantar. (Cors Id 676). ' ||
                                   'Informar em (Dados Gerac?o).');
        vErro                   := 'YES';
      END IF;
    END IF;
  END IF;

  -- Descric?o Tabela de Contaminac?o
  nCree_id := NULL;
  nCors_id := 838;
  OPEN c2;
  FETCH c2
    INTO nCree_id;
  CLOSE c2;
  IF nCree_id IS NOT NULL THEN

    IF vDescricao838 IS NULL THEN

      vMesDescrTableContNotFound := ('Erro_14: Faltou informar a Descric?o para a Tabela de Contaminac?o. (Cors Id 838). ' ||
                                    'Informar em (Dados Gerac?o).');
      vErro                      := 'YES';
    END IF;

    IF vTitulo838 IS NULL THEN

      vMesTitleTableNotFound := ('Erro_15: Faltou informar o Titulo para a Tabela de Contaminac?o. (Cors Id 838). ' ||
                                'Informar em (Dados Gerac?o).');
      vErro                  := 'YES';
    END IF;

    OPEN c5;
    FETCH c5
      INTO nContador;
    CLOSE c5;
    IF nContador = 0 THEN

      vMesTableContamNotFound := ('Erro_16: Faltou informar a Tabela de Contaminac?o nos Pocos. ' ||
                                 'Informar em (Dados Gerac?o) - Bot?o Tabela Contaminac?o.');
      vErro                   := 'YES';
    END IF;

  END IF;

  IF nTipoGas IN (1, 2) THEN
    -- GNC ou GNV
    IF nPess_id_distr IS NULL AND nPess_id_epae IS NULL THEN

      vMesDistribNotFound := ('Erro_08: Faltou informar a Distribuidora ou EPAE. ' ||
                             'Informar em (Cad Posto Combustivel).');
      vErro               := 'YES';
    END IF;
    IF nPess_id_distr IS NOT NULL AND nPess_id_epae IS NOT NULL THEN

      vMesDistribAPAEFound := ('Erro_09: Informar Distribuidora ou EPAE, n?o ambos. ' ||
                              'Informar em (Cad Posto Combustivel).');
      vErro                := 'YES';
    END IF;
    IF nPess_id_manut IS NULL THEN

      vMesRespManutNotFound := ('Erro_10: Faltou informar responsavel pela manutenc?o de equipamentos de GNC/GNV. ' ||
                               'Informar em (Cad Posto Combustivel).');
      vErro                 := 'YES';
    END IF;
    IF nTipoGas = 1 THEN
      -- GNC
      IF vEstocPressao IS NULL THEN

        vMesEstoqueNotFound := ('Erro_11: Faltou informar Estocagem/Press?o de GNC. ' ||
                               'Informar em (Cad Posto Combustivel).');
        vErro               := 'YES';
      END IF;
      IF vEquipamento IS NULL THEN

        vMesTipoEquipNotFound := ('Erro_12: Faltou informar Tipo de Equipamento GNC. ' ||
                                 'Informar em (Cad Posto Combustivel).');
        vErro                 := 'YES';
      END IF;
    END IF;
    IF nTipoGas = 2 THEN
      -- GNV
      IF vEquipamento IS NULL THEN

        vMesQtdeEquipNotFound := ('Erro_13: Faltou informar Quantidade e Tipo de Equipamento GNV. ' ||
                                 'Informar em (Cad Posto Combustivel).');
        vErro                 := 'YES';
      END IF;
    END IF;
  END IF;

  -- Cadastro de Tanques de Combustivel

  -- Verifica se tem tanques a trocar

  nContTroca := 0;
  nContVenc  := 0;
  IF dDataIni IS NOT NULL AND dDataFim IS NOT NULL THEN
    OPEN c7;
    FETCH c7
      INTO nContVenc; -- verifica se existe tanque com data vencida para troca
    CLOSE c7;
    IF nContVenc > 0 THEN

      vMesTanqueVencFound := ('Erro_14: Existe tanque com data limite para remoc?o anterior a data de inicio de vigencia desta licenca. ' ||
                             'Verificar em (Cad Posto Combustivel - bot?o TANQUES).');
      vErro               := 'YES';

    END IF;

    OPEN c8;
    FETCH c8
      INTO nContTroca;
    CLOSE c8;
  END IF;

  nCree_id := NULL;
  nCors_id := 657;
  OPEN c2;
  FETCH c2
    INTO nCree_id;
  CLOSE c2;
  IF nCree_id IS NOT NULL THEN
    OPEN c6;
    FETCH c6
      INTO nContador;
    CLOSE c6;
    IF nContador = 0 THEN

      vMesCond657Found := ('Erro_15: N?o existe cadastro dos tanques de combustiveis e condic?o 657 esta marcada. ' ||
                          'Verificar em (Cad Posto Combustivel - bot?o TANQUES).');
      vErro            := 'YES';

    ELSE
      -- verificar se tem tanque a ser trocado dentro do periodo de validade da licenca
      IF dDataIni IS NOT NULL AND dDataFim IS NOT NULL THEN
        IF nContTroca = 0 THEN

          vMesCond657NotFound := ('Erro_16: N?o existe previs?o de troca de tanque na vigencia da licenca e condic?o 657 esta marcada. ' ||
                                 'Verificar em (Cad Posto Combustivel - bot?o TANQUES).');
          vErro               := 'YES';

        END IF;
      END IF;
    END IF;
  END IF;

  IF (vErro = 'NO') THEN
    IF nOrigem != 1 THEN
      SP_VALIDA_PAGTO(nAtan_id,
                      nRaat_id,
                      nProc_id,
                      nPrcr_id,
                      1,
                      vDmPorte,
                      nValorPagar,
                      nValorPago,
                      nTido_id,
                      vImpLocal,
                      vMesErroDocRevoga,
                      vMesBloqueto,
                      vMesErroDocEmitido,
                      vMesErroLanctoAtivo,
                      vMesErroCPFNOTFound,
                      vMesErroMaisPessoas,
                      vMesErroCNPJ,
                      vMesErroNoEstr,
                      vMesErroLicenca,
                      vErro);
    END IF;

  END IF;

END;


PROCEDURE SP_VER_PRCR_REVOGADO(nPrcr_id          IN NUMBER,
                                                 vMesEliminaRevoga IN OUT VARCHAR2) IS

  nDocu_id  NUMBER(10) := NULL;
  vSituacao VARCHAR2(1) := NULL;

  CURSOR c1 IS
    SELECT prcr.docu_id_revogado, docu.situacao
      FROM fep_aux_proc_cond_restr prcr, fep_documentos docu
     WHERE prcr.prcr_id = nPrcr_id
       AND prcr.docu_id_revogado = docu.docu_id;

BEGIN

  OPEN c1;
  FETCH c1
    INTO nDocu_id, vSituacao;
  CLOSE c1;

  -- se durante o periodo de trabalho do tecnico a licenca anterior sai de EM VIGOR
  -- elimina a informac?o de revogac?o

  IF nDocu_id IS NOT NULL THEN
    IF vSituacao != 'E' THEN
      BEGIN
        UPDATE fep_aux_proc_cond_restr
           SET docu_id_revogado = NULL, motivo_revogacao = NULL
         WHERE prcr_id = nPrcr_id;
        commit;
      EXCEPTION
        WHEN OTHERS THEN
          vMesEliminaRevoga := ('Erro: (Elimina revogac?o para gerac?o) ' ||
                               SQLCODE || '-' || SQLERRM);
      END;
    END IF;
  END IF;

END;

PROCEDURE SP_INSERT_CORS_ID(nCors_id             IN NUMBER,
                                              nPrcr_id             IN NUMBER,
                                              nRaat_id             IN NUMBER,
                                              vMesErroInclRestrEsp IN OUT VARCHAR2,
                                              vErro                IN OUT VARCHAR2) IS

  nLcrs_id  NUMBER(10);
  nLcrsTipo NUMBER(1);
  nDmSolo   NUMBER(1);
  nCorsId   NUMBER(10);

  nInclui    NUMBER(1);
  vUsuario   VARCHAR2(30);
  dDataAtual DATE;
  nTipo      NUMBER(1);
  nContador  NUMBER(2);
  nContinua  NUMBER(1) := 1;

  CURSOR c1 IS
    SELECT lcrs.lcrs_id, lcrs.tipo, cors.dm_solo, lcrs.cors_id
      FROM fep_listas_cond_restricoes lcrs, fep_condicoes_restricoes cors
     WHERE lcrs.raat_id = nRaat_id
       AND lcrs.cors_id = cors.cors_id
       AND lcrs.data_fim_validade IS NULL
       AND cors.data_fim_validade IS NULL
       AND lcrs.cors_id = nCors_id
       AND NOT EXISTS (SELECT NULL
              FROM fep_aux_cond_restr_especiais cree
             WHERE cree.lcrs_id = lcrs.lcrs_id
               AND cree.prcr_id = nPrcr_id)
     ORDER BY 1;

  -- verifica se tem para incluir cors_id 503
  CURSOR c2 IS
    SELECT COUNT(*)
      FROM fep_aux_param_padroes papd, fep_param_padroes_emissoes ppem
     WHERE papd.prcr_id = nPrcr_id
       AND papd.dm_incluir = 'S'
       AND papd.ppem_id = ppem.ppem_id
       AND ppem.dm_ativo = 'S'
       AND ppem.para_id IN (9, 14);

  -- verifica se tem para incluir cors_id 797
  CURSOR c3 IS
    SELECT COUNT(*)
      FROM fep_aux_param_padroes papd, fep_param_padroes_emissoes ppem
     WHERE papd.prcr_id = nPrcr_id
       AND papd.dm_incluir = 'S'
       AND papd.ppem_id = ppem.ppem_id
       AND ppem.dm_ativo = 'S'
       AND ppem.para_id IN (15);

BEGIN

  SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;
  vUsuario := vUsuario || '-' || 'AUTOM.';

  IF nCors_id = 503 THEN
    OPEN c2;
    FETCH c2
      INTO nContador;
    CLOSE c2;
    IF nContador = 0 THEN
      -- inclui se tiver parametros 9 e/ou 14
      nContinua := 0;
    END IF;
  END IF;

  IF nCors_id = 797 THEN
    OPEN c3;
    FETCH c3
      INTO nContador;
    CLOSE c3;
    IF nContador = 0 THEN
      -- inclui se tiver parametro 15
      nContinua := 0;
    END IF;
  END IF;

  IF nContinua = 1 THEN

    OPEN c1;
    LOOP
      FETCH c1
        INTO nLcrs_id, nLcrsTipo, nDmSolo, nCorsId;
      IF c1%notfound THEN
        CLOSE c1;
        EXIT;
      ELSE
        IF nLcrsTipo = 1 THEN
          -- Padr?o
          nTipo := 2; -- Excluir condic?o
        ELSE
          nTipo := 1; -- Incluir condic?o
        END IF;

        nInclui := 1; -- Incluir

        IF nInclui = 1 THEN

          BEGIN
            INSERT INTO fep_aux_cond_restr_especiais
              (CREE_ID,
               PRCR_ID,
               LCRS_ID,
               TIPO_COND_RESTR,
               DM_IGNORAR,
               DATA_INCLUSAO,
               OPERADOR_INCLUSAO,
               DATA_ATUALIZACAO,
               OPERADOR_ATUALIZACAO)
            VALUES
              (cree_seq.nextval,
               nPrcr_id,
               nLcrs_id,
               nTipo,
               'N',
               dDataAtual,
               vUsuario,
               dDataAtual,
               vUsuario);
          EXCEPTION
            WHEN OTHERS THEN
              vMesErroInclRestrEsp := ('Erro_A: ( Inclus?o em fep_aux_cond_restr_especiais ) ' ||
                                      SQLCODE || '-' || SQLERRM);
              vErro := 'YES';
          END;
        END IF;
      END IF;
    END LOOP;

  END IF;
END;

PROCEDURE SP_INCLUI_OPCIONAIS_SEAMB(nAtan_id               IN NUMBER,
                                                      nPrcr_id               IN NUMBER,
                                                      nRaat_id               IN NUMBER,
                                                      vMesErroInclRestrEsp   IN OUT VARCHAR2,
                                                      vMesInfoCombNotFound   IN OUT VARCHAR2,
                                                      vMesErroDelCRPRInfo    IN OUT VARCHAR2,
                                                      vMesErroInclAuxCRPR    IN OUT VARCHAR2,
                                                      vMesErroDataVazamento  IN OUT VARCHAR2,
                                                      vMesErroAtualPostoComb IN OUT VARCHAR2,
                                                      vErro                  IN OUT VARCHAR2) IS

  nContador NUMBER(2);
  nCors_id  NUMBER(10);

  vUsuario         VARCHAR2(30);
  dDataAtual       DATE;

  CURSOR C1 IS
    SELECT ptcb.pess_id_distribuidora,
           ptcb.pess_id_EPAE,
           ptcb.dm_eficiencia,
           ptcb.dm_lavagem,
           ptcb.dm_GLP,
           ptcb.dm_monitoramento_agua,
           ptcb.dm_estacionamento,
           ptcb.dm_troca_oleo,
           ptcb.dm_bacia_contencao,
           ptcb.dm_nivel_contaminacao,
           ptcb.dm_tipo_gas,
           ptcb.descr_equipamento,
           SUBSTR(cgrf.rv_meaning, 1, 9) mes_laudo,
           ptcb.estocagem_pressao,
           ptcb.dm_adeq_vazamento,
           ptcb.dm_repoe_oleo,
           atan.area_preservacao,
           (select loc.zona_localizacao from fep_loc_ativ_antropicas loc where loc.atan_id = atan.atan_id and loc.data_fim is null) dm_zona_localizacao
      FROM fep_postos_combustiveis ptcb, cg_ref_codes cgrf
         , fep_atividades_antropicas atan
     WHERE ptcb.atan_id = nAtan_id
       AND ptcb.mes_laudo = cgrf.rv_low_value
       and ptcb.atan_id = atan.atan_id
       AND cgrf.rv_domain = 'DM_MES';
  r1 c1%rowtype;

BEGIN

  SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;

  -- inclui as informac?es usadas para gerar o parecer
  SP_INCLUI_INFORMACOES_SEAMB(nAtan_id,
                              nPrcr_id,
                              vMesErroDelCRPRInfo,
                              vMesErroInclAuxCRPR,
                              vMesErroDataVazamento,
                              vMesErroAtualPostoComb,
                              vErro);

  OPEN c1;
  FETCH c1
    INTO r1;
  IF c1%notfound THEN
    CLOSE c1;
    vMesInfoCombNotFound := ('Erro1: N?o encontrado as informac?es de Posto de Combustivel para este Empreendimento.');
    vErro                := 'YES';
  ELSE
    -- Eficiencia de Efluentes Liquidos
    IF r1.dm_eficiencia = 1 THEN
      IF (vErro = 'NO') THEN
      -- baixa
      SP_INSERT_CORS_ID(661,
                        nPrcr_id,
                        nRaat_id,
                        vMesErroInclRestrEsp,
                        vErro);
      END IF;
    END IF;

    IF r1.dm_eficiencia = 2 THEN
      -- normal

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(660,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

    END IF;

    -- Troca de oleo
    IF r1.dm_troca_oleo = 'N' THEN

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(643,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF r1.dm_repoe_oleo = 'S' THEN
        IF (vErro = 'NO') THEN
          SP_INSERT_CORS_ID(624,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;
        IF (vErro = 'NO') THEN
          SP_INSERT_CORS_ID(644,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;
        IF (vErro = 'NO') THEN
          SP_INSERT_CORS_ID(644,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;

        IF (vErro = 'NO') THEN
          SP_INSERT_CORS_ID(649,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;

        IF (vErro = 'NO') THEN
          SP_INSERT_CORS_ID(664,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;

        IF (vErro = 'NO') THEN
          SP_INSERT_CORS_ID(665,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;

        IF (vErro = 'NO') THEN
          SP_INSERT_CORS_ID(694,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;

        IF (vErro = 'NO') THEN
          SP_INSERT_CORS_ID(832,
                            nPrcr_id,
                            nRaat_id,
                            vMesErroInclRestrEsp,
                            vErro);
        END IF;

      END IF;

    END IF;

    IF r1.dm_troca_oleo = 'S' THEN

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(624,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(646,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(647,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (r1.dm_bacia_contencao = 'N') AND (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(648,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(649,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(664,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(665,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(682,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(694,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(829,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

    END IF;

    -- Deposito de GLP
    IF r1.dm_GLP = 'S' THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(670,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(830,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    IF r1.dm_GLP = 'N' THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(671,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(698,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    -- Lavagem de Veiculos
    IF r1.dm_lavagem = 'S' THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(658,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(681,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(828,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;
    IF r1.dm_lavagem = 'N' THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(659,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    -- GNC - Gas Natural Comprimido
    IF r1.dm_tipo_Gas = 1 THEN
      IF (vErro = 'NO') THEN
        -- quanto ao abastecimento
        SP_INSERT_CORS_ID(802,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(803,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(804,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(805,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;

      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(806,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(813,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(831,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        -- quanto a operac?o
        SP_INSERT_CORS_ID(817,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(818,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(819,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(820,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(821,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        -- quanto aos equipamentos
        SP_INSERT_CORS_ID(833,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(834,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        -- quanto a relatorios
        SP_INSERT_CORS_ID(839,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    -- GNV - Gas Natural Veicular
    IF r1.dm_tipo_Gas = 2 THEN
      IF (vErro = 'NO') THEN
        -- quanto aos equipamentos
        SP_INSERT_CORS_ID(807,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(808,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(809,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(810,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(811,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(812,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
      IF (vErro = 'NO') THEN
        -- quanto a relatorios
        SP_INSERT_CORS_ID(839,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    IF r1.dm_tipo_Gas IN (1, 2) THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(814,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    -- tem distribuidora informada
    IF r1.pess_id_distribuidora IS NOT NULL THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(651,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    -- tem EPAE informada
    IF r1.pess_id_EPAE IS NOT NULL THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(652,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    -- Estacionamento
    IF r1.dm_estacionamento = 'S' THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(695,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;
    IF r1.dm_estacionamento = 'N' THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(674,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;
    IF r1.dm_zona_localizacao = 'R' THEN
      IF (vErro = 'NO') THEN
        -- area rural
        SP_INSERT_CORS_ID(675,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    -- Nivel de contaminac?o
    IF r1.dm_nivel_contaminacao != 1 THEN
      IF (vErro = 'NO') THEN
        -- 1 - n?o detectado
        SP_INSERT_CORS_ID(692,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro);
      END IF;
    END IF;

    -- Area de preservac?o
    IF r1.area_preservacao IS NOT NULL THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(676,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro); -- area a preservar
      END IF;
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(697,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro); -- relatorio fotografico
      END IF;
    END IF;

    -- Projeto de adequac?o do sistema de Detecc?o de Vazamento NBR 13784
    IF r1.dm_adeq_vazamento = 2 THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(642,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro); -- apresentar projeto e data implantac?o
      END IF;
    END IF;

    -- Monitoramento da agua
    IF r1.dm_monitoramento_agua IN (1, 2) THEN
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(637,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro); -- TPH
      END IF;
    ELSE
      IF (vErro = 'NO') THEN
        SP_INSERT_CORS_ID(639,
                          nPrcr_id,
                          nRaat_id,
                          vMesErroInclRestrEsp,
                          vErro); -- VOC
      END IF;
    END IF;
    --------------------------

    CLOSE c1;

  END IF;

END;

PROCEDURE SP_INCLUI_INFORMACOES_SEAMB(nAtan_id               IN NUMBER,
                                                        nPrcr_id               IN NUMBER,
                                                        vMesErroDelCRPRInfo    IN OUT VARCHAR2,
                                                        vMesErroInclAuxCRPR    IN OUT VARCHAR2,
                                                        vMesErroDataVazamento  IN OUT VARCHAR2,
                                                        vMesErroAtualPostoComb IN OUT VARCHAR2,
                                                        vErro                  IN OUT VARCHAR2) IS

  vTexto           VARCHAR2(1000);
  nLinha           NUMBER(5) := NULL;
  vUsuario         VARCHAR2(30);
  dDataAtual       DATE;
  nPess_codigo     NUMBER(10);
  vRazaoSocial     VARCHAR2(140);
  nContador        NUMBER(2);
  nAno             NUMBER(4);
  nMes             NUMBER(2);
  vMes             VARCHAR2(9);
  dDataProjeto     DATE;
  dDataImplantacao DATE;

  CURSOR c1 IS
    SELECT MAX(ainf.linha)
      FROM fep_aux_cond_restr_informacoes ainf
     WHERE ainf.prcr_id = nPrcr_id;

  CURSOR C2 IS
    SELECT ptcb.pess_id_distribuidora,
           ptcb.pess_id_EPAE,
           ptcb.pess_id_manutencao,
           ptcb.dm_eficiencia,
           ptcb.dm_lavagem,
           ptcb.dm_GLP,
           ptcb.dm_monitoramento_agua,
           ptcb.dm_estacionamento,
           ptcb.dm_troca_oleo,
           ptcb.dm_repoe_oleo,
           ptcb.dm_bacia_contencao,
           ptcb.dm_nivel_contaminacao,
           ptcb.dm_tipo_gas,
           ptcb.descr_equipamento,
           INITCAP(LOWER(SUBSTR(cgrf.rv_meaning, 1, 9))) mes_laudo,
           ptcb.estocagem_pressao,
           atan.area_preservacao,
           ptcb.dm_adeq_vazamento,
           ptcb.dm_grau_contaminacao,
           (select loc.zona_localizacao from fep_loc_ativ_antropicas loc where loc.atan_id = ptcb.atan_id and loc.data_fim is null)dm_zona_localizacao
      FROM fep_postos_combustiveis ptcb, cg_ref_codes cgrf
         , fep_atividades_antropicas atan
     WHERE ptcb.atan_id = nAtan_id
       AND ptcb.mes_laudo = cgrf.rv_low_value
       and ptcb.atan_id = atan.atan_id
       AND cgrf.rv_domain = 'DM_MES';
  r2 c2%rowtype;

  CURSOR C3 IS
    SELECT SUBSTR(pess.razao_social || ' - telefone(s) ' ||
                  pess.telefone_fixo_contato,
                  1,
                  120) distribuidora_epae
      FROM fep_pessoas pess
     WHERE pess.pess_id = nPess_codigo;

  CURSOR C31 IS
    SELECT pess.razao_social
      FROM fep_pessoas pess
     WHERE pess.pess_id = nPess_codigo;

  CURSOR C5 IS
    SELECT LOWER(SUBSTR(cgrf.rv_meaning, 1, 9))
      FROM cg_ref_codes cgrf
     WHERE cgrf.rv_low_value = nMes
       AND cgrf.rv_domain = 'DM_MES';

BEGIN

  SP_EXCLUI_AINF(nPrcr_id, vMesErroDelCRPRInfo);

  SELECT USER, SYSDATE INTO vUsuario, dDataAtual FROM dual;
  vUsuario := vUsuario || '-' || 'AUTOM.';

  OPEN c1;
  FETCH c1
    INTO nLinha;
  CLOSE c1;
  IF nLinha IS NULL THEN
    nLinha := 0;
  END IF;

  OPEN c2;
  FETCH c2
    INTO r2;
  IF c2%notfound THEN
    CLOSE c2;
  ELSE

    IF r2.pess_id_distribuidora IS NOT NULL THEN
      nPess_codigo := r2.pess_id_distribuidora;
      OPEN c3;
      FETCH c3
        INTO vRazaoSocial;
      CLOSE c3;
      vTexto := 'Distribuidora: ';
      vTexto := vTexto || vRazaoSocial;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN
        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;

    ELSE
      IF r2.pess_id_EPAE IS NOT NULL THEN
        nPess_codigo := r2.pess_id_EPAE;
        OPEN c3;
        FETCH c3
          INTO vRazaoSocial;
        CLOSE c3;
        vTexto := 'EPAE: ';
        vTexto := vTexto || vRazaoSocial;
        nLinha := nLinha + 10;
        IF (vErro = 'YES') THEN
          SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                     vUsuario,
                                     dDataAtual,
                                     nLinha,
                                     vTexto,
                                     vMesErroInclAuxCRPR,
                                     vErro);
        END IF;
      END IF;
    END IF;

    vTexto := 'Mes de referencia para laudos: ' || r2.mes_laudo;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

    vTexto := 'Zona de localizac?o: ';
    IF r2.dm_zona_localizacao = 'U' THEN
      vTexto := vTexto || 'Urbana';
    ELSIF r2.dm_zona_localizacao = 'R' THEN
      vTexto := vTexto || 'Rural';
    ELSIF r2.dm_zona_localizacao = 'M' THEN
      vTexto := vTexto || 'Mista';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

    vTexto := 'Nivel de contaminac?o: ';
    IF r2.dm_nivel_contaminacao = 1 THEN
      vTexto := vTexto || '1 - N?o detectado';
    ELSIF r2.dm_nivel_contaminacao = 2 THEN
      vTexto := vTexto || '2 - Avaliac?o';
    ELSIF r2.dm_nivel_contaminacao = 3 THEN
      vTexto := vTexto || '3 - Investigac?o';
    ELSIF r2.dm_nivel_contaminacao = 4 THEN
      vTexto := vTexto || '4 - Remediac?o';
    ELSIF r2.dm_nivel_contaminacao = 5 THEN
      vTexto := vTexto || '5 - Monitoramento para reabilitac?o';
    ELSIF r2.dm_nivel_contaminacao = 6 THEN
      vTexto := vTexto || '6 - Reabilitado';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

    IF r2.dm_nivel_contaminacao > 1 THEN
      vTexto := 'Grau de contaminac?o: ';
      IF r2.dm_grau_contaminacao IS NULL THEN
        vTexto := vTexto || 'N?o informado';
      ELSIF r2.dm_grau_contaminacao = 1 THEN
        vTexto := vTexto || 'Baixo';
      ELSIF r2.dm_grau_contaminacao = 2 THEN
        vTexto := vTexto || 'Medio';
      ELSIF r2.dm_grau_contaminacao = 3 THEN
        vTexto := vTexto || 'Alto';
      END IF;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN
        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;
    END IF;

    vTexto := 'Tipo de monitoramento da agua: ';
    IF r2.dm_monitoramento_agua = 1 THEN
      vTexto := vTexto || 'TPH - Trimestral';
    ELSIF r2.dm_monitoramento_agua = 2 THEN
      vTexto := vTexto || 'TPH - Semestral';
    ELSIF r2.dm_monitoramento_agua = 3 THEN
      vTexto := vTexto || 'VOCs - Trimestral';
    ELSIF r2.dm_monitoramento_agua = 4 THEN
      vTexto := vTexto || 'VOCs - Semestral';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

    IF r2.area_preservacao IS NOT NULL THEN
      vTexto := 'Area de preservac?o a implantar: ';
      vTexto := vTexto || LTRIM(RTRIM(REPLACE(TO_CHAR(r2.area_preservacao,
                                                      '9999990.99'),
                                              '.',
                                              ','))) || ' m?';
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN

        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;
    END IF;

    vTexto := 'Eficiencia de emiss?o em efluentes liquidos: ';
    IF r2.dm_eficiencia = 1 THEN
      vTexto := vTexto || 'Baixa';
    ELSIF r2.dm_eficiencia = 2 THEN
      vTexto := vTexto || 'Normal';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN

      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;
    vTexto := 'Tem deposito de GLP ? ';
    IF r2.dm_GLP = 'S' THEN
      vTexto := vTexto || 'Sim';
    ELSE
      vTexto := vTexto || 'N?o';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

    vTexto := 'Tem troca de oleo ? ';
    IF r2.dm_troca_oleo = 'S' THEN
      vTexto := vTexto || 'Sim';
    ELSE
      vTexto := vTexto || 'N?o';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

    IF r2.dm_troca_oleo = 'S' THEN
      vTexto := 'Tem bacia de contenc?o ? ';
      IF r2.dm_bacia_contencao = 'S' THEN
        vTexto := vTexto || 'Sim';
      ELSE
        vTexto := vTexto || 'N?o';
      END IF;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN
        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;
    ELSE
      vTexto := 'Rep?e oleo ? ';
      IF r2.dm_repoe_oleo = 'S' THEN
        vTexto := vTexto || 'Sim';
      ELSE
        vTexto := vTexto || 'N?o';
      END IF;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN
        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;
    END IF;

    vTexto := 'Tem lavagem ? ';
    IF r2.dm_lavagem = 'S' THEN
      vTexto := vTexto || 'Sim';
    ELSE
      vTexto := vTexto || 'N?o';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;
    vTexto := 'Tem estacionamento de carga perigosa ? ';
    IF r2.dm_estacionamento = 'S' THEN
      vTexto := vTexto || 'Sim';
    ELSE
      vTexto := vTexto || 'N?o';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

    vTexto := 'Tipo de gas: ';
    IF r2.dm_tipo_gas = 1 THEN
      vTexto := vTexto || 'GNC - Gas Natural Comprimido';
    ELSIF r2.dm_tipo_gas = 2 THEN
      vTexto := vTexto || 'GNV - Gas Natural Veicular';
    ELSIF r2.dm_tipo_gas = 3 THEN
      vTexto := vTexto || 'N?o tem';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN

      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

    IF r2.dm_tipo_gas = 1 THEN
      vTexto := 'Estocagem/press?o: ';
      vTexto := vTexto || r2.estocagem_pressao;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN

        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;

      vTexto := 'Tipo de equipamento GNC: ';
      vTexto := vTexto || r2.descr_equipamento;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN

        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;
    END IF;

    IF r2.dm_tipo_gas = 2 THEN
      vTexto := 'Quantidade e tipo de equipamento GNV: ';
      vTexto := vTexto || r2.descr_equipamento;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN

        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;
    END IF;

    IF r2.dm_tipo_gas IN (1, 2) THEN
      nPess_codigo := r2.pess_id_manutencao;
      OPEN c31;
      FETCH c31
        INTO vRazaoSocial;
      CLOSE c31;
      vTexto := 'Resp manutenc?o equipamentos: ';
      vTexto := vTexto || vRazaoSocial;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN

        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;
    END IF;

    vTexto := 'Adequac?o do sistema de detecc?o de vazamentos NBR 13784: ';
    IF r2.dm_adeq_vazamento = 1 THEN
      vTexto := vTexto || 'N?o solicitado';
    ELSIF r2.dm_adeq_vazamento = 2 THEN
      vTexto := vTexto || 'Implantar';
    ELSIF r2.dm_adeq_vazamento = 3 THEN
      vTexto := vTexto || 'Apresentado projeto';
    ELSIF r2.dm_adeq_vazamento = 4 THEN
      vTexto := vTexto || 'Implantado';
    END IF;
    nLinha := nLinha + 10;
    IF (vErro = 'NO') THEN
      SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                 vUsuario,
                                 dDataAtual,
                                 nLinha,
                                 vTexto,
                                 vMesErroInclAuxCRPR,
                                 vErro);
    END IF;

    IF r2.dm_adeq_vazamento = 2 THEN
      -- Implantar
      IF (vErro = 'NO') THEN
        SP_DATAS_SEAMB_642(nAtan_id,
                           dDataProjeto,
                           dDataImplantacao,
                           1,
                           vMesErroDataVazamento,
                           vMesErroAtualPostoComb,
                           vErro);
      END IF;

      -- Data do projeto
      vTexto := 'Prazo para apresentar o projeto de detecc?o vazamentos: ';
      nMes   := TO_NUMBER(TO_CHAR(dDataProjeto, 'mm'));
      nAno   := TO_NUMBER(TO_CHAR(dDataProjeto, 'rrrr'));
      OPEN c5;
      FETCH c5
        INTO vMes;
      CLOSE c5;
      vTexto := vTexto || vMes || '/' || nAno;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN
        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;

      -- Data para implantac?o do projeto
      vTexto := 'Prazo para implantac?o do projeto de detecc?o vazamentos: ';
      nMes   := TO_NUMBER(TO_CHAR(dDataImplantacao, 'mm'));
      nAno   := TO_NUMBER(TO_CHAR(dDataImplantacao, 'rrrr'));
      OPEN c5;
      FETCH c5
        INTO vMes;
      CLOSE c5;
      vTexto := vTexto || vMes || '/' || nAno;
      nLinha := nLinha + 10;
      IF (vErro = 'NO') THEN

        SP_INCLUI_INFORMACOES_AINF(nPrcr_id,
                                   vUsuario,
                                   dDataAtual,
                                   nLinha,
                                   vTexto,
                                   vMesErroInclAuxCRPR,
                                   vErro);
      END IF;

    END IF;

  END IF;

END;

PROCEDURE SP_INCLUI_INFORMACOES_AINF(nPrcr_id            IN NUMBER,
                                                       vUsuario            IN VARCHAR2,
                                                       vDataAtual          IN DATE,
                                                       nLinha              IN NUMBER,
                                                       vTexto              IN VARCHAR2,
                                                       vMesErroInclAuxCRPR IN OUT VARCHAR2,
                                                       vErro               IN OUT VARCHAR2) IS
BEGIN

  BEGIN
    INSERT INTO fep_aux_cond_restr_informacoes
      (AINF_ID,
       PRCR_ID,
       LINHA,
       TEXTO,
       DATA_INCLUSAO,
       OPERADOR_INCLUSAO,
       DATA_ATUALIZACAO,
       OPERADOR_ATUALIZACAO)
    VALUES
      (ainf_seq.nextval,
       nPrcr_id,
       nLinha,
       '- ' || vTexto,
       vDataAtual,
       vUsuario,
       vDataAtual,
       vUsuario);
    COMMIT;
  EXCEPTION
    WHEN OTHERS THEN
      vMesErroInclAuxCRPR := ('Erro:(Inclus?o em fep_aux_cond_restr_informacoes) ' ||
                             SQLCODE || '-' || SQLERRM);
      vErro               := 'YES';
  END;

END;


PROCEDURE SP_VERIFICA_PLACAS(nPrcr_id             IN NUMBER,
                                               nRaat_id             IN NUMBER,
                                               vDmPorte             IN OUT VARCHAR2,
                                               vMesErroInclRestrEsp IN OUT VARCHAR2,
                                               vErro                IN OUT VARCHAR2) IS
BEGIN

  -- conforme ordem de servico 03/2009 da presidencia
  -- os empreendimentos de porte Medio, Grande e Excepcional
  -- dever?o ter junto aos empreendimentos
  -- uma placa que identifique o licenciamento    ( Malu  03/05/2009 )

  IF vDmPorte IN ('M', 'G', 'E') THEN
    SP_INSERT_CORS_ID(867, nPrcr_id, nRaat_id, vMesErroInclRestrEsp,vErro);
  END IF;
END;


PROCEDURE SP_VIGENCIA_DOCUMENTO(nProc_id                 In NUMBER,
                                                  nPrcr_id                 IN NUMBER,
                                                  nRaat_id                 IN NUMBER,
                                                  nDocu_id                 IN NUMBER,
                                                  nDmGrupoAut              IN NUMBER,
                                                  dDtIniVigNovo            IN VARCHAR2,
                                                  dDtFimVigNovo            IN VARCHAR2,
                                                  nDocuIdParecer           IN NUMBER,
                                                  nDocuIdLicenca           IN NUMBER,
                                                  vDtFimInf                IN VARCHAR,
                                                  vErro                    IN OUT VARCHAR2,
                                                  vMesErroUPDVencto        IN OUT VARCHAR2,
                                                  vMesErroUPDIdCRPR        IN OUT VARCHAR2,
                                                  vMesErroUPDEflu          IN OUT VARCHAR2,
                                                  vDataVencUltLic          IN DATE,
                                                  vMesDataFimVigMaiorIni   IN OUT VARCHAR2,
                                                  vMesDataFimVigMaiorAtual IN OUT VARCHAR2) IS

  dDataAtual DATE;
  vUsuario   VARCHAR2(30);

  dDataIni         DATE := NULL;
  dDataFim         DATE := NULL;
  dDataIniVigNovo  DATE := NULL;
  dDataFimVigNovo  DATE := NULL;
  nDocu_rev        NUMBER(10);
  dDataFimVigAtual DATE := NULL;
  vDataInf         VARCHAR2(1);
  vDataFimInf      VARCHAR2(1);
  nTidoRevogado    NUMBER(5);
  vDmGeraPend      VARCHAR2(1);
  nProc_id_rev     NUMBER(10);
  nTido_id_docu    NUMBER(5);
  nTido_id_prcr    NUMBER(5);

  CURSOR c1 IS
    SELECT prcr.data_inicio_vigencia,
           prcr.data_fim_vigencia,
           prcr.dm_data_fim_inf,
           prcr.docu_id_revogado,
           docu.data_fim_vigencia,
           docu.tido_id,
           docu.proc_id,
           prcr.dm_gera_lic_pendente,
           docu.tido_id docu_tido_id,
           prcr.tido_id_licenca prcr_tido_id
      FROM fep_aux_proc_cond_restr prcr, fep_documentos docu
     WHERE prcr.prcr_id = nPrcr_id
       AND prcr.docu_id_revogado = docu.docu_id(+);

BEGIN

  SELECT SYSDATE, USER INTO dDataAtual, vUsuario FROM dual;

  dDataIniVigNovo := NULL;
  dDataFimVigNovo := NULL;

  OPEN c1;
  FETCH c1
    INTO dDataIni, dDataFim, vDataInf, nDocu_rev, dDataFimVigAtual, nTidoRevogado, nProc_id_Rev, vDmGeraPend, nTido_id_docu, nTido_id_prcr;
  CLOSE c1;

  vDataFimInf := vDataInf;

  -- Data de inicio de vigencia
  IF vDmGeraPend = 'S' THEN
    -- Fica pendente ate lic atual vencer
    dDataIniVigNovo := vDataVencUltLic + 1;
  END IF;
  IF dDataIniVigNovo IS NULL THEN
    dDataIniVigNovo := TRUNC(dDataAtual);
  END IF;

  -- Data de fim de vigencia
  IF vDataFimInf IS NULL THEN
    vDataFimInf := 'N';
  END IF;
  IF vDataFimInf = 'S' AND dDataFim IS NULL THEN
    vDataFimInf := 'N';
  END IF;

  IF vDataFimInf = 'S' AND dDataFim IS NOT NULL THEN
    dDataFimVigNovo := dDataFim; -- mantem o informado
  ELSE
    IF dDataFimVigAtual IS NOT NULL AND nTidoRevogado != 530 THEN
      -- Revogac?o - mantem mesma data do Doc Revogado
      IF nTido_id_docu = nTido_id_prcr THEN
        -- mesmo tipo de documento
        IF nProc_id_Rev = nProc_id_rev THEN
          -- mesmo processo, mantem a data fim
          dDataFimVigNovo := dDataFimVigAtual;
          vDataFimInf     := 'S';
        END IF;
      END IF;
    END IF;
  END IF;

  IF vDataFimInf = 'N' THEN
    -- licencas dever?o ser por 4 anos - certificados labs: 2 anos
    IF nRaat_id = 5710.10 THEN
      -- laboratorios
      dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo, 24);
    ELSE
      -- a partir de 2010: licencas dever?o ser por 4 anos
      -- e so sera emitido por quem tiver todos os documentos
      dDataFimVigNovo := ADD_MONTHS(dDataIniVigNovo, 48); -- data atual + 4 anos
    END IF;
  END IF;

  IF dDataIniVigNovo > dDataFimVigNovo THEN

    vMesDataFimVigMaiorIni := ('Erro: N?o foi possivel continuar gerac?o. Data de Fim de Vigencia da Licenca menor que Data de Inicio. Verifique.');
    vErro                  := 'YES';
  ELSE
    IF dDataIniVigNovo > TRUNC(dDataAtual) THEN
      IF vDmGeraPend = 'S' THEN
        -- Pendente
        NULL;
      ELSE

        vMesDataFimVigMaiorAtual := ('Erro: N?o foi possivel continuar gerac?o. Data de Inicio de Vigencia informada maior que Data Atual. Verifique.');
        vErro                    := 'YES';
      END IF;
    END IF;
  END IF;

  -- Atualiza a Data de Vigencia do Documento
  IF dDataIni = dDataIniVigNovo AND dDataFim = dDataFimVigNovo AND
     vDataInf = vDataFimInf THEN
    NULL; -- se tudo igual n?o precisa atualizar na tabela
  ELSE
    IF (vErro = 'NO') THEN

      SP_ATUALIZA_PRCR_DADOS(nProc_id,
                             nRaat_id,
                             nDmGrupoAut,
                             1,
                             nPrcr_id,
                             nDocu_id,
                             dDataIniVigNovo,
                             dDataFimVigNovo,
                             nDocuIdParecer,
                             nDocuIdLicenca,
                             --nPoll_id         IN NUMBER,
                             vDataFimInf,
                             vMesErroUPDVencto,
                             vMesErroUPDIdCRPR,
                             vErro);

    END IF;
  END IF;

END;


FUNCTION FC_PERIODO_VIGENCIA(nPrcr_id  IN NUMBER ) RETURN VARCHAR2 IS

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
      WHERE prcr.prcr_id         = nPrcr_id
        AND prcr.docu_id_licenca = docu.docu_id
        AND prcr.docu_id_licenca IS NOT NULL;


  CURSOR c2 IS
    SELECT prcr.data_inicio_vigencia,
           prcr.data_fim_vigencia
      FROM fep_aux_proc_cond_restr prcr
     WHERE prcr.prcr_id          = nPrcr_id;

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

  vPeriodo := vDataIniVig || ' a ' || vDataFimVig;

  RETURN(vPeriodo);

END;


PROCEDURE SP_DATAS_SEAMB_642(nAtan_id               IN NUMBER,
                                               vDataProjeto           IN OUT DATE,
                                               vDataImplantacao       IN OUT DATE,
                                               vOrigem                IN NUMBER,
                                               vMesErroDataVazamento  IN OUT VARCHAR2,
                                               vMesErroAtualPostoComb IN OUT VARCHAR2,
                                               vErro                  IN OUT VARCHAR2) IS

  dDataProjeto     DATE;
  dDataImplantacao DATE;
  nVazamento       NUMBER(1);
  nDia             NUMBER(2);
  nMes             NUMBER(2);
  nAno             NUMBER(4);
  vDataP           VARCHAR(8);
  vDataI           VARCHAR(8);

  CURSOR c1 IS
    SELECT ptcb.dm_adeq_vazamento, ptcb.data_projeto, ptcb.data_implantacao
      FROM fep_postos_combustiveis ptcb
     WHERE ptcb.atan_id = nAtan_id;

BEGIN

  OPEN c1;
  FETCH c1
    INTO nVazamento, dDataProjeto, dDataImplantacao;
  CLOSE c1;

  IF dDataProjeto IS NULL OR dDataImplantacao IS NULL THEN
    nDia := 01;
    nMes := TO_NUMBER(TO_CHAR(SYSDATE, 'mm'));
    IF nMes = 01 THEN
      nMes := 12;
      nAno := TO_NUMBER(TO_CHAR(SYSDATE, 'rrrr'));
    ELSE
      nMes := nMes - 1;
      nAno := TO_NUMBER(TO_CHAR(SYSDATE, 'rrrr')) + 1;
    END IF;
    vDataP           := LPAD(TO_CHAR(nDia), 2, '0') ||
                        LPAD(TO_CHAR(nMes), 2, '0') ||
                        LPAD(TO_CHAR(nAno), 4, '0');
    vDataI           := LPAD(TO_CHAR(nDia), 2, '0') ||
                        LPAD(TO_CHAR(nMes), 2, '0') ||
                        LPAD(TO_CHAR(nAno + 1), 4, '0');
    vDataProjeto     := TO_DATE(vDataP, 'ddmmrrrr');
    vDataImplantacao := TO_DATE(vDataI, 'ddmmrrrr');
  ELSE
    vDataProjeto     := dDataProjeto;
    vDataImplantacao := dDataImplantacao;
  END IF;

  IF vDataProjeto >= vDataImplantacao THEN

    vMesErroDataVazamento := ('Erro: Data do Projeto deve ser menor que Data de Implantac?o para Vazamento. ' ||
                             'Verificar em (Posto Combustivel).');
    vErro                 := 'YES';
  END IF;

  -- Gerac?o da Licenca para o Seamb
  IF vOrigem = 2 THEN
    -- Se primeira vez, so atualiza no Cadastro do Posto quando for gerar a Licenca
    IF nVazamento = 2 THEN
      IF (vErro = 'NO') THEN
        -- Implantar
        BEGIN
          UPDATE fep_postos_combustiveis
             SET data_projeto     = vDataProjeto,
                 data_implantacao = vDataImplantacao
           WHERE atan_id = nAtan_id;
        EXCEPTION
          WHEN OTHERS THEN
            vMesErroAtualPostoComb := ('Erro: (Atualiza datas fep_postos_combustiveis) ' ||
                                      SQLCODE || '-' || SQLERRM);
            vErro := 'YES';
        END;
      END IF;
    END IF;
  END IF;

END;

PROCEDURE SP_INCLUI_SUB_AXGE(nAtan_id              IN NUMBER,
                                               nPrcr_id              IN NUMBER,
                                               nIncluidos            IN OUT NUMBER,
                                               vMesItemEspOpcNivel0  IN OUT VARCHAR2,
                                               vMesItemCrprOpcNivel0 IN OUT VARCHAR2) IS

  nLcrs_id        NUMBER(10);
  dDataAtual      DATE;
  vUsuario        VARCHAR2(30);
  vDescrCors      VARCHAR2(2000);
  nContador       NUMBER(2);
  nCors_id        NUMBER(10);
  vPonto          VARCHAR2(6) := NULL;
  vDescrNomePonto VARCHAR2(60) := NULL;

  CURSOR c1 IS
    SELECT axge.axge_id, axge.clcr_id, axge.sequencia
      FROM fep_aux_gera_cond_restr axge
     WHERE axge.prcr_id = nPrcr_id
       AND axge.incluido = 'X'
       AND axge.tipo_cond IN (2, 3) -- opcional ou especifico
       AND axge.tipo_item = 2 -- sub item
       AND axge.dm_tipo_cond_restr = 1 -- incluir
       AND NOT EXISTS (SELECT NULL
              FROM fep_aux_gera_cond_restr axge1
             WHERE axge1.prcr_id = axge.prcr_id
               AND axge1.clcr_id = axge.clcr_id
               AND axge1.sequencia = axge.sequencia
               AND axge1.incluido = 'X'
               AND axge1.nivel = 0);

  r1 c1%rowtype;

  CURSOR c2 IS
    SELECT axge.lcrs_id, axge.descricao, lcrs.cors_id
      FROM fep_aux_gera_cond_restr axge, fep_listas_cond_restricoes lcrs
     WHERE axge.prcr_id = nPrcr_id
       AND axge.nivel = 0 -- item
       AND axge.clcr_id = r1.clcr_id
       AND axge.lcrs_id = lcrs.lcrs_id(+)
       AND axge.sequencia = r1.sequencia
       AND axge.incluido IS NULL;

  CURSOR c3 IS
    SELECT COUNT(*)
      FROM fep_aux_cond_restr_especiais cree
     WHERE cree.prcr_id = nPrcr_id
       AND cree.lcrs_id = nLcrs_id;

  CURSOR c4 IS
    SELECT COUNT(*)
      FROM fep_aux_cond_restr_par_lic acrl
     WHERE acrl.prcr_id = nPrcr_id
       AND acrl.lcrs_id = nLcrs_id;

BEGIN

  SELECT SYSDATE, USER INTO dDataAtual, vUsuario FROM dual;
  vUsuario := vUsuario || '-' || 'AUTOM.';

  -- Verifica se tem Sub_Item Marcado sem ter o Nivel zero
  -- Se n?o encontrar - inclui

  OPEN c1;
  LOOP
    FETCH c1
      INTO r1;
    IF c1%notfound THEN
      CLOSE c1;
      EXIT;
    ELSE
      nLcrs_id := NULL;
      OPEN c2;
      FETCH c2
        INTO nLcrs_id, vDescrCors, nCors_id;
      CLOSE c2;

      IF nLcrs_id IS NOT NULL THEN

        OPEN c3;
        FETCH c3
          INTO nContador;
        CLOSE c3;

        IF nContador = 0 THEN
          BEGIN
            INSERT INTO fep_aux_cond_restr_especiais
              (CREE_ID,
               PRCR_ID,
               LCRS_ID,
               TIPO_COND_RESTR,
               DM_IGNORAR,
               DATA_INCLUSAO,
               OPERADOR_INCLUSAO,
               DATA_ATUALIZACAO,
               OPERADOR_ATUALIZACAO)
            VALUES
              (cree_seq.nextval,
               nPrcr_id,
               nLcrs_id,
               1,
               'N',
               dDataAtual,
               vUsuario,
               dDataAtual,
               vUsuario);

            nIncluidos := nIncluidos + 1;

          EXCEPTION
            WHEN OTHERS THEN

              vMesItemEspOpcNivel0 := ('Erro1: Inclui Item opcional de Nivel 0 em fep_aux_cond_restr_especiais ) ' ||
                                      SQLCODE || '-' || SQLERRM);
          END;
        END IF;

        OPEN c4;
        FETCH c4
          INTO nContador;
        CLOSE c4;

        IF nContador = 0 THEN

          IF nCors_id IN (170, 185, 171, 178) THEN
            IF nCors_id = 170 THEN
              -- Nome do PCR1
              vPonto := 'PCR1';
            END IF;
            IF nCors_id = 185 THEN
              -- Nome do PCR2
              vPonto := 'PCR2';
            END IF;
            IF nCors_id = 171 THEN
              -- Nome do PCR3
              vPonto := 'PCR3';
            END IF;
            IF nCors_id = 178 THEN
              -- Nome do PCR4
              vPonto := 'PCR4';
            END IF;

            vDescrNomePonto := FC_NOME_PONTO_PCR(nAtan_id, vPonto);

            vDescrCors := REPLACE(vDescrCors,
                                  '[NOME_PONTO]',
                                  LTRIM(RTRIM(vDescrNomePonto)));
          END IF;

          BEGIN
            INSERT INTO fep_aux_cond_restr_par_lic
              (ACRL_ID,
               PRCR_ID,
               LCRS_ID,
               CORS_DESCRICAO,
               DATA_INCLUSAO,
               OPERADOR_INCLUSAO,
               DATA_ATUALIZACAO,
               OPERADOR_ATUALIZACAO,
               CRPR_ID)
            VALUES
              (acrl_seq.nextval,
               nPrcr_id,
               nLcrs_id,
               vDescrCors,
               dDataAtual,
               vUsuario,
               dDataAtual,
               vUsuario,
               NULL);
          EXCEPTION
            WHEN OTHERS THEN
              vMesItemCrprOpcNivel0 := ('Erro2: Inclui Item opcional de Nivel 0 em fep_aux_cond_restr_par_lic ) ' ||
                                       SQLCODE || '-' || SQLERRM);
          END;
        END IF;

      END IF;
    END IF;
  END LOOP;

END;

PROCEDURE SP_PONTUACAO_COND_RESTR(nPrcr_id               IN NUMBER,
                                                    vMesErroAtualPontuacao IN OUT VARCHAR2) IS

  nContador      NUMBER(10) := 0;
  nAtualiza      NUMBER(1) := 0;
  vDescricaoNova VARCHAR2(2000);

  vDescricao_ant    VARCHAR2(2000);
  nCors_id_ant      NUMBER(10);
  nSeq_classe_ant   NUMBER(10);
  nAcrl_id_ant      NUMBER(10);
  nTam_ant          NUMBER(5);
  vUlt_caracter_ant VARCHAR2(1) := NULL;

  vDescricao_atu    VARCHAR2(2000);
  nCors_id_atu      NUMBER(10);
  nSeq_classe_atu   NUMBER(10);
  nAcrl_id_atu      NUMBER(10);
  nTam_atu          NUMBER(5);
  vUlt_caracter_atu VARCHAR2(1) := NULL;

  CURSOR c1 IS
    SELECT clcr.sequencia seq_classe,
           cors.sequencia seq_01,
           cors.sequencia_sub seq_02,
           cors.cors_id cors_id,
           LENGTH(acrl.cors_descricao) tam,
           SUBSTR(acrl.cors_descricao, LENGTH(acrl.cors_descricao), 1) vlr_ult,
           acrl.cors_descricao cors_descricao,
           acrl.acrl_id acrl_id
      FROM fep_aux_proc_cond_restr     prcr,
           fep_aux_cond_restr_par_lic  acrl,
           fep_condicoes_restricoes    cors,
           fep_listas_cond_restricoes  lcrs,
           fep_classes_cond_restricoes clcr
     WHERE prcr.prcr_id = nPrcr_id
       AND prcr.prcr_id = acrl.prcr_id
       AND acrl.lcrs_id = lcrs.lcrs_id
       AND lcrs.cors_id = cors.cors_id
       AND cors.clcr_id = clcr.clcr_id
       AND lcrs.dm_licenca = 'S'
       AND acrl.lcrs_id IS NOT NULL
    UNION ALL
    SELECT clcr.sequencia seq_classe,
           crpr.sequencia seq_01,
           crpr.sequencia_sub seq_02,
           TO_NUMBER(NULL) cors_id,
           LENGTH(acrl.cors_descricao) tam,
           SUBSTR(acrl.cors_descricao, LENGTH(acrl.cors_descricao), 1) vlr_ult,
           acrl.cors_descricao cors_descricao,
           acrl.acrl_id acrl_id
      FROM fep_aux_proc_cond_restr     prcr,
           fep_aux_cond_restr_par_lic  acrl,
           fep_aux_cond_restr_proc     crpr,
           fep_classes_cond_restricoes clcr
     WHERE prcr.prcr_id = nPrcr_id
       AND prcr.prcr_id = acrl.prcr_id
       AND acrl.crpr_id = crpr.crpr_id
       AND crpr.clcr_id = clcr.clcr_id
       AND crpr.dm_licenca = 'S'
       AND acrl.crpr_id IS NOT NULL
     ORDER BY 1, 2, 3;

  r1 c1%rowtype;

BEGIN

  OPEN c1;
  LOOP
    FETCH c1
      INTO r1;
    IF c1%notfound THEN
      CLOSE c1;
      EXIT;
    ELSE
      nContador := nContador + 1;

      IF nContador = 1 THEN
        vDescricao_ant    := r1.cors_descricao;
        nCors_id_ant      := r1.cors_id;
        nAcrl_id_ant      := r1.acrl_id;
        nSeq_classe_ant   := r1.seq_classe;
        nTam_ant          := r1.tam;
        vUlt_caracter_ant := r1.vlr_ult;
      ELSE
        -- guarda o valor lido no registro anterior
        vDescricao_ant    := vDescricao_atu;
        nCors_id_ant      := nCors_id_atu;
        nSeq_classe_ant   := nSeq_classe_atu;
        nAcrl_id_ant      := nAcrl_id_atu;
        nTam_ant          := nTam_atu;
        vUlt_caracter_ant := vUlt_caracter_atu;
      END IF;

      vDescricao_atu    := r1.cors_descricao;
      nCors_id_atu      := r1.cors_id;
      nSeq_classe_atu   := r1.seq_classe;
      nAcrl_id_atu      := r1.acrl_id;
      nTam_atu          := r1.tam;
      vUlt_caracter_atu := r1.vlr_ult;

      nAtualiza := 0;

      -- a atualizac?o sempre e em referencia ao registro lido anterior

      -- Todos os registros anteriores a classe de Renov Licenca -- Com vistas a renovac?o da LIC ...
      -- os registros com descric?o terminada em ponto, devem ser alterados para ponto e virgula
      -- somente a sequencia anterior ao cors_id 99 que deve ser terminada com ponto
      -- exceto os itens terminados com dois pontos que devem ser deixados como est?o
      --             cfme solicitac?o Regina - Sedapi   em 23/06/2004    -  Malu

      IF vUlt_caracter_ant IN (';', '.') THEN
        IF nSeq_classe_atu = 800 THEN
          -- se o anterior foi terminado com ; alterar para .
          IF vUlt_caracter_ant = ';' THEN
            vDescricaoNova := SUBSTR(vDescricao_ant, 1, nTam_ant - 1) || '.';
            nAtualiza      := 1;
          END IF;
        ELSE
          -- se o anterior foi terminado com . alterar para ;
          IF vUlt_caracter_ant = '.' THEN
            vDescricaoNova := SUBSTR(vDescricao_ant, 1, nTam_ant - 1) || ';';
            nAtualiza      := 1;
          END IF;
        END IF;
      END IF;

      IF nAtualiza = 1 THEN
        BEGIN
          UPDATE fep_aux_cond_restr_par_lic
             SET cors_descricao = vDescricaoNova
           WHERE acrl_id = nAcrl_id_ant;
        EXCEPTION
          WHEN OTHERS THEN
            vMesErroAtualPontuacao := ('Erro: ( Atualiz pontuac?o em fep_aux_cond_restr_par_lic ) ' ||
                                      SQLCODE || '-' || SQLERRM);
        END;
      END IF;

      IF nSeq_classe_atu = 800 THEN
        --- registro limite para parar de atualizar
        CLOSE c1;
        EXIT;
      END IF;

    END IF;
  END LOOP;
END;


PROCEDURE SP_GERAR_CONTAM_POSTOS(nPrcr_id           IN NUMBER,
                                                   vMesErroInclPostos IN OUT VARCHAR2,
                                                   vMesErroUPDPostos  IN OUT VARCHAR2,
                                                   vErro              IN OUT VARCHAR2) IS

  nCree_id   NUMBER(10);
  nContador  NUMBER(5);
  nIndice    NUMBER(5);
  nSequencia NUMBER(3);
  vParametro VARCHAR2(20);
  vNomePoco  VARCHAR2(30);

  CURSOR c0 IS
    SELECT cree.cree_id
      FROM fep_aux_cond_restr_especiais cree,
           fep_listas_cond_restricoes   lcrs
     WHERE cree.prcr_id = nPrcr_id
       AND cree.lcrs_id = lcrs.lcrs_id
       AND lcrs.cors_id = 838;

  CURSOR c1 IS
    SELECT acpc.poco_param
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id
       AND (acpc.benzeno IS NOT NULL OR acpc.tolueno IS NOT NULL OR
           acpc.xileno IS NOT NULL OR acpc.etilbenzeno IS NOT NULL OR
           acpc.tph IS NOT NULL OR acpc.pah IS NOT NULL OR
           acpc.data_medida IS NOT NULL OR acpc.laboratorio IS NOT NULL)
     ORDER BY 1;

  CURSOR c21 IS
    SELECT COUNT(*)
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id
       AND acpc.benzeno IS NOT NULL;

  CURSOR c22 IS
    SELECT COUNT(*)
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id
       AND acpc.tolueno IS NOT NULL;

  CURSOR c23 IS
    SELECT COUNT(*)
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id
       AND acpc.xileno IS NOT NULL;

  CURSOR c24 IS
    SELECT COUNT(*)
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id
       AND acpc.etilbenzeno IS NOT NULL;

  CURSOR c25 IS
    SELECT COUNT(*)
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id
       AND acpc.tph IS NOT NULL;

  CURSOR c26 IS
    SELECT COUNT(*)
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id
       AND acpc.pah IS NOT NULL;

  CURSOR c27 IS
    SELECT COUNT(*)
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id
       AND acpc.data_medida IS NOT NULL;

  CURSOR c28 IS
    SELECT COUNT(*)
      FROM fep_aux_contam_postos acpc
     WHERE acpc.prcr_id = nPrcr_id
       AND acpc.laboratorio IS NOT NULL;

BEGIN

  OPEN c0;
  FETCH c0
    INTO nCree_id;
  CLOSE c0;
  IF nCree_id IS NOT NULL THEN

    nSequencia := 1;

    IF (vErro = 'NO') THEN
      BEGIN
        INSERT INTO fep_aux_impr_postos
          (sequencia,
           tipo,
           prcr_id,
           nome_poco,
           param1,
           param2,
           param3,
           param4,
           param5,
           param6,
           param7,
           param8)
        VALUES
          (nSequencia,
           0,
           nPrcr_id,
           'Poco/Parametro (?g/l)',
           NULL,
           NULL,
           NULL,
           NULL,
           NULL,
           NULL,
           NULL,
           NULL);

      EXCEPTION
        WHEN OTHERS THEN
          vMesErroInclPostos := ('Erro: Incl fep_aux_impr_postos - header ) ' ||
                                SQLCODE || '-' || SQLERRM);
          vErro              := 'YES';
      END;
    END IF;

    OPEN c1;
    LOOP
      FETCH c1
        INTO vNomePoco;
      IF c1%notfound THEN
        CLOSE c1;
        EXIT;
      ELSE
        IF (vErro = 'NO') THEN
          nSequencia := nSequencia + 1;
          BEGIN
            INSERT INTO fep_aux_impr_postos
              (sequencia, tipo, prcr_id, nome_poco)
            VALUES
              (nSequencia, 1, nPrcr_id, vNomePoco);

          EXCEPTION
            WHEN OTHERS THEN
              vMesErroInclPostos := ('Erro: Incl fep_aux_impr_postos ) ' ||
                                    SQLCODE || '-' || SQLERRM);
              vErro              := 'YES';
          END;
        END IF;
      END IF;
    END LOOP;

    nIndice := 0;

    -- Verifica se tem Data Medida Informada
    OPEN c27;
    FETCH c27
      INTO nContador;
    CLOSE c27;
    IF nContador > 0 THEN
      nIndice    := nIndice + 1;
      vParametro := 'Data';

      IF (vErro = 'NO') THEN
        SP_INCLUI_TIT_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroInclPostos);
      END IF;

      IF (vMesErroInclPostos IS NULL) THEN
        --Ver com Malu
        SP_INCLUI_VAL_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroUPDPostos);
      END IF;

    END IF;

    -- Verifica se tem Laboratorio Informado
    OPEN c28;
    FETCH c28
      INTO nContador;
    CLOSE c28;
    IF nContador > 0 THEN
      nIndice    := nIndice + 1;
      vParametro := 'Laboratorio';

      IF (vMesErroUPDPostos IS NULL) THEN
        SP_INCLUI_TIT_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroInclPostos);
      END IF;

      IF (vMesErroInclPostos IS NULL) THEN
        --comentei ver com Malu
        SP_INCLUI_VAL_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroUPDPostos);
      END IF;
    END IF;

    -- Verifica se tem Benzeno
    OPEN c21;
    FETCH c21
      INTO nContador;
    CLOSE c21;
    IF nContador > 0 THEN
      nIndice    := nIndice + 1;
      vParametro := 'Benzeno';

      IF (vMesErroUPDPostos IS NULL) THEN
        SP_INCLUI_TIT_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroInclPostos);
      END IF;

      IF (vMesErroInclPostos IS NULL) THEN
        --comentei ver com Malu
        SP_INCLUI_VAL_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroUPDPostos);
      END IF;
    END IF;

    -- Verifica se tem Tolueno
    OPEN c22;
    FETCH c22
      INTO nContador;
    CLOSE c22;
    IF nContador > 0 THEN
      nIndice    := nIndice + 1;
      vParametro := 'Tolueno';

      IF (vMesErroUPDPostos IS NULL) THEN
        SP_INCLUI_TIT_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroInclPostos);
      END IF;

      IF (vMesErroInclPostos IS NULL) THEN
        --comentei ver com Malu
        SP_INCLUI_VAL_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroUPDPostos);
      END IF;
    END IF;

    -- Verifica se tem Xileno
    OPEN c23;
    FETCH c23
      INTO nContador;
    CLOSE c23;
    IF nContador > 0 THEN
      nIndice    := nIndice + 1;
      vParametro := 'Xileno';

      IF (vMesErroUPDPostos IS NULL) THEN
        SP_INCLUI_TIT_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroInclPostos);
      END IF;
      IF (vMesErroInclPostos IS NULL) THEN
        --comentei ver com Malu
        SP_INCLUI_VAL_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroUPDPostos);
      END IF;
    END IF;

    -- Verifica se tem Etilbenzeno
    OPEN c24;
    FETCH c24
      INTO nContador;
    CLOSE c24;
    IF nContador > 0 THEN
      nIndice    := nIndice + 1;
      vParametro := 'Etilbenzeno';
      IF (vMesErroUPDPostos IS NULL) THEN
        SP_INCLUI_TIT_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroInclPostos);

      END IF;

      IF (vMesErroInclPostos IS NULL) THEN
        --comentei ver com Malu
        SP_INCLUI_VAL_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroUPDPostos);
      END IF;
    END IF;

    -- Verifica se tem TPH
    OPEN c25;
    FETCH c25
      INTO nContador;
    CLOSE c25;
    IF nContador > 0 THEN
      nIndice    := nIndice + 1;
      vParametro := 'TPH';

      IF (vMesErroUPDPostos IS NULL) THEN
        SP_INCLUI_TIT_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroInclPostos);
      END IF;

      IF (vMesErroInclPostos IS NULL) THEN
        --comentei ver com Malu
        SP_INCLUI_VAL_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroUPDPostos);
      END IF;
    END IF;

    -- Verifica se tem PAHs
    OPEN c26;
    FETCH c26
      INTO nContador;
    CLOSE c26;
    IF nContador > 0 THEN
      nIndice    := nIndice + 1;
      vParametro := 'PAHs';

      IF (vMesErroUPDPostos IS NULL) THEN
        SP_INCLUI_TIT_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroInclPostos);
      END IF;

      IF (vMesErroInclPostos IS NULL) THEN
        --comentei ver com Malu
        SP_INCLUI_VAL_PARAM(nPrcr_id,
                            nIndice,
                            vParametro,
                            vMesErroUPDPostos);
      END IF;

    END IF;

  END IF;

END;

PROCEDURE SP_INCLUI_TIT_PARAM(nPrcr_id         IN NUMBER,
                                                nIndice          IN NUMBER,
                                                vParametro       IN VARCHAR2,
                                                vMesErroInclPostos IN OUT VARCHAR2) IS

BEGIN

  BEGIN
    IF nIndice = 1 THEN
      UPDATE fep_aux_impr_postos
         SET param1 = vParametro
       WHERE prcr_id = nPrcr_id
         AND sequencia = 1
         AND tipo = 0;
    ELSIF nIndice = 2 THEN
      UPDATE fep_aux_impr_postos
         SET param2 = vParametro
       WHERE prcr_id = nPrcr_id
         AND sequencia = 1
         AND tipo = 0;
    ELSIF nIndice = 3 THEN
      UPDATE fep_aux_impr_postos
         SET param3 = vParametro
       WHERE prcr_id = nPrcr_id
         AND sequencia = 1
         AND tipo = 0;
    ELSIF nIndice = 4 THEN
      UPDATE fep_aux_impr_postos
         SET param4 = vParametro
       WHERE prcr_id = nPrcr_id
         AND sequencia = 1
         AND tipo = 0;
    ELSIF nIndice = 5 THEN
      UPDATE fep_aux_impr_postos
         SET param5 = vParametro
       WHERE prcr_id = nPrcr_id
         AND sequencia = 1
         AND tipo = 0;
    ELSIF nIndice = 6 THEN
      UPDATE fep_aux_impr_postos
         SET param6 = vParametro
       WHERE prcr_id = nPrcr_id
         AND sequencia = 1
         AND tipo = 0;
    ELSIF nIndice = 7 THEN
      UPDATE fep_aux_impr_postos
         SET param7 = vParametro
       WHERE prcr_id = nPrcr_id
         AND sequencia = 1
         AND tipo = 0;
    ELSIF nIndice = 8 THEN
      UPDATE fep_aux_impr_postos
         SET param8 = vParametro
       WHERE prcr_id = nPrcr_id
         AND sequencia = 1
         AND tipo = 0;

    END IF;

    commit;

  EXCEPTION
    WHEN OTHERS THEN
      vMesErroInclPostos := ('Erro: Atualizacao parametros fep_aux_impr_postos - header ) ' ||
                          SQLCODE || '-' || SQLERRM);
  END;

END;


PROCEDURE SP_INCLUI_VAL_PARAM(nPrcr_id          IN NUMBER,
                                                nIndice           IN NUMBER,
                                                vParametro        IN VARCHAR2,
                                                vMesErroUPDPostos IN OUT VARCHAR2) IS

  nSequencia  NUMBER(10);
  vValorParam VARCHAR2(20);

  CURSOR c1 IS
    SELECT aipc.sequencia,
           aipc.nome_poco,
           acpc.benzeno,
           acpc.tolueno,
           acpc.xileno,
           acpc.etilbenzeno,
           acpc.tph,
           acpc.pah,
           acpc.data_medida,
           acpc.laboratorio
      FROM fep_aux_contam_postos acpc, fep_aux_impr_postos aipc
     WHERE acpc.prcr_id = nPrcr_id
       AND aipc.prcr_id = nPrcr_id
       AND aipc.nome_poco = acpc.poco_param
     ORDER BY 1;
  r1 c1%rowtype;

BEGIN

  OPEN c1;
  LOOP
    FETCH c1
      INTO r1;
    IF c1%notfound THEN
      CLOSE c1;
      EXIT;
    ELSE
      IF vParametro = 'Data' THEN
        vValorParam := SUBSTR(TO_CHAR(r1.data_medida, 'dd/mm/rrrr'), 1, 10);
      ELSIF vParametro = 'Laboratorio' THEN
        vValorParam := r1.laboratorio;
      ELSIF vParametro = 'Benzeno' THEN
        vValorParam := r1.benzeno;
      ELSIF vParametro = 'Tolueno' THEN
        vValorParam := r1.tolueno;
      ELSIF vParametro = 'Xileno' THEN
        vValorParam := r1.xileno;
      ELSIF vParametro = 'Etilbenzeno' THEN
        vValorParam := r1.etilbenzeno;
      ELSIF vParametro = 'TPH' THEN
        vValorParam := r1.tph;
      ELSIF vParametro = 'PAHs' THEN
        vValorParam := r1.pah;
      END IF;

      nSequencia := r1.sequencia;

      BEGIN

        IF nIndice = 1 THEN
          UPDATE fep_aux_impr_postos
             SET param1 = vValorParam
           WHERE prcr_id = nPrcr_id
             AND sequencia = nSequencia
             AND tipo = 1;
        ELSIF nIndice = 2 THEN
          UPDATE fep_aux_impr_postos
             SET param2 = vValorParam
           WHERE prcr_id = nPrcr_id
             AND sequencia = nSequencia
             AND tipo = 1;
        ELSIF nIndice = 3 THEN
          UPDATE fep_aux_impr_postos
             SET param3 = vValorParam
           WHERE prcr_id = nPrcr_id
             AND sequencia = nSequencia
             AND tipo = 1;
        ELSIF nIndice = 4 THEN
          UPDATE fep_aux_impr_postos
             SET param4 = vValorParam
           WHERE prcr_id = nPrcr_id
             AND sequencia = nSequencia
             AND tipo = 1;
        ELSIF nIndice = 5 THEN
          UPDATE fep_aux_impr_postos
             SET param5 = vValorParam
           WHERE prcr_id = nPrcr_id
             AND sequencia = nSequencia
             AND tipo = 1;
        ELSIF nIndice = 6 THEN
          UPDATE fep_aux_impr_postos
             SET param6 = vValorParam
           WHERE prcr_id = nPrcr_id
             AND sequencia = nSequencia
             AND tipo = 1;
        ELSIF nIndice = 7 THEN
          UPDATE fep_aux_impr_postos
             SET param7 = vValorParam
           WHERE prcr_id = nPrcr_id
             AND sequencia = nSequencia
             AND tipo = 1;
        ELSIF nIndice = 8 THEN
          UPDATE fep_aux_impr_postos
             SET param8 = vValorParam
           WHERE prcr_id = nPrcr_id
             AND sequencia = nSequencia
             AND tipo = 1;
        END IF;

        commit;

      EXCEPTION
        WHEN OTHERS THEN

          vMesErroUPDPostos := ('Erro: Atualizacao parametros fep_aux_impr_postos - valor ) ' ||
                               SQLCODE || '-' || SQLERRM);

      END;

    END IF;
  END LOOP;

END;


-- Fim Tipos Documentos --

-- REQUERENTE MP --
Procedure SP_REQUERENTE_MP_GET
(
nPess_id in number,
cur out sys_refcursor
)
as
begin
  open cur for
  SELECT FP.RAZAO_SOCIAL
  FROM FEP_PESSOAS FP
  WHERE FP.PESS_ID = nPess_id
  AND FP.DM_MP = 'S';
end;

Procedure SP_ASSUNTO_GET
(
nASPR_ID in number,
cur out sys_refcursor
)
as
begin
  open cur for
  SELECT FX.DESCRICAO
  FROM FEP_ASSUNTOS_PROCESSOS FX
  WHERE FX.ASPR_ID = nASPR_ID
  and fx.dm_incluir_mp = 'S';
end;

Procedure SP_TPDOC_GET
(
TIDO_ID in number,
cur out sys_refcursor
)
as
begin
  open cur for
  SELECT TI.ABREVIATURA||' - '||TI.DESCRICAO
  FROM FEP_TIPOS_DOCUMENTOS TI
  WHERE TI.TIDO_ID = TIDO_ID
  AND TI.DM_INCLUIR_MP = 'S';
end;

Procedure SP_SETOR_GET
(
SETO_ID in number,
cur out sys_refcursor
)
as
begin
  open cur for
  SELECT FS.SIGLA||' - '||FS.NOME
  FROM FEP_SETORES FS
  WHERE FS.SETO_ID = SETO_ID
  AND FS.DATA_EXTINCAO IS NULL;
end;

Procedure SP_MUNICIPIO_GET
(
cur out sys_refcursor
)
as
begin
  open cur for
  select * from fep_municipios;
end;

Procedure SP_DADOSPESS_GET(nPESS_ID in number, cur out sys_refcursor)
as
begin
  open cur for
  select nvl(ffx.tilo_id,ffx.tilo_id_corresp   ) Logradouro
     , nvl(ffx.endereco,ffx.endereco_corresp ) Endereco_corresp
     , nvl(ffx.bairro,ffx.bairro_corresp     ) Bairro_corresp
     , nvl(ffx.muni_id,ffx.muni_id_corresp   ) Muni_id
     , nvl(ffx.cep,ffx.cep_corresp           ) Cep_corresp
     , ffx.observacao                          Observacao
  from fep_pessoas ffx
  where ffx.dm_mp = 'S'
  and ffx.pess_id = to_number(nPESS_ID);
end;

Procedure SP_PESSIDBYRAZAOSOCIAL_GET(RAZAOSOCIAL in VARCHAR2, cur out sys_refcursor)
as
begin
  open cur for
  select fp.pess_id  || '$' || fp.razao_social CODIGO
       , fp.razao_social "RAZ?O SOCIAL"
  from fep_pessoas fp
  where fp.dm_mp = 'S'
  and upper(fp.razao_social) like '%' || upper(RAZAOSOCIAL) || '%'
  Order by fp.razao_social;

end;

Procedure SP_ASPRIDBYASSUNTODESC_GET ( ASSUNTODESC in VARCHAR2 , cur out sys_refcursor)
as
begin
  open cur for
  SELECT FP.ASPR_ID
       , FP.DESCRICAO
  FROM FEP_ASSUNTOS_PROCESSOS FP
  WHERE FP.dm_incluir_mp = 'S'
  AND upper(fp.descricao) like '%' || upper(ASSUNTODESC) || '%';
end;

Procedure SP_TIDOIDBYTPDOCDESC_GET ( TPDOCDESC in VARCHAR2 , cur out sys_refcursor)
as
begin
  open cur for
  SELECT FTD.TIDO_ID
       , FTD.DESCRICAO
  FROM FEP_TIPOS_DOCUMENTOS FTD
  WHERE FTD.DM_INCLUIR_MP = 'S'
  AND UPPER(FTD.DESCRICAO) LIKE '%' || UPPER(TPDOCDESC) || '%';
end;

Procedure SP_SETOIDBYDESCRICAO_GET ( DESCRICAO in VARCHAR2 , cur out sys_refcursor)
as
begin
  open cur for
  SELECT FS.SETO_ID
       , FS.SIGLA||' - '||FS.NOME AS DESCRICAO
  FROM FEP_SETORES FS
  WHERE FS.DATA_EXTINCAO IS NULL
  AND UPPER(FS.SIGLA||' - '||FS.NOME) LIKE '%' || UPPER(DESCRICAO) || '%';
end;

Procedure SP_PROCESSOBYID_GET( nid number, cur out sys_refcursor)
as
begin
  open cur for
  select *
  from fep_processos
  where proc_id = nid
  and ROWNUM = 1;
end;

--
FUNCTION FC_VALIDA_GERACAO_DOC(nSose_id IN number)
   RETURN VARCHAR2 IS
cursor c is
select 'S'
 from fep_solic_seamb sose
  where sose.sose_id=nSose_id
 and exists (select '1'
             from fep_solic_seamb_documentos sodc where sodc.sose_id=sose.sose_id);
v_ja_tem_doc    varchar2(1);
begin
  v_ja_tem_doc:='N';
  open c;
  fetch c into v_ja_tem_doc;
  if c%notfound then
     v_ja_tem_doc:='N';
  end if;
  close c;
  return(v_ja_tem_doc);
end;
--
procedure SP_USUARIOS_MTR_INS
(
  sRazao_social           in varchar2
  ,sFisica_juridica        in varchar2
  ,nCPF                    in NUMBER
  ,nCNPJ                   in NUMBER
  ,sTilo_id                in varchar2
  ,sEndereco               in varchar2
  ,sBairro                 in varchar2
  ,nCEP                    in NUMBER
  ,nMuni_id                in NUMBER
  ,sTelefone               in varchar2
  ,sFax                    in varchar2
  ,sEmail                  in varchar2
  ,sTilo_id_corresp        in varchar2
  ,sEndereco_corresp       in varchar2
  ,sBairro_corresp         in varchar2
  ,nCEP_corresp            in NUMBER
  ,nMuni_id_corresp        in NUMBER
  ,sNome_contato           in varchar2
  ,nCarg_id                in NUMBER
  ,sTelefone_fixo_contato  in varchar2
  ,sFax_contato            in varchar2
  ,sEemail_contato         in varchar2
  ,sOperador               in varchar2
  ,nPess_id                out NUMBER
)
is
  wseq number :=0 ;
  --
  begin
     select PESS_SEQ.nextval into wseq  from dual;
     --

     insert into fep_pessoas (PESS_ID
                             ,RAZAO_SOCIAL
                             ,FISICA_JURIDICA
                             ,CPF
                             ,CGC
                             ,TILO_ID
                             ,ENDERECO
                             ,BAIRRO
                             ,CEP
                             ,MUNI_ID
                             ,TELEFONE
                             ,FAX
                             ,EMAIL
                             ,TILO_ID_CORRESP
                             ,ENDERECO_CORRESP
                             ,BAIRRO_CORRESP
                             ,CEP_CORRESP
                             ,MUNI_ID_CORRESP
                             ,nome_contato
                             ,carg_id
                             ,telefone_fixo_contato
                             ,fax_contato
                             ,email_contato
                             ,DATA_INCLUSAO
                             ,OPERADOR_INCLUSAO
                             ,DATA_ATUALIZACAO
                             ,OPERADOR_ATUALIZACAO
                             ,CONSERTA_BEM)
                              values (wseq
                                     ,sRazao_social
                                     ,sFisica_juridica
                                     ,nCPF
                                     ,nCNPJ
                                     ,sTilo_id
                                     ,sEndereco
                                     ,sBairro
                                     ,nCEP
                                     ,nMuni_id
                                     ,sTelefone
                                     ,sFax
                                     ,sEmail
                                     ,sTilo_id_corresp
                                     ,sEndereco_corresp
                                     ,sBairro_corresp
                                     ,nCEP_corresp
                                     ,nMuni_id_corresp
                                     ,sNome_contato
                                     ,nCarg_id
                                     ,sTelefone_fixo_contato
                                     ,sFax_contato
                                     ,sEemail_contato
                                     ,sysdate
                                     ,sOperador
                                     ,sysdate
                                     ,sOperador
                                     ,'N'
                               );
      nPess_id   := wseq;
     --
     --
     commit;
     --
  exception
     when others then
        Raise_application_error(-20002, 'Erro ao Inserir dados do usuario MTR '||sqlerrm);
  end SP_USUARIOS_MTR_INS;
  --
  procedure SP_USUARIOS_MTR_UPD
(  nPess_id                in NUMBER
  ,sRazao_social           in varchar2
  ,sFisica_juridica        in varchar2
  ,nCPF                    in NUMBER
  ,nCNPJ                   in NUMBER
  ,sTilo_id                in varchar2
  ,sEndereco               in varchar2
  ,sBairro                 in varchar2
  ,nCEP                    in NUMBER
  ,nMuni_id                in NUMBER
  ,sTelefone               in varchar2
  ,sFax                    in varchar2
  ,sEmail                  in varchar2
  ,sTilo_id_corresp        in varchar2
  ,sEndereco_corresp       in varchar2
  ,sBairro_corresp         in varchar2
  ,nCEP_corresp            in NUMBER
  ,nMuni_id_corresp        in NUMBER
  ,sNome_contato           in varchar2
  ,nCarg_id                in NUMBER
  ,sTelefone_fixo_contato  in varchar2
  ,sFax_contato            in varchar2
  ,sEemail_contato         in varchar2
  ,sOperador               in varchar2
)
is
  --
  begin
        --

     update fep_pessoas
     set RAZAO_SOCIAL=sRazao_social,
         FISICA_JURIDICA=sFisica_juridica,
         CPF=nCPF,
         CGC=nCNPJ,
         TILO_ID=sTilo_id,
         ENDERECO=sEndereco,
         BAIRRO=sBairro,
         CEP=nCEP,
         MUNI_ID=nMuni_id,
         TELEFONE=sTelefone,
         FAX=sFax,
         EMAIL=sEmail,
         TILO_ID_CORRESP=sTilo_id_corresp,
         ENDERECO_CORRESP=sEndereco_corresp,
         BAIRRO_CORRESP=sBairro_corresp,
         CEP_CORRESP=nCEP_corresp,
         MUNI_ID_CORRESP=nMuni_id_corresp,
         nome_contato=sNome_contato,
         carg_id=nCarg_id,
         telefone_fixo_contato=sTelefone_fixo_contato,
         fax_contato=sFax_contato,
         email_contato=sEemail_contato,
         DATA_ATUALIZACAO=sysdate,
         OPERADOR_ATUALIZACAO=sOperador,
         CONSERTA_BEM='N'
   where  PESS_ID=nPess_id;
     commit;
  exception
     when others then
        Raise_application_error(-20002, 'Erro ao Alterar dados do usuario MTR '||sqlerrm);
  end SP_USUARIOS_MTR_UPD;
--
Procedure SP_MUNI_LISTA(cur out sys_refcursor) as
  begin
    open cur for
      select x.muni_id,x.nome
      from (select 1 ind,muni.muni_id,muni.nome
      from fep_municipios muni
      where muni.unfe_id='RS'
      and muni.muni_id=4314902
      union
      select 2 ind,muni.muni_id,muni.nome
      from fep_municipios muni
      where muni.unfe_id='RS'
      and muni.muni_id<> 4314902
      order by ind,nome) x;
   END SP_MUNI_LISTA;
--
--
Procedure SP_CARG_LISTA(cur out sys_refcursor) as
  begin
    open cur for
      select carg.carg_id,carg.descricao
        from fep_cargos carg
      order by carg.descricao;
END SP_CARG_LISTA;
--
Procedure SP_ATAN_GET_MTR(nPess_id in number,
                           nAtan_id in number,
                           cur out sys_refcursor) as
  begin
    open cur for
select atan.atan_id,
       atan.raat_id,
       atan.descricao,
       atan.tilo_id,
       atan.endereco endereco,
       atan.bairro,
       atan.cep,
       atan.muni_id,
       muni.nome,
       loaa.coord_geo_lat_grau latitude,
       loaa.coord_geo_long_grau longitude,
       loaa.nome_tecnico,
       loaa.registro_conselho
from fep_atividades_antropicas atan,
     fep_municipios muni,
     fep_loc_ativ_antropicas loaa
where muni.muni_id=atan.muni_id
and loaa.atan_id(+)=atan.atan_id
and loaa.data_fim is null
and atan.pess_id=nPess_id--193580
and atan.atan_id= nAtan_id;--209801
END SP_ATAN_GET_MTR;
--
--
Procedure SP_RAAT_MTR(vDescr    in   varchar2,
                       cur out sys_refcursor) as
  begin
    open cur for
      select r.raat_id||'#'||lpad('     ',level*2)||r.raat_id||'   '||r.descricao codigo,
              r.raat_id "Codigo",
              lpad('     ',level*2)||r.raat_id||'   '||r.descricao  "Descric?o"
         from fep_ramos_atividades r
         where (r.descricao) like '%'||upper(vDescr)||'%'
         or r.raat_id like vDescr
      start with r.raat_id_superior is null
      CONNECT BY PRIOR r.raat_id=r.raat_id_superior;
END SP_RAAT_MTR;
--
PROCEDURE SP_ATAN_INS_MTR(nPess_id                 IN NUMBER,
                        sDescricao                 IN VARCHAR,
                        nRaat_id                   IN NUMBER,
                        sTilo_id                   IN VARCHAR,
                        sEndereco                  IN VARCHAR,
                        sBairro                    IN VARCHAR,
                        nMuni_id                   IN NUMBER,
                        nCep                       IN NUMBER,
                        sOperador                  IN VARCHAR,
                        nAtan_id                   OUT NUMBER) IS
BEGIN
INSERT INTO fep_atividades_antropicas
            (atan_id,
             pess_id,
             descricao,
              raat_id,
              situacao,
              tilo_id,
              endereco,
              bairro,
              muni_id,
              cep,
              data_inclusao,
              operador_inclusao,
              data_atualizacao,
              operador_atualizacao,
              medida_porte,
              eia_rima,
              lic_municipio,
              certificacao_opcional,
              dm_origem,
              dm_loc_app,
              dm_mais_munic,
              dm_uc_estadual,
              dm_rastrear_draga
              ) values
 (atan_seq.nextval,
  nPess_id,
  substr( sDescricao,1,60),
  nRaat_id,
  1,
  sTilo_id,
  sEndereco,
  sBairro,
  nMuni_id,
  nCep,
  sysdate,
  sOperador,
  sysdate,
  sOperador,
  0.0000,
  'N',
  'N',
  'N',
   1,
  'N',
  'N',
  'N',
  'N');
    SELECT ATAN_SEQ.CURRVAL into nAtan_id  FROM dual;
-- commit;
update fep_acessos_internet acin
   set acin.rtec_pess_id=nPess_id
   where acin.username=sOperador;
END SP_ATAN_INS_MTR;
--
--
procedure SP_LOAA_INS_MTR
( nAtan        in   number
 , nLat         in   varchar2
 , nLong        in   varchar2
 , vrespLeitura in   varchar2
 , vRegConselho in   varchar2
 , voperador    in   varchar2
) as
  --
begin
  --
  update fep_loc_ativ_antropicas
  set    data_fim = trunc(sysdate),
         data_atualizacao=sysdate,
         operador_atualizacao=voperador
  where  data_fim is null
  and    atan_id  = nAtan
  ;
  --
  commit;
  --
  insert into fep_loc_ativ_antropicas
  (
    loaa_id,
    descricao,
    data_inicio,
    escolhida,
    atan_id,
    coord_geo_lat_grau,
    coord_geo_long_grau,
    zona_localizacao,
    data_inclusao,
    operador_inclusao,
    data_atualizacao,
    operador_atualizacao,
    nome_tecnico,
    registro_conselho,
    coord_medida_fepam,
    data_medida_coord,
    dm_coord_valida
  ) values (
    loaa_seq.nextval
  , null
  , trunc(sysdate)
  , 'S'
  , nAtan
  , to_number(nLat)
  , to_number(nLong)
  , null
  , sysdate
  , voperador
  , sysdate
  , voperador
  , substr(vrespLeitura,1,60)
  , substr(vRegConselho,1,15)
  , null
  , null
  , 'S'
  );
  --
  commit;
  --
end SP_LOAA_INS_MTR;
--
Procedure SP_TILO_LISTA_MTR(cur out sys_refcursor) as
  begin
    open cur for
select tilo.tilo_id,tilo.descricao
from fep_tipos_logradouros tilo;
END SP_TILO_LISTA_MTR;
--
PROCEDURE SP_ATAN_UPD_MTR(nPess_id                 IN NUMBER,
                          nAtan_id                 IN NUMBER,
                          sDescricao               IN VARCHAR,
                          sTilo_id                 IN VARCHAR,
                          sEndereco                IN VARCHAR,
                          sBairro                  IN VARCHAR,
                          nMuni_id                 IN NUMBER,
                          nCep                     IN NUMBER,
                          sOperador                IN VARCHAR
                        ) IS
BEGIN
update fep_atividades_antropicas atan
   set  atan.descricao=sDescricao,
        atan.tilo_id=sTilo_id,
        atan.endereco=sEndereco,
        atan.bairro=sBairro,
        atan.muni_id=nMuni_id,
        atan.cep=nCep,
        atan.operador_atualizacao=sOperador,
        atan.data_atualizacao=sysdate
where atan.atan_id=nAtan_id
  and pess_id=nPess_id;
  commit;
END SP_ATAN_UPD_MTR;
Function FC_VALIDA_PLACA_OLUC (nPess_id in number,
                               sPlaca in varchar2) return varchar2 is
  v_tem_placa   varchar2(1);
  cursor c (p_placa in char) is
    select distinct 'S'
     from fep_atividades_antropicas atan
      where atan.pess_id=nPess_id
        and atan.raat_id in(4710.10,4710.20,4710.30,4710.11, 4710.12)
        and exists (select '1'
                      from fep_frotas_transp frtr
                     where frtr.atan_id=atan.atan_id
                       and upper(replace(frtr.placa,' '))=upper(replace(p_placa,' '))
                       and frtr.data_exclusao is null) ;
begin
  v_tem_placa:='N';
  open c(sPlaca);
  fetch c into  v_tem_placa;
  if c%notfound then
      v_tem_placa:='N';
  end if;
  close c;
  v_tem_placa:='N';---------------n?o valida placa na fase inicial depois passa a validar
  return (v_tem_placa);
end;
--
FUNCTION FC_busca_rt_data(nAtan_id Number,sData in date) RETURN VARCHAR2 IS
v_razao_social fep_pessoas.razao_social%type;
cursor c is
select pess.razao_social
          from fep_responsabilidades resp,
               fep_pessoas pess
         where pess.pess_id=resp.pess_id
           and resp.atan_id=nAtan_id
           and sData  between resp.data_inicio and nvl(resp.data_fim,trunc(sysdate))
           and resp.tipa_id=9
         order by resp.data_fim; -- Incluido o order by para que o loop retorne o ultimo responsavel tecnico do periodo da solicitacao (Carlos Vinicius)
begin
for r in c loop
v_razao_social:=r.razao_social;
end loop;
RETURN(v_razao_social);
end;
--
Procedure SP_ATAN_LISTA(nPess_id in number,
                        cur out sys_refcursor) as
  begin
    open cur for
select atan.atan_id, atan.raat_id||' '||atan.descricao descricao
from fep_atividades_antropicas atan
where atan.pess_id=nPess_id;
END SP_ATAN_LISTA;

Procedure SP_SOLIC_ENCERRADAS_SRC(nAtan_id in number,
                               cur out sys_refcursor)
as
begin
  open cur for
select sose.sose_id,
       sose.data_inclusao data_solicitacao,
       (select r.rv_abbreviation
from cg_ref_codes r
where r.rv_domain  like 'DM_TIPO_SOLIC_SEAMB'
  and r.rv_low_value=to_char(sose.dm_tipo_solic_seamb)) tipo_solic,
      proc.numero||'-'||
       to_char(proc.orig_id,'09,99')||'/'||
       proc.ano||'.'||
       proc.dv processo
from fep_solic_seamb sose,
     fep_processos proc
where exists (select '1' from fep_docs_solic_seamb dsse where dsse.sose_id=sose.sose_id)
and proc.proc_id=sose.proc_id
and sose.atan_id=nAtan_id
and sose.tsoi_id=6
order by 1 desc;
END SP_SOLIC_ENCERRADAS_SRC;

Procedure SP_DOCS_ENVIADOS_SRC(nSose_id in number,
                               cur out sys_refcursor)
as
begin
  open cur for
  select dsse.dsse_id dsse_id,
         (select r.rv_abbreviation
          from cg_ref_codes r
          where r.rv_domain  like 'DM_TIPO_DOC_SOLIC_SEAMB'
           and r.rv_low_value=to_char(dsse.dm_tipo_doc_solic_seamb)) tipo_documento,
           dsse.data_entrega data_envio
from  fep_docs_solic_seamb dsse
where dsse.sose_id=nSose_id
order by 1;
END SP_DOCS_ENVIADOS_SRC;
--
Procedure SP_FROTA_SRC(  sPlaca in varchar2,
                         P_SOSE number, cur out sys_refcursor)
as
begin
  open cur for
select frtr.placa,
       frtr.modelo,
       frtr.ano_fabricacao,
       mctr.descricao marca,
       titr.descricao tipo
from fep_documentos_frotas dofr,
     fep_frotas_transp frtr,
     FEP_MARCAS_TRANSP mctr,
     FEP_TIPOS_TRANSP titr
where frtr.frtr_id=dofr.frtr_id
and mctr.mctr_id(+)=frtr.mctr_id
and titr.titr_id=frtr.titr_id
and frtr.placa=nvl(sPlaca,frtr.placa)
and dofr.sose_id_in=P_SOSE;
END SP_FROTA_SRC;
--
Procedure SP_FROTA_RESUMO_SRC( P_SOSE number, cur out sys_refcursor)
as
begin
  open cur for
select titr.descricao,count(*) quantidade
from fep_documentos_frotas dofr,
      fep_frotas_transp frtr,
      FEP_TIPOS_TRANSP titr
where frtr.frtr_id=dofr.frtr_id
and  titr.titr_id=frtr.titr_id
and dofr.sose_id_in=P_SOSE
group by titr.descricao;
END SP_FROTA_RESUMO_SRC;
--
procedure SP_LICENCA_REVOG_SRC (nAtan_id in number,
                                cur   out sys_refcursor) as
begin
open cur for
select sose.sose_id solicitacao,
       sose.data_inclusao data_solicitacao,
       proc.numero||'-'||
       to_char(proc.orig_id,'09,99')||'/'||
       proc.ano||'.'||
       proc.dv processo,
      (SELECT c.rv_meaning FROM CG_REF_CODES c WHERE RV_DOMAIN = 'DM_TIPO_SOLIC_SEAMB' and c.rv_low_value=sose.dm_tipo_solic_seamb)
      ||decode(sose.dm_alteracao_cad,'S',' CAD','')||decode(sose.dm_alteracao_rt,'S',' RT','')||
        decode((select distinct 'S'  from fep_hist_alteracoes_frotas hafr where hafr.sose_id=sose.sose_id),'S',' FROTA','') tipo_solicitacao_seamb,
      PCK_NET_PROCESSOS.FC_busca_rt_data(sose.atan_id,sose.data_inclusao) responsavel,
       parecer.docu_id_parecer,
       parecer.numero,
       parecer.ano,
       licenca.docu_id_licenca,
       licenca.numero,
       licenca.ano,
       pck_seamb.fc_sose_arqpdf(parecer.docu_id_parecer) caminho_parecer,
       FC_SOSE_ARQPDF_LO(licenca.docu_id_licenca) caminho_lo
from fep_solic_seamb sose,
     fep_processos proc,
     (select prcr.sose_id,prcr.docu_id_parecer,docu.numero,docu.ano
        from fep_aux_proc_cond_restr prcr,
             fep_documentos docu
       where docu.docu_id=prcr.docu_id_parecer) parecer,
     (select prcr.sose_id,prcr.docu_id_licenca,docu.numero,docu.ano
        from fep_aux_proc_cond_restr prcr,
             fep_documentos docu
       where docu.docu_id=prcr.docu_id_licenca) licenca
where  proc.proc_id=sose.proc_id
and parecer.sose_id=sose.sose_id
and licenca.sose_id=sose.sose_id
and sose.atan_id=nAtan_id--187178
order by sose.data_inclusao desc;
END;
--
Procedure SP_DSSE_REVOG_SRC(P_SOSE number,
                cur out sys_refcursor)
as
begin
  open cur for
    select dsse.dsse_id,
        concat((SELECT dm.rv_abbreviation
          FROM CG_REF_CODES dm
         WHERE RV_DOMAIN = 'DM_TIPO_DOC_SOLIC_SEAMB'
           and dm.rv_low_value=dsse.dm_tipo_doc_solic_seamb),'('||to_date(dsse.data_entrega,'dd/mm/yyyy')||')') tipo_doc_solic_seamb
from fep_docs_solic_seamb dsse
where dsse.sose_id=P_SOSE;
END SP_DSSE_REVOG_SRC;
--
procedure SP_SMTR_GET (nAtan_id in number,
                        cur   out sys_refcursor) as
begin
open cur for
select smtr.smtr_id,
       smtr.atan_id,
       data_solicitacao,
       smtr.hicb_id,
       decode (proc.numero,null,null,(proc.numero||'-'||substr(lpad(proc.orig_id,4, '0'),1,2)||'.'||substr(lpad(proc.orig_id,4, '0'),3,2)||'/'||lpad(proc.ano,2, '0')||'-'||proc.dv)) processo,
       docu_id,
       tsoi.descricao situacao,
       nmtr.numero_inicial,
       nmtr.numero_final,
       nmtr.serie_mtr,
       amrt.aut  autorizacao,
       smtr.tsoi_id,
       smtr.licenca_muni,
       smtr.processo_muni,
       smtr.muni_nome_lic_proc,
       smtr.anuencia_muni,
       smtr.qt_media_residuos
from FEP_SOLICITACOES_MTR smtr,
     fep_historicos_cobrancas hicb,
     fep_processos proc,
     fep_aux_numeracoes_mtr nmtr,
     fep_tipos_sit_solic_int tsoi,
     (select lpad(docu.numero,5,'0')||'/'||docu.ano aut, docu.docu_id, docu.proc_id
       from fep_documentos docu
       where docu.situacao='E'
        and docu.tido_id=410) amrt
where hicb.hicb_id(+)=smtr.hicb_id
and proc.proc_id(+)=smtr.proc_id
and amrt.proc_id(+)=smtr.proc_id
and nmtr.smtr_id=smtr.smtr_id
and tsoi.tsoi_id=smtr.tsoi_id
and smtr.atan_id=nAtan_id
and smtr.tsoi_id in(1,2,3,5,6);
end SP_SMTR_GET;
--
--
procedure SP_HICB_SRC (nAtan_id in number,
                        cur   out sys_refcursor) as
begin
open cur for
select hipa.nro_bloqueto,hipa.data_vencimento,hipa.data_pagto,hicb.valor,hipa.valor_pago,cobr.cobr_id,cobp.cobp_id
from FEP_SOLICITACOES_MTR smtr,
     fep_historicos_cobrancas hicb,
     fep_historicos_pagamentos hipa,
     fep_cobrancas cobr,
     fep_cobrancas_parcelas cobp
where hicb.hicb_id(+)=smtr.hicb_id
and cobr.hicb_id=hicb.hicb_id
and hipa.hicb_id=hicb.hicb_id
and cobp.cobr_id=cobr.cobr_id
and smtr.atan_id=nAtan_id;
end SP_HICB_SRC;
--
PROCEDURE SP_SMTR_INS(nAtan_id                 IN NUMBER,
                      nNumeracao_mtr           IN NUMBER,
                      sOperador                IN VARCHAR,
                      nSmtr_id                 OUT NUMBER) IS
V_NUM_INI   FEP_AUX_NUMERACOES_MTR.NUMERO_INICIAL%TYPE;
V_NUM_FIM   FEP_AUX_NUMERACOES_MTR.NUMERO_FINAL%TYPE;
BEGIN
insert into FEP_SOLICITACOES_MTR
         (smtr_id,
         data_solicitacao,
         numeracao_mtr,
         hicb_id,
         proc_id,
         data_inclusao,
         operador_inclusao,
         data_atualizacao,
         operador_atualizacao,
         tsoi_id,
         atan_id
         ) values
         (smtr_seq.nextval,
         trunc(sysdate),
         nNumeracao_mtr,
         null,
         null,
         sysdate,
         sOperador,
         sysdate,
         sOperador,
         2,
         nAtan_id);
    SELECT SMTR_SEQ.CURRVAL into nSmtr_id  FROM dual;
 --
    SELECT  NVL(MAX(NMTR.NUMERO_FINAL),0) + 1
    INTO V_NUM_INI
    FROM FEP_AUX_NUMERACOES_MTR NMTR
    WHERE NMTR.ATAN_ID=nAtan_id
    AND NMTR.DM_SITUACAO_NUM_MTR=2;
--
    V_NUM_FIM:=(V_NUM_INI + nNumeracao_mtr) - 1;
--
    INSERT INTO FEP_AUX_NUMERACOES_MTR
    (nmtr_id ,
     atan_id ,
     numero_inicial,
     numero_final,
     serie_mtr,
     data_inclusao,
     operador_inclusao,
     data_atualizacao,
     operador_atualizacao,
     smtr_id,
     dm_situacao_num_mtr) VALUES
     (NMTR_SEQ.NEXTVAL,
      nAtan_id,
      V_NUM_INI,
      V_NUM_FIM,
       'AA',
      SYSDATE,
      sOperador,
      SYSDATE,
      sOperador,
      nSmtr_id,
      1);
     commit;
END SP_SMTR_INS;
--
Procedure SP_FMTR_GET(nAtan_id in number,
                    cur out sys_refcursor) as
 begin
    open cur for
    select --1-Gerador
       fmtr.fmtr_id,
       fmtr_id numero,
  --     fmtr.numero_talonario numero,
       case when pess.fisica_juridica='J' then
            substr(lpad(to_char(pess.cgc),14,'0'),1,2)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),3,3)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),6,3)||'/'||
            substr(lpad(to_char(pess.cgc),14,'0'),9,4)||'-'||
            substr(lpad(to_char(pess.cgc),14,'0'),13,2)
            when pess.fisica_juridica='F' then
              substr(lpad(to_char(pess.cpf),11,'0'),1,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),4,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),9,3)||'-'||
           substr(lpad(to_char(pess.cpf),11,'0'),10,2)
       end cgc_cpf,
   --    nmtr.numero_inicial,
       --nmtr.serie_mtr,
       pess.razao_social,
       atan.endereco,
       atan.bairro,
       atan.cep,
       muni.nome municipio,
       fmtr.nome_responsavel,
       fmtr.fone_responsavel,
       fmtr.email_responsavel,
       --3-Transportador
       fmtr.atan_id atan_transportadora,
       decode(fmtr.atan_id, null, 'N','S') transp_licen_fepam,
       nvl(transp.razao_social,fmtr.nome_transportadora) nome_transportadora,
       nvl(transp.cgc_cpf,fmtr.cnpj_transportadora) cnpj_transportadora,
       nvl(transp.endereco,fmtr.endereco_transportadora) endereco_transportadora,
       nvl(transp.cep,fmtr.cep_transportadora) cep_transportadora,
       nvl(transp.bairro,fmtr.bairro_transportadora) bairro_transportadora,
       nvl(transp.nome,munitr.nome) municipio_transportadora,
       nvl(transp.muni_id,fmtr.muni_transporta_id) muni_transporta_id,
        --4-Unidade de destinac?o
       fmtr.nome_unidade_destinacao,
       substr(lpad(to_char(fmtr.cnpj_unidade_destinacao),14,'0'),1,2)||'.'||
       substr(lpad(to_char(fmtr.cnpj_unidade_destinacao),14,'0'),3,3)||'.'||
       substr(lpad(to_char(fmtr.cnpj_unidade_destinacao),14,'0'),6,3)||'/'||
       substr(lpad(to_char(fmtr.cnpj_unidade_destinacao),14,'0'),9,4)||'-'||
       substr(lpad(to_char(fmtr.cnpj_unidade_destinacao),14,'0'),13,2) cnpj_unidade_destinacao,
       fmtr.endereco_unidade_destinacao,
       fmtr.cep_unidade_destinacao,
       fmtr.muni_id_destino,
       muniud.nome municipio_unidade_destinacao,
       fmtr.dm_situacao situacao,
       fmtr.motivo_anulacao motivo_anulacao
from fep_formularios_mtr fmtr,
     fep_atividades_antropicas atan,
     fep_pessoas pess,
--     fep_aux_numeracoes_mtr nmtr,
     fep_municipios muni,
     fep_municipios muniud,
     fep_municipios munitr,
     (select atan.atan_id,pess.razao_social,
       case when pess.fisica_juridica='J' then
            substr(lpad(to_char(pess.cgc),14,'0'),1,2)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),3,3)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),6,3)||'/'||
            substr(lpad(to_char(pess.cgc),14,'0'),9,4)||'-'||
            substr(lpad(to_char(pess.cgc),14,'0'),13,2)
            when pess.fisica_juridica='F' then
              substr(lpad(to_char(pess.cpf),11,'0'),1,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),4,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),9,3)||'-'||
           substr(lpad(to_char(pess.cpf),11,'0'),10,2)
        end cgc_cpf,
        pess.endereco,
        pess.cep,
        pess.bairro,
        muni.muni_id muni_id,
        muni.nome
     from fep_atividades_antropicas atan,
          fep_pessoas pess,
          fep_municipios muni
     where pess.pess_id=atan.pess_id
       and muni.muni_id=pess.muni_id) transp
where atan.atan_id=fmtr.atan_id_gera
and pess.pess_id=atan.pess_id
--and nmtr.atan_id=fmtr.atan_id_gera
and muni.muni_id=atan.muni_id
and muniud.muni_id=fmtr.muni_id_destino
and munitr.muni_id(+)=fmtr.muni_transporta_id
--and nmtr.dm_situacao_num_mtr=1--2--1--2
and fmtr.dm_situacao=1
and fmtr.atan_id_gera=nAtan_id --6266
and transp.atan_id(+)=fmtr.atan_id;
END SP_FMTR_GET;
--
PROCEDURE SP_FMTR_INS(nAtan_id                 IN NUMBER,
                      nAtan_id_gera            IN NUMBER,
                      sNome_responsavel        IN VARCHAR,
                      sFone_responsavel        IN VARCHAR,
                      sEmail_responsavel       IN VARCHAR,
                      sNome_unidade_destinacao  IN VARCHAR,
                      sCpf_cnpj_unidade_destinacao IN VARCHAR,
                      sEndereco_unidade_destinacao IN VARCHAR,
                      sCep_unidade_destinacao   IN VARCHAR,
                      nMuni_id_destino          IN NUMBER,
                      sNome_transportadora      IN VARCHAR,
                      sCnpj_transportadora      IN VARCHAR,
                      sEndereco_transportadora  IN VARCHAR,
                      sCep_transportadora       IN VARCHAR,
                      sBairro_transportadora    IN VARCHAR,
                      nMuni_transporta_id       IN NUMBER,
                      nNumero_talonario         IN NUMBER,
                      nSmtr_id                  IN NUMBER,
                      sOperador                 IN VARCHAR,
                      nFmtr_id                  OUT NUMBER) IS

BEGIN
insert into fep_formularios_mtr
         ( fmtr_id,
         nome_responsavel,
         fone_responsavel,
         email_responsavel,
         nome_unidade_destinacao,
         cnpj_unidade_destinacao,
         endereco_unidade_destinacao,
         cep_unidade_destinacao,
         muni_id_destino ,
         nome_transportadora,
         cnpj_transportadora,
         endereco_transportadora,
         cep_transportadora,
         bairro_transportadora,
         muni_transporta_id ,
         numero_talonario,
         smtr_id,
         data_inclusao,
         operador_inclusao,
         data_atualizacao,
         operador_atualizacao,
         atan_id ,
         atan_id_gera

        ) values
         ( fmtr_seq.nextval,
         sNome_responsavel,
         sFone_responsavel,
         sEmail_responsavel,
         sNome_unidade_destinacao,
         sCpf_cnpj_unidade_destinacao,
         sEndereco_unidade_destinacao,
         sCep_unidade_destinacao,
         nMuni_id_destino,
         sNome_transportadora,
         sCnpj_transportadora,
         sEndereco_transportadora,
         sCep_transportadora,
         sBairro_transportadora,
         nMuni_transporta_id,
         nNumero_talonario,
         nSmtr_id,
         sysdate,
         sOperador,
         sysdate,
         sOperador,
         nAtan_id,
         nAtan_id_gera
         );
    SELECT FMTR_SEQ.CURRVAL into nFmtr_id  FROM dual;
    commit;
END SP_FMTR_INS;
--
Procedure SP_TRANSPORTADORAS_LISTA
( vRazao_social in varchar,
  cur out sys_refcursor
)
as
begin
  open cur for
   select /*+ INDEX(atan ATAN_RAAT_FK_I) */
       atan.atan_id||'#'||pess.razao_social||'#'||pess.cgc||'#'||atan.endereco||'#'||atan.cep||'#'||atan.bairro||'#'||muni.muni_id CODIGO,PESS.PESS_ID "Codigo", pess.razao_social "Descric?o"
   from fep_atividades_antropicas atan,
      fep_pessoas pess,
      fep_municipios muni
  where atan.raat_id  IN(4710.10,4710.11,4710.12,4710.20,4710.30)
  and pess.pess_id=atan.pess_id
  and atan.data_desativacao is null
  and muni.muni_id(+)=atan.muni_id
  and exists (select '1'
         from fep_documentos          docu,
              fep_tipos_documentos    tido,
              fep_processos           proc,
              fep_responsabilidades   resp,
              fep_aux_proc_cond_restr prcr
        where resp.atan_id = atan.atan_id
          and resp.resp_id = proc.resp_id
          and proc.proc_id = docu.proc_id
          and docu.tido_id = tido.tido_id
          and docu.docu_id = prcr.docu_id_licenca
          and docu.situacao='E')
  and upper(pess.razao_social) like upper('%'||vRazao_social||'%');
end  SP_TRANSPORTADORAS_LISTA;
--

PROCEDURE SP_RMTR_INS(nFmtr_id                 IN NUMBER,
                      sFonte_origem            IN VARCHAR,
                      nDm_estado_fisico        IN NUMBER,
                      nClasse_abnt             IN NUMBER,
                      nQuantidade_total        in number,
                      nDm_codigo_onu           IN NUMBER,
                      sTire_id                 IN NUMBER,
                      sOperador                IN VARCHAR,
                      nRmtr_id                 OUT NUMBER
                      ) IS

BEGIN
insert into fep_residuos_mtr
         ( rmtr_id,
           fmtr_id,
           fonte_origem,
           dm_estado_fisico,
           classe_abnt,
           quantidade_total,
           dm_codigo_onu,
           data_inclusao,
           operador_inclusao,
           data_atualizacao,
           operador_atualizacao,
           tire_id
        ) values
         ( rmtr_seq.nextval,
           nFmtr_id,
         sFonte_origem,
         nDm_estado_fisico,
         nClasse_abnt,
         nQuantidade_total,
         nDm_codigo_onu,
         sysdate,
         sOperador,
         sysdate,
         sOperador,
         sTire_id);
    SELECT RMTR_SEQ.CURRVAL into nRmtr_id  FROM dual;
    commit;
END SP_RMTR_INS;
--
PROCEDURE SP_RMTR_DEL_RESIDUOS(
                      nFmtr_id                 IN NUMBER
                      ) IS
BEGIN
  delete fep_residuos_mtr  rmtr
  where rmtr.fmtr_id=nFmtr_id;
    commit;
END SP_RMTR_DEL_RESIDUOS;
--
Procedure SP_GERADOR_GET(nAtan_id in number,
                     cur out sys_refcursor) as
  begin
    open cur for
     select atan.atan_id,
      case when pess.fisica_juridica='J' then
            substr(lpad(to_char(pess.cgc),14,'0'),1,2)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),3,3)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),6,3)||'/'||
            substr(lpad(to_char(pess.cgc),14,'0'),9,4)||'-'||
            substr(lpad(to_char(pess.cgc),14,'0'),13,2)
            when pess.fisica_juridica='F' then
              substr(lpad(to_char(pess.cpf),11,'0'),1,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),4,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),9,3)||'-'||
           substr(lpad(to_char(pess.cpf),11,'0'),10,2)
       end cgc_cpf,
       pess.razao_social,
       atan.endereco,
       atan.bairro,
       atan.cep,
       muni.nome municipio
   from fep_atividades_antropicas atan,
      fep_pessoas pess,
      fep_municipios muni
  where  pess.pess_id=atan.pess_id
  and muni.muni_id=atan.muni_id
  and atan.atan_id=nAtan_id;
end SP_GERADOR_GET;
--
Function FC_TEM_FROTA (nAtan_id in number) return varchar2 is
  v_tem_frota  varchar2(1);
  cursor c is
    select  distinct  'S'
      from fep_frotas_transp frtr
     where frtr.atan_id=nAtan_id
      and frtr.data_exclusao is null;
begin
  v_tem_frota:='N';
  open c;
  fetch c into  v_tem_frota;
  if c%notfound then
      v_tem_frota:='N';
  end if;
  close c;
  return (v_tem_frota);
end FC_TEM_FROTA;
--

FUNCTION FC_VALIDA_CADASTRO_VEICULO (nAtanId IN number) RETURN number IS

/*************************************************************************/
/* OBJETO...: FC_VALIDA_CADASTRO_VEICULO                                 */
/* DESCRICAO: Função criada para validar a inconsistÃªncia do             */
/*            cadatro de veiculos da frota do empreendimento.            */
/*            regra --> não Ã© permitido o cadastro de somente veículos   */
/*            do tipo cavalo-trator ou somente reboque/semi-reboque.     */
/* AUTOR....: Cátia Jardim                                               */
/* DATA.....: 19/05/2017                                                 */
/*-----------------------------------------------------------------------*/
/* ULTIMA ALTERACAO: 24/05/2017                                          */
/* RESPONSAVEL.....: Cátia Jardim                                        */
/* DESCRICAO.......: Verificar somemte cadastros que estão com a situação*/
/*                   da frota tipo 1, ou seja, na inclusão do veículo.   */
/*-----------------------------------------------------------------------*/
/* ULTIMA ALTERACAO: 10/07/2017                                          */
/* RESPONSAVEL.....: Cátia Jardim                                        */
/* DESCRICAO.......: Inclusão do bloqueio, somente para licenças a       */
/*                   vencer em menos de 20 dias.                         */
/*************************************************************************/

-- Busca todos os empto sem frota associada, ou seja novos.
cursor c_busca_sem_frota (atant_id in number) is
  SELECT resp.pess_id              pess_id
    from fep_processos              proc,
         fep_responsabilidades      resp,
         fep_pessoas                pess,
         fep_ramos_atividades       raat,
         fep_atividades_antropicas  atan,
         (select reco.rv_abbreviation,rv_low_value from cg_ref_codes reco where reco.rv_domain ='DM_SITUACAO_ATAN') reco
    WHERE reco.rv_low_value = atan.situacao
      AND atan.situacao = 1
      AND proc.resp_id = resp.resp_id
      and resp.atan_id = atan.atan_id
      and atan.pess_id = pess.pess_id
      and atan.raat_id = raat.raat_id
      and atan.atan_id = atant_id
      and proc.data_entrada = ( select max(proc1.data_entrada)
                                  from fep_processos           proc1,
                                       fep_responsabilidades   resp1
                                 where resp1.pess_id = resp.pess_id
                                   and resp1.atan_id = resp.atan_id
                                   and proc1.resp_id = resp1.resp_id)
      and not exists (select 1
                        from fep_frotas_transp frtr
                       where atan.atan_id = frtr.atan_id
                         and frtr.dm_situacao_frota in (1,3) --> significa (incluir ou atendido)
                         and frtr.data_exclusao is null)
group by
      resp.pess_id;

-- Busca todos os empto que estão com a lincença pra vencer em 20 ou menos dias.
cursor c_licenca_praz_termin (atant_id number) is
 select 1
 from  fep_documentos               docu
     , fep_tipos_documentos         tido
     , fep_sub_classes_documentos   sucd
     , fep_classes_documentos       cldo
     , fep_processos                proc
     ,(select reco.rv_abbreviation,rv_low_value  from cg_ref_codes reco where reco.rv_domain ='DM_SITUACAO_DOCU') reco
     , fep_atividades_antropicas    atant
     , fep_assuntos_processos       aspr
     , fep_responsabilidades        resp
 where reco.rv_low_value  = docu.situacao
   and docu.tido_id       = tido.tido_id
   and tido.sucd_id       = sucd.sucd_id
   and sucd.cldo_id       = cldo.cldo_id
   and docu.proc_id       = proc.proc_id
   and proc.aspr_id       = aspr.aspr_id
   and proc.resp_id       = resp.resp_id(+)
   and resp.atan_id       = atant.atan_id(+)
   and trunc(docu.data_fim_vigencia) - trunc(SYSDATE + 1) <=20
   and docu.situacao      = 'E'
   and cldo.descricao     = 'LICENÇA'
   and atant.atan_id      = atant_id;

-- Busca todos os empto que estão com ou sem lincença com mais de 21 dias.
 cursor c_licenca_praz_a_venc (atant_id number) is
 select 1
 from  fep_documentos               docu
     , fep_tipos_documentos         tido
     , fep_sub_classes_documentos   sucd
     , fep_classes_documentos       cldo
     , fep_processos                proc
     ,(select reco.rv_abbreviation,rv_low_value from cg_ref_codes reco where reco.rv_domain ='DM_SITUACAO_DOCU') reco
     , fep_atividades_antropicas    atant
     , fep_assuntos_processos       aspr
     , fep_responsabilidades        resp
 where reco.rv_low_value  = docu.situacao
   and docu.tido_id       = tido.tido_id
   and tido.sucd_id       = sucd.sucd_id
   and sucd.cldo_id       = cldo.cldo_id
   and docu.proc_id       = proc.proc_id
   and proc.aspr_id       = aspr.aspr_id
   and proc.resp_id       = resp.resp_id(+)
   and resp.atan_id       = atant.atan_id(+)
   and trunc(docu.data_fim_vigencia) - trunc(SYSDATE + 1) >20
   and docu.situacao      in('E','K','B','G','V')
   and cldo.descricao     = 'LICENÇA'
   and atant.atan_id      = atant_id;


-- Valida inconsistencia de veiculos (cavalo-trator)
cursor c_exist_incos_cav(atant_id in number) is
  select 1
        from fep_frotas_transp frtr
            ,fep_tipos_transp titr
       where frtr.titr_id = titr.titr_id
         and frtr.dm_situacao_frota+0 in (1,3) --> significa (incluir ou atendido)
         and frtr.data_exclusao||null IS NULL
         and frtr.titr_id = 1
         and frtr.atan_id = atant_id
         and rownum = 1 ;

  -- Valida inconsistencia de veiculos (reboque)
cursor c_exist_incos_reb(atant_id in number) is
   select 1
        from fep_frotas_transp frtr
            ,fep_tipos_transp titr
       where frtr.titr_id = titr.titr_id
         and frtr.dm_situacao_frota+0 in (1,3) --> significa (incluir ou atendido)
         and frtr.data_exclusao||null IS NULL
         and frtr.titr_id = 5
         and frtr.atan_id = atant_id
         and rownum = 1 ;
  --
  lic_pr_ter       number;
  lic_pz_a_venc    number;
  busca_sem_frota  number;
  retorno          number;
  exist_incos_cav  number:= null;
  exist_incos_reb  number:= null;
  ok               number:= null;


BEGIN

     open c_busca_sem_frota(nAtanId);
   fetch c_busca_sem_frota into busca_sem_frota;
   -- Valida cadastros sem frotas e dá a msg pra evitar cadastros errados no futuro
   if c_busca_sem_frota%found then
      retorno:= 1;
      busca_sem_frota:= null;
     -- nAtanId:= null;
   else
     close c_busca_sem_frota;
   end if;

   open c_licenca_praz_termin(nAtanId);
  fetch c_licenca_praz_termin into Lic_pr_ter;
  --
   open c_exist_incos_cav(nAtanId);
  fetch c_exist_incos_cav into exist_incos_cav;
  close c_exist_incos_cav;
   --
   open c_exist_incos_reb(nAtanId);
  fetch c_exist_incos_reb into exist_incos_reb;
   close c_exist_incos_reb;
   -- Valida a divergencia, qual dos veiculos não possui
   if exist_incos_cav = 1 and exist_incos_reb = 1 then
     ok:= 0;
   else
     ok:= 1;
   end if;
   --
   -- valida licença com prazo terminado e mais iconsistencia de veiculos
   if c_licenca_praz_termin%found and ok = 1 then
      retorno:= 2;
   else
      close c_licenca_praz_termin;
   end if;
    --
    open c_licenca_praz_a_venc(nAtanId);
   fetch c_licenca_praz_a_venc into lic_pz_a_venc;
   --  Valida licença a vencer e mais iconsistencia de veiculos
   if c_licenca_praz_a_venc%found and ok =1 then
      retorno:= 3;
   else
      close c_licenca_praz_a_venc;
   end if;
   --
   retorno:= 0;
  return (retorno);
  --
END FC_VALIDA_CADASTRO_VEICULO;

FUNCTION FC_VAL_CAD_VEIC_INICIAL (nAtanId IN number) RETURN number is

/*************************************************************************/
/* OBJETO...: FC_VAL_CAD_VEIC_INICIAL                                    */
/* DESCRICAO: O objetivo dessa função e validar a inclusão correta dos   */
/*            conjuntos de veiculos no cadastro de frotas.               */
/*            regra --> Os conjuntos devem ser cadastrados nos seguintes */
/*            modos: cavalo-trator+ reboque ou semi-reboque, ou então    */
/*                  veículo motorizado sem reboque.                      */
/* AUTOR....: Cátia Jardim                                               */
/* DATA.....: 14/07/2017                                                 */
/*-----------------------------------------------------------------------*/
/* ULTIMA ALTERACAO:     */
/* RESPONSAVEL.....:     */
/* DESCRICAO.......:     */
/*************************************************************************/

   cursor c_achou_cad (atan_id number) is
    select 1
      from fep_frotas_transp frtr
         , fep_tipos_transp  titr
    where  frtr.titr_id = titr.titr_id
      and  frtr.data_exclusao is null
      and  frtr.atan_id = atan_id
      and  frtr.titr_id in (1,5)
      and rownum = 1;

   cursor c_achou_1 (atan_id number) is
    select frtr.titr_id
      from fep_frotas_transp frtr
         , fep_tipos_transp titr
    where  frtr.titr_id = titr.titr_id
      and  frtr.data_exclusao is null
      and  frtr.atan_id = atan_id
      and  frtr.titr_id = 1
      and rownum = 1;

   cursor c_achou_2 (atan_id number) is
    select frtr.titr_id
      from fep_frotas_transp frtr
         , fep_tipos_transp titr
    where  frtr.titr_id = titr.titr_id
      and  frtr.data_exclusao is null
      and  frtr.atan_id = atan_id
      and  frtr.titr_id = 2
      and rownum = 1 ;

   -- Variáveis
   v_achou_cad number;
   v_achou_1   number:= 1;
   v_achou_2   number:= 1;
   Result     number:= 1;

Begin
   --
   open c_achou_cad(nAtanId);
   fetch c_achou_cad into v_achou_cad;
     --
     if c_achou_cad%notfound then
        Result:=1;
     else
       open c_achou_1(nAtanId);
      fetch c_achou_1 into v_achou_1;
      close c_achou_1;
       --
       open c_achou_2(nAtanId);
      fetch c_achou_2 into v_achou_2;
      close c_achou_2;
      --
        if (v_achou_1 is not null and v_achou_2 is not null) then
            Result:=1;
        Else
            Result:=0;
        end if;
        --
     end if;
     --
   close c_achou_cad;
   --
   return (Result);
   --
end FC_VAL_CAD_VEIC_INICIAL;

FUNCTION FC_ATAN_TEM_SOLIC(nAtan_id IN NUMBER)
  RETURN NUMBER IS
cursor c1 is
select count(*)
from fep_solic_seamb sose
where sose.atan_id=nAtan_id
 and sose.hicb_id is not null;
v_num_solic number;
begin
OPEN  c1;
  FETCH c1 INTO v_num_solic;
  CLOSE c1;
  RETURN(v_num_solic);
END;
--
procedure SP_RMTR_SRC (nFmtr_id in number,
                        cur   out sys_refcursor) as
begin
open cur for
select rmtr.rmtr_id,
       rmtr.fmtr_id,
       rmtr.fonte_origem,
       tire.codigo codigo_fepam,
       tire.descricao caracterizao_residuo,
       rmtr.dm_estado_fisico,
        (select r.rv_meaning
         from cg_ref_codes r
        where r.rv_domain =  'DM_ESTADO_MATERIA'
         AND R.RV_LOW_VALUE=rmtr.dm_estado_fisico) estado_fisico,
       rmtr.classe_abnt,
       (select r.rv_meaning
         from cg_ref_codes r
        where r.rv_domain =  'DM_CLASSIFICACAO_ABNT'
         AND R.RV_LOW_VALUE=rmtr.classe_abnt) CLASSIFICACAO_ABNT,
       rmtr.quantidade_total,
       unme.unme_id,
       unme.abreviatura unidade_medida,
       rmtr.dm_codigo_onu
from fep_residuos_mtr rmtr,
     fep_tipos_residuos tire,
     fep_unidades_medidas unme
where tire.tire_id=rmtr.tire_id
and unme.unme_id=tire.unme_id
and rmtr.fmtr_id=nFmtr_id;
end SP_RMTR_SRC;
--
procedure SP_TIRE_LISTA (p_descricao in varchar2,
                         cur   out sys_refcursor) as
begin
open cur for
select tire.tire_id||'#'||tire.codigo||'#'||tire.descricao||'#'||unme.abreviatura codigo,
       tire.codigo||' - '||tire.descricao||' '||unme.abreviatura "Descric?o"
from fep_tipos_residuos tire,
     fep_unidades_medidas unme
where unme.unme_id=tire.unme_id
and upper(tire.descricao) like '%'||upper(P_descricao)||'%';
end SP_TIRE_LISTA;
--
--
procedure SP_ESTADO_MATERIA_SRC
(cur      out  sys_refcursor)
as
begin
   open cur for
SELECT c.rv_low_value codigo, c.rv_abbreviation descricao
  FROM CG_REF_CODES c
  WHERE RV_DOMAIN = 'DM_ESTADO_MATERIA';
END SP_ESTADO_MATERIA_SRC;
--
procedure SP_CLASS_ABNT_SRC
(cur      out  sys_refcursor)
as
begin
   open cur for
SELECT c.rv_low_value codigo, c.rv_abbreviation descricao
  FROM CG_REF_CODES c
  WHERE RV_DOMAIN = 'DM_CLASSIFICACAO_ABNT';
END SP_CLASS_ABNT_SRC;
--
procedure SP_COD_ONU_SRC
(cur      out  sys_refcursor)
as
begin
   open cur for
SELECT c.rv_low_value codigo, c.rv_meaning descricao
  FROM CG_REF_CODES c
  WHERE RV_DOMAIN = 'DM_CODIGO_ONU';
END SP_COD_ONU_SRC;
--
PROCEDURE SP_FMTR_UPD(nFmtr_id                 in NUMBER,
                      nAtan_id                 IN NUMBER,
                      sNome_responsavel        IN VARCHAR,
                      sFone_responsavel        IN VARCHAR,
                      sEmail_responsavel       IN VARCHAR,
                      sNome_unidade_destinacao  IN VARCHAR,
                      sCpf_cnpj_unidade_destinacao IN VARCHAR,
                      sEndereco_unidade_destinacao IN VARCHAR,
                      sCep_unidade_destinacao   IN VARCHAR,
                      sMunicipio_unidade_destinacao IN VARCHAR,
                      nMuni_id_destino          IN NUMBER,
                      sNome_transportadora      IN VARCHAR,
                      sCnpj_transportadora      IN VARCHAR,
                      sEndereco_transportadora  IN VARCHAR,
                      sCep_transportadora       IN VARCHAR,
                      sBairro_transportadora    IN VARCHAR,
                      nMuni_transporta_id       IN NUMBER,
                      sOperador                 IN VARCHAR
                      ) IS

BEGIN
  update fep_formularios_mtr fmtr
  set atan_id=nAtan_id,
      nome_responsavel=sNome_responsavel,
      fmtr.fone_responsavel=sFone_responsavel,
      fmtr.email_responsavel=sEmail_responsavel,
      --
      fmtr.nome_unidade_destinacao=sNome_unidade_destinacao,
      fmtr.cnpj_unidade_destinacao=sCpf_cnpj_unidade_destinacao,
      fmtr.endereco_unidade_destinacao=sEndereco_unidade_destinacao,
      fmtr.cep_unidade_destinacao=sCep_unidade_destinacao,
      fmtr.muni_id_destino=nMuni_id_destino,
      --
      fmtr.nome_transportadora=sNome_transportadora,
      fmtr.cnpj_transportadora=sCnpj_transportadora,
      fmtr.endereco_transportadora=sEndereco_transportadora,
      fmtr.cep_transportadora=sCep_transportadora,
      fmtr.bairro_transportadora=sBairro_transportadora,
      fmtr.muni_transporta_id=nMuni_transporta_id,
      fmtr.data_atualizacao=sysdate,
      fmtr.operador_atualizacao=sOperador
  where  fmtr.fmtr_id=nFmtr_id;
   commit;
END SP_FMTR_UPD;
--
PROCEDURE SP_RMTR_UPD(nRmtr_id                 IN NUMBER,
                      nFmtr_id                 IN NUMBER,
                      sFonte_origem            IN VARCHAR,
                      nDm_estado_fisico        IN NUMBER,
                      nClasse_abnt             IN NUMBER,
                      nQuantidade_total        in number,
                      nDm_codigo_onu           IN NUMBER,
                      sTire_id                 IN NUMBER,
                      sOperador                IN VARCHAR
                      ) IS

BEGIN
  update fep_residuos_mtr  rmtr
     set rmtr.fonte_origem=sFonte_origem,
         rmtr.dm_estado_fisico=sFonte_origem,
         rmtr.classe_abnt=nClasse_abnt,
         rmtr.quantidade_total=nQuantidade_total,
         rmtr.dm_codigo_onu=nDm_codigo_onu,
         rmtr.data_atualizacao=sysdate,
         rmtr.operador_atualizacao=sOperador,
         rmtr.tire_id=sTire_id
  where rmtr.rmtr_id=nRmtr_id
    and rmtr.fmtr_id=nFmtr_id;
    commit;
END SP_RMTR_UPD;
--
PROCEDURE SP_RMTR_DEL(nRmtr_id                 IN NUMBER,
                      nFmtr_id                 IN NUMBER
                      ) IS
BEGIN
  delete fep_residuos_mtr  rmtr
  where rmtr.rmtr_id=nRmtr_id
    and rmtr.fmtr_id=nFmtr_id;
    commit;
END SP_RMTR_DEL;
--
--
procedure SP_FMTR_REL_GERADOR_GET (nFmtr_id in number,
                        cur   out sys_refcursor) as
begin
open cur for
select --1-Gerador
      fmtr.fmtr_id,
      nmtr.numero_final - smtr.numeracao_mtr numero_inicial,
      nmtr.numero_final,
      nmtr.serie_mtr,
      fmtr.numero_talonario numero,
      docum.numero doc_numero,
       docum.ano doc_ano,
       case when pess.fisica_juridica='J' then
            substr(lpad(to_char(pess.cgc),14,'0'),1,2)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),3,3)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),6,3)||'/'||
            substr(lpad(to_char(pess.cgc),14,'0'),9,4)||'-'||
            substr(lpad(to_char(pess.cgc),14,'0'),13,2)
            when pess.fisica_juridica='F' then
              substr(lpad(to_char(pess.cpf),11,'0'),1,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),4,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),9,3)||'-'||
           substr(lpad(to_char(pess.cpf),11,'0'),10,2)
       end cgc_cpf,
       pess.razao_social,
       atan.endereco,
       atan.bairro,
       atan.cep,
       muni.nome municipio,
       fmtr.nome_responsavel,
       fmtr.fone_responsavel,
       fmtr.email_responsavel
from fep_formularios_mtr fmtr,
     fep_solicitacoes_mtr smtr,
     fep_aux_numeracoes_mtr nmtr,
     fep_atividades_antropicas atan,
     fep_pessoas pess,
     fep_municipios muni,
     (select proc.proc_id,docu.numero,docu.ano
         from fep_documentos          docu,
              fep_processos           proc
        where proc.proc_id = docu.proc_id
          and docu.situacao='E'
          and docu.tido_id=410) docum
where atan.atan_id=fmtr.atan_id_gera
and smtr.smtr_id=fmtr.smtr_id
and nmtr.smtr_id=smtr.smtr_id
and pess.pess_id=atan.pess_id
and nmtr.atan_id=fmtr.atan_id_gera
and muni.muni_id=atan.muni_id
and docum.proc_id(+)=smtr.proc_id
and nmtr.dm_situacao_num_mtr=1
and fmtr.fmtr_id=nFmtr_id; --1
end SP_FMTR_REL_GERADOR_GET;
--
procedure SP_FMTR_REL_TRANSPORTADOR_GET (nFmtr_id in number,
                        cur   out sys_refcursor) as
begin
open cur for
select  --3-Transportador
       fmtr.fmtr_id,
       fmtr.atan_id atan_transportadora,
       nvl(transp.razao_social,fmtr.nome_transportadora) nome_transportadora,
       substr(lpad(to_char(nvl(transp.cgc_cpf,fmtr.cnpj_transportadora)),14,'0'),1,2)||'.'||
       substr(lpad(to_char(nvl(transp.cgc_cpf,fmtr.cnpj_transportadora)),14,'0'),3,3)||'.'||
       substr(lpad(to_char(nvl(transp.cgc_cpf,fmtr.cnpj_transportadora)),14,'0'),6,3)||'/'||
       substr(lpad(to_char(nvl(transp.cgc_cpf,fmtr.cnpj_transportadora)),14,'0'),9,4)||'-'||
       substr(lpad(to_char(nvl(transp.cgc_cpf,fmtr.cnpj_transportadora)),14,'0'),13,2)  cnpj_transportadora,
       nvl(transp.endereco,fmtr.endereco_transportadora) endereco_transportadora,
       nvl(transp.cep,fmtr.cep_transportadora) cep_transportadora,
       nvl(transp.bairro,fmtr.bairro_transportadora) bairro_transportadora,
       nvl(transp.nome,munitr.nome) municipio_transportadora,
       transp.doc_numero,
       transp.doc_ano,
       fmtr.muni_transporta_id
from fep_formularios_mtr fmtr,
     fep_municipios munitr,
     (select atan.atan_id,pess.razao_social,
       case when pess.fisica_juridica='J' then
            substr(lpad(to_char(pess.cgc),14,'0'),1,2)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),3,3)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),6,3)||'/'||
            substr(lpad(to_char(pess.cgc),14,'0'),9,4)||'-'||
            substr(lpad(to_char(pess.cgc),14,'0'),13,2)
            when pess.fisica_juridica='F' then
              substr(lpad(to_char(pess.cpf),11,'0'),1,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),4,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),9,3)||'-'||
           substr(lpad(to_char(pess.cpf),11,'0'),10,2)
        end cgc_cpf,
        pess.endereco,
        pess.cep,
        pess.bairro,
        muni.nome,
        doc.numero doc_numero,
        doc.ano doc_ano
     from fep_atividades_antropicas atan,
          fep_pessoas pess,
          fep_municipios muni,
          (select resp.atan_id,docu.numero,docu.ano
           from fep_documentos          docu,
                fep_tipos_documentos    tido,
                fep_processos           proc,
                fep_responsabilidades   resp,
                fep_aux_proc_cond_restr prcr
           where resp.resp_id = proc.resp_id
             and proc.proc_id = docu.proc_id
             and docu.tido_id = tido.tido_id
            and docu.docu_id = prcr.docu_id_licenca
            and docu.situacao='E') doc
     where pess.pess_id=atan.pess_id
       and muni.muni_id=pess.muni_id
       and doc.atan_id=atan.atan_id) transp
where munitr.muni_id(+)=fmtr.muni_transporta_id
and fmtr.fmtr_id=nFmtr_id
and transp.atan_id(+)=NVL(fmtr.atan_id,0);
END SP_FMTR_REL_TRANSPORTADOR_GET;
--
procedure SP_FMTR_REL_UN_DESTINO_GET (nFmtr_id in number,
                        cur   out sys_refcursor) as
begin
open cur for
select --4-Unidade de destinac?o
       fmtr.fmtr_id,
       fmtr.nome_unidade_destinacao,
       fmtr.cnpj_unidade_destinacao,
       fmtr.endereco_unidade_destinacao,
       fmtr.cep_unidade_destinacao,
       fmtr.muni_id_destino,
       muniud.nome municipio_unidade_destinacao,
       muniud.unfe_id uf
from fep_formularios_mtr fmtr,
     fep_municipios muniud
where muniud.muni_id=fmtr.muni_id_destino
and fmtr.fmtr_id=nFmtr_id;
END SP_FMTR_REL_UN_DESTINO_GET;
--
PROCEDURE PR_GERA_BOLETO_MTR
 (P_ATAN_ID IN NUMBER
 ,Voperador IN VARCHAR2
 ) is
 cursor c is
select       atan.atan_id                                          atan_id,
             atan.raat_id,
             smtr.smtr_id,
             pess.razao_social                                     razao_social,
             pess.cpf                                              cpf,
             pess.cgc                                              cnpj,
             pess.documento_estrangeiro                            documento_estrangeiro,
             pess.tilo_id_corresp  || ' ' || pess.endereco_corresp endereco_sacado,
             pess.bairro_corresp                                   bairro_sacado,
             pess.cep_corresp                                      cep_sacado,
             muni.nome                                             municipio_sacado,
             atan.descricao                                        empreendimento,
             atan.tilo_id || ' ' ||
             atan.endereco ||
             DECODE(atan.bairro,NULL,NULL,' - ' ||  atan.bairro) || ' - ' ||
             atan.muni_id                                      endereco_empreendimento,
             pck_cadastros.fc_atan_latitude(atan.atan_id)          coord_latitude,
             pck_cadastros.fc_atan_longitude(atan.atan_id)         coord_longitude,
             atan.muni_id                                          muni_id,
             mun1.unfe_id                                          uf,
             atan.medida_porte                                     medida_porte,
             atan.raat_id                                          ramo_ativ,
             raat.dm_pronaf,
             atan.dm_loc_app,
             atan.dm_mais_munic,
             atan.dm_uc_estadual
from FEP_SOLICITACOES_MTR smtr,
     fep_atividades_antropicas atan,
     fep_pessoas pess,
     fep_ramos_atividades raat,
     fep_municipios             muni,
     fep_municipios             mun1
where atan.atan_id=smtr.atan_id
and pess.pess_id=atan.pess_id
and raat.raat_id=atan.raat_id
AND atan.muni_id = mun1.muni_id(+)
AND pess.muni_id_corresp = muni.muni_id(+)
and smtr.atan_id=P_ATAN_ID--140145
and smtr.hicb_id is null
and smtr.proc_id is null
and smtr.tsoi_id=2;
nTido_id         number(5)    := 410;    -- MTR
dDataAtual       date;
nNroBloqueto     number(18);
nNroParcela      number(2)    := 1;
nValorMTR        number(12,2);
dDataVencimento  date;
nHicb            fep_historicos_coletas.hico_id%type;
nCobr            fep_cobrancas.cobr_id%type;
nHipa            fep_historicos_pagamentos.hipa_id%type;
nCobp            fep_cobrancas_parcelas.cobp_id%type;
begin
  for r in c  loop
       nValorMTR := pck_arr_bloquetos.fc_arr_valor_documen(
                          r.ramo_ativ, nTido_id, r.medida_porte, r.dm_pronaf, 1, 4, null,null,null,null,null,null,null );
       dDataVencimento  := pck_arr_bloquetos.fc_arr_data_parcela(nNroParcela);
    if nValorMTR <> 111222333.00 then
       PCK_NET_ARRECADACAO.SP_HICB_INS(
                                        r.razao_social
                                      , r.cpf
                                      , r.cnpj
                                      , nTido_id
                                      , 'N'
                                      , r.medida_porte
                                      , nValorMTR
                                      , null
                                      , null
                                      , null
                                      , r.raat_id
                                      , r.endereco_sacado
                                      , null
                                      , 3
                                      , 'AUTORIZAC?O DE MTR'
                                      , 7
                                      , dDataVencimento
                                      , nValorMTR
                                      , 3
                                      , P_ATAN_ID
                                      , null
                                      , null
                                      , null
                                      , to_char(sysdate,'dd/mm/rrrr')
                                      , to_char(sysdate,'dd/mm/rrrr')
                                      , vOperador
                                      , vOperador
                                      , 3
                                      , nValorMTR
                                      , null
                                      , r.documento_estrangeiro
                                      , nHicb --OUT
                                     );
-------------------------------------------------
        PCK_NET_ARRECADACAO.SP_COBR_INS( null
                                      , null
                                      , 1
                                      , r.uf
                                      , null
                                      , null
                                      , r.muni_id
                                      , null
                                      , null
                                      , r.empreendimento
                                      , r.razao_social
                                      , r.cnpj
                                      , r.cpf
                                      , r.endereco_sacado
                                      , r.bairro_sacado
                                      , r.Municipio_sacado
                                      , r.cep_sacado
                                      , null
                                      , r.raat_id
                                      , 120
                                      , r.medida_porte
                                      , null
                                      , 'N'
                                      , null
                                      , null
                                      , null
                                      , null
                                      , nValorMTR
                                      , 1
                                      , 1
                                      , nHicb
                                      , null
                                      , to_char(sysdate, 'dd/mm/rrrr')
                                      , voperador
                                      , to_char(sysdate, 'dd/mm/rrrr')
                                      , voperador
                                      , 2
                                      , null
                                      , null
                                      , null
                                      , null
                                      , null
                                      , 'N'
                                      , null
                                      , null
                                      , null
                                      , r.documento_estrangeiro
                                      , null
                                      , 'S'
                                      , 6073
                                      , nCobr -- out
                                   );
-------------------------------------------------
        nNroBloqueto     := pck_irrig_bloquetos.fc_bloqueto_dv;
-----------------------------------------------------
        PCK_NET_ARRECADACAO.SP_HIPA_INS( null
                                      , null
                                      , null
                                      , null
                                      , nHicb
                                      , 3
                                      , to_char(sysdate, 'dd/mm/rrrr')
                                      , 'GERA PARCELA PARA AUTORIZAC?O DE MTR'
                                      , 2
                                      , 1
                                      , 1
                                      , dDataVencimento
                                      , nValorMTR
                                      , 0
                                      , nValorMTR
                                      , 0
                                      , nNroBloqueto
                                      , null
                                      , null
                                      , to_char(sysdate, 'dd/mm/rrrr')
                                      , to_char(sysdate, 'dd/mm/rrrr')
                                      , voperador
                                      , voperador
                                      , null
                                      , null
                                      , nHipa  --out
                                     );
--
     PCK_NET_ARRECADACAO.SP_COBP_INS(
                                        null
                                      , 'A'
                                      , null
                                      , nCobr
                                      , 1
                                      , to_char(sysdate, 'dd/mm/rrrr')
                                      , to_char((sysdate + 20),'dd/mm/rrrr')
                                      , nValorMTR
                                      , nNroBloqueto
                                      , nHipa
                                      , to_char(sysdate, 'dd/mm/rrrr')
                                      , voperador
                                      , to_char(sysdate, 'dd/mm/rrrr')
                                      , voperador
                                      , nCobp    --out
                                     );
     update fep_solicitacoes_mtr smtr
     set smtr.tsoi_id=1,
         smtr.hicb_id=nHicb
     where smtr.smtr_id=r.smtr_id;
  end if;
  end loop;
   commit;
end PR_GERA_BOLETO_MTR;
--
--
procedure SP_SOSE_BLOQUETO_SRC (nSose_id in number,
                        cur   out sys_refcursor) as
begin
open cur for
select hipa.nro_bloqueto,hipa.data_vencimento,hipa.data_pagto,hicb.valor,hipa.valor_pago
from FEP_solic_seamb sose,
     fep_historicos_cobrancas hicb,
     fep_historicos_pagamentos hipa
where hicb.hicb_id(+)=sose.hicb_id
and hipa.hicb_id=hicb.hicb_id
and sose.sose_id=nSose_id;
end SP_SOSE_BLOQUETO_SRC;
--
Procedure SP_HIST_FROTA_SRC( sPlaca varchar2,
  nSose_id number,
  cur out sys_refcursor)
as
begin
  open cur for
select frtr.placa,
       mctr.descricao marca,
       frtr.modelo,
       titr.descricao tipo,
       hafr.operador_atualizacao operador,
       hafr.data_atualizacao,
       hafr.data_inclusao_hist data_historico,
       (select r.rv_meaning
         from cg_ref_codes r
        where r.rv_domain =  'DM_SITUACAO_FROTA'
        and r.rv_low_value=hafr.dm_acao) acao
from fep_hist_alteracoes_frotas hafr,
     fep_frotas_transp frtr,
     fep_marcas_transp mctr,
     fep_tipos_transp titr
 where mctr.mctr_id(+)=frtr.mctr_id
and frtr.frtr_id=hafr.frtr_id
and titr.titr_id=frtr.titr_id
and hafr.placa=nvl(sPlaca,hafr.placa)
and hafr.sose_id=nSose_id;
end SP_HIST_FROTA_SRC;
--
FUNCTION FC_SOSE_ARQPDF_LO
 (P_DOCU_ID_LO IN number
 )
 RETURN VARCHAR2
 IS

    vCaminho   varchar2(80);
    nAno       number(4);
    vArquivo   varchar2(30);


     cursor c1 is
        select decode(docu.dm_assinatura_digital,'S',
             (select tpl.description
              from tpl_parameters tpl
              where tpl.parameter_name = 'PATH_PDF_LICENCA_DIG'),
             (select tpl.description
                from tpl_parameters tpl
                where tpl.parameter_name = 'PATH_PDF_LICENCA'))
                ||docu.ano||'/'||docu.docu_id||'_signed.pdf'
        from fep_documentos docu
        where docu.docu_id=P_DOCU_ID_LO;
begin
    open  c1;
    fetch c1 into vCaminho;
    if c1%notfound then
        vCaminho := 'N?o encontrado';
    end if;
    close c1;
    return(vCaminho);
end;
--
procedure SP_FROTA_CABECALHO (nSose_id in number,
                              cur   out sys_refcursor) as
begin
open cur for
select sose.sose_id,
        lpad(to_char(docu.numero),5,0)||'/'||docu.ano licenca_operacao,
        proc.numero||'-'||to_char(proc.orig_id,'09,99')||'/'||proc.ano||'.'||proc.dv processo_administrativo,
       pess.pess_id||' - '||pess.razao_social razao_social,
       (case when pess.fisica_juridica='J' then
            substr(lpad(to_char(pess.cgc),14,'0'),1,2)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),3,3)||'.'||
            substr(lpad(to_char(pess.cgc),14,'0'),6,3)||'/'||
            substr(lpad(to_char(pess.cgc),14,'0'),9,4)||'-'||
            substr(lpad(to_char(pess.cgc),14,'0'),13,2)
            when pess.fisica_juridica='F' then
              substr(lpad(to_char(pess.cpf),11,'0'),1,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),4,3)||'.'||
           substr(lpad(to_char(pess.cpf),11,'0'),9,3)||'-'||
           substr(lpad(to_char(pess.cpf),11,'0'),10,2)
        when pess.fisica_juridica='E' then
           pess.documento_estrangeiro
        end) cnpj_cpf_doc_est,
        pess.tilo_id||' '||pess.endereco endereco_empreendedor,
        pess.bairro bairro_empreendedor,
        pess.cep||'   '||muni.nome||' - '||muni.unfe_id cep_municipio_empreendedor,
        atan.atan_id||' - '||atan.raat_id||' - '||atan.descricao descricao_empreendimento,
        atan.tilo_id||' '||atan.endereco endereco_empreendimento,
        atan.bairro bairro_empreendimento,
        atan.cep||'   '||muni2.nome||' - '||muni2.unfe_id cep_municipio_empreendimento
from fep_solic_seamb sose,
     fep_aux_proc_cond_restr prcr,
     fep_atividades_antropicas atan,
     fep_pessoas pess,
     fep_documentos docu,
     fep_processos proc,
     fep_municipios muni,
     fep_municipios muni2
where prcr.sose_id=sose.sose_id
and docu.docu_id=prcr.docu_id_licenca
and atan.atan_id=sose.atan_id
and pess.pess_id=atan.pess_id
and proc.proc_id=sose.proc_id
and muni.muni_id=pess.muni_id
and muni2.muni_id=atan.muni_id
--and docu.situacao='E'
and sose.sose_id=nSose_id--15575
and sose.tsoi_id=6;
END SP_FROTA_CABECALHO;
--
procedure SP_FROTA_PLACAS (nSose_id in number,
                           cur   out sys_refcursor) as
begin
open cur for
select frtr.placa
from fep_documentos_frotas dofr,
     fep_frotas_transp frtr,
     FEP_MARCAS_TRANSP mctr,
     FEP_TIPOS_TRANSP titr
where frtr.frtr_id=dofr.frtr_id
--and mctr.mctr_id=frtr.mctr_id
and mctr.mctr_id(+)=frtr.mctr_id
and titr.titr_id=frtr.titr_id
and dofr.sose_id_in=nSose_id;
END SP_FROTA_PLACAS;
--
Procedure SP_DSSE_ATEA_ART_INS(nAtea_id          in number,
                        sOperador                in varchar,
                        nDsse_id                 out number) is
  begin
    INSERT INTO fep_docs_solic_seamb
      (dsse_id,
       sose_id,
       dm_tipo_doc_solic_seamb,
       data_inclusao,
       operador_inclusao,
       data_atualizacao,
       operador_atualizacao,
       data_entrega,
       atea_id)
    VALUES
      (DSSE_SEQ.nextval,
       9,
       2,
       TRUNC(SYSDATE),
       sOperador,
       TRUNC(SYSDATE),
       sOperador,
       null,
       nAtea_id);
    SELECT DSSE_SEQ.currval into nDsse_id FROM dual;
    commit;
  end;
--
Procedure SP_DSSE_ATAN_ART_GET(nDsse_id          in number,
                               cur   out sys_refcursor) is
begin
  open cur for
select dsse_id,
     (SELECT CC.RV_MEANING
           FROM cg_ref_codes cc
           WHERE CC.RV_DOMAIN = upper('DM_TIPO_DOC_SOLIC_SEAMB')
                 AND CC.RV_LOW_VALUE = dsse.dm_tipo_doc_solic_seamb
          ) ART  ,
       data_entrega
from fep_docs_solic_seamb dsse
where dsse.dsse_id=nDsse_id;
end SP_DSSE_ATAN_ART_GET;
--
Procedure SP_DSSE_ART_UPD(nDsse_id          in number,
                          sOperador         in varchar2 ) is
begin
update fep_docs_solic_seamb dsse
  set dsse.data_entrega=trunc(sysdate),
      dsse.data_atualizacao=sysdate,
      dsse.operador_atualizacao=sOperador
where dsse.dsse_id=nDsse_id;
commit;
end SP_DSSE_ART_UPD;
--
Procedure SP_DSSE_ENVIADOS_SRC(nAtan_id          in number,
                               cur   out sys_refcursor) is
begin
  open cur for
  select dsse.dsse_id,
        (SELECT CC.RV_MEANING
           FROM cg_ref_codes cc
          WHERE CC.RV_DOMAIN = 'DM_TIPO_DOC_SOLIC_SEAMB'
            AND CC.RV_LOW_VALUE = dsse.dm_tipo_doc_solic_seamb) tipo_documento,
         dsse.data_entrega
    from fep_docs_solic_seamb dsse,
         fep_arts_tecnicos_ativ atea
   where atea.atea_id=dsse.atea_id
     and dsse.atea_id in(select atea.atea_id
                           from fep_arts_tecnicos_ativ atea
                          where atea.rtat_id in(select rtat1.rtat_id
                                                  from fep_responsabilidades resp,
                                                       fep_pessoas pess,
                                                       fep_resp_tecnicos rtec,
                                                       FEP_RESP_TECNICOS_ATIV rtat1
                                                 where pess.pess_id=resp.pess_id
                                                   and rtec.pess_id=resp.pess_id
                                                   and rtat1.rtec_id=rtec.rtec_id
                                                   and rtat1.atan_id=resp.atan_id
                                                   and resp.atan_id=nAtan_id--158758
                                                   and resp.data_fim is null
                                                   and resp.tipa_id=9))
   order by dsse.dsse_id desc;
end SP_DSSE_ENVIADOS_SRC;
--
Procedure SP_RTAT_UPD
(
  nRtat_id in number,
  sData_inicio in varchar,
  sData_fim in varchar,
  sOperador in varchar
)
is
begin
  UPDATE
  fep_resp_tecnicos_ativ
  SET
  --data_inicio =  TO_DATE( sData_inicio,'dd/mm/rrrr'),     -- nao deve atualizar dara de início - felipe dal pizzol 13/10/2017
  data_fim = TO_DATE( sData_fim,'dd/mm/rrrr'),
  data_atualizacao = sysdate,
  operador_atualizacao = sOperador
  WHERE rtat_id = nRtat_id;
  commit;
end;
--
Procedure SP_ATEA_UPD
(
  nAtea_id in number,
  sNumero_art in varchar,
  sData_emissao_art in varchar,
  sData_inicio in varchar,
  sData_fim in varchar,
  sOperador in varchar
)
is
begin
  UPDATE
  fep_arts_tecnicos_ativ
  SET
   numero_art = sNumero_art,
   data_emissao_art = TO_DATE( sData_emissao_art,'dd/mm/rrrr'),
  data_inicio = TO_DATE( sData_inicio,'dd/mm/rrrr'),
  data_fim = TO_DATE( sData_fim,'dd/mm/rrrr'),
  data_atualizacao = sysdate,
  operador_atualizacao = sOperador
  WHERE atea_id = nAtea_id;
  commit;
end;
--
Procedure SP_RESP_UPD
(
  nResp_id in number,
  sObservacao in varchar,
  sOperador in varchar
)
is
begin
  UPDATE
  fep_responsabilidades
  SET  observacao = sObservacao,
  data_atualizacao = sysdate,
  operador_atualizacao = sOperador
  WHERE resp_id = nResp_id;
  commit;
end;
--
procedure SP_SETOR_PARECER_SCR (nPrcr_id in number,
                           cur   out sys_refcursor) as
begin
open cur for
select 'PARECER  ' || seto.sigla || '  Nº  '||(SELECT FC_NRO_PARECER(nPrcr_id) FROM DUAL)
      from fep_setores             seto,
           fep_aux_proc_cond_restr prcr
     where seto.seto_id         = prcr.seto_id_tecnico
       and prcr.prcr_id         = nPrcr_id;
end SP_SETOR_PARECER_SCR;
--
procedure SP_IDENTIFICACAO_GET (nPrcr_id in number,
                           cur   out sys_refcursor) as
begin
open cur for
select
          decode(pck_cadastros.fc_silv_nome_fantasia(nPrcr_id,ata1.atan_id) ,
                       null,to_char(ata1.atan_id)||' '||ata1.descricao,
                       pck_cadastros.fc_silv_nome_fantasia(nPrcr_id,ata1.atan_id))  atan_descricao,
          resp.atan_id,
          ata1.pess_id,
          ata1.raat_id,
          raat.descricao ramo_descricao,
          ata1.tilo_id || ' ' || ata1.endereco   atan_endereco,
          ata1.bairro atan_bairro,
          mun1.nome || ' - ' || mun1.unfe_id  atan_municipio,
          pess.pess_id || ' - ' || pess.razao_social razao_social,
          pess.tilo_id || ' ' || pess.endereco   pess_endereco,
          pess.bairro    pess_bairro,
          pck_cadastros.fc_cep_editado(pess.cep) || '    ' ||
          muni.nome || ' - ' || muni.unfe_id  pess_municipio,
          ata1.medida_porte,
          decode(pess.documento_estrangeiro,null,
          substr(decode(pess.cpf,null,decode(pess.cgc,null,null,pck_valida_cgc_cpf.fc_display_CGC(pess.cgc)),
                        pck_valida_cgc_cpf.fc_display_CPF(pess.cpf)),1,20),
                                       pess.documento_estrangeiro)  cpf_cnpj,
          crme.descricao criterio_medicao,
          sucd.cldo_id cldo_licenca,
          pck_processos.fc_prcr_transportar(nPrcr_id) transportadora,
          decode(ata1.raat_id, 4710.11,'PARA COLETAR E TRANSPORTAR:','PARA TRANSPORTAR:') ativ_transportadora,
          ata1.area_construida,
          ata1.area_terreno,
          proc.tido_id tido_id_licenca,
          'NO TERRITORIO DO ESTADO DO RIO GRANDE DO SUL' localiz_agrotox,
          nvl(proc.medida_porte_calc_atu,0) - nvl(proc.medida_porte_calc_ant,0) area_ampliacao,
          ata1.area_limpeza_equipos
from
        fep_aux_proc_cond_restr   prcr,
        fep_tipos_documentos       tido,
        fep_sub_classes_documentos sucd,
        fep_processos                    proc,
        fep_responsabilidades         resp,
        fep_atividades_antropicas ata1,
        fep_pessoas                       pess,
        fep_municipios                    muni,
        fep_municipios                    mun1,
        fep_ramos_atividades         raat,
        fep_criterios_medicoes       crme
where prcr.prcr_id  = nPrcr_id
and  prcr.proc_id =  proc.proc_id
and  prcr.tido_id_licenca = tido.tido_id
and  tido.sucd_id = sucd.sucd_id
and  proc.resp_id = resp.resp_id
and resp.atan_id = ata1.atan_id
and ata1.pess_id = pess.pess_id
and pess.muni_id = muni.muni_id(+)
and ata1.muni_id = mun1.muni_id(+)
and ata1.raat_id = raat.raat_id
and raat.crme_id = crme.crme_id;
END SP_IDENTIFICACAO_GET;
--
procedure SP_NUM_PROCESSO_SCR (nPrcr_id in number,
                           cur   out sys_refcursor) as
begin
open cur for
select
          proc.numero || '-' ||
          substr(ltrim(rtrim(to_char(proc.orig_id,'0000'))),1,2) || '.' ||
          substr(ltrim(rtrim(to_char(proc.orig_id,'0000'))),3,2) || ' / ' ||
          substr(ltrim(rtrim(to_char(proc.ano,    '0000'))),3,2) || '.' ||
          proc.dv               processo
        from fep_aux_proc_cond_restr prcr,
             fep_processos           proc
       where prcr.prcr_id  = nPrcr_id
         and prcr.proc_id  = proc.proc_id;
END SP_NUM_PROCESSO_SCR;
--
procedure SP_AINF_SCR (nPrcr_id  in number,
                            cur out sys_refcursor) as
begin
open cur for
select ainf.texto
   from fep_aux_cond_restr_informacoes ainf
 where ainf.prcr_id = nPrcr_id
  order by ainf.linha;
END SP_AINF_SCR;
--
procedure SP_AMLC_SCR (nPrcr_id  in number,
                            cur out sys_refcursor) as
begin
open cur for
select amlc.texto motivo,
           amlc.dm_tipo_reg
   from fep_aux_motivos_implocal amlc
 where amlc.prcr_id = nPrcr_id
     and decode(amlc.dm_parecer,null,'S',amlc.dm_parecer) = 'S'
  order by  amlc.linha;
END SP_AMLC_SCR;
--
function FC_SOMOS_PARECER (nPrcr_id in number) return varchar2 is

    vDescricao   varchar2(500);
    nTido_id     number(5);
    vProcesso    varchar2(16);
    vLicenca     varchar2(20);
    nRaat_id     number(7,2);

    cursor c1 is
       select prcr.tido_id_licenca
         from fep_aux_proc_cond_restr prcr
        where prcr.prcr_id = nPrcr_id;

    cursor c2 is
      select substr(lpad(proc.numero,6,0)  || '-' ||
             lpad(proc.orig_id,4,0) || '/' ||
             lpad(proc.ano,2,0)     || '-' ||
             (proc.dv) ,1,16) processo,
             docu.numero || '/' || docu.ano || '-DL' documento
        from fep_aux_proc_cond_restr prcr,
             fep_documentos docu,
             fep_processos  proc
       where prcr.prcr_id = nPrcr_id
         and prcr.docu_id_revogado = docu.docu_id
         and docu.proc_id = proc.proc_id;

begin
   open  c1;
   fetch c1 into nTido_id;
   close c1;
   nRaat_id := pck_processos.fc_prcr_ramo(nPrcr_id);

   if nTido_id between 800 and 899 then
       if nTido_id = 880 then
          vDescricao := 'Somos de parecer favoravel a emissão da Decisão Administrativa de Revogacão de Prorrogacão, pelos motivos abaixo.';
       elsif nRaat_id in ( 4710.10,4710.11,4710.12, 4710.20, 4710.30 ) then
          open  c2;
          fetch c2 into vProcesso, vLicenca;
          close c2;
          vDescricao := 'Somos de parecer que seja REVOGADA a Licenca de Operacão n° ' || vLicenca ||
                        ', para FONTES MOVEIS DE POLUICÃO, concedida atraves do processo ' ||
                        'administrativo n° ' || vProcesso || ', para o:';
       else
          vDescricao := 'Somos de parecer favoravel a emissão da Decisão Administrativa, pelos motivos abaixo.';
       end if;
   else
      if nTido_id in (300,310) then
           vDescricao :=  'Somos de parecer favoravel a concessão da Declaracão de Isencão de Licenciamento Ambiental Estadual.';
      elsif nTido_id = 370 then
           vDescricao :=  'Somos de parecer favoravel a concessão da Declaracão de Desoneracão do Passivo Ambiental.';
      elsif nTido_id in (330) then
           vDescricao :=  'Somos de parecer favoravel a concessão da Declaracão Geral solicitada, ' ||
                          'desde que sejam atendidas as condicões e restricões abaixo.';
      else
           vDescricao := 'Sendo assim, somos de parecer favoravel a emissão do documento, conforme abaixo.';
      end if;
   end if;

   return(vDescricao);

end FC_SOMOS_PARECER;
--
--
procedure SP_MOTIV_REVOG_GET (nPrcr_id in number,
                           cur   out sys_refcursor) as
begin
open cur for
select amlc.texto imploc_motivo
    --       amlc.dm_tipo_reg
   from fep_aux_motivos_implocal amlc
 where amlc.prcr_id = nPrcr_id
     and decode(amlc.dm_parecer,null,'S',amlc.dm_parecer) = 'S'
  order by  amlc.linha;
END SP_MOTIV_REVOG_GET;
--
PROCEDURE SP_GERA_PROC_MTR
 (P_VALOR_PAGO IN NUMBER
 ,P_DT_PAGTO IN DATE
 ,P_DATA_CREDITO IN DATE
 ,P_BLOQUETO IN NUMBER
 ,P_HIPA_ID IN NUMBER
 ,p_smtr_id IN NUMBER
 )
 IS

-- PL/SQL Specification
-- PL/SQL Specification
dDataAtual                         date;
vUser                              varchar2(20);
vSituacao                          varchar2(01):= 'L';
vLicencaReq                        varchar2(01):= 'N';
nProc_Id                           number(10);
nAnoInteiro                        number(04);
nAnoProc                           number(02);
nDigVerif                          number(13);
nOrig_Id                           number(04):= 567;
nNumero                            number(07);
nAspr_Id                           number(04);
nStatus                            number(01):= 1;
nSeto_Id                           number(06) := 201;
nTido_Id                           number(05);
nMedidaPorte                       number(12,4);
nTsoi_id                           number(10);
vObservacao                        varchar2(50);
nHicb_id                           number(10);
nCobr_id                           number(10);
nChefeSetor                        number(10);
nAtan_id                           number(10);
nResp_id                           number(10);
nPess_id_requ                      number(10);
cursor c1 is
    SELECT proc_seq.nextval,
                    sysdate,
                    user,
                    to_number(to_char(sysdate, 'RRRR')),
                    to_number(to_char(sysdate, 'RR'))
       FROM dual;
cursor c21 is
   SELECT  NVL(MAX(nrpr.numero)+1, 20000)
     FROM   fep_numeros_processos nrpr
  WHERE   nrpr.ano = nAnoProc;

cursor c22 is
   SELECT  NVL(MAX(nrpr.numero)+1, 25000)
     FROM   fep_numeros_processos nrpr
  WHERE   nrpr.ano = nAnoProc;

cursor c23 is
   SELECT  NVL(MAX(nrpr.numero)+1, 70000)
     FROM   fep_numeros_processos nrpr
  WHERE   nrpr.ano = nAnoProc;

cursor c3 is
   select  410 tido_id,
               98 aspr_id,
               smtr.atan_id,
               smtr.licenca_muni,
               smtr.processo_muni,
               smtr.muni_nome_lic_proc,
               smtr.anuencia_muni,
               smtr.qt_media_residuos
     from fep_solicitacoes_mtr smtr
  where smtr.smtr_id = p_smtr_id;

cursor c4 is
   SELECT  seto.pess_id
     FROM   fep_setores seto
  WHERE   seto.seto_id = 201;

cursor c5 is
   SELECT  resp.resp_id,
           ata1.pess_id
     FROM   fep_responsabilidades           resp,
            fep_atividades_antropicas    ata1
  WHERE   resp.atan_id  = nAtan_id
       and    resp.data_fim is null
       and    resp.tipa_id != 9
       and    resp.atan_id = ata1.atan_id;
--
cursor c6 is
    select docu.numero,
           docu.ano,
           docu.tido_id,
           docu.docu_id,
           proc.numero,
           proc.orig_id,
           proc.ano,
           proc.dv,
           proc.proc_id,
           docu.data_fim_vigencia
from fep_processos proc,
     fep_documentos docu,
     fep_responsabilidades resp,
     fep_atividades_antropicas atan
where docu.proc_id=proc.proc_id
and resp.resp_id=proc.resp_id
and atan.atan_id=resp.atan_id
and proc.pess_id=nPess_id_requ--40568
and docu.situacao='E'
and atan.atan_id=nAtan_id;
v_doc_numero        fep_documentos.numero%type;
v_doc_ano           fep_documentos.ano%type;
v_tido_id           fep_documentos.tido_id%type;
v_docu_id           fep_documentos.docu_id%type;
v_proc_numero       fep_processos.numero%type;
v_proc_orig_id      fep_processos.orig_id%type;
v_proc_ano          fep_processos.ano%type;
v_proc_dv           fep_processos.dv%type;
v_data_fim_vigencia fep_documentos.data_fim_vigencia%type;
v_proc_id           fep_processos.proc_id%type;
--
v_licenca_muni      fep_solicitacoes_mtr.licenca_muni%type;
v_processo_muni     fep_solicitacoes_mtr.processo_muni%type;
v_muni_nome_lic_proc fep_solicitacoes_mtr.muni_nome_lic_proc%type;
v_anuencia_muni     fep_solicitacoes_mtr.anuencia_muni%type;
v_qt_media_residuos fep_solicitacoes_mtr.qt_media_residuos%type;
--
v_numero_inicial    FEP_AUX_NUMERACOES_MTR.NUMERO_INICIAL%type;
v_numero_final      FEP_AUX_NUMERACOES_MTR.NUMERO_FINAL%type;
v_serie_mtr         FEP_AUX_NUMERACOES_MTR.SERIE_MTR%type;
-- PL/SQL Block
BEGIN

   open c1;
   fetch c1 into  nProc_Id,  dDataAtual,   vUser ,   nAnoInteiro,  nAnoProc;
   close c1;

-- Busca o Numero do Processo - com 2 digitos
-- Suporte 47387 Vitalina(Alterado por Anilice)
-- FAVOR LIBERAR PARA CADASTRO DE PROCESSOS VIA INTERNET OS NUMEROS A PARTIR DE 20.000. E N?O MAIS DE 25.000
/*
if  nAnoInteiro > 2014 then
  open c21;
  fetch c21 into nNumero;
  close c21;
  IF nNumero   <   20000 THEN
      nNumero := 20000;   -- 20000 e o inicio dos Processos automaticos
  END IF;
else
  open c22;
  fetch c22 into nNumero;
  close c22;
  IF nNumero   <   25000 THEN
      nNumero := 25000;   -- 25000 e o inicio dos Processos automaticos a partir de 2012
  END IF;
end if;
*/
-- A partir de 01/01/2017 a numeração automática dos processos vai começar em 70000
if  nAnoInteiro > 2016 then
    open  c23;
    fetch c23 into nNumero;
    close c23;
    IF   nNumero   <   70000 THEN
         nNumero := 70000;   -- 20000 e o inicio dos Processos automaticos
    END IF;
else
  open  c21;
  fetch c21 into nNumero;
  close c21;
  IF  nNumero   <   20000 THEN
      nNumero := 20000;   -- 20000 e o inicio dos Processos automaticos a partir de 2012
  END IF;
end if;

  open  c3;
  fetch  c3 into nTido_id, nAspr_id, nAtan_id,
                 v_licenca_muni,v_processo_muni,v_muni_nome_lic_proc,v_anuencia_muni,v_qt_media_residuos;
  close c3;

  open  c4;
  fetch  c4 into nChefeSetor;
  close c4;

  -- suporte 48107 - Cleonice
  -- alterar o setor responsavel quando da gerac?o automatica do processo de Transporte do 2225 para 2052 e colocar como tecnico responsavel pelo processo o Victor Hugo Rodrigues - codigo 90005
  --                                        ( Malu 04/03/2015 )

  nSeto_Id        :=220;-- 201;       --
 -- nChefeSetor := 90005;    -- Victor Hugo Rodrigues

 open c5;
 fetch c5 into nResp_id, nPess_id_requ;
 close c5;

   -- Calcula o Digito Verificador
    nDigVerif := TO_NUMBER(SUBSTR((RTRIM(LTRIM(TO_CHAR(nNumero,'0000000'))) ||
                                 RTRIM(LTRIM(TO_CHAR(nOrig_Id,'0999'))) ||
                                 RTRIM(LTRIM(TO_CHAR(nAnoProc, '00')))) ,1,13));
  rotinas_gerais.calc_digito(nDigVerif);

-- Inclui processo
BEGIN
          INSERT INTO fep_processos (
                                   proc_id,
                                       numero,
                                       ano,
                                       dv,
                                       resp_id,
                                       orig_id,
                                       aspr_id,
                                       pess_id,
                                       seto_id,
                                       tido_id,
     data_entrada,
                                       status,
                                       situacao,
      data_inclusao,
                                       data_atualizacao,
                                       operador_inclusao,
                                       operador_atualizacao,
                                       licenca_requerente,
                                       pess_id_respondido,
                                       observacao,
                                       data_pagamento,
                                       valor_pago,
                                       ano_inteiro,
                                       nro_bloqueto,
                                       mudanca_porte,
                                       medida_porte,
                                       dm_eiarima,
                                       dm_origem)
                VALUES    (       nProc_Id,
                                  nNumero,
                                  nAnoProc,
                                  nDigVerif,
                                  nResp_id,
                                  nOrig_Id,
                                  nAspr_id,
                                  nPess_id_requ,
                                  nSeto_Id,
                                  nTido_id,
                                  dDataAtual,
                                  nStatus,
                                  vSituacao,
                                  dDataAtual,
                                  dDataAtual,
                                  'ROTINA AUTOMATICA',
                                  'ROTINA AUTOMATICA',
                                  NULL,
                                  nChefeSetor,
                                  'MTR / Internet',
                                  p_dt_pagto,
                                  p_valor_pago,
                                  nAnoInteiro,
                                  p_bloqueto,
                                  'N',
                                  NULL,
                                  'N',
                                   2);
       EXCEPTION
             WHEN OTHERS THEN
                      raise_application_error(-20001, 'Erro: Inclus?o Processo de Cargas Perigosas.' || SQLCODE || ' - ' || SQLERRM );
       END;

      BEGIN
              INSERT INTO fep_numeros_processos
                                         (nrpr_id,
                                          numero,
                                          orig_id,
                                          ano,
                                          dv,
                                          proc_id,
                                          observacao,
                                          data_inclusao,
                                          operador_inclusao,
                                          data_atualizacao,
                                          operador_atualizacao,
                                          incluido_spi,
                                          dm_tipo_processo
                                      )  VALUES (
                                          nrpr_seq.nextval,
                                          nNumero,
                                          nOrig_Id,
                                          nAnoProc,
                                          nDigVerif,
                                          nProc_Id,
                                          'MTR / Internet',
                                          dDataAtual,
                                          vUser,
                                          dDataAtual,
                                          vUser,
                                          'N',
                                          'E');
       EXCEPTION
           WHEN OTHERS THEN
               raise_application_error(-20001, 'Erro: Inclus?o Nros Processo MTR.' || SQLCODE || ' - ' || SQLERRM );
       END;
       nTsoi_id := 5;  -- Aguardando Analise da Solicitac?o
      BEGIN
                UPDATE   fep_solicitacoes_mtr
                     SET   proc_id                         = nProc_id,
                           operador_atualizacao            = vUser,
                           data_atualizacao                = dDataAtual,
                           tsoi_id                         = nTsoi_id
                   WHERE    smtr_id                        = p_smtr_id;
      EXCEPTION
          WHEN OTHERS THEN
          raise_application_error(-20001, 'Erro: Atualizacao Proc de MTR.' || SQLCODE || ' - ' || SQLERRM );
      END;

      --- Gera o registro para a gerac?o da Licenca
      BEGIN
              INSERT INTO  fep_aux_proc_cond_restr (
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
       SETO_ID_ASSINATURA,
       DM_LIBERA_ESPECIFICO,
       DATA_INICIO
  --     SOSE_ID
       )  VALUES
       ( prcr_seq.nextval,
       nProc_id,
       nChefeSetor,
       201,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       'S',
       dDataAtual,
       vUser,
       dDataAtual,
       vUser,
       2,
       'N',
       null
     --  p_sose_id
       );
       EXCEPTION
              WHEN OTHERS THEN
                       raise_application_error(-20001, 'Erro: Inclus?o Auxiliar MTR.' || SQLCODE || ' - ' || SQLERRM );
       END;
                     --- Gera o registro para o processo mtr
      select nmtr.numero_inicial,nmtr.numero_final,nmtr.serie_mtr
       into v_numero_inicial,v_numero_final,v_serie_mtr
      from FEP_AUX_NUMERACOES_MTR nmtr
      where nmtr.smtr_id=p_smtr_id;
      open c6;
      fetch c6 into v_doc_numero,
                     v_doc_ano  ,
                     v_tido_id   ,
                     v_docu_id ,
                     v_proc_numero  ,
                     v_proc_orig_id ,
                     v_proc_ano   ,
                     v_proc_dv  ,
                     v_proc_id  ,
                     v_data_fim_vigencia;
      close c6;
      BEGIN
       insert into fep_aux_processos_mtr
      (AMTR_ID,
      PROC_ID,
      DM_TIPO_EMPTO,
      DM_TIPO_DOC,
      LIC_NUMERO,
      LIC_ANO,
      LIC_TIDO_ID,
      DOCU_ID_EXISTENTE,
      PROC_NUMERO,
      PROC_ORIG_ID,
      PROC_ANO,
      PROC_DV,
      PROC_ID_EXISTENTE,
      LICENCA_MUNI,
      PROCESSO_MUNI,
      MUNI_NOME_LIC_PROC,
      QT_MEDIA_RESIDUOS,
      LIC_ULT_MTR,
      ANO_ULT_MTR,
      SEQ_INICIAL_MTR,
      SEQ_FINAL_MTR,
      SERIE_MTR,
      SEQ_INICIAL_EMITIR,
      SEQ_FINAL_EMITIR,
      SERIE_EMITIR,
      OBSERVACOES,
      DATA_INCLUSAO,
      OPERADOR_INCLUSAO,
      DATA_ATUALIZACAO,
      OPERADOR_ATUALIZACAO,
      ANUENCIA_MUNI,
      COND_ESPECIAL,
      DOCLIC_VIGENTE,
      DOCLIC_FIM_VIG) values
      (AMTR_SEQ.NEXTVAL,
       nProc_id,
       2,
       1,
       v_doc_numero,
       v_doc_ano,
       v_tido_id,
       v_docu_id,
       v_proc_numero,
       v_proc_orig_id,
       v_proc_ano,
       v_proc_dv,
       v_proc_id,
       v_licenca_muni,
       v_processo_muni,
       v_muni_nome_lic_proc,
       v_qt_media_residuos,
       null,
       null,
       null,
       null,
       null,
       v_numero_inicial,
       v_numero_final,
       v_serie_mtr,
       null,
       sysdate,
       user,
       sysdate,
       user,
       v_anuencia_muni,
       null,
       'LO nº '||v_doc_numero||'/'||v_doc_ano||' DL emitido pela Fepam ',
       v_data_fim_vigencia);
  end;
END SP_GERA_PROC_MTR;
--
procedure SP_BUSCA_NUM_TALONARIO_MTR (nSmtr_id in number,
                                  nNumTalonario out number) as

cursor  c is
select nmtr.numero_inicial,nmtr.numero_final,nmtr.nmtr_id,smtr.smtr_id
from fep_solicitacoes_mtr smtr,
     fep_aux_numeracoes_mtr  nmtr
where nmtr.smtr_id=smtr.smtr_id
and smtr.tsoi_id<>7
and nmtr.dm_situacao_num_mtr=1
and smtr.smtr_id=nSmtr_id;
v_num_ini    fep_aux_numeracoes_mtr.numero_inicial%type;
v_num_fim    fep_aux_numeracoes_mtr.numero_inicial%type;
vNmtr_id     fep_aux_numeracoes_mtr.nmtr_id%type;
vSmtr_id     fep_solicitacoes_mtr.smtr_id%type;
v_novo_numero fep_aux_numeracoes_mtr.numero_inicial%type;
v_nao_achou varchar2(1);
begin
v_nao_achou:='S';
   open c;
   fetch c into v_num_ini,v_num_fim, vNmtr_id,vSmtr_id;
   if c%notfound then
      v_nao_achou:='N';
   end if;
   close c;
if v_nao_achou='N' then
   v_novo_numero:=0;
else
   v_novo_numero:=v_num_ini + 1;
   if v_novo_numero>=v_num_fim then
      update fep_solicitacoes_mtr smtr
      set smtr.tsoi_id=7-- encerra a solicitac?o
      where smtr.smtr_id=vSmtr_id;
      update  fep_aux_numeracoes_mtr nmrt
        set nmrt.dm_situacao_num_mtr=2,--encerra a numerac?o
            numero_inicial=v_novo_numero
      where nmrt.nmtr_id= vNmtr_id;
   else
      update  fep_aux_numeracoes_mtr nmrt
        set numero_inicial=v_novo_numero
      where nmrt.nmtr_id= vNmtr_id;
   end if;
--
--
  commit;

end if;
nNumTalonario:=v_novo_numero;
 dbms_output.put_line(' novo numero '||nNumTalonario);
exception
    when others then
     v_novo_numero:=0;
     nNumTalonario:=v_novo_numero;
END SP_BUSCA_NUM_TALONARIO_MTR;
--
Function FC_SOLIC_PENDENTE (nAtan_id number) return varchar2 is
  v_tem_pendente varchar2 (1);
           cursor c is
             select 'S'
             from fep_solic_seamb sose
             where sose.atan_id=nAtan_id
             and exists (select '1' from fep_aux_proc_cond_restr prcr,
                            fep_documentos docu
            where prcr.proc_id=sose.proc_id
            and prcr.sose_id=sose.sose_id
            and docu.docu_id=prcr.docu_id_licenca
            and docu.situacao='P');
    begin
      v_tem_pendente:='N';
      open c;
      fetch c into v_tem_pendente;
      if c%notfound then
           v_tem_pendente:='N';
      end if;
      close c;
      return(v_tem_pendente);
end FC_SOLIC_PENDENTE;
--
PROCEDURE SP_FMTR_IMPRESSO_UPD(nFmtr_id in NUMBER) IS
BEGIN
  update fep_formularios_mtr fmtr
  set fmtr.dm_situacao=2
  where  fmtr.fmtr_id=nFmtr_id;
   commit;
END SP_FMTR_IMPRESSO_UPD;
--
PROCEDURE SP_SMTR_UPD(sLicenca_muni in varchar2,
                               sProcesso_muni in varchar2,
                               sMuni_nome_lic_proc in varchar2,
                               sAnuencia_muni in varchar2,
                               nQt_media_residuos in NUMBER,
                               nSmtr_id in NUMBER) IS
BEGIN
  update fep_solicitacoes_mtr smtr
  set smtr.licenca_muni=sLicenca_muni,
      smtr.processo_muni=sProcesso_muni,
      smtr.muni_nome_lic_proc=sMuni_nome_lic_proc,
      smtr.anuencia_muni=sAnuencia_muni,
      smtr.qt_media_residuos=nQt_media_residuos
  where  smtr.smtr_id=nSmtr_id;
   commit;
END SP_SMTR_UPD;
--
PROCEDURE SP_SMTR_DEL(nSmtr_id                 IN NUMBER) IS

BEGIN
delete FEP_AUX_NUMERACOES_MTR nmtr
where nmtr.smtr_id=nSmtr_id;
--
delete FEP_SOLICITACOES_MTR smtr
where smtr.smtr_id=nSmtr_id;
commit;
end SP_SMTR_DEL;
--
procedure SP_ACPI_GET(ncgc_cpf  in number,
                      sOperador in varchar2) is
cursor c is
select pess.pess_id
from fep_pessoas pess
where (pess.cgc=ncgc_cpf
  or   pess.cpf=ncgc_cpf);
--
cursor c2 is
  select acin.acin_id
  from fep_acessos_internet acin
  where acin.username=sOperador;
--
cursor c3 is
select 'S'
 from fep_pessoas pess,
     FEP_ACESSOS_PESSOAS_INTERNET acpi,
     fep_acessos_internet acin
where acpi.pess_id=pess.pess_id
and acin.acin_id=acpi.acin_id
and  pess.cgc=ncgc_cpf;
--
cursor c4 (p_username in varchar2)is
select acpi.pess_id
 from FEP_ACESSOS_PESSOAS_INTERNET acpi,
     fep_acessos_internet acin
where acin.acin_id=acpi.acin_id
and acin.username=sOperador;
--
v_pess_id  fep_pessoas.pess_id%type;
v_pess_id_cad  fep_pessoas.pess_id%type;
v_acin_id  fep_acessos_internet.acin_id%type;
v_tem_pessoa varchar2(1);
begin
v_tem_pessoa:='N';
open c;
fetch c into v_pess_id;
if c%notfound then
   v_pess_id:=null;
end if;
close c;
--
open c2;
fetch c2 into v_acin_id;
close c2;
--
open c3;
fetch c3 into v_tem_pessoa;
if c3%notfound then
   v_tem_pessoa:='N';
end if;
close c3;
--
v_pess_id_cad:=null;
open c4(sOperador);
fetch c4 into v_pess_id_cad;
if c4%notfound then
   v_pess_id_cad:=null;
end if;
close c4;
--
if v_tem_pessoa = 'N' and v_pess_id_cad is null then
     insert into FEP_ACESSOS_PESSOAS_INTERNET (ACPI_ID,
                                          ACIN_ID,
                                          PESS_ID,
                                          DATA_INCLUSAO,
                                          OPERADOR_INCLUSAO,
                                          DATA_ATUALIZACAO,
                                          OPERADOR_ATUALIZACAO,
                                          DM_ACESSO_INTEGR) values
                                          (acpi_seq.nextval,
                                           v_acin_id,
                                           v_pess_id,
                                           sysdate,
                                           sOperador,
                                           sysdate,
                                           sOperador,
                                           9);
   commit;
end if;
end SP_ACPI_GET;
--
procedure SP_CANCELA_SOSE_VENCIDO
as
cursor c is
select sose.sose_id,sose.operador_inclusao,hipo.data_vencimento
from fep_solic_seamb sose,
     fep_historicos_pagamentos hipo
where hipo.hicb_id=sose.hicb_id
and sose.tsoi_id in(1,2)
and hipo.data_vencimento<trunc(sysdate)
and (trunc(sysdate) - hipo.data_vencimento )> 20
and hipo.status<>5;
begin
for r in c loop
   update fep_solic_seamb sose
   set tsoi_id=23,
       sose.motivo_indeferimento='Cancelado automáticamente mais de 20 dias do vencimento '||r.data_vencimento,
       sose.data_atualizacao=sysdate,
       sose.operador_atualizacao='JOB'
   where  sose.sose_id=r.sose_id;
end loop;
commit;
end SP_CANCELA_SOSE_VENCIDO;
--
FUNCTION FC_ANO_LICENCA
 RETURN number
 IS
vValor  number;
begin
    select  t.valor
    into      vValor
    from    tpl_parameters t
    where  t.parameter_name = 'ANOS_VIGENCIA_LICENCA' ;
  return(vValor);
end FC_ANO_LICENCA;
--
Procedure SP_PROC_SCR_DATA(nProc_numero in number,
                      nProc_orig in number,
                      nProc_ano in number,
                      nProc_dv in number,
                       cur out sys_refcursor) as
 begin
    open cur for
SELECT   FF.PROC_ID,
        (SELECT FP.RAZAO_SOCIAL
              FROM FEP_PESSOAS FP
             WHERE FP.PESS_ID = FF.PESS_ID
           ) REQUERENTE_NOME
        , (SELECT FX.DESCRICAO
            FROM FEP_ASSUNTOS_PROCESSOS FX
            WHERE FX.ASPR_ID = FF.ASPR_ID
          )  Assunto_Descricao
         , (SELECT FS.SIGLA
            FROM FEP_SETORES FS
            WHERE FS.SETO_ID = FF.SETO_ID
          ) Seto_nome ,
        FF.DATA_ENTRADA
   FROM fep_pessoas PESS, FEP_PROCESSOS FF
   WHERE PESS.pess_id = FF.pess_id
       and ff.numero = nProc_numero
  and  ff.orig_id=nProc_orig
  and  ff.ano=nProc_ano
  and ff.dv=nProc_dv;
END SP_PROC_SCR_DATA;
--
Procedure SP_PROC_GET_DATA(nProc_id in number,
                       cur out sys_refcursor) as
 begin
    open cur for
SELECT   FF.PROC_ID,
        (SELECT FP.RAZAO_SOCIAL
              FROM FEP_PESSOAS FP
             WHERE FP.PESS_ID = FF.PESS_ID
           ) REQUERENTE_NOME
        , (SELECT FX.DESCRICAO
            FROM FEP_ASSUNTOS_PROCESSOS FX
            WHERE FX.ASPR_ID = FF.ASPR_ID
          )  Assunto_Descricao
         , (SELECT FS.SIGLA
            FROM FEP_SETORES FS
            WHERE FS.SETO_ID = FF.SETO_ID
          ) Seto_nome ,
        FF.DATA_ENTRADA
   FROM fep_pessoas PESS, FEP_PROCESSOS FF
   WHERE PESS.pess_id = FF.pess_id
       and ff.proc_id= nProc_id;
END SP_PROC_GET_DATA;
--
Procedure SP_PROC_UPD_data_entrada(nProc_id in number,
                         sData_entrada  in varchar,
                         sOperador_atualizacao  in varchar
                         )
                          is
  begin
    UPDATE fep_processos
       SET data_entrada         = TO_DATE(sData_entrada, 'dd/mm/rrrr'),
           data_atualizacao     = sysdate,
           operador_atualizacao = sOperador_atualizacao
     WHERE proc_id = nProc_id;
    commit;
  end SP_PROC_UPD_data_entrada;
--

procedure SP_TIPO_SEAMB_GET (nSose_id in number, cur out sys_refcursor) as
begin
  open cur for
    select (SELECT c.rv_meaning FROM CG_REF_CODES c WHERE RV_DOMAIN = 'DM_TIPO_SOLIC_SEAMB' and c.rv_low_value=sose.dm_tipo_solic_seamb)
          ||decode(sose.dm_alteracao_cad,'S',' CAD','')||decode(sose.dm_alteracao_rt,'S',' RT','')||
            decode((select distinct 'S'  from fep_hist_alteracoes_frotas hafr where hafr.sose_id=sose.sose_id),'S',' FROTA','') tipo_solicitacao_seamb
    from fep_solic_seamb sose
    where sose.sose_id = nSose_id;
END;

-- Busca o tipo de solicitação da Licença
-- Cátia Jardim -- 10/08/2017

procedure SP_TIPO_SOLIC_SEAMB_GET (nSose_id in number, cur out sys_refcursor) as
begin
  open cur for
    select substr((SELECT c.rv_meaning FROM CG_REF_CODES c WHERE RV_DOMAIN = 'DM_TIPO_SOLIC_SEAMB' and c.rv_low_value=sose.dm_tipo_solic_seamb)
          ||decode(sose.dm_alteracao_cad,'S',' CAD','')||decode(sose.dm_alteracao_rt,'S',' RT','')||
            decode((select distinct 'S'  from fep_hist_alteracoes_frotas hafr where hafr.sose_id=sose.sose_id),'S',' FROTA',''),21,8) tipo_solic
    from fep_solic_seamb sose
    where sose.sose_id = nSose_id;
END;
FUNCTION FC_VALIDA_LIC_VENCIDA
 (nAtan_id IN number
 ,nSose_id IN number
 )
 RETURN NUMBER
 IS
  --
  Retorno          number:= 0;
  r_busca_Licenca  number:= 0;
  r_alt_cad_RT     number:= 0;
  r_alt_frota      number:= 0;

  --
  -- Busca a Lo do empreendimento, se o retorno for null, então está vencida
  cursor c_busca_Licenca is
     SELECT 1
       FROM fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos_documentos   prdc,
             fep_processos              proc,
             fep_empreend_processos     epro,
             fep_responsabilidades      resp
       WHERE proc.proc_id  = prdc.proc_id
         AND docu.docu_id  = prdc.docu_id
         AND docu.tido_id  = tido.tido_id
         AND tido.sucd_id  = sucd.sucd_id
         AND docu.proc_id  = epro.proc_id
         AND epro.resp_id  = resp.resp_id
         and proc.raat_id_proc in (4710.10,4710.11,4710.12,4710.20,4710.30)
         AND resp.atan_id  = nAtan_id
         AND docu.tido_id in ( 120 , 151)
         AND  resp.Tipa_Id = 9
         AND docu.situacao = 'E'
         AND (sucd.cldo_id BETWEEN 1 AND 6);


  -- Verifica se Ã© uma solicitação de alteração de cadastro ou RT
    cursor c_alt_cad_RT is
        select 1
         from fep_solic_seamb sose
      where sose.sose_id = nSose_id
      and (sose.dm_alteracao_cad = 'S' or sose.dm_alteracao_rt = 'S')
    ;

  -- Verifica se Ã© uma solicitação de alteração de frota
     cursor c_alt_frota is
        select 1
         from fep_hist_alteracoes_frotas hafr
      where hafr.sose_id = nSose_id
    ;

begin
   --
    open c_busca_Licenca;
   fetch c_busca_Licenca into r_busca_Licenca;
   close c_busca_Licenca;
   --
    open c_alt_cad_RT;
   fetch c_alt_cad_RT into r_alt_cad_RT;
   close c_alt_cad_RT;
   --
    open c_alt_frota;
   fetch c_alt_frota into r_alt_frota;
   close c_alt_frota;
   --
    if r_busca_Licenca = null then
      --
      if r_alt_cad_RT = 1 then
         Retorno := 0;
      elsif  r_alt_frota = 1 then
         Retorno := 0;
      else
         -- trata-se de uma primeira licença, então realmente não tem LO anterior.
         Retorno := 1;
      end if;
      --
    else
      -- A licença ainda está em vigor.
      Retorno:= 1;
    end if;
   --
   return(Retorno);
   --
end;

procedure SP_PRJU_GET ( cur out sys_refcursor) as
  BEGIN
    open cur for
        select substr(lpad(proc.numero,6,0)  || '-' ||
                 lpad(proc.orig_id,4,0) || '/' ||
                 lpad(proc.ano,2,0)     || '-' ||
                (proc.dv) ,1,16) processo
                ,prju.prju_id
                ,prju.proc_id
          ,prju.data_inicio
          ,prju.data_fim
          ,prju.data_atualizacao
          ,prju.operador_atualizacao
     from fep_proc_libera_judiciais prju
         ,fep_processos proc
     where prju.proc_id = proc.proc_id
       and prju.data_inicio is not null;
  END;
  --
 Procedure SP_LIMPA_FOSSA_GET ( cur out sys_refcursor) as
  begin
    open cur for
      select tscl.tscl_id,
       tclr.tclr_id,
       tclr.tipo_reg,
       tscl.descricao classes_residuos,
       tclr.descricao sub_classe,
       decode(tscl.dm_internet,'S','C') class_sub_res,
       50 tipo_cercap
       from fep_tipos_sub_classes_residuos tscl
           ,fep_tipos_classes_residuos tclr
      where tscl.tscl_id = tclr.tscl_id
        and tclr.tclr_id = 15;
end SP_LIMPA_FOSSA_GET;
 --
 FUNCTION FC_VALIDA_PLACA_INSERIDA
 (nAtan_id IN number
 ,sPlaca   IN varchar2
 )
 RETURN NUMBER
 IS
 p_placa_ajus varchar2(10):= regexp_replace(sPlaca,'[^A-Z,a-z,0-9]');

-- busca a placa no sistema, se houver com situação 3, então não deixa ser cadadstrada
cursor c_val_placa (nAtan_id in number
                   ,p_placa_ajus in varchar2)is
select frtr.atan_id
      ,frtr.placa
  from fep_frotas_transp   frtr
      ,fep_atividades_antropicas atan
       ,fep_documentos_frotas dofr
 where atan.atan_id = frtr.atan_id
   and frtr.frtr_id = dofr.frtr_id
   and atan.raat_id in (4710.10, 4710.11, 4710.12, 4710.20, 4710.30)
   and frtr.placa = p_placa_ajus
   and frtr.dm_situacao_frota = 3 --> atendida
   and atan.atan_id <> nAtan_id
   and  exists ( SELECT DISTINCT docu.*
        FROM fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos              proc,
             fep_responsabilidades      resp
       WHERE proc.proc_id = docu.proc_id
         AND docu.tido_id = tido.tido_id
         AND tido.sucd_id = sucd.sucd_id
         AND proc.resp_id = resp.resp_id
         AND resp.atan_id = atan.atan_id
         and docu.docu_id = dofr.docu_id
         AND docu.situacao = 'E'   --> em vigor
         AND docu.tido_id in ( 120, 151))
         and rownum = 1
   ;

-- Traz os dados da placa cadastrada
cursor c_exist_placa (p_int_atan_id in number
                     ,p_int_placa in varchar2)is
   select frtr.atan_id atan_id
        , frtr.placa  placa
        , decode(frtr.dm_situacao_frota,1,'Incluir',2,'Excluir',3,'atendida')  situacao
        , atan.raat_id raat_id
  from fep_frotas_transp   frtr
      ,fep_atividades_antropicas atan
      ,fep_documentos_frotas dofr
 where atan.atan_id = frtr.atan_id
   and frtr.frtr_id = dofr.frtr_id
   and atan.raat_id in (4710.10, 4710.11, 4710.12, 4710.20, 4710.30)
   and frtr.placa   = p_int_placa
   and atan.atan_id = p_int_atan_id
   and frtr.dm_situacao_frota = 3 --> atendida
   and exists ( SELECT DISTINCT docu.*
        FROM fep_documentos             docu,
             fep_tipos_documentos       tido,
             fep_sub_classes_documentos sucd,
             fep_processos              proc,
             fep_responsabilidades      resp
       WHERE proc.proc_id = docu.proc_id
         AND docu.tido_id = tido.tido_id
         AND tido.sucd_id = sucd.sucd_id
         AND proc.resp_id = resp.resp_id
         AND resp.atan_id = atan.atan_id
         and docu.docu_id = dofr.docu_id
         AND docu.situacao = 'E' --> em vigor
         AND docu.tido_id in (120, 151))
   and rownum = 1  ;

  r_val_placa   c_val_placa%rowtype;
  r_exist_placa c_exist_placa%rowtype;
  retorno       number:= 0;
  --
 begin
  --
  for r_val_placa in c_val_placa(nAtan_id,p_placa_ajus) loop
     --
     for r_exist_placa in  c_exist_placa(r_val_placa.atan_id,r_val_placa.placa) loop
     --
      retorno:=1;
     --
     end loop;
     --
  end loop;
  return(retorno);
--
end;
--
-- Ativa o botão de Renovar Licença.
-- a partir de 120 dias antes de vencer, enquanto estiver vigente, e até 60 dias depois de vencida.
-- 15/07/2026 - CS 70497- CJ
 Procedure SP_DOCU_ATAN_SIT(nAtan_id  in number,
                           cur       out sys_refcursor) as
begin
  open cur for
    SELECT DISTINCT docu.*
      FROM fep_documentos             docu,
           fep_tipos_documentos       tido,
           fep_sub_classes_documentos sucd,
           fep_processos              proc,
           fep_responsabilidades      resp
     WHERE proc.proc_id = docu.proc_id
       AND docu.tido_id = tido.tido_id
       AND tido.sucd_id = sucd.sucd_id
       AND proc.resp_id = resp.resp_id
       AND resp.atan_id = nAtan_id
       AND docu.situacao IN ('V', 'E')
       AND docu.tido_id IN (120, 151);
      -- AND TRUNC(SYSDATE) BETWEEN TRUNC(docu.data_fim_vigencia) - 120
      --                        AND TRUNC(docu.data_fim_vigencia) + 60;
end;

Procedure SP_DARE_GERADA_PROC_FISICO (nDocu_id in number
                                      ,cur out sys_refcursor) as
begin
  open cur for
    select docu.numero||'/'|| docu.ano Dare
       ,trunc(docu.data_emissao) data_emissao_dare
  from fep_documentos docu
 where docu.data_fim_vigencia >= trunc(sysdate)
   and docu.docu_id_dare = nDocu_id;
END;
 --  Rotina pra alterar a placa no modelo Mercosul
 --  GLPI - 14156 - Cátia Jardim - 06/05/2019
PROCEDURE  pr_frtr_altera_placa_Mercosul (nFrtr_id in number, sPlaca in varchar2,sOper_atualizacao in varchar2) is


-- Regra informada.
 cursor c2 is
      select frtr.placa
        from fep_frotas_transp frtr
       where frtr.Frtr_id = nFrtr_id
            -- and frtr.dm_situacao_frota = 3
         and length(frtr.placa) <= 8;

   cursor c3 is
  select frtr.placa
    from fep_frotas_transp frtr
   where frtr.Frtr_id = nFrtr_id
     and substr(regexp_replace(frtr.placa, '[^A-Z,a-z,0-9]'),-3,1) in ('A','B','C','D','E','F','G','H','I','J')
     --and frtr.dm_situacao_frota = 3
     ;
   r3    c3%rowtype;

   vPlacaMercosul varchar2(20);
   vPlaca     varchar2(20);

begin

   open  c3;
   fetch c3 into r3; -- ConferÃªncia da placa a ser alterada

   if c3%notfound then
   --
        open  c2 ;
        fetch c2 into vPlaca; -- letra correspondente ao número
        close c2;
        if vPlaca is not null then

      select substr(vplaca,
                                                  1,
                                                  length(vplaca) - 3) ||
                                           decode(substr(regexp_replace(upper(vplaca),
                                                                        '[^A-Z,a-z,0-9]'),
                                                         -3,
                                                         1),
                                                  0,
                                                  'A',
                                                  1,
                                                  'B',
                                                  2,
                                                  'C',
                                                  3,
                                                  'D',
                                                  4,
                                                  'E',
                                                  5,
                                                  'F',
                                                  6,
                                                  'G',
                                                  7,
                                                  'H',
                                                  8,
                                                  'I',
                                                  9,
                                                  'J') ||
                                           substr(vplaca,
                                                  length(vplaca) - 1)
                                                  into
                                                  vPlacaMercosul
                                                  from dual;
      dbms_output.put_line('vPlacaMercosul='||vPlacaMercosul||' vPlaca='||vPlaca);
        if vPlacaMercosul<>vPlaca then
          begin
             UPDATE fep_frotas_transp FRTR
                SET operador_atualizacao   = sOper_atualizacao,
                    frtr.data_atualizacao  = sysdate,
                    frtr.placa             =vPlacaMercosul
              WHERE frtr.Frtr_id           = nFrtr_id;
              commit;
           exception
               when others then
                     raise_application_error(-20001, 'Erro: Alt FRTR Mercosul: ' || nFrtr_id || ' >> ' || SQLCODE || ' - ' || SQLERRM );
           end;
        end if;

       end if;
     else
        null;
    --   raise_application_error(-20001,' ==> Erro: placa na situação de EXCLUíDA ou possui Solicitação em aberto. Verifique! <== ');
     end if;
    close c3;
end;


PROCEDURE  pr_frtr_altera_placa_Mercosul1(nFrtr_id in number, sPlaca in varchar2,sOper_atualizacao in varchar2,cur       out sys_refcursor) is
-- Regra informada.
 cursor c2 is
      select frtr.placa
        from fep_frotas_transp frtr
       where frtr.Frtr_id = nFrtr_id
            -- and frtr.dm_situacao_frota = 3
         and length(frtr.placa) <= 8;

   cursor c3 is
  select frtr.placa
    from fep_frotas_transp frtr
   where frtr.Frtr_id = nFrtr_id
     and substr(regexp_replace(frtr.placa, '[^A-Z,a-z,0-9]'),-3,1) in ('A','B','C','D','E','F','G','H','I','J')
     --and frtr.dm_situacao_frota = 3
     ;
   r3    c3%rowtype;

   vPlacaMercosul varchar2(20);
   vPlaca     varchar2(20);

begin

   open  c3;
   fetch c3 into r3; -- ConferÃªncia da placa a ser alterada

   if c3%notfound then
   --
        open  c2 ;
        fetch c2 into vPlaca; -- letra correspondente ao número
        close c2;
        if vPlaca is not null then

      select substr(vplaca,
                                                  1,
                                                  length(vplaca) - 3) ||
                                           decode(substr(regexp_replace(upper(vplaca),
                                                                        '[^A-Z,a-z,0-9]'),
                                                         -3,
                                                         1),
                                                  0,
                                                  'A',
                                                  1,
                                                  'B',
                                                  2,
                                                  'C',
                                                  3,
                                                  'D',
                                                  4,
                                                  'E',
                                                  5,
                                                  'F',
                                                  6,
                                                  'G',
                                                  7,
                                                  'H',
                                                  8,
                                                  'I',
                                                  9,
                                                  'J') ||
                                           substr(vplaca,
                                                  length(vplaca) - 1)
                                                  into
                                                  vPlacaMercosul
                                                  from dual;
      dbms_output.put_line('vPlacaMercosul='||vPlacaMercosul||' vPlaca='||vPlaca);
        if vPlacaMercosul<>vPlaca then
          begin
             UPDATE fep_frotas_transp FRTR
                SET operador_atualizacao   = sOper_atualizacao,
                    frtr.data_atualizacao  = sysdate,
                    frtr.placa             =vPlacaMercosul
              WHERE frtr.Frtr_id           = nFrtr_id;
              commit;

  open cur for
    select 1 atualizou from dual;
           exception
               when others then
                     raise_application_error(-20001, 'Erro: Alt FRTR Mercosul: ' || nFrtr_id || ' >> ' || SQLCODE || ' - ' || SQLERRM );
           end;
        end if;

       end if;
     else
         open cur for
            select 0 atualizou from dual;

    --   raise_application_error(-20001,' ==> Erro: placa na situação de EXCLUíDA ou possui Solicitação em aberto. Verifique! <== ');
     end if;
    close c3;
end;
--
function FC_LICENCA_NOVA(nAtan_id in number)
  RETURN varchar2 IS
 cursor c1  is
 select 'N'
  from fep_solic_seamb sose1
  where sose1.atan_id=nAtan_id
  and sose1.tsoi_id=6
  and sose1.tido_id in(120,151);
 v_licenca_nova varchar2(1):='S';
begin
  v_licenca_nova:='S';
   open c1;
   fetch c1 into v_licenca_nova;
   if c1%notfound then
       v_licenca_nova:='S';
   end if;
   close c1;
   RETURN(v_licenca_nova);
END FC_LICENCA_NOVA;
--
procedure SP_INSERE_DOCS_SOSE (nTido_id in number,
                               nAtan_id in number,
                               nSose_id in number,
                               nMedida_porte_cad in number,
                               nMedida_porte_calc in number,
                               sDm_alteracao_rt in varchar,
                               sDm_tipo_solic_seamb  in number ) as
cursor c is
select atan.raat_id ,
busca_porte(atan.raat_id, nMedida_porte_cad,null) port_cad,
 busca_porte(atan.raat_id, nMedida_porte_calc,null) port_calc
from fep_atividades_antropicas atan
where atan.atan_id=nAtan_id;
--
cursor c2 (p_tido_id in number,
            p_sose_id in number) is
select 'S'
  from fep_docs_solic_seamb dsse
  where dsse.sose_id=p_sose_id
  and dsse.dm_tipo_doc_solic_seamb=p_tido_id;
--
-- Incluido seleção pela data de exclusão
-- Eduardo - chamado: 46425 - 16/08/2023
--
cursor c_radio (p_atan_id in number) is
SELECT 'S'
        from fep_classes_residuos_ativ      clre,
             fep_sub_classes_residuos_ativ  sclt,
             fep_tipos_sub_classes_residuos tscl,
             fep_tipos_classes_residuos     tclr
       where  tclr.tclr_id=7
         and clre.clre_id = sclt.clre_id
         and sclt.tscl_id = tscl.tscl_id
         and tscl.tscl_id = tclr.tscl_id
          and clre.atan_id=p_atan_id
          and sclt.data_exclusao is null;
--
-- Incluido seleção pela data de exclusão
-- Eduardo - chamado: 46425 - 16/08/2023
--
cursor c_explo (p_atan_id in number) is
SELECT 'S'
        from fep_classes_residuos_ativ      clre,
             fep_sub_classes_residuos_ativ  sclt,
             fep_tipos_sub_classes_residuos tscl,
             fep_tipos_classes_residuos     tclr
       where  tclr.tclr_id=1
         and clre.clre_id = sclt.clre_id
         and sclt.tscl_id = tscl.tscl_id
         and tscl.tscl_id = tclr.tscl_id
          and clre.atan_id=p_atan_id
          and sclt.data_exclusao is null;
v_tem_explosivo  varchar2(1);
v_tem_radioativo varchar2(1);
v_tem_doc_tido varchar2(1);
v_tem_doc120 varchar2(1);
v_cont number:=0;
v_tipo_solicitacao varchar2(30);
begin
if nTido_id in (120,151) then
   if pck_net_processos.fc_licenca_nova(nAtan_id) = 'S' then
      v_tipo_solicitacao:='Nova Licença';
  else
      v_tipo_solicitacao:='Renovação de Licença';
   end if;
elsif nTido_id=340 then
      if sDm_tipo_solic_seamb=4 then
          v_tipo_solicitacao:='Rev Licença';
      else
          v_tipo_solicitacao:='Alteração de Frota';
      end if;
elsif nTido_id=140 then
    v_tipo_solicitacao:='Alteração de Cadastro';
end if;
  for r in c loop
    if sDm_alteracao_rt='S' OR
    (v_tipo_solicitacao='Alteração de Cadastro' AND
    pck_net_processos.fc_trocou_rt_data(nSose_id,
                                      natan_id)='S') then
      --ART
        pck_net_processos.sp_dsse_insere(nSose_id,2);

    elsif v_tipo_solicitacao in ('Nova Licença','Renovação de Licença','Alteração de Cadastro')
         then
       if r.raat_id in(4710.10,4710.20,4710.30,4710.11,4710.12) then
          --Certificado de Regularidade válido CTF/APP
           pck_net_processos.sp_dsse_insere(nSose_id,10);
           --CNPJ / CPF
           pck_net_processos.sp_dsse_insere(nSose_id,1);
           --ART
           pck_net_processos.sp_dsse_insere(nSose_id,2);
           --Alvará Municipal
           pck_net_processos.sp_dsse_insere(nSose_id,3);
           if r.raat_id in(4710.20,4710.30) then
              --PAE
              pck_net_processos.sp_dsse_insere(nSose_id,13);
              -- CH - 49656 - 01/2024
              -- Contrato com Empresa especializada em Atendimento a Emergência
              pck_net_processos.sp_dsse_insere(nSose_id,22);
              -- CH - 52015 - 04/2024
              if r.raat_id in(4710.30) then
              -- CH - 51341 - 03/2024
              -- Imagens das embarcações com as devidas identificações
                 pck_net_processos.sp_dsse_insere(nSose_id,23);
              end if;
           end if;
           if r.raat_id in(4710.10,4710.11,4710.12) then
              if  r.port_calc in('M','G','E') then
              --PAE
                 pck_net_processos.sp_dsse_insere(nSose_id,13);
                 -- CH - 49656 - 01/2024
                 -- Contrato com Empresa especializada em Atendimento a Emergência
                 pck_net_processos.sp_dsse_insere(nSose_id,22);
              end if; --porte
           end if;

           --
        end if;--ramos
        -- CH - 58005 - 01/2025
        -- Incluir 'Alteração de Cadastro'
        if v_tipo_solicitacao in ('Nova Licença','Renovação de Licença','Alteração de Cadastro')
           and sDm_alteracao_rt='N'
          and sDm_tipo_solic_seamb<>4  then
            if r.raat_id in(4710.10,4710.20,4710.30) then
               v_tem_radioativo:='N';
               open c_radio(nAtan_id);
               fetch c_radio into v_tem_radioativo;
               if c_radio%notfound then
                   v_tem_radioativo:='N';
               end if;
               close c_radio;
               if v_tem_radioativo='S'  then
                 --Autorização do CNEN o Plano de Transporte aprovado pela instituição
                 pck_net_processos.sp_dsse_insere(nSose_id,6);
                 -- CH - 58005 - 01/2025
                 -- Plano de Transporte aprovado pela CNEN
                 pck_net_processos.sp_dsse_insere(nSose_id,24);
               end if;
               v_tem_explosivo:='N';
               open c_explo(nAtan_id);
               fetch c_explo into v_tem_explosivo;
               if c_explo%notfound then
                   v_tem_explosivo:='N';
               end if;
               close c_explo;
               if v_tem_explosivo='S'  then
                 --Documento de registro do exército
                 pck_net_processos.sp_dsse_insere(nSose_id,5);
               end if;
            end if;
        end if;
        if r.raat_id in(4710.11)
           and sDm_alteracao_rt='N'
          and sDm_tipo_solic_seamb<>4 then
           --Autorização ANP
           pck_net_processos.sp_dsse_insere(nSose_id,7);
           --CONTRATO de transportadora com a empresa responsável pelo recebimento do OLUC
           pck_net_processos.sp_dsse_insere(nSose_id,14);
           --Cópia da LO da Empresa de rerrefino
           pck_net_processos.sp_dsse_insere(nSose_id,15);
        end if;  --ramos
        if r.raat_id in(4710.12)
           and sDm_alteracao_rt='N'
          and sDm_tipo_solic_seamb<>4  then
           --Contrato Destinador - ETE
           pck_net_processos.sp_dsse_insere(nSose_id,8);
           --Cópia Licença Destinador - ETE
           pck_net_processos.sp_dsse_insere(nSose_id,9);
           --CIPP/CIV
           pck_net_processos.sp_dsse_insere(nSose_id,11);
           --IMAGEM DOS VEÍCULOS(frontal,traseira e laterais com as identificação: placas,rótulos de risco e painéis de segurança
           pck_net_processos.sp_dsse_insere(nSose_id,16);
           --Relatório técnico e fotográfico sobre local de estacionamento do(s) veículo(s)
           pck_net_processos.sp_dsse_insere(nSose_id,17);
           -- Chamado 62675 - Relatório Técnico e Fotográfico - Sistema de Rastreamento
           pck_net_processos.sp_dsse_insere(nSose_id,25);
        -- Chamado 51101
           --Cópia do contrato de prestação de serviço de limpeza dos equipamentos e veículo(s) tanque
        --   pck_net_processos.sp_dsse_insere(nSose_id,18);
           --Cópia da Licença de Operação atualizada da empresa contratada para prestação do serviço de limpeza de equipamentos e veículo(s) tanque
        --   pck_net_processos.sp_dsse_insere(nSose_id,19);
       end if;  --ramos
  end if;--tipos solicitação
  if v_tipo_solicitacao in ('Alteração de Frota')
     and sDm_alteracao_rt='N'
     and sDm_tipo_solic_seamb<>4 then
      --ART
   --   pck_net_processos.sp_dsse_insere(nSose_id,2); fpo tirado chamado 24282
      if r.raat_id in(4710.10,4710.11,4710.12) then
        if r.port_cad in('I','P',null)
         and   r.port_calc in('M','G','E') then
              --PAE
           pck_net_processos.sp_dsse_insere(nSose_id,13);
           -- CH - 49656 - 01/2024
           -- Contrato com Empresa especializada em Atendimento a Emergência
           pck_net_processos.sp_dsse_insere(nSose_id,22);
        end if; --porte
        if r.raat_id in(4710.12) then
                --CIPP/CIV
            pck_net_processos.sp_dsse_insere(nSose_id,11);
            --IMAGEM DOS VEÍCULOS(frontal,traseira e laterais com as identificação: placas,rótulos de risco e painéis de segurança
            pck_net_processos.sp_dsse_insere(nSose_id,16);
            -- Chamado 62675 - Relatório Técnico e Fotográfico - Sistema de Rastreamento
            pck_net_processos.sp_dsse_insere(nSose_id,25);
        end if;
     end if;  --ramo
     -- CH - 51341 - 03/2024
     if r.raat_id in(4710.30) then
     -- Imagens das embarcações com as devidas identificações
        pck_net_processos.sp_dsse_insere(nSose_id,23);
     end if;
  end if; --tipos solicitação
  end loop;
end SP_INSERE_DOCS_SOSE;
--
Procedure SP_DSSE_INSERE(nSoseid     in number,
                      nDmtipodoc  in number)  is
 cursor c2 (p_tido_id in number,
            p_sose_id in number) is
select 'S'
  from fep_docs_solic_seamb dsse
  where dsse.sose_id=p_sose_id
  and dsse.dm_tipo_doc_solic_seamb=p_tido_id;
cursor c3 (p_sose_id in number) is
select 'S'
  from fep_docs_solic_seamb dsse
  where dsse.sose_id=p_sose_id
  and dsse.dm_tipo_doc_solic_seamb=4;
--
v_tem_doc_tido varchar2(1):='N';
v_tem_tipo4    varchar2(1):='N';
  begin
v_tem_doc_tido:='N';
v_tem_tipo4 :='N';
       open c3(nSoseid);
       fetch c3 into v_tem_tipo4;
       if c3%notfound then
         v_tem_tipo4 :='N';
       end if;
       close c3;
       if v_tem_tipo4='S' then
           delete fep_docs_solic_seamb dsse
           where dsse.sose_id=nSoseid
           and dsse.dm_tipo_doc_solic_seamb=4;
        end if;
       open c2(nDmtipodoc,nSoseid);
       fetch c2 into v_tem_doc_tido;
       close c2;
       if  v_tem_doc_tido='N' then
          INSERT INTO fep_docs_solic_seamb
           (dsse_id,
            sose_id,
            dm_tipo_doc_solic_seamb,
            data_inclusao,
            operador_inclusao,
            data_atualizacao,
            operador_atualizacao,
            data_entrega)
            VALUES
            (DSSE_SEQ.nextval,
             nSoseid,
             nDmtipodoc,
             sysdate,
             'FEPAM.NET',
             sysdate,
             'FEPAM.NET',
             null);
   --        commit;
        end if;
end SP_DSSE_INSERE;
--
procedure SP_arr_consiste_pgto(P_PROC_ID IN number,
                       P_ATAN_ID IN number,
                       P_TIDO_ID IN number,
                       cur out sys_refcursor) as
   vMsg                                  varchar2(500)   := null;
begin
    vMsg:=pck_arrecadacao.fc_arr_consiste_pgto(P_PROC_ID,
                                   P_ATAN_ID,
                                   P_TIDO_ID,
                                   null,
                                   null,
                                   1);
    open cur for
      select vMsg
      from dual;
end;
--
FUNCTION FC_TROCOU_RT_DATA(nSose_id in number,
                          nAtan_id in Number)
                          RETURN VARCHAR2 IS
cursor c_atual is
   select sose.data_inclusao
from fep_solic_seamb sose
where sose.sose_id=nSose_id
and  sose.atan_id= nAtan_id;
--
cursor c_ant is
select sose.data_inclusao
from fep_solic_seamb sose
where sose.sose_id=(select max(sose1.sose_id)
                   from fep_solic_seamb sose1
                  where   sose1.sose_id<nSose_id
                   and  sose1.atan_id=nAtan_id);
v_data_inclusao_atual date;
v_data_inclusao_ant   date;
v_rt_ant fep_pessoas.razao_social%type;
v_rt_atu fep_pessoas.razao_social%type;
v_trocou_rt varchar2(1):='N';
begin
  v_trocou_rt:='N';
  open c_ant;
  fetch c_ant into v_data_inclusao_ant;
  if c_ant%notfound then
      return(v_trocou_rt);
  end if;
  close c_ant;
  --
  open c_atual;
  fetch c_atual into v_data_inclusao_atual;
  close c_atual;
 --
  select pck_net_processos.FC_busca_rt_data(nAtan_id,v_data_inclusao_ant) into v_rt_ant
  from dual;
  --
  select pck_net_processos.FC_busca_rt_data(nAtan_id,v_data_inclusao_atual) into v_rt_atu
  from dual;
if v_rt_ant<> v_rt_atu then
   v_trocou_rt:='S';
else
   v_trocou_rt:='N';
end if;
RETURN(v_trocou_rt);
end;
--
FUNCTION FC_PROC_DOC_TRAB(nProc_id IN NUMBER) RETURN varchar2 IS
 nContador NUMBER(5);
   CURSOR c1 IS
      SELECT COUNT(*)
from fep_documentos docu
where docu.proc_id=nProc_id
and docu.situacao='B';
v_tem_doc_trab varchar2(1);
BEGIN
  OPEN  c1;
  FETCH c1 INTO nContador;
  CLOSE c1;
  if nContador>0 then
     v_tem_doc_trab:='S';
  else
     v_tem_doc_trab:='N';
  end if;
  RETURN(v_tem_doc_trab);
END;
--

PROCEDURE SP_ATUALIZA_NODO_2022 IS

  cursor c1 is
     select a.nudo_id,
	    a.sucd_id,
            a.seto_id,
            a.proc_id,
	    a.ultimo_numero
       from fep_numeros_documentos a
      where a.ano = 2021
        and not exists ( select null
                           from fep_numeros_documentos b
                          where b.ano = 2022
                            and a.sucd_id = b.sucd_id
                            and a.seto_id = b.seto_id );
  r1   c1%rowtype;

 begin
  open c1;
  loop
    fetch c1 into r1;
    if c1%notfound then
       close c1;
       exit;
    else
       begin
         insert into fep_numeros_documentos (
		 NUDO_ID,
		 ANO,
		 SUCD_ID,
		 SETO_ID,
		 PROC_ID,
		 ULTIMO_NUMERO )
                     values (
		 NUDO_seq.nextval,
		 2022,
		 r1.SUCD_ID,
		 r1.SETO_ID,
		 null,
		 0 );
       end;
    end if;
  end loop;
  COMMIT;

end;
FUNCTION FC_tipo_documento_sose(p_Sose_id IN NUMBER) RETURN NUMBER IS
--declare
--p_sose_id number(10):=63892;
cursor c is
select fss.tido_id,
       faa.atan_id,
       fss.dm_alteracao_cad,
      fss.dm_alteracao_rt
from fep_solic_seamb fss,
     fep_atividades_antropicas faa
where faa.atan_id=fss.atan_id
and fss.sose_id=p_sose_id;
v_tipo_solic number(1):=0;
begin
  for r in c loop
    if r.tido_id in(120,151) then
      if pck_net_processos.fc_licenca_nova(r.atan_id)='S' then
         v_tipo_solic:=1;
      else
         v_tipo_solic:=2;
      end if;
    elsif  r.tido_id in(340) then
       if r.dm_alteracao_cad='S'
        and r.dm_alteracao_rt='S' then
         v_tipo_solic:=6;
       else
         v_tipo_solic:=5;
        end if;
    elsif  r.tido_id in(140) then
         v_tipo_solic:=6;
    end if;
  end loop;
  return( v_tipo_solic);
  --dbms_output.put_line('v_tipo_solic: '||v_tipo_solic);
end;

FUNCTION FC_DISPLAY_DOCS_LISTA(p_origem         in number,
                               p_docu_id_qrcode in number,
                               p_proc_id        in number,
                               p_docu_id        in number,
                               p_tido_id_docu   in number) return varchar2 IS

  vSimNao   varchar2(1) := 'S';
  nDocu_id   number(10);

  cursor c1 is
     select vpro.docu_id
       FROM V_PROC_LICEN_SIST VPRO
      WHERE VPRO.LISTAR        = 'S'
        and Vpro.proc_id       = p_proc_id
        and vpro.tido_id_docu != 1800
        and cod_situacao_docu in ('E','V','G','R','A','S','U')
      ORDER BY VPRO.DATA_EMISSAO DESC,
               VPRO.DOCU_ID      desc;


begin
  -------------------------------------------------
  -- p_origem = 1 - primeiro documento a mostrar
  -------------------------------------------------
  if p_origem = 1 then
     if p_docu_id_qrcode is not null then
        if p_docu_id_qrcode = p_docu_id then
           vSimNao := 'S';
        else
           vSimNao := 'N';
        end if;
     else
        open  c1;
        fetch c1 into nDocu_id;
        close c1;
        if nDocu_id = p_docu_id then
           vSimNao := 'S';
        else
           vSimNao := 'N';
        end if;
     end if;
     return(vSimNao);
  end if;

  -----------------------------------------------------------
  -- p_origem = 2  - Demais documentos do processo - lista 2
  -----------------------------------------------------------
  if p_origem = 2 then
     if p_docu_id_qrcode is not null then
        if p_docu_id_qrcode = p_docu_id then -- já listou na lista 1
           vSimNao := 'N';
        else
           if p_proc_id = 597354 then -- guarda-chuva monitoramento
              vSimNao := 'N';
           else
              vSimNao := 'S';
           end if;
        end if;
     else
        open  c1;
        fetch c1 into nDocu_id;
        close c1;
        if nDocu_id = p_docu_id then -- já listou na lista 1
           vSimNao := 'N';
        else
           vSimNao := 'S';
        end if;
     end if;
     return(vSimNao);
  end if;

  return(vSimNao);

end;



----------------------------------------------------------
-- Lista 1 da pagina que mostra os documentos na internet
----------------------------------------------------------
PROCEDURE SP_GET_DOCS_LISTA(p_processo        in number,
                            p_docu_id_qrcode  in number,
                            p_origem          in number,
                            cur out sys_refcursor)   is

   vProcesso    varchar2(13);
   nNumero      number(7);
   nOrig_id     number(4);
   nAno         number(2);
   nDv          number(1);
   nProc_id     number(10);

   cursor c1 is
      select proc.proc_id
        from fep_processos proc
       where proc.numero  = nNumero
         and proc.orig_id = nOrig_id
         and proc.ano     = nAno
         and proc.dv      = nDv;

  begin

    vProcesso := lpad(p_Processo,13,0);
    nNumero   := to_number(substr(vProcesso,1,6));
    nOrig_id  := to_number(substr(vProcesso,7,4));
    nAno      := to_number(substr(vProcesso,11,2));
    nDV       := to_number(substr(vProcesso,13,1));

    open  c1;
    fetch c1 into nProc_id;
    close c1;

    if nProc_id is not null then
           open cur for
              SELECT distinct
                     VPRO.DOCU_ID,
                     VPRO.NUMERO,
                     VPRO.ANO,
                     VPRO.DESCRICAO_TD,
                     VPRO.CGC,
                     VPRO.CPF,
                     VPRO.MUNICIPIO,
                     VPRO.ENDERECO,
                     VPRO.BAIRRO,
                     VPRO.RAMO,
                     VPRO.RAZAO_SOCIAL,
                     VPRO.LISTAR,
                     VPRO.EXISTE_PDF,
                     VPRO.PROCESSO      PROCESSO,
                     VPRO.DOCU_ID       DOCU_ID,
                     VPRO.DATA_ENTRADA  DATA_ENTRADA,
                     VPRO.SITUACAO      SITUACAO_PROC,
                     VPRO.SITUACAO_DOCU SITUACAO,
                     TO_CHAR(VPRO.DATA_INICIO_VIGENCIA,'DD/MM/YYYY') DATA_INICIO_VIGENCIA,
                     TO_CHAR(VPRO.DATA_FIM_VIGENCIA,'DD/MM/YYYY') DATA_FIM_VIGENCIA,
                     VPRO.DM_ASSINATURA_DIGITAL       DM_ASSINATURA_DIGITAL,
                     VPRO.RENOVACAO_AUTOMATICA,
                     decode(vpro.tido_id_docu,
                                20030, vpro.tido_id_docu,
                                VPRO.TIDO_ID_PROC) TIDO_ID,
                     VPRO.TIDO_ID_PROC ,
                     VPRO.TIDO_ID_DOCU,
                     VPRO.DATA_EMISSAO,
                     VPRO.OBSERVACOES,
                     VPRO.CLDO_ID,
                     to_number(to_char(VPRO.DATA_ASSINATURA_FISICA,'rrrr')) ANO_ASSINATURA,
                     VPRO.GERACAO_AUTOMATICA,
                     VPRO.DM_P7S,
                     VPRO.DM_DATA_EXTENDIDA_PANDEMIA
                FROM V_PROC_LICEN_SIST VPRO
               WHERE VPRO.LISTAR = 'S'
                 and Vpro.proc_id = nProc_id
                 and cod_situacao_docu in ('E','V','G','R','A','S','U')
                 and pck_net_processos.fc_display_docs_lista(p_origem,p_docu_id_qrcode,
                                                             vpro.proc_id,
                                                             vpro.docu_id, vpro.tido_id_docu) = 'S'
                GROUP BY
                     VPRO.DESCRICAO_TD, VPRO.PROCESSO,VPRO.CGC, VPRO.CPF, VPRO.MUNICIPIO,
                     VPRO.ENDERECO, VPRO.BAIRRO, VPRO.RAMO, VPRO.RAZAO_SOCIAL, VPRO.LISTAR,
                     VPRO.EXISTE_PDF, VPRO.DOCU_ID ,VPRO.DATA_ENTRADA, VPRO.SITUACAO,
                     VPRO.SITUACAO_DOCU, VPRO.DATA_INICIO_VIGENCIA, VPRO.DATA_FIM_VIGENCIA,
                     VPRO.DM_ASSINATURA_DIGITAL, VPRO.NUMERO, VPRO.ANO,
                     VPRO.RENOVACAO_AUTOMATICA,
                     decode(vpro.tido_id_docu, 20030, vpro.tido_id_docu, VPRO.TIDO_ID_PROC),
                     VPRO.TIDO_ID_PROC, VPRO.TIDO_ID_DOCU, VPRO.DATA_EMISSAO,
                     VPRO.OBSERVACOES, VPRO.CLDO_ID, VPRO.DATA_ASSINATURA_FISICA,
                     VPRO.GERACAO_AUTOMATICA, VPRO.DM_P7S, VPRO.DM_DATA_EXTENDIDA_PANDEMIA
            ORDER BY VPRO.DATA_EMISSAO DESC, VPRO.DOCU_ID desc;

    end if;

  end;
  FUNCTION FC_PRCR_TRANSPORTAR
 (P_PRCR_ID IN number
 )
 RETURN VARCHAR2
 IS


    vTransportar  varchar2(500) := null;

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
       SELECT tclr.tclr_id,
                       tclr.codigo
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
        group by  tclr.tclr_id,
                           tclr.codigo
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
                                     'substância CLASSE 9, conforme Resolução n° 5947, de 01/06/2021, ' ||
--                                     'substância CLASSE 9, conforme Resolução n° 5232, de 14/12/2016, ' ||   -- Chamado 26058 por Karina L. S.
                                     'da Agência Nacional de Transportes  Terrestres - ANTT, para fins de transporte.';
       return(vTransportar);
   elsif nRaat_id in ( 4710.12 ) then
       vTransportar := 'Resíduo oriundo do esgotamento sanitário, classificado para fins de transporte '||
                                     'como substância CLASSE 6, conforme Resolução n° 5947, de 01/06/2021 '||
--                                     'como substância CLASSE 6, conforme Resolução n° 5.232, de 16/12/2016 '||  -- Chamado 26058 por Karina L. S.
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
            vTransportar := vTransportar || vClasses ||
                                          ' (classificação ONU)';
      else
            vTransportar := vTransportar || vClasses ||
                                          ', conforme Resolução nº 5947, de 01/06/2021, ' ||   --', conforme Resolução nº 5232, de 14/12/2016, ' || -- Chamado 25650: Troquei devido à mudança de Resolução
                                         'da Agência Nacional de Transportes Terrestres - ANTT';
       end if;

      if nTipoCercap = 10 then
          if nRaat_id in ( 4710.30 ) then
                vTransportar := vTransportar ||
                                              ' para fins de destinação, conforme norma NBR 10.004 da ABNT.';
            else
               vTransportar := vTransportar || '.';
          end if;
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
              if   nRaat_id in ( 4710.30 ) then
                      vTransportar := 'RESÍDUOS CLASSE ' || vClasses ||
                                             ' para fins de destinação, conforme norma NBR 10.004 da ABNT.';
              else
                      vTransportar := 'RESÍDUOS CLASSE ' || vClasses ||
                                          ', conforme Resolução nº 5947, de 01/06/2021, ' || --', conforme Resolução nº 5232, de 14/12/2016, ' || -- Chamado 25650 - Comente devido à mudança por Resolução
                                          'da Agência Nacional de Transportes Terrestres - ANTT' ||
                                           ' e normas NBR 10004 e NBR 13221, da ABNT.';
              end if;
          else
             if nCont1 > 0 then
                vTransportar := vTransportar || ' e ';
             end if;
              if   nRaat_id in ( 4710.30 ) then
                    vTransportar := vTransportar || 'RESÍDUOS CLASSE ' || vClasses ||
                                                   ' para fins de destinação, conforme norma NBR 10.004 da ABNT.';
              else
                    vTransportar := vTransportar || 'RESÍDUO PERIGOSO  (Classe ' || vClasses ||
                                                  ', ABNT NBR 10.004:2004)';
              end if;
          end if;
       end if;
    end if;

   end if;

   return(vTransportar);

end;
function FC_Valor_min_diaria
  RETURN NUMBER IS

  valor_min_diaria NUMBER;

begin

  BEGIN
  select d.valor_diaria
      INTO valor_min_diaria
  from fep_diarias d
  where d.dias_viagem=0
  and d.tp_servidor='S'
  and d.destino=1;
  EXCEPTION
    WHEN no_data_found THEN
      valor_min_diaria := 0;
  END;
  RETURN(valor_min_diaria);
end FC_Valor_min_diaria;
--
-- Corrigido a linha com erro: "and dofr.frtr_id=239683" para "and dofr.frtr_id=nFrtr_id"
-- Eduardo - 23/11/2023  -- Projeto Placas
--
function FC_LICENCA_VIGOR(nFrtr_id in number)
  RETURN varchar2 IS
  v_vigor varchar2(1);
cursor c is
select 'S'
from fep_documentos_frotas dofr,
     fep_documentos docu
where docu.docu_id=dofr.docu_id
and dofr.frtr_id=nFrtr_id
and docu.situacao in('E');
begin
   v_vigor:='N';
  open c;
  fetch c into v_vigor;
  if c%notfound then
       v_vigor:='N';
  end if;
  close c;
return (v_vigor);
end;
--
-- Função que retorna 'S' - se todos os Documentos foram incluídos
--                    'N' - se existe documentos pendentes
-- na solicitação feita pelo RT no Cargas Perigosas;
-- Caso 'S' vai liberar o Botão para Gerar o Boleto para o Pagamento
--
-- Eduardo - 17/04/2023 - Chamado 43573 e 43574
--
FUNCTION FC_Libera_botao_Boleto(nSose in number) RETURN VARCHAR2 IS
    nPendentes number;
  begin
    Select count(*)
      into nPendentes
      From fep_docs_solic_seamb dsse
      Where dsse.sose_id = nSose
            And dsse.data_entrega IS NULL;
    if (nPendentes = 0) then
      return('S');
    else
      return('N');
    end if;
END FC_Libera_botao_Boleto;
--
FUNCTION fc_bloqueia_bt_venc_60d( p_atan_id IN NUMBER) RETURN VARCHAR2
IS
    v_retorno VARCHAR2(1) := 'N';
    v_qtd     NUMBER := 0;
-- Regra para bloquear os botoes da pagina do Cargas.
-- No 1º dia apos o vencimento até o 60º dia: retorna S, senão, retorna N.
-- CS 70497 - 16/07/2026 - CJ
BEGIN
    SELECT COUNT(1)
      INTO v_qtd
      FROM fep_documentos             docu,
           fep_tipos_documentos       tido,
           fep_sub_classes_documentos sucd,
           fep_processos              proc,
           fep_responsabilidades      resp
     WHERE proc.proc_id = docu.proc_id
       AND docu.tido_id = tido.tido_id
       AND tido.sucd_id = sucd.sucd_id
       AND proc.resp_id = resp.resp_id
       AND resp.atan_id = p_atan_id
       AND docu.situacao = 'V'
       AND docu.tido_id IN (120, 151)
       AND docu.data_fim_vigencia IS NOT NULL
       AND TRUNC(SYSDATE) > TRUNC(docu.data_fim_vigencia)
       AND TRUNC(SYSDATE) <= TRUNC(docu.data_fim_vigencia) + 60;

    IF v_qtd > 0 THEN
        v_retorno := 'S'; --Bloqueia
    END IF;

    RETURN v_retorno;

EXCEPTION
    WHEN OTHERS THEN
        RETURN 'N'; -- Não bloqueia

END fc_bloqueia_bt_venc_60d;

END;
/
