provider "aws" {
  profile = var.profile
  region  = var.region
}
module "vpc" {
  source           = "../../../../modules/network/vpc"
  cidr_block_vpc   = var.cidr_block_vpc
  instance_tenancy = var.instance_tenancy
  region           = var.region
  profile          = var.profile
  vpc_name         = var.vpc_name
}