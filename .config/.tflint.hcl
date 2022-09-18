rule "terraform_module_pinned_source" {
  enabled = true
  style = "flexible"
  default_branches = ["main", "master", "default", "develop"]
}

rule "terraform_unused_declarations" {
  enabled = false
}

rule "terraform_required_version" {
  enabled = false
}
