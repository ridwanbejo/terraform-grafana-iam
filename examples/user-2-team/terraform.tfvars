grafana_users = [
  {
    email    = "staff.one@example.com"
    name     = "Staff One"
    login    = "staff_one"
    is_admin = false
  },
  {
    email    = "staff.two@example.com"
    name     = "Staff Two"
    login    = "staff_two"
    is_admin = false
  },
  {
    email    = "admin.one@example.com"
    name     = "Admin One"
    login    = "admin_one"
    is_admin = true
  },
  {
    email    = "staff.three@example.com"
    name     = "Staff Three"
    login    = "staff_three"
    is_admin = false
  },
  {
    email    = "staff.four@example.com"
    name     = "Staff Four"
    login    = "staff_four"
    is_admin = false
  },
]

grafana_organizations = [
  {
    name         = "Test Organization - 1"
    admin_user   = "admin"
    create_users = true
    admins = [
      "admin@localhost",
      "ridwan@localhost",
    ]
    editors = [
      "staff.three@example.com",
      "staff.four@example.com"
    ]
    viewers = []
  }
]

grafana_teams = [
  {
    name   = "Team One"
    email  = "team.one@example.com"
    org_id = "1"
    members = [
      "staff.one@example.com",
      "staff.two@example.com",
    ]
  },
  {
    name   = "Team Two"
    email  = "team.two@example.com"
    org_id = "3"
    members = [
      "staff.three@example.com",
      "staff.four@example.com",
    ]
  }
]
