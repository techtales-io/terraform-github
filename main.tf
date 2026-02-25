# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.10.0, <= 1.14.6"
  required_providers {
    # https://registry.terraform.io/providers/integrations/github/latest/docs
    github = {
      source  = "integrations/github"
      version = "6.11.1"
    }
    # https://registry.terraform.io/providers/carlpett/sops/latest/docs
    sops = {
      source  = "carlpett/sops"
      version = "1.3.0"
    }
  }
  backend "s3" {
    bucket                      = "terraform"
    key                         = "github/techtales-io/terraform.tfstate"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
  }
}

module "organization" {
  source      = "./organization"
  memberships = local.memberships
}

module "repositories" {
  source = "./repositories"
}
