terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.73.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "aks-redource-group"
  #   storage_account_name = "devstorage"
  #   container_name       = "devstgcontainer"
  #   key                  = "dev.terraform.tfstate"
  # }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "349af59d-6226-4a18-831c-e0ddf13c515a"
  tenant_id       = "cbab270c-2728-4065-8769-7d598d174f65"


}