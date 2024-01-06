output "grafana_users" {
  description = "List of Grafana users"
  value       = { for item in grafana_user.users : item.email => item.name }
}

output "grafana_teams" {
  description = "List of Grafana teams"
  value       = { for item in grafana_team.teams : item.name => item }
}
