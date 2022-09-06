variable "rg_fw_name" {
  description       = "Resource Group Name"
  default           = "np-ause-rg-cirv-fw"
}

variable "location" {
  description       = "Location"
  default           = "Australia Southeast"
}

variable "tags" {
  type            = map(string)
  description     = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    "source"        = "Terraform"
    "owner"         = "Hybrid Cloud Team"
    "environment"   = "Dev"
    "Developer"     = "Depal Dhir"
  }
}