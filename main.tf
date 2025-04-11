module "network" {
  source       = "./_modules/vpc"
  vpc_name     = var.vpc_name
  cidr_block   = var.cidr_block
  default_tags = var.default_tags
}

module "eks" {
  source           = "./_modules/eks"
  subnet_ids       = module.network.public_subnet_public_ids
  eks_cluster_name = var.eks_cluster_name
}

# module "eks" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "~> 20.31"

#   cluster_name    = var.eks_cluster_name
#   cluster_version = var.eks_cluster_version

#   # optional
#   cluster_endpoint_public_access = true

#   # Optional: Adds the current caller identity as an administrator via cluster access entry
#   enable_cluster_creator_admin_permissions = true

#   eks_managed_node_groups = {
#     example = {
#       instance_types = ["t3.small"]
#       desired_size   = 3
#       min_size       = 1
#       max_size       = 3
#     }
#   }

#   vpc_id     = module.network.vpc_id
#   subnet_ids = sort(module.network.public_subnet_public_ids)

#   tags = var.eks_default_tags
# }
