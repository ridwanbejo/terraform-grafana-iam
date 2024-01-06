grafana_service_accounts = [
  {
    name        = "tf_automation_bot"
    is_disabled = false
    org_id      = "1"
    role        = "Admin"
  },
  {
    name        = "test_service_account_1"
    is_disabled = false
    org_id      = "1"
    role        = "Editor"
  },
  {
    name        = "test_service_account_2"
    is_disabled = false
    org_id      = "3"
    role        = "Viewer"
  }
]

grafana_service_account_tokens = [
  {
    service_account_id = "40"
    name               = "tf_automation_bot_token"
  }
]
