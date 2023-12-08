# --------------------------------------------------------------------------------
# CONFIGURE DEFAULTS
# --------------------------------------------------------------------------------

data "github_app" "techtales-bot" {
  slug = "techtales-bot"
}

locals {
  settings = {
    visibility = "private"

    auto_init          = true
    archive_on_destroy = true

    has_discussions = false
    has_downloads   = false
    has_issues      = true
    has_projects    = false
    has_wiki        = false

    is_template = false

    allow_auto_merge            = false
    allow_merge_commit          = true
    allow_rebase_merge          = true
    allow_squash_merge          = true
    delete_branch_on_merge      = true
    merge_commit_message        = "PR_TITLE"
    merge_commit_title          = "MERGE_MESSAGE"
    squash_merge_commit_message = "COMMIT_MESSAGES"

    vulnerability_alerts = true
  }

  branch_protections = {
    main = {
      pattern                         = "main"
      allows_deletions                = false
      allows_force_pushes             = false
      enforce_admins                  = true
      require_conversation_resolution = true
      require_signed_commits          = true

      required_pull_request_reviews = {
        dismiss_stale_reviews = true
        pull_request_bypassers = [
          data.github_app.techtales-bot.node_id
        ]
        required_approving_review_count = 1
      }

      required_status_checks = {
        strict = true
      }
    }
  }

}
