resource "grafana_service_account" "service_accounts" {
  for_each = { for idx, item in var.service_accounts : item.name => item }

  name        = each.value.name
  is_disabled = each.value.is_disabled
  org_id      = each.value.org_id
  role        = each.value.role
}

resource "grafana_service_account_permission" "service_account_permissions" {
  for_each = { for idx, item in var.service_account_permissions : item.service_account_id => item }

  service_account_id = each.value.service_account_id
  org_id             = each.value.org_id

  dynamic "permissions" {
    for_each = (each.value.permissions != null ? each.value.permissions : [])

    content {
      user_id    = permissions.value["user_id"]
      team_id    = permissions.value["team_id"]
      permission = permissions.value["permission"]
    }
  }
}

resource "grafana_service_account_token" "service_account_tokens" {
  for_each = { for idx, item in var.service_account_tokens : item.name => item }

  name               = each.value.name
  service_account_id = each.value.service_account_id
  seconds_to_live    = each.value.seconds_to_live
}
