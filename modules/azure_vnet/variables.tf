
variable "resource_group_name" {
  description = "Resource group where VNet will be created"
  type        = string
}

variable "location" {
  description = "Azure region"
  default     = "West Europe"
}

variable "address_space" {
  description = "Address space for VNet"
  type        = list(string)
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}