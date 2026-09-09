# Pull Request


> [!TIP]
> ###  Para Lembrar
>
> O preenchimento **não é obrigatório**. O objetivo é apenas servir como lembrete.

---

### Tag Prevista

**`v____.__.__.__`**

---

### Categoria Informada no Planejamento

- [ ] **`feature`**
- [ ] **`release`**
- [ ] **`bugfix`**
- [ ] **`hotfix`**

---

### Checklist de Atividades

- [ ] Os objetos necessários para o **Revert** foram criados e atualizados
- [ ] O JSON de planejamento do **Deploy** foi preenchido corretamente (detalhado abaixo)
- [ ] Foram colocadas informações detalhadas e significativas para os objetos do **Deploy**
- [ ] O JSON de planejamento do **Revert** foi criado
- [ ] O **Deploy** foi executado previamente em Homologação para teste e validação
- [ ] Os dados de **categoria** e **tipoMudanca** foram informados de forma assertiva
- [ ] O arquivo [CHANGELOG.md](../CHANGELOG.md) foi devidamente preenchido ou atualizado

---

## Planejamento de Deploy

- [ ] **`DevOps/Plannings/Planning_Deploy.json`**
- **raiz**
  - [ ] **`responsavel`**
  - [ ] **`dataPlano`**
  - [ ] **`escopo`**
  - [ ] **`tag`**
  - [ ] **`categoria`**
  - [ ] **`tipoMudanca`** (obrigatório - define os objetos que não têm tipo específico)
- **acoes**
  - [ ] **`matarSessoes`**
  - [ ] **`listarInvalidos`**
  - [ ] **`compilarObjetos`**
- **objetos**
  - [ ] **`nome`**
  - [ ] **`implementado`**
  - [ ] **`tipoMudanca`** (opcional - sobrepõe o valor da raiz)

---

## Planejamento do Revert

- [ ] **`DevOps/Plannings/Planning_Revert.json`** criado, com a **mesma tag** do Deploy
- [ ] Scripts de reversão presentes no diretório **`Revert/<TipoDoObjeto>`**, cobrindo todos os objetos do Deploy
- [ ] Reversão devidamente testada em Homologação

---
