# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------

variable "teams" {
  description = "The organisation teams."
  type        = any
}

variable "users" {
  description = "The organisation users."
  type        = map(string)
}

variable "collaborators" {
  description = "The external collaborators."
  default     = {}
  type        = map(map(string))
}
