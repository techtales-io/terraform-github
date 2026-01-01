# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------

variable "settings" {
  description = "the default settings for the repositories"
  type = object({
    visibility                  = string
    auto_init                   = bool
    archive_on_destroy          = bool
    has_discussions             = bool
    has_downloads               = bool
    has_issues                  = bool
    has_projects                = bool
    has_wiki                    = bool
    is_template                 = bool
    allow_auto_merge            = bool
    allow_merge_commit          = bool
    allow_rebase_merge          = bool
    allow_squash_merge          = bool
    allow_update_branch         = bool
    delete_branch_on_merge      = bool
    merge_commit_message        = string
    merge_commit_title          = string
    squash_merge_commit_message = string
    vulnerability_alerts        = bool
  })
}

# variable "branch_protections" {
#   description = "The branch protection settings for the repositories."
#   type = map(object({
#     pattern                         = string
#     allows_deletions                = bool
#     allows_force_pushes             = bool
#     enforce_admins                  = bool
#     require_conversation_resolution = bool
#     require_signed_commits          = bool
#     required_pull_request_reviews = object({
#       dismiss_stale_reviews           = bool
#       pull_request_bypassers          = list(string)
#       required_approving_review_count = number
#     })
#     required_status_checks = object({
#       strict = bool
#     })
#   }))
# }
