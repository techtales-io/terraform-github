# --------------------------------------------------------------------------------
# CONFIGURE REPO
# --------------------------------------------------------------------------------

#tfsec:ignore:github-repositories-enable_vulnerability_alerts
module "website" {
  source  = "mineiros-io/repository/github"
  version = "0.16.2"

  name         = "website"
  description  = ""
  homepage_url = ""

  # select template repo
  # https://github.com/jazzlyn/repo-template-basic
  # https://github.com/jazzlyn/repo-template-terraform
  template = {
    owner      = "jazzlyn"
    repository = "repo-template-basic"
  }

  extra_topics = [
    "techtales",
    "website",
  ]

  defaults             = var.defaults.public
  visibility           = "public"
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
