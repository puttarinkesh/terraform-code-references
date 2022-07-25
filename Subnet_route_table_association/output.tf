//Out put for subnet route table association 
//*******************************************************************
output "route_table_id" {
  value = azurerm_subnet_route_table_association.route_table1.id
}