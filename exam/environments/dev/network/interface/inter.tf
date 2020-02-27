provider "aws" {
  profile = var.profile
  region  = var.region
}
module "aws_network_instance" {
  source         = "../../../../modules/network/interface"
  region         = var.region
  profile        = var.profile
  subnet_id      = var.subnet_id
 # private_ips    = var.private_ip
  instance_id    = var.instance_id
  dev_index_id   = var.dev_index_id
  interface_name = var.nic_name
}
