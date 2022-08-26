resource "azurerm_network_security_group" "nsg_logicalis_demo" {
  name                         = "nsg_name"
  resource_group_name          = var.rg_name
  location                     = var.location
  
  security_rule {
    name                       = "Logicalis_Demo_Security_Rule"
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
#   network_security_group_id = azurerm_network_security_group.nsg_logicalis_demo.id
# }