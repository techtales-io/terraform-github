# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# TERRAFORM GITHUB
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#tfsec:ignore:github-repositories-enable_vulnerability_alerts
module "terraform_github" {
  source  = "mineiros-io/repository/github"
  version = "0.16.2"

  name         = "terraform-github"
  description  = ""
  homepage_url = ""
  extra_topics = [
    "terraform",
  ]

  defaults             = var.defaults.private
  visibility           = "private"
  has_downloads        = false # required to create static build assets on release f.e.
  archived             = false
  archive_on_destroy   = true
  vulnerability_alerts = false # enable if wanted / check costs!

  # teams
  # pull_teams = []
  # triage_teams = []
  push_teams = [
    var.teams.team_techtales.name,
  ]
  # maintain_teams = []

  # individual maintainer(s)
  # maintain_collaborators = []

  # autolink (jira reference links)
  autolink_references = var.defaults.autolink_references
}
