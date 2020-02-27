provider "aws" {
  region  = var.region
  profile = var.profile
}

resource "aws_network_interface" "nic" {
  subnet_id   = var.subnet_id
  #private_ips = var.private_ip
  attachment {
    instance     = var.instance_id
    device_index = var.dev_index_id
  }
  tags = {
    Name = var.interface_name
  }
}