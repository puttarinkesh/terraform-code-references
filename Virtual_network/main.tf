
//Creating VNET - dev_virtual_network1
//********************************************************************************************
resource "azurerm_virtual_network" "dev_virtual_network1" {
  name                = var.private_vnet_name
  resource_group_name = var.private_resource_group_name
  location            = var.private_vnet_location
  address_space       = var.private_address_space
  dns_servers         = var.private_dns_servers
  tags                = var.private_tags

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************


//Creating Subnet1 for - dev_virtual_network1_subnet1
//********************************************************************************************
resource "azurerm_subnet" "dev_virtual_network1_subnet1" {
  name                 = var.private_subnet1_name
  resource_group_name  = var.private_resource_group_name
  virtual_network_name = azurerm_virtual_network.dev_virtual_network1.name
  address_prefixes     = var.private_subnet1_prefixes
  service_endpoints    = var.private_subnet_service_endpoints

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************

//Creating Subnet2 for - dev_virtual_network1_subnet2
//********************************************************************************************
resource "azurerm_subnet" "dev_virtual_network1_subnet2" {
  name                 = var.private_subnet2_name
  resource_group_name  = var.private_resource_group_name
  virtual_network_name = azurerm_virtual_network.dev_virtual_network1.name
  address_prefixes     = var.private_subnet2_prefixes
  service_endpoints    = var.private_subnet_service_endpoints

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************

//Creating Subnet3 for - dev_virtual_network1_subnet2
//********************************************************************************************
resource "azurerm_subnet" "dev_virtual_network1_subnet3" {
  name                 = var.private_subnet3_name
  resource_group_name  = var.private_resource_group_name
  virtual_network_name = azurerm_virtual_network.dev_virtual_network1.name
  address_prefixes     = var.private_subnet3_prefixes
  service_endpoints    = var.private_subnet_service_endpoints

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************

//Virtual Network Peering - dev_virtual_network1_subnet2
//********************************************************************************************
resource "azurerm_virtual_network_peering" "vnet_peering1" {
  name                         = var.private_vnet_peering_name
  resource_group_name          = var.private_resource_group_name
  virtual_network_name         = azurerm_virtual_network.dev_virtual_network1.name
  remote_virtual_network_id    = var.private_remote_virtual_network_id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = true
  use_remote_gateways          = true
}
//********************************************************************************************

