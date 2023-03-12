# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.3.0, <= 1.3.6"
  required_providers {
    sops = {
      source  = "carlpett/sops"
      version = "0.7.1"
    }
    github = {
      source  = "integrations/github"
      version = "4.31.0"
    }
  }
  backend "s3" {
    bucket                      = "terraform"
    key                         = "techtales/github/terraform.tfstate"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = true
  }
}

data "sops_file" "users" {
  source_file = "users.sops.yaml"
}

locals {
  all_users     = nonsensitive(yamldecode(data.sops_file.users.raw))
  members       = local.all_users.members
  collaborators = local.all_users.collaborators
}

module "organization" {
  source  = "./organization"
  members = local.members
}

module "repositories" {
  source        = "./repositories"
  collaborators = local.collaborators
}
