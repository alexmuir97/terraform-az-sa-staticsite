# Create a resource group
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.common_tags
}

# Create a storage account
resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  tags                     = var.common_tags
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document     = var.index_document
    error_404_document = "custom_not_found.html"
  }
}

# Create a blob container
resource "azurerm_storage_blob" "blob_container" {
  name                   = var.index_document
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = "$web"
  type                   = "Block"
  source_content         = var.source_content
}