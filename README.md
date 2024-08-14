# Terraform EKS Cluster Module

This Terraform module provisions a production-ready Amazon Elastic Kubernetes Service (EKS) cluster on AWS, adhering to best practices for security, scalability, and maintainability.

## Features

- **Networking:**
  - Custom VPC with private subnets for the EKS cluster.
  - NAT Gateway for outbound internet access from the cluster.
  - Security groups and network ACLs for granular traffic control.
- **EKS Cluster Configuration:**
  - Regional cluster for high availability.
  - Private endpoint access for enhanced security.
  - Node auto-scaling and cluster autoscaling for optimal resource utilization.
  - Internal load balancing for distributing traffic within the cluster.
  - IAM roles for service accounts, ensuring secure pod-to-service communication.
  - VPC-native (CNI) mode for seamless network integration.
  - Control plane access restricted with security groups.
- **Security Measures:**
  - EKS Managed Node Groups with encryption at rest for data protection.
  - AWS PrivateLink for secure communication between services.
  - AWS Secrets Manager for storing and managing sensitive information.
  - Kubernetes network policies for fine-grained network control within the cluster.
  - Optional integration with AWS App Mesh for service mesh capabilities.
- **Monitoring and Logging:**
  - Amazon CloudWatch for monitoring cluster health and performance.
  - CloudWatch alerting policies for proactive incident response.
  - Amazon CloudTrail for logging API activity and auditing.
- **Identity and Access Management (IAM):**
  - Least privilege access implemented through custom IAM roles and policies.
  - Dedicated IAM roles for EKS and workloads, minimizing security risks.
- **Cost Optimization:**
  - Utilization of Reserved Instances or Savings Plans for cost savings.
  - Resource quotas and limits for clusters to prevent unexpected spending.
- **Maintenance and Updates:**
  - Configurable maintenance windows and update channels for node groups.
  - Auto-repair and auto-upgrade for nodes, ensuring cluster health and security.
- **Add-ons and Integrations:**
  - Optional integration with Amazon RDS for database needs.
  - Amazon S3 bucket creation for persistent storage.
  - Optional integration with Amazon CloudFront for content delivery.

## Prerequisites

- **AWS Account:** You need an active AWS account.
- **Terraform:** Ensure Terraform is installed on your local machine. (https://www.terraform.io/downloads.html)
- **AWS Credentials:** Configure your AWS credentials (access key ID and secret access key) for Terraform to interact with your AWS account.

## Usage

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-username/terraform-eks-cluster.git
   cd terraform-eks-cluster
   ```

2. **Variables:**
   - Customize the variables in the `variables.tf` file according to your environment and requirements.
   - Example variables include:
     - `region`: AWS region for deployment.
     - `vpc_cidr_block`: CIDR range for the VPC.
     - `subnet_cidr_blocks`: List of CIDR blocks for private subnets.
     - `eks_cluster_name`: Name of your EKS cluster.
     - `eks_node_group_instance_type`: EC2 instance type for worker nodes.
     - `allowed_cidr_blocks`: IP ranges allowed to access the Kubernetes control plane.

3. **Deploy the Infrastructure:**
   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

4. **Access the EKS Cluster:**
   - After successful deployment, Terraform will output instructions on accessing your EKS cluster.
   - Typically, you will need to configure `kubectl` with the necessary credentials to interact with your cluster.

## Customization

- **Environment-Specific Configurations:**
  - Create separate directories for different environments (e.g., development, staging, production).
  - Duplicate the `variables.tf` file into each environment directory.
  - Customize the variables within each environment's `variables.tf` to match its specific requirements.

- **Additional Add-ons:**
  - To integrate additional services (e.g., databases, load balancers), you can create separate Terraform modules or integrate existing ones.

## Cleanup

To destroy the infrastructure provisioned by this module, run:

```bash
terraform destroy
```