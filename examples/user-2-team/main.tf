module "tf_grafana_user" {
  source = "../../modules/user"

  users = var.grafana_users
  teams = var.grafana_teams
}

module "tf_grafana_config" {
  source  = "ridwanbejo/config/grafana//modules/organization"
  version = "0.1.0"

  organization_preferences = var.grafana_organization_preferences
  organizations            = var.grafana_organizations
}
