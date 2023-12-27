# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------

variable "memberships" {
  description = "all members of the organization."
  default     = {}
  type        = map(list(string))
}
