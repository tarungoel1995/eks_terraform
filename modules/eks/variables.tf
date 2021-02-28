variable "region" {
  type        = string
  description = "Default Region For Terraform"
}

variable "eks_iam_role_name" {
  type        = string
  description = "EKS Cluster IAM Role Name"
}