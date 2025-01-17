# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.5.0, <= 1.10.4"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.5.0"
    }
  }
}
