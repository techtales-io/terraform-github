# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.6.5"
  required_providers {
    # https://registry.terraform.io/providers/integrations/github/latest/docs
    github = {
      source  = "integrations/github"
      version = "5.42.0"
    }
    # https://registry.terraform.io/providers/carlpett/sops/latest/docs
    sops = {
      source  = "carlpett/sops"
      version = "1.0.0"
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

module "organization" {
  source      = "./organization"
  memberships = local.memberships
}

module "repositories" {
  source = "./repositories"
}
