terraform {
  backend "s3" {
    bucket = "tarunlovedeepterraform"
    key = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
}