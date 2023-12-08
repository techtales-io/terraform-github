<!-- markdownlint-disable MD041 -->
<!-- markdownlint-disable MD033 -->
<!-- markdownlint-disable MD028 -->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Terraform][terraform-shield]][terraform-url]
[![pre-commit][pre-commit-shield]][pre-commit-url]
[![taskfile][taskfile-shield]][taskfile-url]

# Github with Terraform

Github Infrastructure as code with Terraform and Mineiros Modules

<details>
  <summary style="font-size:1.2em;">Table of Contents</summary>
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Structure](#structure)
- [Code-Style](#code-style)
  - [Terraform](#terraform)
- [Getting Started](#getting-started)
  - [Prerequisties](#prerequisties)
  - [Initialize repository](#initialize-repository)
- [Terraform docs](#terraform-docs)
  - [Requirements](#requirements)
  - [Providers](#providers)
  - [Modules](#modules)
  - [Resources](#resources)
  - [Inputs](#inputs)
  - [Outputs](#outputs)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->
</details>

## Structure

```console
.
├── .github
│   └── workflows
│       └── ci.yaml               # github ci configuration
├── organization                  # organisation and member config
├── repositories                  # repository configuration
├── main.tf                       # locals and module configuration
├── providers.tf                  # provider configuration
├── README.md                     # this document
└── secrets.sops.yaml             # secrets for the github ci
```

## Code-Style

### Terraform

#### Best practices

[terraform-best-practices.com][terraform-best-practices]

#### Naming of Terraform resources

- lower-case characters
- underscores

Pattern: `[a-z_]+`

#### Naming of Google Cloud resources

- lower-case characters
- hyphen

Pattern: `[a-z-]+`

## Getting Started

### Prerequisties

- [terraform][terraform-url]
- [pre-commit][pre-commit-url]
- [terraform-docs][terraform-docs]
- [tflint][tflint]
- [yamllint][yamllint]
- [tfsec][tfsec]

### Initialize repository

Terraform and pre-commit framework need to get initialized.

```console
task terraform:init
task pre-commit:init
```

## Terraform docs

<!-- prettier-ignore-start -->
<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0, <= 1.6.5 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 5.42.0 |
| <a name="requirement_sops"></a> [sops](#requirement\_sops) | 1.0.0 |

### Providers

No providers.

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_organization"></a> [organization](#module\_organization) | ./organization | n/a |
| <a name="module_repositories"></a> [repositories](#module\_repositories) | ./repositories | n/a |

### Resources

No resources.

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_email"></a> [billing\_email](#input\_billing\_email) | billing email for github organization | `string` | n/a | yes |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | github token from automation user | `string` | n/a | yes |
| <a name="input_webhook_arc"></a> [webhook\_arc](#input\_webhook\_arc) | webhook for arc webhook resource | `string` | n/a | yes |

### Outputs

No outputs.
<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

<!-- Links -->

[terraform-best-practices]: https://www.terraform-best-practices.com/naming
[terraform-docs]: https://github.com/terraform-docs/terraform-docs
[tflint]: https://github.com/terraform-linters/tflint
[yamllint]: https://github.com/adrienverge/yamllint
[tfsec]: https://aquasecurity.github.io/tfsec

<!-- Badges -->

[terraform-shield]: https://img.shields.io/badge/terraform-1.x-844fba?logo=terraform
[terraform-url]: https://www.terraform.io/
[pre-commit-shield]: https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit
[pre-commit-url]: https://github.com/pre-commit/pre-commit
[taskfile-shield]: https://img.shields.io/badge/taskfile-enabled-brightgreen?logo=task
[taskfile-url]: https://taskfile.dev/
