# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.10.0, <= 1.14.3"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.9.1"
    }
  }
}
