provider "aws" {
  profile = var.profile
  region  = var.region
}
module "aws_security_groups_Noida" {
  source          = "../../../modules/securitygroups"
  profile         = var.profile
  region          = var.region
  vpc_id          = var.vpc_id
  cidr_block_sg   = var.cidr_block_sg1
  starting_port_1 = var.starting_port_1
  ending_port_1   = var.ending_port_1
  starting_port_2 = var.starting_port_2
  ending_port_2   = var.ending_port_2
  starting_port_3 = var.starting_port_3
  ending_port_3   = var.ending_port_3
  protocol        = var.protocol
  sg_name         = var.sg_name1
}

module "aws_security_groups_Chennai" {
  source          = "../../../modules/securitygroups"
  profile         = var.profile
  region          = var.region
  vpc_id          = var.vpc_id
  cidr_block_sg   = var.cidr_block_sg2
  starting_port_1 = var.starting_port_1
  ending_port_1   = var.ending_port_1
  starting_port_2 = var.starting_port_2
  ending_port_2   = var.ending_port_2
  starting_port_3 = var.starting_port_3
  ending_port_3   = var.ending_port_3
  protocol        = var.protocol
  sg_name         = var.sg_name2
}




