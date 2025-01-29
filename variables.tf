variable "location" {
  type        = string
  description = "The Azure region in which all resources should be created"
}

variable "common_tags" {
  type        = map(string)
  description = "These are the common tags applied to resources"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which all resources should be created"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Storage Account to create"
}

variable "index_document" {
  description = "The index document of the static website"
}

variable "source_content" {
  description = "This is the source content for the static website"
}