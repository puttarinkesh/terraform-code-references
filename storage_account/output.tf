//Outputs for Storage Account 
//*************************************************************************************
output "id" {
  value = azurerm_storage_account.dev_storage_account.id
}

output "name" {
  value = azurerm_storage_account.dev_storage_account.name
}
//*************************************************************************************