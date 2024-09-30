variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "barkuni-cluster"
}

variable "cluster_version" {
  description = "The version of the EKS cluster"
  type        = string
  default     = "1.21"
}

variable "vpc_id" {
  description = "The VPC ID where the EKS cluster will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "The subnets where the EKS cluster will be deployed"
  type        = list(string)
}

variable "instance_type" {
  description = "The instance type for the EKS worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "The desired capacity of the EKS worker nodes"
  type        = number
  default     = 2
}

variable "max_capacity" {
  description = "The maximum capacity of the EKS worker nodes"
  type        = number
  default     = 3
}

variable "min_capacity" {
  description = "The minimum capacity of the EKS worker nodes"
  type        = number
  default     = 1
}
