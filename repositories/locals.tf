# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# CONFIGURE DEFAULTS
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

locals {

  private = {
    homepage_url           = ""
    visibility             = "private"
    has_issues             = true
    has_projects           = false
    has_wiki               = false
    allow_merge_commit     = true
    allow_rebase_merge     = true
    allow_squash_merge     = true
    allow_auto_merge       = false
    delete_branch_on_merge = true
    has_downloads          = false
    auto_init              = false
    default_branch         = "main"
    gitignore_template     = ""
    license_template       = ""
    topics                 = []
    issue_labels = [
      #{
      #  name  = "major",
      #  color = "FFFFFF",
      #},
    ]
    issue_labels_merge_with_github_labels = false
  }

  # default settings for public repositories ( merge with private default settings )
  public = merge(local.private, {
    visibility = "public"
  })

  branch_protection = [
    {
      branch = "main"
      required_pull_request_reviews = {
        dismiss_stale_reviews           = true
        required_approving_review_count = 1
      }
      enforce_admins = true
    }
  ]

  # set autolinks from jirakeys.yaml
  # add additional keys to yaml file
  jirakeys = fileexists("${path.module}/jirakeys.yaml") ? yamldecode(file("${path.module}/jirakeys.yaml")).keys : []
  autolink_references = [
    for key in local.jirakeys : {
      key_prefix          = "${key}-",
      target_url_template = "***REMOVED***browse/${key}-<num>",
    }
  ]

  # default settings
  defaults = {
    private             = local.private
    public              = local.public
    autolink_references = local.autolink_references
    branch_protection   = local.branch_protection
  }
}
