# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.10.0, <= 1.14.4"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.10.2"
    }
    sops = {
      source  = "carlpett/sops"
      version = "1.3.0"
    }
  }
}

data "sops_file" "secrets" {
  source_file = "secrets.sops.yaml"
}
