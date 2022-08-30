module "team_techtales" {
  source  = "mineiros-io/team/github"
  version = "0.8.0"

  name        = "Team Techtales"
  description = ""
  privacy     = "secret"

  members = [
    var.users["***REMOVED***"],
    var.users["***REMOVED***"],
  ]
}
