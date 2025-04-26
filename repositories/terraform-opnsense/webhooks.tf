# --------------------------------------------------------------------------------
# CONFIGURE WEBHOOKS
# --------------------------------------------------------------------------------

# this resource is used to create the webhook for atlantis
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_webhook

resource "github_repository_webhook" "atlantis" {
  repository = github_repository.repo.name # do not change

  configuration {
    url          = data.sops_file.secrets.data["webhook_atlantis_opnsense"]
    content_type = "json"
    insecure_ssl = false
    secret       = data.sops_file.secrets.data["webhook_atlantis_opnsense_secret"]
  }

  active = true

  events = [
    "issue_comment",
    "pull_request",
    "pull_request_review",
    "push"
  ]
}
