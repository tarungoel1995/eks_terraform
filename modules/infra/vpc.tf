resource "aws_vpc" "main_eks_istio" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
    Type = "vpc"
    Creator = "terraform"
  }
}