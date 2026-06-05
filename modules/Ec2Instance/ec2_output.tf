output "myec2_public_ip" {
  value = aws_instance.devops_ec2.public_ip
}

output "myec2_private_dns" {
  value = aws_instance.devops_ec2.private_dns
}

