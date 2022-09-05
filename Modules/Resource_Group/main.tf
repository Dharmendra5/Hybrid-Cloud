resource "azurerm_resource_group" "rg_generic" {
  name          = var.rg_name
  location      = var.location
  tags          = var.tags
}
