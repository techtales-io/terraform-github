# --------------------------------------------------------------------------------
# CONFIGURE VARIABLES
# --------------------------------------------------------------------------------

variable "collaborators" {
  description = "The external collaborators."
  default     = []
  type        = list(string)
}

variable "defaults" {
  description = "The repository default configuration."
  type = object({
    private : object({
      allow_auto_merge : bool,
      allow_merge_commit : bool,
      allow_rebase_merge : bool,
      allow_squash_merge : bool,
      auto_init : bool,
      default_branch : string,
      delete_branch_on_merge : bool,
      gitignore_template : string,
      has_downloads : bool,
      has_issues : bool,
      has_projects : bool,
      has_wiki : bool,
      homepage_url : string,
      issue_labels : list(string),
      issue_labels_merge_with_github_labels : bool,
      license_template : string,
      topics : list(string),
      visibility : string,
    }),
    public : object({
      allow_auto_merge : bool,
      allow_merge_commit : bool,
      allow_rebase_merge : bool,
      allow_squash_merge : bool,
      auto_init : bool,
      default_branch : string,
      delete_branch_on_merge : bool,
      gitignore_template : string,
      has_downloads : bool,
      has_issues : bool,
      has_projects : bool,
      has_wiki : bool,
      homepage_url : string,
      issue_labels : list(string),
      issue_labels_merge_with_github_labels : bool,
      license_template : string,
      topics : list(string),
      visibility : string,
    }),
  })
}
