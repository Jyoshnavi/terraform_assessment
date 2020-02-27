provider "aws" {
  profile = var.profile
  region  = var.region
}
resource "aws_subnet" "subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.cidr_block_sub
  availability_zone = var.availability_zone
  tags = {
    Name = var.subnet_name
  }
}