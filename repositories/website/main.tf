# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.7.5"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.1.0"
    }
  }
}
