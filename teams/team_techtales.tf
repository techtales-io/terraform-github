module "team_techtales" {
  source  = "mineiros-io/team/github"
  version = "0.8.0"

  name        = "Team Techtales"
  description = ""
  privacy     = "secret"

  maintainers = [
    var.users["***REMOVED***"],
    var.users["***REMOVED***"],
  ]
}
