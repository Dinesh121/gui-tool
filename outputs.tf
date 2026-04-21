output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.this.id
}

output "vm_principal_id" {
  value = try(azurerm_linux_virtual_machine.this.identity[0].principal_id, null)
}

output "private_ip_address" {
  value = azurerm_network_interface.this.private_ip_address
}
