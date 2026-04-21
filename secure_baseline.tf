# -----------------------------------------------------------------------------
# Security baseline — governance tags, policy scope, and zero trust alignment
# -----------------------------------------------------------------------------
data "azurerm_client_config" "security" {}

output "security_context" {
  description = "Subscription and tenant IDs for RBAC, Azure Policy, and Defender scoping."
  value = {
    subscription_id = data.azurerm_client_config.security.subscription_id
    tenant_id       = data.azurerm_client_config.security.tenant_id
  }
}
