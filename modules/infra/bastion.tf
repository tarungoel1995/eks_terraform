resource "aws_security_group" "eks_bastion_sg" {
  name        = "bastion_sg"
  description = "Security group for bastion in the cluster"
  vpc_id      = aws_vpc.main_eks_istio.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Creator = "terraform"
  }
}

resource "aws_security_group_rule" "eks-bastion-ingress" {
  description              = "Allow node to communicate with all IP"
  from_port                = 22
  protocol                 = "-1"
  cidr_blocks              = ["0.0.0.0/0"]
  to_port                  = 22
  security_group_id        = aws_security_group.eks_bastion_sg.id
  type                     = "ingress"
}

resource "aws_instance" "bastion" {
  ami           = "ami-042e8287309f5df03"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name
  subnet_id              = aws_subnet.Public_1b.id

  tags = {
    Creator = "terraform"
  }
}

