module "vpc" {
  source  = "./modules/vpc"
  region               = var.region
  vpc_cidr_block      = var.vpc_cidr_block
  subnet_cidr_blocks   = var.subnet_cidr_blocks
}

module "eks" {
  source                           = "./modules/eks"
  region                            = var.region
  cluster_name                     = var.eks_cluster_name
  vpc_id                           = module.vpc.vpc_id
  subnet_ids                       = module.vpc.private_subnet_ids
  node_group_instance_type        = var.eks_node_group_instance_type
  allowed_cidr_blocks             = var.allowed_cidr_blocks
}