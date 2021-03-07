data "aws_vpc" "selected" {
  filter {
    name = "tag:Type"
    values = ["vpc"]
  }
}

data "terraform_remote_state" "infra" {

  backend = "s3"
  config = {
    region = "us-east-1"
    bucket = "tarunlovedeepterraform"
    key    = "vpc/terraform.tfstate"
  }
}

#data "aws_subnet" "selected_private" {
#  tags = {
#    Type = "Private"
#  }
#}

#data "aws_subnet" "selected_private" {
#  filter {
#    name = "tag:Type"
#    values = ["Private"]
#  }
#}

#data "aws_subnet" "selected_all" {
#  filter {
#    name = "tag:Creator"
#    values = ["terraform"]
#  }
#}
