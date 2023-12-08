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
  }
}

module "backstage_docs" {
  source             = "./backstage_docs"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "mkdocs_blog" {
  source             = "./mkdocs_blog"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform_gcloud" {
  source             = "./terraform_gcloud"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform_github" {
  source             = "./terraform_github"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform_gworkspace" {
  source             = "./terraform_gworkspace"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform_vault" {
  source             = "./terraform_vault"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "website" {
  source             = "./website"
  settings           = local.settings
  branch_protections = local.branch_protections
}
