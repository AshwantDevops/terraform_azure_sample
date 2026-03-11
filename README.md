# Terraform Azure Infrastructure Automation

Description

Explain:

Multi-environment Terraform setup (dev / uat / prd)

Remote state in Azure Storage

Modular architecture

Dynamic VM creation using for_each

Azure DevOps CI/CD pipeline integration

Architecture

Mention resources:

Resource Group

VNet + Subnet

NSG

Storage Account

Linux VMs

Public IP + NIC

Remote Backend

Features

Modular Terraform design

Environment-based deployments

Variable validation

Local values for naming standards

Scalable infrastructure using for_each

Separate state per environment

How to Run
terraform init
terraform plan -var-file environments/dev.tfvars
terraform apply -var-file environments/dev.tfvars