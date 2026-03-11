#!/bin/bash

RESOURCE_GROUP_NAME="RG-IND-TFSTATE"
STORAGE_ACCOUNT_NAME="azstoretfstate"
CONTAINER_NAME="tfstate"


# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location "West Europe"

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# create a blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME