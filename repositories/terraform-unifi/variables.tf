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
