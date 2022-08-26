module "r_group" {
  source       = "/Modules/Resource-group"
  name         = var.name
}

module "machines" {
  source = "/Modules/Machines"
}

module "network" {
  source = "/Modules/Network"
}