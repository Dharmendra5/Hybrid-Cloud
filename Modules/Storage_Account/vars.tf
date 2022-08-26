variable "rg_name" {
  description = "Resource Group Name"
}

variable "sa_name" {
  type = string
  description = "Enter the name for Storage Account"
}

variable "location" {
    type = string
    description = "The default region is Australia Southeast"
    default = "Australia Southeast"
}

variable "account_kind" {
    type = string
    description = "Default is StorageV2, other options are Storage BlobStorage BlockBlobStorage FileStorage"
    default = "StorageV2"
}

variable "account_replication_type" {
  type = string
  description = "Default is LRS"
  default = "LRS"
}

variable "min_tls_version" {
    type = string
    description = "The default TLS version is TLS 1.0"
    default = "TLS1_0"
}

variable "access_tier" {
  type = string
  description = "The Default is Cool, other option is Hot"
  default = "Cool"
}

variable "account_tier" {
    type          = string
    description   = "The default is Standard, other option is Premium"
    default       = "Standard"
}