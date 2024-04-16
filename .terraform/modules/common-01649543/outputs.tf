output "log_analytics_workspace_name" {
  value = azurerm_log_analytics_workspace.law.name
}

output "recovery_services_vault_name" {
  value = azurerm_recovery_services_vault.rsv.name
}

output "storage_account_name" {
  value = azurerm_storage_account.sa.name
}