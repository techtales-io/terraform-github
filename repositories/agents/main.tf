# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.10.0, <= 1.16.4"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.13.0"
    }
  }
}
