# Terraform Multi-Environment Pipeline Test

Módulo básico para testar pipeline CI/CD seguindo especificação NIBI.

## Estrutura

```
.
├── backend/
│   ├── backend-stg.hcl      # Backend config para Staging
│   ├── backend-prd.hcl      # Backend config para Production
├── envs/
│   ├── stg.tfvars           # Variáveis para Staging
│   ├── prd.tfvars           # Variáveis para Production
├── modules/
│   └── api-lambda/          # Módulo API Gateway + Lambda
├── main.tf                  # Provider e módulos
├── variables.tf             # Declaração de variáveis
└── outputs.tf               # Outputs principais
```

## Uso

### Staging
```bash
terraform init -backend-config=backend/backend-stg.hcl
terraform plan -var-file=envs/stg.tfvars
terraform apply -var-file=envs/stg.tfvars
```

### Production
```bash
terraform init -backend-config=backend/backend-prd.hcl
terraform plan -var-file=envs/prd.tfvars
terraform apply -var-file=envs/prd.tfvars
```

## Recursos Criados

- Lambda Function simples (Python)
- API Gateway REST API
- IAM Role para Lambda
- Deployment automático

## Teste

Após deploy, acesse a URL retornada no output `api_gateway_url`.