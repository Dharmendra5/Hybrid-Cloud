resource "azurerm_dns_zone" "dns_logicalis_demo" {
  name                  = "dns_name"
  resource_group_name   = var.rg_name
  tags                  = var.tags
}