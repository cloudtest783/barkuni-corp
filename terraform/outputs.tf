output "cluster_id" {
  description = "The ID of the EKS cluster"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "The endpoint of the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "The security group ID of the EKS cluster"
  value       = module.eks.cluster_security_group_id
}

output "node_group_arns" {
  description = "The ARNs of the EKS node groups"
  value       = module.eks.node_group_arns
}

output "node_group_names" {
  description = "The names of the EKS node groups"
  value       = module.eks.node_group_names
}
