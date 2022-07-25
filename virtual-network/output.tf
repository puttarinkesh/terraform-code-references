//Outputs for Vnet and Subnets
//****************************************************************************
output "private_vnet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.dev_virtual_network1.id
}

output "private_subnet1_id" {
  description = "The id of the newly created subnet1"
  value       = azurerm_subnet.dev_virtual_network1_subnet1.id
  sensitive   = false
}

output "private_subnet2_id" {
  description = "The id of the newly created subnet2"
  value       = azurerm_subnet.dev_virtual_network1_subnet2.id
  sensitive   = false
}

output "private_subnet3_id" {
  description = "The id of the newly created subnet3"
  value       = azurerm_subnet.dev_virtual_network1_subnet3.id
  sensitive   = false
}
//****************************************************************************
