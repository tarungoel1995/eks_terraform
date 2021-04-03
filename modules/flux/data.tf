data "terraform_remote_state" "infra" {
  backend = "s3"
  config = {
    region = "us-east-1"
    bucket = "tarunlovedeepterraform"
    key    = "vpc/terraform.tfstate"
  }
}

data "terraform_remote_state" "eks_cluster" {
  backend = "s3"
  config = {
    region = "us-east-1"
    bucket = "tarunlovedeepterraform"
    key    = "istio_eks/terraform.tfstate"
  }
}

data "aws_eks_cluster_auth" "eks-demo-cluster-auth" {
  name = data.terraform_remote_state.eks_cluster.outputs.eks_cluster_name
}