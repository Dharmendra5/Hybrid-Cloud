resource "azurerm_resource_group" "rg_logicalis_demo" {
  name          = var.rg_name
  location      = var.location
  tags          = var.tags
}
