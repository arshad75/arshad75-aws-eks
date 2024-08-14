variable "region" {
  description = "AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "The CIDR range for the VPC. It must be a valid private CIDR block."
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for the public subnets. Each subnet must reside in a different AZ."
  type        = list(string)
  default = [
    "10.0.10.0/24",
    "10.0.20.0/24"
  ]
}

variable "eks_cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "eks_node_group_instance_type" {
  description = "Instance type for the EKS worker nodes"
  type        = string
  default     = "t3.medium"
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access Kubernetes control plane"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}