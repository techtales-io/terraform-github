# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.8.2"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.1"
    }
  }
}

module "backstage-docs" {
  source             = "./backstage-docs"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "mkdocs-blog" {
  source   = "./mkdocs-blog"
  settings = local.settings
  # branch_protections = local.branch_protections
}

module "techtales-io-github-io" {
  source             = "./techtales-io-github-io"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform-discord" {
  source             = "./terraform-discord"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform-gcloud" {
  source             = "./terraform-gcloud"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform-github" {
  source             = "./terraform-github"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform-gworkspace" {
  source   = "./terraform-gworkspace"
  settings = local.settings
  # branch_protections = local.branch_protections
}

module "terraform-minio" {
  source             = "./terraform-minio"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform-unifi" {
  source             = "./terraform-unifi"
  settings           = local.settings
  branch_protections = local.branch_protections
}

module "terraform-vault" {
  source   = "./terraform-vault"
  settings = local.settings
  # branch_protections = local.branch_protections
}

module "website" {
  source             = "./website"
  settings           = local.settings
  branch_protections = local.branch_protections
}
