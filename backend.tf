terraform {
  backend "azurerm" {
    resource_group_name  = "RG-IND-TFSTATE"
    storage_account_name = "azstoretfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}