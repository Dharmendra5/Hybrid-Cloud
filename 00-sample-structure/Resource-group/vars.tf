variable "rg_count" {
  type = number
  description = "Enter the Number of Resource Groups"
}

variable "rg_name" {
  type        = string
  description = "(Required) The name of the resource group. Must be unique on your Azure subscription"
}

variable "location" {
  type        = string
  default     = "Australia Southeast"
  description = "(Required) The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table."
}

variable "subscription" {
    type = string
    description = "provide the subscription id"
}

variable "env" {
    type = string
    description = "provide the infra environment"
}