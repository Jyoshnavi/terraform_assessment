provider "aws" {
  profile = var.profile
  region  = var.region
}
resource "aws_vpc" "vpc1" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = var.instance_tenancy
  tags = {
    Name = var.vpc_name
  }
}