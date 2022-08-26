module "Resource_Group" {
  source              =   "../../Modules/Resource_Group/"
  rg_name             =   var.rg_name
  location            =   var.location
}

module "Storage_Account" {
  source              = "../../Modules/Storage_Account/"
  depends_on          = [module.Resource_Group]    
  rg_name             = var.rg_name
  sa_name             = var.sa_name
  location            = var.location
}

# module "Virtual_Network" {
#   source              = "../../Modules/Virtual_Network"
#   depends_on          = [module.Resource_Group]
#   rg_name             = var.rg_name
#   location            = var.location
# }

# module "Virtual_Machine" {
#   source              =   "../../Modules/Resource_Group/"
#   rg_name             =   var.rg_name
#   location            =   var.location
# }
# module "Network_Security_Group" {
#   source              = "../../Modules/Network_Security_Group"
#   depends_on          = [module.Resource_Group]
#   rg_name             = var.rg_name
#   location            = var.location
# }

# module "Subnet" {
#   source = "../../Modules/Subnet"
#   depends_on          = [module.Resource_Group]
#   rg_name             = var.rg_name
#   location            = var.location
# }