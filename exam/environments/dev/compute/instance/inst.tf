provider "aws" {
  profile = var.profile
  region  = var.region
}
module "aws_instance" {
  source            = "../../../../modules/compute/instance"
  region            = var.region
  profile           = var.profile
  ami               = var.ami
  availability_zone = var.availability_zone
  instance_type     = var.instance_type
  security_group   = var.security_group
  subnet_id         = var.subnet_id
 # private_ip        = var.private_ip
  instance_name     = var.instance_name
}