# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------

variable "members" {
  description = "all members of the organisation"
  type        = map(list(string))
}
