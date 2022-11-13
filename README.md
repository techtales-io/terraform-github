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

<br />
<!-- TABLE OF CONTENTS -->
<details>
  <summary style="font-size:1.2em;">📑 Table of Contents</summary>
  <ol>
    <li><a href="#structure">Structure</a></li>
    <li><a href="#code-style">Code-Style</a></li>
    <li><a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisties</a></li>
        <li><a href="#initialize-repository">Initialize Repository</a></li>
      </ul>
    </li>
    <li><a href="#configuration">Configuration</a></li>
    <li><a href="#contribution">Contribution</a></li>
    <li><a href="#known-issues">Known Issues</a></li>
  </ol>
</details>
<br />

## Structure

```console
.
├── .github
│   └── workflows
│       └── ci.yaml               # github ci configuration
├── organization                  # organisation and member config
├── repositories                  # repository configuration
│   ├── home-infra
│   ├── playground
│   ├── websites
│   ├── locals.tf
│   ├── main.tf
│   └── variables.tf
├── .taskfiles
│   ├── pre-commit.yaml
│   └── terraform.yaml
├── teams                         # team configuration
├── .editorconfig
├── .envrc
├── .gitignore
├── main.tf                       # locals and module configuration
├── .markdownlint.yaml
├── .pre-commit-config.yaml
├── .prettierignore
├── .prettierrc.yaml
├── providers.tf                  # provider configuration
├── README.md                     # this document
├── secrets.sops.yaml             # secrets for the github ci
├── .sops.yaml
├── Taskfile.yaml
├── .terraform-docs.yaml
├── .terraform.lock.hcl
├── .tflint.hcl
├── variables.tf
└── .yamllint.config.yaml
```

## Code-Style

[terraform-best-practices.com][terraform-best-practices]

## Getting started

### Prerequisites

- [terraform][terraform-url]
- [pre-commit][pre-commit]
- [terraform-docs][terraform-docs]
- [tflint][tflint]
- [tfsec][tfsec-url]
- [yamllint][yamllint]

### Initialize repository

Terraform and pre-commit framework need to get initialized.

```console
pre-commit install
terraform init
```

## Configuration

<!-- TBD -->

## Contribution

<!-- TBD -->

## Known Issues

<!-- TBD -->

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

<!-- Links -->

[terraform-best-practices]: https://www.terraform-best-practices.com/naming
[pre-commit]: https://pre-commit.com/
[terraform-docs]: https://github.com/terraform-docs/terraform-docs
[tflint]: https://github.com/terraform-linters/tflint
[tfsec-url]: https://aquasecurity.github.io/tfsec
[yamllint]: https://github.com/adrienverge/yamllint

<!-- Badges -->

[terraform-url]: https://www.terraform.io/
[terraform-shield]: https://img.shields.io/badge/terraform-1.x-844fba?style=for-the-badge&logo=terraform
[pre-commit-url]: https://github.com/pre-commit/pre-commit
[pre-commit-shield]: https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&style=for-the-badge
[taskfile-url]: https://taskfile.dev/
[taskfile-shield]: https://img.shields.io/badge/Taskfile-Enabled-brightgreen?logoColor=white&style=for-the-badge&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAEeElEQVR4Xu2bzU8TQRjGZ7atRQKaGAVRhBakNbYkGEPVE5IoJh403rxIgpgYwOBHPBgPxoTwDyiCelIx8SwqxhilEj9ihBCDhK8g0IIiEAqlgLi1YxZdU2DpzszOfhy2174z7/P+5nlntrtbCHT83BzqQRyAH6sc7v16yYB6JO6aCXX4Q+MFy3InR1Or0jwRrfVoCgAhZKkf7osmKrLK4dZUk2bJ7gT6UTQWw1pgCGCg0uHKxgpWGKQ6gM6Z0IPW0PgpGp1auEFVALeGehFN4SvHqAlCFQB3RwYQH03Y6sRcOABeVTjch4gHygxgCiD4c+5o09jIM9Yi4+fbPfjNVlxczIwuMwCs7I4Lj1VbKAbQOPqVD/O8FVc4yzgIwcPKbDfVBivqoAaAEDpYP9zXwrIg2rmUuIEKgNZ2xwEDOQ5UZuUR10M04PnUD/Q1PI2jR7eYJA6WlWe57uEKwAIwiFBS83DfAu6kRojDbQtZAEa0OwlgORBrAngyFmwL/JzfS5LMqLGpVq60NDOvUUqfJIDL3e3IuT7FqPVQ6ZqN8uDKTu+qeiUB7GxpWrqGv+h0UyUz2qAvs3837ob8fWQAhEEchOC8w2W0mrD0dM1Og/hfY1QAxEynM3PARpsNK7HeQYuxGOifC6+SoQiAOJvR20K0u9QiMAEgTJzEcaAiO0/vhV6WvzsyA36jxLcfmAEQM5/NygXJFl1+B/0vPopioCey2u6qOmDl5Hq1RSK7awpASLbBagPlO3I0aYveSBjwCO8Ga7wg5i0gVe0FpxvIXl8rwES66poDEBIKW9ElxhdRSgoXIWjigHjiuckp4Fj6dgXrDUBgYQ6Eo7yiOXQDICa+4HABCMkaQ3CRcCXH8qO5A2hPCxZ21/wUwF0pT0oqKNmyTTJ8ZGEOTDOyu2EBiMIuOXcB9O+nitAcnYztbngAgsAYQqBky1ZVj01djkHcdhDiDm9OJwlXFKv7Jiil3gRgOsBsAUV9TTLY3ANoboqSEKaJNTdBcxM0N0GazqEaY26C5iZI8WiMymsEg8xTwDwFDHgKCA4+0daKtLhJoUULWCBsqvP6jkt1puydSvFdAYK2JgpVFQCEoMHrS1ijLAChmgl+oejA25d+osowg9UCkD45b7uO8UotFgCxFs+bp0h49s7ywxqADXKDN7yF2M/oiACIhbNsC5YApK705BaLCoAw6f1A/9Wage5auQRy37MAcM7rTPXANKr/G1EDEAsrePcCRX4tytW55vdKAFgg/F7n9Uk/ZMBUpBiA0ragBUBjd6pjEBPkUljz+Oij6q72kyRjSAFsAjCrNt8XJMmRKJaZA+KTOF4/RlbMh6G4ACx2O6hzFTDXy3zCeBA4pwUOAFZ2V70FpBKc+fzB75+aKFrLhokAbLavK6tx7cF+9Z2mLVR1AI4bpABACGP1Xp+FpiDSMZoBEIS9R8H1pf6O+XiRKwGoaXddWkAqaXXnJ7558vvSC4YigAy7veKaq+A26QoqjdfUASvF5rY0oSNpGaDeU6ibjj9v/5xQDsUWRgAAAABJRU5ErkJggg==

<!-- prettier-ignore-start -->
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 4.31.0 |
| <a name="requirement_sops"></a> [sops](#requirement\_sops) | 0.7.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sops"></a> [sops](#provider\_sops) | 0.7.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_organization"></a> [organization](#module\_organization) | ./organization | n/a |
| <a name="module_repositories"></a> [repositories](#module\_repositories) | ./repositories | n/a |

## Resources

| Name | Type |
|------|------|
| [sops_file.users](https://registry.terraform.io/providers/carlpett/sops/0.7.1/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_owner"></a> [github\_owner](#input\_github\_owner) | github owner / organization | `string` | n/a | yes |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | github token from automation user | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
<!-- prettier-ignore-end -->
