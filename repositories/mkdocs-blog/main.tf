# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.11.2"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }
  }
}
