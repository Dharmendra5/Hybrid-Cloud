resource "azurerm_resource_group" "rg_generic" {
  count         = var.count
  name          = var.rg_name
  location      = var.location
}