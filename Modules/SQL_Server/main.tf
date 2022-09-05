resource "azurerm_sql_server" "sqls_generic" {
  name                          = var.sqls_name
  resource_group_name           = var.rg_name
  location                      = var.location
  version                       = "12.0"
  administrator_login           = "administrator"
  administrator_login_password  = "thisIsDog11"
  # azurerm_storage_account       = var.sa_name
  tags                          = var.tags
}