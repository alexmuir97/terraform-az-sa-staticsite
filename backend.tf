terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-demo-tfstate"
    storage_account_name = "sademotfstate280125"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}