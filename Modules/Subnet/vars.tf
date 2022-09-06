variable instance_data {
  default = {
    count = "2"
}
}

# variable "subnet1" {
#     type        = string
#     description = "Enter the name for Subnet 1"
# }

variable "prefix" {
    # type        = string
    description = "Enter the name for Prefix"
}

# variable "subnet2" {
#     type        = string
#     description = "Enter the name for Subnet 2"
# }

# variable "prefix2" {
#     type        = string
#     description = "Enter the name for Prefix 2"
# }

# variable "subnet3" {
#     type        = string
#     description = "Enter the name for Subnet 3"
# }

# variable "prefix3" {
#     type        = string
#     description = "Enter the name for Prefix 3"
# }

# variable "subnet4" {
#     type        = string
#     description = "Enter the name for Subnet 4"
# }

# variable "prefix4" {
#     type        = string
#     description = "Enter the name for Prefix 4"
# }

variable "tags" {
  type            = map(string)
  description     = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    source        = "Terraform"
    owner         = "Hybrid Cloud Team"
    environment   = "Dev"
    Developer     = "Depal Dhir"
  }
}