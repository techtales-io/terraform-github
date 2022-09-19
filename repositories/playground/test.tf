# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# TEST
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#tfsec:ignore:github-repositories-enable_vulnerability_alerts
module "test" {
  source  = "mineiros-io/repository/github"
  version = "0.16.2"

  name         = "test"
  description  = ""
  homepage_url = ""
  extra_topics = [
    "test",
    "test2",
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

  # individual collaborators
  # pull_collaborators = []
  # triage_collaborators = []
  # push_collaborators = distinct(concat(
  #   [for user in var.collaborators["group_name"] : user],
  #   ["some_github_user"],
  # ))
}
