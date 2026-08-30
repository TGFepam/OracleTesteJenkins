# Pull Request


> [!TIP]
> ###  Para Lembrar
>
> O preenchimento **não é obrigatório**. O objetivo é apenas servir como lembrança.

---

### Implementação Informada no Planejamento

- [ ] **`feature`**
- [ ] **`release`**
- [ ] **`bugfix`**
- [ ] **`hotfix`**

---

### Tag Prevista

**`v____.__.__.__`**

---

### Checklist de Atividades

- [ ] Os objetos necessários para o **Revert** foram criados e atualizados
- [ ] O JSON de planejamento do **Deploy** foi preenchido corretamente
- [ ] Foram colocadas informações detalhadas e significativas para os objetos do **Deploy**
- [ ] O JSON de planejamento do **Revert** foi criado
- [ ] O **Deploy** foi executado em Homologação para testes
- [ ] Os dados de **implementação** e **resultado** foram informados de forma assertiva
- [ ] o arquivo CHANGELOG.md foi devidamente preenchido ou atualizado

---

## Planejamento de Deploy

- [ ] **`autor`**, **`data`**, **`tarefa`**, **`tag`**, **`implementacao`** e **`resultado`** preenchidos na raiz
- [ ] Cada objeto tem **`nome`** e **`atividade`** detalhada
- [ ] Objetos que divergem do resultado genérico declaram **`resultado`** próprio e específico
- [ ] Objetos com o mesmo resultado da raiz **omitem** a chave
- [ ] Ações a serem executadas revisadas e devidamente parametrizadas: **`matarSessoes`**, **`listarInvalidos`** e **`recompilarObjetos`**
- [ ] Scripts com encoding **UTF-8 ou US-ASCII, sem BOM**

---

## Planejamento do Revert

- [ ] **`DevOps/Plannings/Planning_Revert.json`** criado, com a **mesma tag** do Deploy
- [ ] Scripts de reversão presentes no diretório **`Revert/<ObjectType>`**, cobrindo todos os objetos do Deploy
- [ ] Reversão devidamente testada em Homologação

---
