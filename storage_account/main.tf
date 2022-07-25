//Storage Account - Dev Storage Account
//*************************************************************************************
resource "azurerm_storage_account" "dev_storage_account" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier
  account_kind             = var.account_kind
  tags                     = var.tags
}
//*************************************************************************************