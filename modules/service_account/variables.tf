variable "service_accounts" {
  type = list(object({
    name        = string
    is_disabled = optional(bool)
    org_id      = string
    role        = string
  }))
}

variable "service_account_permissions" {
  type = list(object({
    service_account_id = string
    org_id             = optional(string)
    permissions = optional(list(object({
      user_id    = optional(string)
      team_id    = optional(string)
      permission = optional(string)
    })))
  }))
}

variable "service_account_tokens" {
  type = list(object({
    name               = string
    service_account_id = string
    seconds_to_live    = optional(number)
  }))
}
