locals {
  # Naming prefix
  prefix = "AZ-${var.environment}"

  # Common tags used across resources 

  common_tags = {
    Environment = var.environment
    project     = "terraform-azure"
    owner       = "DevOps"
  }

  # VM sizes per environment
  vm_sizes = {
    dev = "Standard_D2s_v3"
    uat = "Standard_D2s_v3"
    prd = "Standard_D2s_v3"
  }
}