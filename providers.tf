# --------------------------------------------------------------------------------
# CONFIGURE PROVIDERS
# --------------------------------------------------------------------------------

provider "sops" {}

provider "github" {
  owner = "techtales-io"
  token = var.github_token
}
