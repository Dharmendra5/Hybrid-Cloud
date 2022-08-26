resource "azurerm_virtual_network" "vnet_logicalis_demo" {
  name                  = var.vnet_name
  resource_group_name   = var.rg_name  
  location              = var.location
  address_space         = ["10.96.134.0/16"]
  dns_servers           = ["10.96.0.4", "10.96.0.5"]
  tags                  = var.tags
}