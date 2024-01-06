variable "users" {
  type = list(object({
    email    = string
    login    = optional(string)
    name     = optional(string)
    is_admin = optional(bool)
  }))
}

variable "teams" {
  type = list(object({
    name    = string
    email   = optional(string)
    members = optional(list(string))
    org_id  = optional(string)

    preferences = optional(object({
      home_dashboard_uid = optional(string)
      theme              = optional(string)
      timezone           = optional(string)
    }))

    ignore_externally_synced_members = optional(bool)
  }))
}
