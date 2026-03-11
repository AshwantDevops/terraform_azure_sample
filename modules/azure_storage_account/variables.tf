variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where storage account will be created"
  type        = string     
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}