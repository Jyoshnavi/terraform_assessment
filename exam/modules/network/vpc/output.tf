output "vpc_id" {
  value = aws_vpc.vpc1.id
}
output "vpc_name" {
  value = aws_vpc.vpc1.tags.Name
}