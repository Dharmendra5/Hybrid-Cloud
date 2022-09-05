variable "rg_name" {
  description       = "Resource Group Name"
  default           = "rg-thorough-ladybug"
}

variable "location" {
  description       = "Location"
  default           = "Australia Southeast"
}

# variable "network_interface_ids" {
#   description = "Network Interface ID"
#   default = "depal-jenkins-ser744"
  
# }

variable "vnet_name" {
  description = "Virtual Network Name"
  default = "Generic"
  
}

# variable "tags" {
#   type            = map(string)
#   description     = "A map of the tags to use on the resources that are deployed with this module."

#   default = {
#     source        = "Terraform"
#     owner         = "Hybrid Cloud Team"
#     environment   = "Dev"
#     Developer     = "Depal Dhir"
#   }
# }