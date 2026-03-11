variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  default     = "West Europe"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type = string
}

variable "subnet_id" {
  description = "Subnet ID where VM NIC will attach"
  type = string
}

variable "vm_size" {
  description = "VM size"
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username"
  type = string
}

variable "admin_password" {
  description = "Admin password"
  type      = string
  sensitive = true
}

variable "nsg_id" {
  description = "Network security group ID"
  type = string
}