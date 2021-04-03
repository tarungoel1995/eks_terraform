resource "aws_vpc_dhcp_options" "main_eks" {
  domain_name          = "ec2.internal" #format("%s.compute.internal", var.region)
  domain_name_servers  = ["AmazonProvidedDNS"]
  
  tags = {
    Name = var.dhcp_name
  }
}