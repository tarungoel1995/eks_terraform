output "vpc_id" {
  value = "${aws_vpc.main_eks_istio.id}"
}

output "vpc_cidr" {
  value = "${aws_vpc.main_eks_istio.cidr_block}"
}

output "subnets" {
  value = {
      Private_1a = {aws_subnet.Private_1a : availability_zone => id} 
      Private_1b = "${join(",", aws_subnet.Private_1b.*.id)}"
      Public_1a = "${join(",", aws_subnet.Public_1a.*.id)}"
      Public_1b = "${join(",", aws_subnet.Public_1b.*.id)}"
  }
}