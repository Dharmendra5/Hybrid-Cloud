resource "azurerm_resource_group" "rg_create" {
  count         = var.rg_count
  name          = var.env-${var.rg_name}
  location      = var.location
  tags          = merge(
      {
          Name           = "var.env-${var.rg_name}"
          "env"          = var.env
          "subscription" = var.subscription_id
      }
  )
}