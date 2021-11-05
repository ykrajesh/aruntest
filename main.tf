data "azurerm_resource_group" "rgname" {
name = var.rgname
}
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  address_space       = var.vnet_cidr
  location = data.azurerm_resource_group.rgname.location
  resource_group_name = data.azurerm_resource_group.rgname.name
}
resource "azurerm_storage" "name" {
 
}   