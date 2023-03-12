# --------------------------------------------------------------------------------
# TERRAFORM VAULT
# --------------------------------------------------------------------------------

#tfsec:ignore:github-repositories-enable_vulnerability_alerts
module "terraform_vault" {
  source  = "mineiros-io/repository/github"
  version = "0.16.2"

  name         = "terraform-vault"
  description  = "IaC for Hashicorp Vault resources with Terraform"
  homepage_url = ""

  # select template repo
  # https://github.com/jazzlyn/repo-template-basic
  # https://github.com/jazzlyn/repo-template-terraform
  template = {
    owner      = "jazzlyn"
    repository = "repo-template-terraform"
  }
  auto_init = false

  extra_topics = [
    "terraform",
  ]

  defaults             = var.defaults.private
  visibility           = "private"
  has_downloads        = false # required to create static build assets on release f.e.
  archived             = false
  archive_on_destroy   = true
  vulnerability_alerts = true

  # individual collaborators
  # pull_collaborators = []
  # triage_collaborators = []
  # push_collaborators = distinct(concat(
  #   [for user in var.collaborators["group_name"] : user],
  #   ["some_github_user"],
  # ))
}
