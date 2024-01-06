terraform {
  required_version = ">= 1.4"

  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "2.8.0"
    }
  }
}

provider "grafana" {
  url  = "http://localhost:3000//"
  auth = "admin:grafana"
}
