# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------


variable "collaborators" {
  description = "The external collaborators."
  default     = []
  type        = list(string)
}
