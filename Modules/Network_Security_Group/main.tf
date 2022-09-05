resource "azurerm_network_security_group" "nsg_generic" {
  name                         = "nsg_name"
  resource_group_name          = var.rg_name
  location                     = var.location
  
  security_rule {
    name                       = "generic_Security_Rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "443"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

# resource "azurerm_subnet_network_security_group_association" "example" {
#   subnet_id                 = var.sn_1.id
#   network_security_group_id = azurerm_network_security_group.nsg_generic.id
# }