# Token example for service-account submodule

To run this example you need to execute:

```
$ terraform init
$ terraform plan
$ terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4 |
| <a name="requirement_grafana"></a> [grafana](#requirement\_grafana) | 2.8.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tf_grafana_service_account"></a> [tf\_grafana\_service\_account](#module\_tf\_grafana\_service\_account) | ../../modules/service_account | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_grafana_service_account_permissions"></a> [grafana\_service\_account\_permissions](#input\_grafana\_service\_account\_permissions) | n/a | `list(any)` | `[]` | no |
| <a name="input_grafana_service_account_tokens"></a> [grafana\_service\_account\_tokens](#input\_grafana\_service\_account\_tokens) | n/a | `list(any)` | `[]` | no |
| <a name="input_grafana_service_accounts"></a> [grafana\_service\_accounts](#input\_grafana\_service\_accounts) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_grafana_service_account_tokens"></a> [grafana\_service\_account\_tokens](#output\_grafana\_service\_account\_tokens) | Current Grafana service account tokens |
| <a name="output_grafana_service_accounts"></a> [grafana\_service\_accounts](#output\_grafana\_service\_accounts) | Current Grafana service accounts |
<!-- END_TF_DOCS -->
