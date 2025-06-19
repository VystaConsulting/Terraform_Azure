variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "mystorageaccount"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "myresourcegroup"
}

variable "location" {
  description = "The Azure location where the storage account will be created."
  type        = string
  default     = "East US"
}

variable "sku" {
  description = "The SKU of the storage account."
  type        = string
  default     = "Standard_LRS"
}

variable "subscription_id" {
  description = "The Azure subscription"
  type = string
}

variable "tenant_id" {
  description = "My Azure tenant ID"
  type = string
}