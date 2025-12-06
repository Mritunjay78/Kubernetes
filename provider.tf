terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.29.0"

    }
    
  }
  backend "azurerm" {
      resource_group_name  = "rg-terraform-state"
      storage_account_name = "stg12terraformstate"
      container_name       = "tfstate"
      key                  = "dev.terraform.tfstate"
    }
}
provider "azurerm" {
  features {}
  subscription_id = "e5476362-58a0-48f7-8197-5aa05a4abfa5"
}