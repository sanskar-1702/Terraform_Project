output "public_subnet_cidr_block" {
    value = aws_subnet.devops_public_subnet.cidr_block
}

output "private_subnet_cidr_block" {
    value = aws_subnet.devops_private_subnet[*].cidr_block
}

output "public_subnet_id" {
    value = aws_subnet.devops_public_subnet.id
}

output "private_subnet_id" {
    value = aws_subnet.devops_private_subnet[*].id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.devops_internet_gateway.id
}