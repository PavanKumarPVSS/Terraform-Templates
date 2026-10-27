output "vnet_id" {
  description = "ID of the virtual network"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "Name of the virtual network"
  value       = azurerm_virtual_network.this.name
}

output "subnet_ids" {
  description = "Subnet IDs keyed by subnet name"
  value       = { for name, subnet in azurerm_subnet.this : name => subnet.id }
}

output "network_security_group_ids" {
  description = "Network security group IDs keyed by subnet name"
  value       = { for name, nsg in azurerm_network_security_group.this : name => nsg.id }
}
