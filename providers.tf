# --------------------------------------------------------------------------------
# CONFIGURE PROVIDERS
# --------------------------------------------------------------------------------

provider "sops" {}

provider "github" {
  owner = var.github_owner
  token = var.github_token
}
