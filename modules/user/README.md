<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | 2.8.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | 2.8.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [grafana_team.teams](https://registry.terraform.io/providers/grafana/grafana/2.8.0/docs/resources/team) | resource |
| [grafana_user.users](https://registry.terraform.io/providers/grafana/grafana/2.8.0/docs/resources/user) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_teams"></a> [teams](#input\_teams) | n/a | <pre>list(object({<br>    name    = string<br>    email   = optional(string)<br>    members = optional(list(string))<br>    org_id  = optional(string)<br><br>    preferences = optional(object({<br>      home_dashboard_uid = optional(string)<br>      theme              = optional(string)<br>      timezone           = optional(string)<br>    }))<br><br>    ignore_externally_synced_members = optional(bool)<br>  }))</pre> | n/a | yes |
| <a name="input_users"></a> [users](#input\_users) | n/a | <pre>list(object({<br>    email    = string<br>    login    = optional(string)<br>    name     = optional(string)<br>    is_admin = optional(bool)<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_grafana_teams"></a> [grafana\_teams](#output\_grafana\_teams) | List of Grafana teams |
| <a name="output_grafana_users"></a> [grafana\_users](#output\_grafana\_users) | List of Grafana users |
<!-- END_TF_DOCS -->
