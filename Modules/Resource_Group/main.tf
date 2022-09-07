resource "azurerm_resource_group" "rg_test" {
  name          = var.rg_name
  location      = var.location
  # tags          = var.tags
}
