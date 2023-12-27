# --------------------------------------------------------------------------------
# CONFIGURE ORGANIZATION WEBHOOKS
# --------------------------------------------------------------------------------

# this is the webhook for arc
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/organization_webhook
resource "github_organization_webhook" "arc" {
  configuration {
    url          = data.sops_file.secrets.data["webhook_arc"]
    content_type = "json"
    insecure_ssl = false
  }

  active = true

  events = [
    "workflow_job",
    "workflow_run",
  ]

  lifecycle {
    ignore_changes = [
      configuration[0].secret,
    ]
  }
}
