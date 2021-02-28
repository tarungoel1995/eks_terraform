variable "region" {
  type        = string
  description = "Default Region For Terraform"
}

variable "eks_iam_role_name" {
  type        = string
  description = "EKS Cluster IAM Role Name"
}

variable "eks_cluster_sg" {
  type        = string
  description = "EKS Cluster Security Group Name"
}

variable "workstation_ip" {
  type        = string
  description = "Local Workstation IP"
}

variable "vpc_name" {
  type        = string
  description = "VPC Name"
}

variable "eks_cluster_name" {
  type        = string
  description = "Name of the EKS Cluster"
}