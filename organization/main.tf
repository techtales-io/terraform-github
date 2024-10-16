# --------------------------------------------------------------------------------
# CONFIGURE ORGANIZATION
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.9.8"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.3.1"
    }
    sops = {
      source  = "carlpett/sops"
      version = "1.1.1"
    }
  }
}

data "sops_file" "secrets" {
  source_file = "secrets.sops.yaml"
}
