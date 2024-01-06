# Terraform-Grafana-IAM service_account submodule

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | 2.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_grafana"></a> [grafana](#provider\_grafana) | 2.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [grafana_service_account.service_accounts](https://registry.terraform.io/providers/grafana/grafana/2.8.0/docs/resources/service_account) | resource |
| [grafana_service_account_permission.service_account_permissions](https://registry.terraform.io/providers/grafana/grafana/2.8.0/docs/resources/service_account_permission) | resource |
| [grafana_service_account_token.service_account_tokens](https://registry.terraform.io/providers/grafana/grafana/2.8.0/docs/resources/service_account_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_service_account_permissions"></a> [service\_account\_permissions](#input\_service\_account\_permissions) | n/a | <pre>list(object({<br>    service_account_id = string<br>    org_id             = optional(string)<br>    permissions = optional(list(object({<br>      user_id    = optional(string)<br>      team_id    = optional(string)<br>      permission = optional(string)<br>    })))<br>  }))</pre> | n/a | yes |
| <a name="input_service_account_tokens"></a> [service\_account\_tokens](#input\_service\_account\_tokens) | n/a | <pre>list(object({<br>    name               = string<br>    service_account_id = string<br>    seconds_to_live    = optional(number)<br>  }))</pre> | n/a | yes |
| <a name="input_service_accounts"></a> [service\_accounts](#input\_service\_accounts) | n/a | <pre>list(object({<br>    name        = string<br>    is_disabled = optional(bool)<br>    org_id      = string<br>    role        = string<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_grafana_service_account_permissions"></a> [grafana\_service\_account\_permissions](#output\_grafana\_service\_account\_permissions) | List of Grafana service account permissions |
| <a name="output_grafana_service_account_tokens"></a> [grafana\_service\_account\_tokens](#output\_grafana\_service\_account\_tokens) | List of Grafana service account tokens |
| <a name="output_grafana_service_accounts"></a> [grafana\_service\_accounts](#output\_grafana\_service\_accounts) | List of Grafana service accounts |
<!-- END_TF_DOCS -->
