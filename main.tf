
resource "random_string" "suffix" {
  length  = 4
  special = false
  upper   = false
}

# Resource Group
module "rg" {
  source = "./modules/azure_resource_group"

  resource_group_name = "${local.prefix}-rg"
  location            = var.location
  tags                = local.common_tags
}

# Virtual Network
module "vnet" {
  source = "./modules/azure_vnet"

  vnet_name           = "${local.prefix}-vnet"
  location            = var.location
  resource_group_name = module.rg.resource_group_name
  address_space       = ["10.0.0.0/16"]
}

# Subnet
module "subnet" {
  source = "./modules/azure_subnet"

  subnet_name         = "${local.prefix}-subnet"
  resource_group_name = module.rg.resource_group_name
  vnet_name           = module.vnet.vnet_name
  address_prefixes    = ["10.0.1.0/24"]
}

# Create Network Security Group

module "nsg" {
  source              = "./modules/azure_security_group"
  nsg_name            = "${local.prefix}-nsg"
  location            = var.location
  resource_group_name = module.rg.resource_group_name
}

# Storage Account
module "storage" {
  source = "./modules/azure_storage_account"

  storage_account_name = "st${var.environment}${random_string.suffix.result}"
  resource_group_name  = module.rg.resource_group_name
  location             = var.location
}

# Virtual Machine
module "vm" {
  for_each = var.vms
  source = "./modules/azure_vm"

  vm_name             = "${local.prefix}-${each.key}"
  vm_size             = each.value.size 
  location            = var.location
  resource_group_name = module.rg.resource_group_name
  subnet_id           = module.subnet.subnet_id
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  nsg_id              = module.nsg.nsg_id
}





