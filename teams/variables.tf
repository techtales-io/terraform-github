# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------

variable "users" {
  description = "all users of the organization"
  type        = map(string)
}
