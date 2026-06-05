output "vpc_id" {
    value = aws_vpc.devops_vpc.id
}

output "vpc_cidr_block" {
    value = aws_vpc.devops_vpc.cidr_block
}

output "vpc_arn" {
    value = aws_vpc.devops_vpc.arn
}