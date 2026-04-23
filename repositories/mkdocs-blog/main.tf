# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.10.0, <= 1.14.9"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.12.0"
    }
  }
}
