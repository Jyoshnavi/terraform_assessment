provider "aws" {
  region  = var.region
  profile = var.profile
}
resource "aws_ebs_volume" "volume1" {
  availability_zone = var.availability_zone
  size              = var.volume_size
  tags = {
    Name = var.volume_name
  }
}