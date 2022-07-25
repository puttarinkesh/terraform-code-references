

output "database_name" {
  description = "Database name of the Azure SQL Database created."
  value       = azurerm_mssql_database.dev_sql_db.name
  sensitive = false
}


output "database_name_id" {
  description = "Version the Azure SQL Database created."
  value       = azurerm_mssql_database.dev_sql_db.id
  sensitive = false
}
