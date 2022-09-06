resource "azurerm_resource_group" "Resource_Group" {
  name     = var.rg_fw_name
  location = var.location
  tags = var.tags
}

resource "azurerm_virtual_network" "VNet" {
  name                = "np-ause-vn-cirv-fw"
  address_space       = ["10.96.247.192/26"]
  location            = azurerm_resource_group.Resource_Group.location
  resource_group_name = azurerm_resource_group.Resource_Group.name
  tags = var.tags
}

resource "azurerm_subnet" "Subnet" {
  name                 = "AzureFirewallSubnet"
  virtual_network_name = "AzureFirewallSubnet"
  resource_group_name = azurerm_resource_group.Resource_Group.name
  address_prefixes     = ["10.96.247.192/26"]
}

resource "azurerm_public_ip" "PublicIP" {
  name                = "ExternalIP"
  location            = azurerm_resource_group.Resource_Group.location
  resource_group_name = azurerm_resource_group.Resource_Group.name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags = var.tags
}

resource "azurerm_firewall" "Firewall" {
  name                = "np-ause-fw-cirv-01"
  location            = azurerm_resource_group.Resource_Group.location
  resource_group_name = azurerm_resource_group.Resource_Group.name
  sku_name            = "AZFW_VNet"
  sku_tier            = "Standard"
  tags = var.tags

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.Subnet.id
    public_ip_address_id = azurerm_public_ip.PublicIP.id
  }
}