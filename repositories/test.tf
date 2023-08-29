# --------------------------------------------------------------------------------
# TEST
# --------------------------------------------------------------------------------

#tfsec:ignore:github-repositories-enable_vulnerability_alerts
module "test" {
  source  = "mineiros-io/repository/github"
  version = "0.16.2"

  name         = "test"
  description  = ""
  homepage_url = ""

  # select template repo
  # https://github.com/jazzlyn/repo-template-basic
  # https://github.com/jazzlyn/repo-template-terraform
  template = {
    owner      = "jazzlyn"
    repository = "repo-template-terraform"
  }

  extra_topics = [
    "test",
    "test2",
  ]

  defaults             = local.defaults.private
  visibility           = "private"
  has_downloads        = false # required to create static build assets on release f.e.
  archived             = false
  archive_on_destroy   = true
  vulnerability_alerts = false

  # individual collaborators
  # pull_collaborators = []
  # triage_collaborators = []
  # push_collaborators = distinct(concat(
  #   [for user in var.collaborators["group_name"] : user],
  #   ["some_github_user"],
  # ))
}