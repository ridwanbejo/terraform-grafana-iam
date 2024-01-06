module "tf_grafana_user" {
  source = "../../modules/user"

  users = var.grafana_users
  teams = var.grafana_teams
}
