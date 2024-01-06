output "grafana_users" {
  description = "Current Grafana users"
  value       = module.tf_grafana_user.grafana_users
}

output "grafana_teams" {
  description = "Current Grafana teams"
  value       = module.tf_grafana_user.grafana_teams
}
