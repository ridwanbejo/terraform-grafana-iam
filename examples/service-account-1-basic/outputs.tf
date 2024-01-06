output "grafana_service_accounts" {
  description = "Current Grafana service accounts"
  value       = module.tf_grafana_service_account.grafana_service_accounts
}

output "grafana_service_account_permissions" {
  description = "Current Grafana service account permissions"
  value       = module.tf_grafana_service_account.grafana_service_account_permissions
}
