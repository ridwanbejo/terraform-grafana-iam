variable "grafana_service_accounts" {
  type    = list(any)
  default = []
}

variable "grafana_service_account_permissions" {
  type    = list(any)
  default = []
}
