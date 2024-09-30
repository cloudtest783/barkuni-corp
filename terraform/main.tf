provider "aws" {
  region = var.region
}

module "eks" {
  source          = "./eks"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnets         = var.subnets
  vpc_id          = var.vpc_id
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}
