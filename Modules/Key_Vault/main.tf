resource "azurerm_key_vault" "kv_logicalis_demo" {
  name                        = kv_name
  resource_group_name         = var.rg_name
  location                    = var.location
  enabled_for_disk_encryption = true
  tenant_id                   = "4b7e7b89-9ba4-473a-a11b-42f5f814c887"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

#   access_policy {
#     tenant_id = data.azurerm_client_config.current.tenant_id
#     object_id = data.azurerm_client_config.current.object_id

    # key_permissions = [
    #   "Get",
    # ]

    # secret_permissions = [
    #   "Get",
    # ]

    # storage_permissions = [
    #   "Get",
    # ]
}
