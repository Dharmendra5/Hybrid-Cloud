# Resource group
rg_count     = 2
rg_name      = "test_group"
location     = "Australia Southeast"
subscription = "sub123100"
env          = "staging"

# Backend
bucket       = "staging-storage-state-bucket"
encrypt      = "true"  
key          = "resource-group/terraform.tfstate"