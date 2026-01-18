# --------------------------------------------------------------------------------
# CONFIGURE BRANCHES
# --------------------------------------------------------------------------------

# this resource is used to create the default branch
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default
# the branch is used for the branch protection resource as reference
resource "github_branch_default" "repo" {
  repository = github_repository.repo.name # do not change
  branch     = "main"
}
