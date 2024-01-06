module "tf_grafana_service_account" {
  source = "../../modules/service_account"

  service_accounts            = var.grafana_service_accounts
  service_account_permissions = var.grafana_service_account_permissions
  service_account_tokens      = []
}
