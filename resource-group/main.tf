//Resource Group Code
//****************************************************************************
resource "azurerm_resource_group" "dev_rg1" {
  name     = "${var.client}-${var.prefix}-rg1"
  location = var.location
  tags     = var.tags
}
//****************************************************************************

