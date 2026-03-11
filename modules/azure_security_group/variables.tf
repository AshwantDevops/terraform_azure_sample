variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where NSG will be created"
  type        = string
}