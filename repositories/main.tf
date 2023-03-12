# --------------------------------------------------------------------------------
# MODULE home-infra
# --------------------------------------------------------------------------------

module "home-infra" {
  source        = "./home-infra/"
  collaborators = var.collaborators
  defaults      = local.defaults
}

# --------------------------------------------------------------------------------
# MODULE playground
# --------------------------------------------------------------------------------

module "playground" {
  source        = "./playground/"
  collaborators = var.collaborators
  defaults      = local.defaults
}

# --------------------------------------------------------------------------------
# MODULE website
# --------------------------------------------------------------------------------

module "websites" {
  source        = "./websites/"
  collaborators = var.collaborators
  defaults      = local.defaults
}
