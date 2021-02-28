resource "aws_subnet" "Public_1a" {
  vpc_id     = aws_vpc.main_eks_istio.id
  cidr_block = var.pubsub_cidr_1a

  tags = {
    Name = var.pubsub_1a
    Creator = "terraform"
  }
}

esource "aws_subnet" "Public_1b" {
  vpc_id     = aws_vpc.main_eks_istio.id
  cidr_block = var.pubsub_cidr_1b

  tags = {
    Name = var.pubsub_1b
    Creator = "terraform"
  }
}

resource "aws_subnet" "Private_1a" {
  vpc_id     = aws_vpc.main_eks_istio.id
  cidr_block = var.privsub_cidr_1a

  tags = {
    Name = var.privsub_1a
    Creator = "terraform"
  }
}

resource "aws_subnet" "Private_1b" {
  vpc_id     = aws_vpc.main_eks_istio.id
  cidr_block = var.privsub_cidr_1b

  tags = {
    Name = var.privsub_1b
    Creator = "terraform"
  }
}