resource "github_branch_default" "repo" {
  repository = github_repository.repo.name
  branch     = "main"
}

resource "github_branch_protection" "default" {
  repository_id = github_repository.repo.name
  pattern       = github_branch_default.repo.branch

  allows_deletions                = var.branch_protections[github_branch_default.repo.branch].allows_deletions
  allows_force_pushes             = var.branch_protections[github_branch_default.repo.branch].allows_force_pushes
  enforce_admins                  = var.branch_protections[github_branch_default.repo.branch].enforce_admins
  require_conversation_resolution = var.branch_protections[github_branch_default.repo.branch].require_conversation_resolution
  require_signed_commits          = var.branch_protections[github_branch_default.repo.branch].require_signed_commits #trivy:ignore:AVD-GIT-0004

  required_status_checks {
    strict = var.branch_protections[github_branch_default.repo.branch].required_status_checks.strict
  }
}
