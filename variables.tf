# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------

variable "github_token" {
  description = "github token from automation user"
  type        = string
}

variable "billing_email" {
  description = "billing email for github organization"
  type        = string
}

variable "webhook_arc" {
  description = "webhook for arc webhook resource"
  type        = string
}
