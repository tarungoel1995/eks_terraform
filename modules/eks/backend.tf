terraform {
  backend "s3" {
    bucket = "tarunlovedeepterraform"
    key = "istio_eks/terraform.tfstate"
    region = "us-east-1"
  }
}