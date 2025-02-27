# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.11.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.5.0"
    }
  }
}
