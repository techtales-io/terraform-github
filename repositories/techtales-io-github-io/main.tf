# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.10.0, <= 1.15.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.12.1"
    }
  }
}
