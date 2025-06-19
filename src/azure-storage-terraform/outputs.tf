output "storage_account_primary_endpoint" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}

output "storage_account_access_keys" {
  value = azurerm_storage_account.example.primary_access_key
  sensitive = true
}
