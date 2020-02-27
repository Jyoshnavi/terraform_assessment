output "nic_name" {
  value = aws_network_interface.nic.tags.Name
}
output "nic_id" {
  value = aws_network_interface.nic.id
}
