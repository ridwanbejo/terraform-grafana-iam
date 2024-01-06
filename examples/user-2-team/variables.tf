variable "grafana_users" {
  type    = list(any)
  default = []
}

variable "grafana_teams" {
  type    = list(any)
  default = []
}

variable "grafana_organizations" {
  type    = list(any)
  default = []
}

variable "grafana_organization_preferences" {
  type    = list(any)
  default = []
}
