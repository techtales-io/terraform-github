# --------------------------------------------------------------------------------
# CONFIGURE PROVIDERS
# --------------------------------------------------------------------------------

# https://registry.terraform.io/providers/carlpett/sops/latest/docs
provider "sops" {}

# https://registry.terraform.io/providers/integrations/github/latest/docs
provider "github" {
  owner = "techtales-io"
}
