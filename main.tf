terraform {
  required_version = ">= 1"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.31.0"
    }
  }
  backend "s3" {
    endpoint                    = "***REMOVED***"
    bucket                      = "terraform"
    key                         = "techtales/github/terraform.tfstate"
    region                      = "home"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = true
  }
}

locals {
  users = {
    "***REMOVED***" = "techtales-automation"
    "***REMOVED***" = "jazzlyn"
    "***REMOVED***"   = "tyriis"
  }
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
