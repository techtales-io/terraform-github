# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------

variable "teams" {
  description = "The organisation teams."
  type        = any
}

variable "users" {
  description = "The organisation users."
  type        = any
}

variable "defaults" {
  description = "The repository default configuration."
  type        = any
}
