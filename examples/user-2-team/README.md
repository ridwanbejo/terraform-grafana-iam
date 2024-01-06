# Team example for user submodule

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
| <a name="module_tf_grafana_config"></a> [tf\_grafana\_config](#module\_tf\_grafana\_config) | ridwanbejo/config/grafana//modules/organization | 0.1.0 |
| <a name="module_tf_grafana_user"></a> [tf\_grafana\_user](#module\_tf\_grafana\_user) | ../../modules/user | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_grafana_organization_preferences"></a> [grafana\_organization\_preferences](#input\_grafana\_organization\_preferences) | n/a | `list(any)` | `[]` | no |
| <a name="input_grafana_organizations"></a> [grafana\_organizations](#input\_grafana\_organizations) | n/a | `list(any)` | `[]` | no |
| <a name="input_grafana_teams"></a> [grafana\_teams](#input\_grafana\_teams) | n/a | `list(any)` | `[]` | no |
| <a name="input_grafana_users"></a> [grafana\_users](#input\_grafana\_users) | n/a | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_grafana_teams"></a> [grafana\_teams](#output\_grafana\_teams) | Current Grafana teams |
| <a name="output_grafana_users"></a> [grafana\_users](#output\_grafana\_users) | Current Grafana users |
<!-- END_TF_DOCS -->
