# --------------------------------------------------------------------------------
# CONFIGURE ORGANIZATION
# --------------------------------------------------------------------------------

module "organization" {
  source  = "mineiros-io/organization/github"
  version = "0.7.0"

  members = []

  admins = [
    var.users["***REMOVED***"],
    var.users["***REMOVED***"],
  ]
}
