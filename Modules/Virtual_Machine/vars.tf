variable "vm_name" {
    type = string
    description = "The name of the virtual machine"
}

variable "rg_name" {
  description = "Resource Group Name"
  default = "rg-thorough-ladybug"
}

variable "location" {
    type = string
    description = "The default region is Australia Southeast"
    default = "Australia Southeast"
}

variable "vm_size" {
    type = string
    description = "size of the virtual machine"
    default = "Standard_DS1_v2"
}

variable "os_disk_type" {
    type = string
    description = "type of the os disk. example Standard_LRS"
    default = "Standard_LRS"
}
variable "admin_usename" {
    type = string
    description = "local admin user of the virtual machine"
    default = "testuser"
}
variable "admin_password" {
    type = string
    description = "password of the local admin user"
    default = "Bhr1ndBilly123$%"
}
variable "image_publisher" {
    type = string
    description = "Azure image publisher"
    default = "MicrosoftWindowsDesktop"
}

variable "image_offer" {
    type = string
    description = "Azure image offer"
    default = "windows11preview"
}
variable "image_sku" {
    type = string
    description = "Azure Image SKU"
    default = "win11-22h2-pron"
}

# variable "tags"  {
#     type = list
#     source        = "Terraform"
#     owner         = "Hybrid Cloud Team"
#     environment   = "Dev"
#     Developer     = "Depal Dhir"
# }