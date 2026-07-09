# --------------------------------------------------------------------------------
# CONFIGURE ORGANIZATION
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.10.0, <= 1.15.8"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.13.0"
    }
    sops = {
      source  = "carlpett/sops"
      version = "1.4.1"
    }
  }
}

data "sops_file" "secrets" {
  source_file = "secrets.sops.yaml"
}
