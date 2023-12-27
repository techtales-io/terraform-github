# --------------------------------------------------------------------------------
# CONFIGURE ORGANIZATION SETTINGS
# --------------------------------------------------------------------------------

resource "github_organization_settings" "techtales_io" {
  billing_email = data.sops_file.secrets.data["billing_email"]
  company       = "techtales.io"
  name          = "techtales.io"
  blog          = "https://techtales.io"
  # email = "abc@example.io"
  # twitter_username = "example"
  location = "Austria"
  # description = ""

  # Projects
  has_organization_projects = true
  has_repository_projects   = true

  # Member privileges
  default_repository_permission            = "read"
  members_can_create_repositories          = false
  members_can_create_public_repositories   = false
  members_can_create_private_repositories  = false
  members_can_create_internal_repositories = false
  members_can_fork_private_repositories    = false
  members_can_create_pages                 = true
  members_can_create_public_pages          = true
  members_can_create_private_pages         = false

  # Repository
  web_commit_signoff_required = false

  # Code Scurity and analysis
  advanced_security_enabled_for_new_repositories               = false
  dependency_graph_enabled_for_new_repositories                = false
  dependabot_alerts_enabled_for_new_repositories               = false
  dependabot_security_updates_enabled_for_new_repositories     = false
  secret_scanning_enabled_for_new_repositories                 = false
  secret_scanning_push_protection_enabled_for_new_repositories = false
}
