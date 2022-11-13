# --------------------------------------------------------------------------------
# CONFIGURE ORGANIZATION
# --------------------------------------------------------------------------------

module "organization" {
  source  = "mineiros-io/organization/github"
  version = "0.7.0"

  members = [
    for members in var.members.members : members
  ]

  admins = [
    for admins in var.members.admins : admins
  ]
}
