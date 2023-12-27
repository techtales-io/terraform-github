# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.6.5"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.42.0"
    }
    sops = {
      source  = "carlpett/sops"
      version = "1.0.0"
    }
  }
}

data "sops_file" "secrets" {
  source_file = "secrets.sops.yaml"
}
