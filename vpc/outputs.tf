output "pub-sub" {
  value = aws_subnet.pub-sub.id
}

output "mysg" {
  value = aws_security_group.mysg.id
}