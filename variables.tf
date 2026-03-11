variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account (must be globally unique)"
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Deployment environment"
  type        = string

  validation {
    condition     = contains(["dev", "uat", "prd"], var.environment)
    error_message = "Environment must be dev, uat, or prd."
  }
}

variable "location" {
  description = "Azure region"
  type        = string

  validation {
    condition     = contains(["westeurope"], var.location)
    error_message = "Invalid Azure region."
  }
}

variable "vms" {
  description = "Map of virtual machines"
  type = map(object({
    size = string
  }))
}