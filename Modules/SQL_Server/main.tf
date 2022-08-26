resource "azurerm_sql_server" "sqls_logicalis_demo" {
  name                          = var.sqls_name
  resource_group_name           = var.rg_name
  location                      = var.location
  version                       = "12.0"
  administrator_login           = "mradministrator"
  administrator_login_password  = "thisIsDog11"
  azurerm_storage_account       = var.sa_name
  tags                          = var.tags
}