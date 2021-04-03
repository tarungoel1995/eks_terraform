data "terraform_remote_state" "infra" {
  backend = "s3"
  config = {
    region = "us-east-1"
    bucket = "tarunlovedeepterraform"
    key    = "vpc/terraform.tfstate"
  }
}

data "aws_subnet_ids" "private" {
  vpc_id = data.terraform_remote_state.infra.outputs.vpc_id

  tags = {
    Type = "Private"
  }
}

data "aws_subnet_ids" "public" {
  vpc_id = data.terraform_remote_state.infra.outputs.vpc_id

  tags = {
    Type = "Public"
  }
}