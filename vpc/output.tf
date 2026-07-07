
output "pb_sn" {
  value = aws_subnet.pb_subnet.id
}

output "sg" {
  value = aws_security_group.my_sg.id
}