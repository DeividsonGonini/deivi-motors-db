# Infraestrutura de Banco de Dados

Projeto Terraform para provisionamento de banco de dados MongoDB no Mongo Atlas.

## O que faz

Provisiona 1 instância MongoDB no Mongo Atlas com configurações básicas.

## Recursos criados

- Mongo Atlas

## Como usar

1. Configure as credenciais do Mongo Atlas
2. Defina a senha do banco:
```bash
export TF_VAR_db_password="sua-senha-segura"
```

3. Execute os comandos Terraform em mongoatlas.
```bash
terraform init
terraform plan
terraform apply
```

## Variáveis principais

- `db_password` - Senha do banco (obrigatória)
- `db_username` - Usuário admin (obrigatória)



