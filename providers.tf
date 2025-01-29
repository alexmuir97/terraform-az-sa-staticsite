terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "2d85f22b-68ff-4dd3-b8cd-6444e9cc1452"
}