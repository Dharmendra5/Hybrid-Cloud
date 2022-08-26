# module "r_group" {
#   source       = "/Modules/Resource-group"
#   name         = var.name
#   group        = var.resource
#   tag          = var.tag
# }

# # module "machines" {
# #   source = "/Modules/Machines"
# # }

module "network" {
  source = "/Modules/Network"
}