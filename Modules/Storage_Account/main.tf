resource "azurerm_storage_account" "sa_logicalis_demo" {
    name                        = var.sa_name
    resource_group_name         = var.rg_name
    location                    = var.location
    account_kind                = var.account_kind
    account_replication_type    = var.account_replication_type
    min_tls_version             = var.min_tls_version
    access_tier                 = var.access_tier
    account_tier                = var.account_tier
    tags                        = var.tags
}