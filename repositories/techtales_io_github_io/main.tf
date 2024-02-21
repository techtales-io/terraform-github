# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.7.4"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.0.0"
    }
  }
}
