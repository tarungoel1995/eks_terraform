data "aws_vpc" "selected" {
  filter {
    name = "tag:Type"
    values = ["vpc"]
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
