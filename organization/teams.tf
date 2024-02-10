# --------------------------------------------------------------------------------
# CONFIGURE ORGANIZATION TEAMS
# --------------------------------------------------------------------------------

resource "github_team" "techtales" {
  name        = "techtales"
  description = "needed for atlantis"
  privacy     = "secret"
}

resource "github_team_membership" "techtales_members" {
  for_each = toset(var.memberships.admins)
  team_id  = github_team.techtales.id
  username = each.key
  role     = "member"
}
