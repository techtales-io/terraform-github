# terraform-github
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 4.28.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_organization"></a> [organization](#module\_organization) | ./organization | n/a |
| <a name="module_repositories"></a> [repositories](#module\_repositories) | ./repositories | n/a |
| <a name="module_teams"></a> [teams](#module\_teams) | ./teams | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization"></a> [organization](#input\_organization) | The github organization to manage. | `string` | `"techtales-io"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
