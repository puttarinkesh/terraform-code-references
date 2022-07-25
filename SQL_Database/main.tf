#SQL DB with Backup
resource "azurerm_mssql_database" "dev_sql_db" {
  name           = "${var.applicationname}sql-db-${var.env}"
  collation      = var.collation
  license_type   = var.license_type
  max_size_gb    = var.max_size_gb
  read_scale     = var.read_scale
  sku_name       = var.sku_name
  zone_redundant = var.zone_redundant
  server_id      = var.mssqlserverid

  short_term_retention_policy {
    retention_days = var.retention_days
  }

  long_term_retention_policy {
    weekly_retention = var.weekly_retention_policy
    week_of_year     = var.week_of_year_policy
  }

  tags = var.tags

}
