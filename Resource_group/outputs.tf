//Outputs for Resource Groups
//****************************************************************************
output "dev_rg1_id" {
  value = azurerm_resource_group.dev_rg1.id
  sensitive = false
}
//****************************************************************************
