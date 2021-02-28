data "aws_vpc" "selected" {
  tags {
    Name = var.vpc_name
  }
}

data "aws_subnet" "selected_private" {
  filter {
    name = "tag:Type"
    values = ["Private"]
  }
}

data "aws_subnet" "selected_all" {
  filter {
    name = "tag:Creator"
    values = ["terraform"]
  }
}