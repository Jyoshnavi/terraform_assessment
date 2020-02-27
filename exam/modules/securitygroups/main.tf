provider "aws" {
  profile = var.profile
  region  = var.region
}
resource "aws_security_group" "sg" {
  vpc_id = var.vpc_id
  ingress {
    cidr_blocks = var.cidr_block_sg
    from_port   = var.starting_port_1
    to_port     = var.ending_port_1
    protocol    = var.protocol
  }
  ingress {
    cidr_blocks = var.cidr_block_sg
    from_port   = var.starting_port_2
    to_port     = var.ending_port_2
    protocol    = var.protocol
  }
  ingress {
    cidr_blocks = var.cidr_block_sg
    from_port   = var.starting_port_3
    to_port     = var.ending_port_3
    protocol    = var.protocol
  }
  tags = {
    Name = var.sg_name
  }
}