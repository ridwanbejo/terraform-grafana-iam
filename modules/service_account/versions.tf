terraform {
  required_version = ">= 1.4"

  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "2.8.0"
    }
  }
}
