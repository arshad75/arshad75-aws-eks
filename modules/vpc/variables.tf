variable "region" {
  description = "AWS region to deploy the infrastructure"
  type        = string
}

variable "vpc_cidr_block" {
  description = "The CIDR range for the VPC. It must be a valid private CIDR block."
  type        = string
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for the public subnets. Each subnet must reside in a different AZ."
  type        = list(string)
}