module "Resource_group" {
    source       = "../Resource-group/"
    count        = var.count
    rg_name      = var.rg_name
    location     = var.location
    subscription = var.subscription
    env          = var.env
}