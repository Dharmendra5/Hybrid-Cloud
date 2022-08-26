variable "rg_name" {
  type        = string
  description = "(Required) The name of the resource group. Must be unique on your Azure subscription"
}

variable "location" {
  type        = string
  default     = "Australia Southeast"
  description = "(Required) The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table."
}


variable "environment" {
  type        = string
  description = "(Optional) Environment name. If not specified, this module will use workspace as default value"
  default     = "dev"
}

variable "creator" {
  type        = string
  description = "(Required) Adds a tag indicating the creator of this resource"
  default     = "Depal Dhir"
}