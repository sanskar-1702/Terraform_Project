output "ec2_security_group_id" {
  value = aws_security_group.devops_EC2_security_group.id
}

output "rds_security_group_id" {
  value = aws_security_group.devops_rds_security_group.id
}
