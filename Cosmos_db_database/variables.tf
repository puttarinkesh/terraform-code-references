variable "cosmosdb_sqldatabase_name" {
  description = "Name of the cosmosdb_sqldatabase "
}

variable "resource_group_name" {
  description = "Name of the resource group where the storage account belongs"
}

variable "cosmosdb_account_name" {
  description = "Name of the cosmosdb_account"
  default     = "cosdb01"
}

