variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where subnet will be created"
  default     = "RG-IND-TEST"
}

variable "location" {
  description = "Azure region for resources"
  default     = "West Europe"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "address_prefixes" {
  description = "Address prefixes for subnet"
  type        = list(string)
}