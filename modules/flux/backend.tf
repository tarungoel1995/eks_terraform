terraform {
  backend "s3" {
    bucket = "tarunlovedeepterraform"
    key = "flux_eks/terraform.tfstate"
    region = "us-east-1"
  }
}