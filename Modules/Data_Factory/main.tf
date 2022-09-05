resource "azurerm_data_factory" "df_generic" {
  name                = "df-logicalis"
    #Data Factory name cannot have underscore. Using Hyphen (-) instead
  resource_group_name = var.rg_name
  location            = var.location
  tags                = var.tags
}