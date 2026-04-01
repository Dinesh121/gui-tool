data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "this" {
  name                = "${var.app_name}-asp"
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  os_type             = "Linux"
  sku_name            = var.service_plan_sku
  tags                = var.tags
}

resource "azurerm_linux_web_app" "this" {
  name                = var.app_name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  service_plan_id     = azurerm_service_plan.this.id
  https_only          = var.https_only

  site_config {
    application_stack {
      node_version = "20-lts"
    }
    vnet_route_all_enabled = var.vnet_route_all_enabled
  }

  identity {
    type = var.enable_system_assigned_identity ? "SystemAssigned" : "None"
  }

  tags = var.tags
}
