provider "aws" {
  profile = var.profile
  region  = var.region
}
module "aws_ebs_volume" {
  source            = "../../../modules/storage"
  profile           = var.profile
  region            = var.region
  availability_zone = var.availability_zone
  volume_size       = var.volume_size
  volume_name       = var.volume_name
}