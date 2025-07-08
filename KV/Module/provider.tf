terraform {
    required_version = ">= 1.4.0"
    
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }
  # backend "azurerm" {
  # resource_group_name  = ""
  # stroage_account_name = ""
  # cointainer_name       = ""
  # key                  = ""
#  }
} 

provider "azurerm" {
  features {}
  subscription_id = "51b6ad96-2bb6-48e5-b566-1d3406221d56"
}
