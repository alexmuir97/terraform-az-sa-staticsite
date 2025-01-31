terraform {
  backend "azurerm" {
    resource_group_name  = "rg-staticsite-tfstate-demo"
    storage_account_name = "sastaticsitetfstatedemo"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}