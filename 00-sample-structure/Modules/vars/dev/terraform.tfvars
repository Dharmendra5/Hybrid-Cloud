# Resource group
rg_count     = 2
rg_name      = "test_group"
location     = "Australia Southeast"
subscription = "sub123100"
env          = "dev"

# Backend
bucket       = "dev-storage-state-bucket"
encrypt      = "true"  
key          = "resource-group/terraform.tfstate"