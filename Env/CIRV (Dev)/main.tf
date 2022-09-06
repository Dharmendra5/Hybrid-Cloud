module "Resource_Group" {
  source              =   "../../Modules/Resource_Group/"
  rg_name             =   var.rg_name
  location            =   var.location
}

module "Storage_Account" {
  source                      = "../../Modules/Storage_Account/"
  depends_on                  = [module.Resource_Group]    
  rg_name                     = var.rg_name
  sa_name                     = var.sa_name
  location                    = var.location
  account_kind                = var.account_kind
  account_replication_type    = var.account_replication_type
  min_tls_version             = var.min_tls_version
  access_tier                 = var.access_tier
  account_tier                = var.account_tier
  # tags                        = var.tags
}

module "Virtual_Network" {
  source              = "../../Modules/Virtual_Network"
  depends_on          = [module.Resource_Group]
  rg_name             = var.rg_name
  location            = var.location
}

module "Network_Security_Group" {
  source              = "../../Modules/Network_Security_Group"
  depends_on          = [module.Resource_Group]
  rg_name             = var.rg_name
  location            = var.location
}

# module "Subnet" {
#   source = "../../Modules/Subnet"
#   depends_on          = [module.Resource_Group]
#   rg_name             = var.rg_name
#   location            = var.location
# }

# module "Databricks" {
#   source = "../../Modules/Databricks"
#   depends_on          = [module.Resource_Group]
#   rg_name             = var.rg_name
#   location            = var.location
# }

# module "Data_Factory" {
#   source = "../../Modules/Data_Factory"
#   depends_on          = [module.Resource_Group]
#   rg_name             = var.rg_name
#   location            = var.location
# }

# module "Key_Vault" {
#   source              = "../../Modules/Key_Vault"
#   depends_on          = [module.Resource_Group]
#   rg_name             = var.rg_name
#   location            = var.location
# }

# module "Data_Lake" {
#   source              =   "../../Modules/Data_Lake/"
#   depends_on          = [module.Resource_Group]
#   rg_name             =   var.rg_name
#   location            =   var.location
# }