resource "random_password" "password" {
  for_each = { for idx, item in var.users : item.email => item }

  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "grafana_user" "users" {
  for_each = { for key, item in var.users : item.email => item }

  email    = each.value.email
  login    = each.value.login
  name     = each.value.name
  is_admin = each.value.is_admin
  password = random_password.password[each.value.email].result

  depends_on = [random_password.password]
}

resource "grafana_team" "teams" {
  for_each = { for key, item in var.teams : item.name => item }

  name    = each.value.name
  email   = each.value.email
  members = each.value.members
  org_id  = each.value.org_id

  preferences {
    home_dashboard_uid = try(each.value.preferences.home_dashboard_uid, "")
    theme              = try(each.value.preferences.theme, "dark")
    timezone           = try(each.value.preferences.timezone, "")
  }

  ignore_externally_synced_members = each.value.ignore_externally_synced_members

  depends_on = [grafana_user.users]
}
