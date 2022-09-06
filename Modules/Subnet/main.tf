  resource azurerm_subnet "sn_generic" {
    resource_group_name  = "rg"
    virtual_network_name = "azurerm"
    count               = var.instance_data.count
    name                = "p-ause=sn-vphs-dh-${count.index}"
    address_prefixes      = var.prefix.count.index
    # security_group      = var.Network_Security_Group
  }