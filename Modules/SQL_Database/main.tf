resource "azurerm_sql_database" "sqld_logicalis_demo" {
  name                = var.sqld_name
  resource_group_name = var.rg_name
  location            = var.location
  depends_on          = [module.azurerm_sql_server]
  server_name         = var.sqls_name

  extended_auditing_policy {
    depends_on = [module.storage_account]
    storage_endpoint                        = azurerm_storage_account.storage_account.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.storage_account.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }

  tags                                      = var.tags
}