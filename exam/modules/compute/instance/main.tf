provider "aws" {
  region  = var.region
  profile = var.profile
}
resource "aws_instance" "instance" {
  ami               = var.ami
  availability_zone = var.availability_zone
  instance_type     = var.instance_type
  security_groups    = var.security_group
  subnet_id         = var.subnet_id
 # private_ips        = var.private_ip
  tags = {
    Name = var.instance_name
  }
}



