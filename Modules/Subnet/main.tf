  resource azurerm_subnet "sn_1" {
    name                = var.subnet1
    address_prefix      = var.prefix1
    security_group      = var.Network_Security_Group
  }

  resource azurerm_subnet "sn_2" {
    name                = var.subnet2
    address_prefix      = var.prefix2
    security_group      = var.Network_Security_Group
  }

  resource azurerm_subnet "sn_3" {
    name                = var.subnet3
    address_prefix      = var.prefix3
    security_group      = var.Network_Security_Group
  }

  resource azurerm_subnet "sn_4" {
    name                = var.subnet4
    address_prefix      = var.prefix4
    security_group      = var.Network_Security_Group
}

# resource "aws_subnet" "public_eks_subnets" {
#   count                   = var.public_subnet_count
#   vpc_id                  = aws_vpc.eks_vpc.id
#   availability_zone_id    = element(data.aws_availability_zones.available.zone_ids, count.index)
#   cidr_block              = cidrsubnet(var.vpc_cidr, var.public_subnet_prefix_extension, count.index)
#   map_public_ip_on_launch = "true"
#   tags = merge(
#     {
#       Name                     = "EKS-${var.cluster_name}-public-subnet"
#       "kubernetes.io/role/elb" = "1"
#       "Env"                    = var.env
#       "Cluster"                = var.cluster_name
#     },
#     var.extra_tags,
#   )
# }