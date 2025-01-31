variable "rg_name" {
  type        = string
  description = "The name of the Resource Group in which all resources should be created"
}

variable "rg_location" {
  type        = string
  description = "The Azure region in which all resources should be created"
}

variable "sa_name" {
  type        = string
  description = "The name of the Storage Account to create"
}

variable "index_document" {
  type        = string
  description = "The index document of the static website"
}

variable "source_content" {
  type        = string
  description = "This is the source content for the static website"
}

variable "common_tags" {
  type        = map(string)
  description = "These are the common tags applied to resources"
}