# ROOT MODULE OUTPUTS

output "resource_group_name" {
  value = module.rg.resource_group_name
}

output "vnet_name" {
  value = module.vnet.vnet_name
}

output "subnet_name" {
  value = module.subnet.subnet_name
}

# VM outputs (multiple because of for_each)

output "vm_names" {
  description = "Names of all VMs"
  value = {
    for vm_key, vm in module.vm :
    vm_key => vm.vm_name
  }
}

output "vm_public_ips" {
  description = "Public IPs of all VMs"
  value = {
    for vm_key, vm in module.vm :
    vm_key => vm.public_ip_address
  }
}

output "vm_private_ips" {
  description = "Private IPs of all VMs"
  value = {
    for vm_key, vm in module.vm :
    vm_key => vm.private_ip_address
  }
}

output "vm_sizes" {
  description = "Sizes of all VMs"
  value = {
    for vm_key, vm in module.vm :
    vm_key => vm.vm_size
  }
}

output "network_security_group_id" {
  value = module.nsg.nsg_id
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "storage_account_primary_endpoint" {
  value = module.storage.storage_account_primary_endpoint
}

output "location" {
  value = var.location
}