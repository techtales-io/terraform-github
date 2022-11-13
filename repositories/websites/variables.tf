# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------


variable "collaborators" {
  description = "The external collaborators."
  default     = []
  type        = list(string)
}

variable "defaults" {
  description = "The repository default configuration."
  type        = any
}
