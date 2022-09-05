variable "rg_name" {
  description       = "Resource Group Name"
  default           = "rg-thorough-ladybug"
}

variable "sqls_name" {}

variable "location" {
  description       = "Location"
  default           = "Australia Southeast"
}

variable "tags" {
  type            = map(string)
  description     = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    Source        = "Terraform"
    Owner         = "Hybrid Cloud Team"
    Environment   = "Dev"
    Developer     = "Depal Dhir"
  }
}