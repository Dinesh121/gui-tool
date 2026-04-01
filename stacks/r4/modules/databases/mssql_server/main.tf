data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_mssql_server" "this" {
  name                         = var.server_name
  resource_group_name          = data.azurerm_resource_group.this.name
  location                     = data.azurerm_resource_group.this.location
  version                      = "12.0"
  administrator_login          = var.administrator_login
  administrator_login_password = var.sql_admin_password
  minimum_tls_version          = var.minimum_tls_version
  public_network_access_enabled = var.public_network_access_enabled

  tags = var.tags
}

resource "azurerm_mssql_firewall_rule" "azure" {
  name             = "AllowAzureServices"
  server_id        = azurerm_mssql_server.this.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "0.0.0.0"
}
