variable "region" {
  type        = string
  description = "Default Region For Terraform"
}

variable "vpc_name" {
  type        = string
  description = "VPC Name"
}

variable "dhcp_name" {
  type        = string
  description = "DHCP Name"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "pubsub_1a" {
  type        = string
  description = "Public Subnet 1 Name"
}

variable "pubsub_1b" {
  type        = string
  description = "Public Subnet 2 Name"
}

variable "privsub_1a" {
  type        = string
  description = "Private Subnet 1 Name"
}

variable "privsub_1b" {
  type        = string
  description = "Private Subnet 2 Name"
}

variable "pubsub_cidr_1a" {
  type        = string
  description = "Public Subnet 1 CIDR"
}

variable "pubsub_cidr_1b" {
  type        = string
  description = "Public Subnet 2 CIDR"
}

variable "privsub_cidr_1a" {
  type        = string
  description = "Private Subnet 1 CIDR"
}

variable "privsub_cidr_1b" {
  type        = string
  description = "Private Subnet 2 CIDR"
}

variable "igw_name" {
  type        = string
  description = "Internet Gateway Name"
}

variable "nat_eip_name" {
  type        = string
  description = "NAT Gateway EIP Name"
}

variable "nat_name" {
  type        = string
  description = "NAT Gateway Name"
}

variable "public_rt_name" {
  type        = string
  description = "Public Route Table Name"
}

variable "private_rt_name" {
  type        = string
  description = "Private Route Table Name"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-042e8287309f5df03"
    us-east-2 = "ami-08962a4068733a2b6"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}