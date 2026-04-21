# Azure VM (modern AzureRM)

## Overview
This configuration deploys a **Linux** virtual machine using **azurerm_linux_virtual_machine** (not the deprecated azurerm_virtual_machine).

## Prerequisites
- Terraform >= 1.6
- Azure authentication via **Azure CLI** (`az login`) or OIDC/Service Principal in CI
- Appropriate RBAC on the subscription (e.g. Contributor on resource group scope)

## Governance
- Mandatory tags are enforced as variables — align names with **Azure Policy** initiatives.
- Consider **Defender for Cloud** plans and **Log Analytics** diagnostic settings in a subsequent module.

## Security notes
- **Private access**: Public IP is **disabled** by default.
- Prefer **Azure Bastion** for interactive access instead of opening SSH/RDP to the Internet.
- **Managed identity** is enabled — prefer enabled for Key Vault integration.
- Secrets: use `TF_VAR_admin_password` for password auth; never commit secrets.

## Resilience
- Environment: **dev**. For production, use **availability zones** or **availability set** as appropriate.

## Cost
- Review VM SKU and disk types; use **auto-shutdown** patterns for non-prod (see cost section in GUI).

## Commands

```bash
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

## Next steps
- Add **azurerm_monitor_diagnostic_setting** for platform metrics/logs.
- Integrate **Azure Backup** (Recovery Services vault) if `enable_backup` is part of your standards.

---

See **docs/security_and_governance.md** for security, governance, compliance, and zero trust guidance.
