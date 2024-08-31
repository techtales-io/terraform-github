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

# this resource is used to create the branch protection for the default branch
# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection
# default values can be found in the locals.tf file
# to overwrite just update the desired values
# resource "github_branch_protection" "default" {
#   repository_id  = github_repository.repo.name # do not change
#   pattern        = github_branch_default.repo.branch # do not change

#   allows_deletions = var.branch_protections[github_branch_default.repo.branch].allows_deletions
#   allows_force_pushes = var.branch_protections[github_branch_default.repo.branch].allows_force_pushes
#   enforce_admins = var.branch_protections[github_branch_default.repo.branch].enforce_admins
#   require_conversation_resolution = var.branch_protections[github_branch_default.repo.branch].require_conversation_resolution
#   require_signed_commits = var.branch_protections[github_branch_default.repo.branch].require_signed_commits

#   required_pull_request_reviews {
#     dismiss_stale_reviews = var.branch_protections[github_branch_default.repo.branch].required_pull_request_reviews.dismiss_stale_reviews
#     pull_request_bypassers = var.branch_protections[github_branch_default.repo.branch].required_pull_request_reviews.pull_request_bypassers
#     required_approving_review_count = var.branch_protections[github_branch_default.repo.branch].required_pull_request_reviews.required_approving_review_count
#   }

#   required_status_checks {
#     strict = var.branch_protections[github_branch_default.repo.branch].required_status_checks.strict
#   }
# }
