# --------------------------------------------------------------------------------
# CONFIGURE TERRAFORM
# --------------------------------------------------------------------------------

terraform {
  required_version = ">= 1.10.0, <= 1.16.5"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.13.0"
    }
  }
}

# the Atlantis webhook is added together with the Atlantis onboarding,
# it requires the `webhook_atlantis_cloudflare` and
# `webhook_atlantis_cloudflare_secret` keys in secrets.sops.yaml.
