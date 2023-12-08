# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------

variable "memberships" {
  description = "all members of the organization."
  default     = {}
  type        = map(list(string))
}

variable "billing_email" {
  description = "billing email for the organization"
  type        = string
}

variable "webhook_arc" {
  description = "webhook for arc webhook resource"
  type        = string
}
