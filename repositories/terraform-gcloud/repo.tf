# --------------------------------------------------------------------------------
# CONFIGURE REPO
# --------------------------------------------------------------------------------

# this resource is used to create the repository
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
# default values can be found in the locals.tf file
# to overwrite just update the desired values
resource "github_repository" "repo" {
  name         = "terraform-gcloud"
  description  = "IaC for Google Cloud resources with Terraform"
  homepage_url = ""

  template {
    owner      = "jazzlyn"
    repository = "repo-template-terraform"
  }

  visibility = "private"
  # workaround for https://github.com/integrations/terraform-provider-github/issues/2145
  security_and_analysis {}

  topics = [
    "terraform",
    "google-cloud",
  ]

  auto_init          = var.settings.auto_init
  archive_on_destroy = var.settings.archive_on_destroy

  has_discussions = var.settings.has_discussions
  has_downloads   = var.settings.has_downloads
  has_issues      = var.settings.has_issues
  has_projects    = var.settings.has_projects
  has_wiki        = var.settings.has_wiki

  is_template = var.settings.is_template

  allow_auto_merge            = var.settings.allow_auto_merge
  allow_merge_commit          = var.settings.allow_merge_commit
  allow_rebase_merge          = var.settings.allow_rebase_merge
  allow_squash_merge          = var.settings.allow_squash_merge
  delete_branch_on_merge      = var.settings.delete_branch_on_merge
  merge_commit_message        = var.settings.merge_commit_message
  merge_commit_title          = var.settings.merge_commit_title
  squash_merge_commit_message = var.settings.squash_merge_commit_message

  vulnerability_alerts = var.settings.vulnerability_alerts
}
