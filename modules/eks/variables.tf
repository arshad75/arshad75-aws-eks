variable "region" {
  description = "AWS region to deploy the infrastructure"
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC to launch the cluster into"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs to launch the cluster into"
  type        = list(string)
}

variable "node_group_instance_type" {
  description = "Instance type for the EKS worker nodes"
  type        = string
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access Kubernetes control plane"
  type        = list(string)
}