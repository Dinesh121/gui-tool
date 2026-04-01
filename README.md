# Multi-resource Terraform (Azure Provisioner)

This bundle deploys **6** workloads in one root module. Apply order may matter (e.g. resource group before other resources); review dependencies.

## Stacks

- **r0** (App Service): `module.r0_workload` → `./stacks/r0/`
- **r1** (Azure Kubernetes Service (AKS)): `module.r1_workload` → `./stacks/r1/`
- **r2** (Azure SQL Managed Instance): `module.r2_workload` → `./stacks/r2/`
- **r3** (User-assigned managed identity): `module.r3_workload` → `./stacks/r3/`
- **r4** (Azure SQL Database): `module.r4_workload` → `./stacks/r4/`
- **r5** (Azure Data Lake Storage): `module.r5_workload` → `./stacks/r5/`

## Commands

```bash
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```
