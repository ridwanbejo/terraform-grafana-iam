output "grafana_service_accounts" {
  description = "List of Grafana service accounts"
  value       = { for item in grafana_service_account.service_accounts : item.name => item }
}

output "grafana_service_account_permissions" {
  description = "List of Grafana service account permissions"
  value       = { for item in grafana_service_account_permission.service_account_permissions : item.service_account_id => item }
}

output "grafana_service_account_tokens" {
  description = "List of Grafana service account tokens"
  value       = { for item in grafana_service_account_token.service_account_tokens : item.name => item }
}
