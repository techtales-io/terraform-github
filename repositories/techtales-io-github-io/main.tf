# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.8.3"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.1"
    }
  }
}
