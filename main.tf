terraform {
  required_version = ">= 1"
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
    #endpoint                    = "***REMOVED***"
    bucket = "terraform"
    key    = "techtales/github/terraform.tfstate"
    #region                      = "home"
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
  all_users     = nonsensitive(yamldecode(data.sops_file.users.raw).users)
  users         = { for users in local.all_users : users.email => users.username }
  collaborators = {}
}

module "organization" {
  source = "./organization"
  users  = local.users
}

module "teams" {
  source = "./teams"
  depends_on = [
    module.organization
  ]
  users = local.users
}

module "repositories" {
  source = "./repositories"
  depends_on = [
    module.teams
  ]
  teams         = module.teams
  users         = local.users
  collaborators = local.collaborators
}
