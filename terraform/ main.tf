provider "aws" {
  region = "us-west-2"
}

module "eks" {
  source = "./eks-cluster"
}

output "cluster_id" {
  value = module.eks.cluster_id
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks.cluster_security_group_id
}

output "node_group_arns" {
  value = module.eks.node_group_arns
}

output "node_group_names" {
  value = module.eks.node_group_names
}