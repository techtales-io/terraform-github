# --------------------------------------------------------------------------------
# CONFIGURE ORGANIZATION MEMBERSHIPS
# --------------------------------------------------------------------------------

resource "github_membership" "admins" {
  for_each = toset(var.memberships.admins)
  username = each.key
  role     = "admin"
}

resource "github_membership" "members" {
  for_each = toset(var.memberships.members)
  username = each.key
  role     = "member"
}
