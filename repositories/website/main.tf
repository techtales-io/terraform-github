# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.7.3"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.42.0"
    }
  }
}
