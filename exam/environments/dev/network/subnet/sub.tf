provider "aws" {
  region  = var.region
  profile = var.profile
}
module "subnet1" {
  source            = "../../../../modules/network/subnet"
  region            = var.region
  profile           = var.profile
  vpc_id            = var.vpc_id
  cidr_block_sub    = var.cidr_block_sub1
  availability_zone = var.availability_zone1
  subnet_name       = var.subnet_name1
}

module "subnet2" {
  source            = "../../../../modules/network/subnet"
  region            = var.region
  profile           = var.profile
  vpc_id            = var.vpc_id
  cidr_block_sub    = var.cidr_block_sub2
  availability_zone = var.availability_zone2
  subnet_name       = var.subnet_name2
}