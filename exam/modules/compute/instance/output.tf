output "instance_name" {
  value = aws_instance.instance.tags.Name
}
output "instance_id" {
  value = aws_instance.instance.id
}
