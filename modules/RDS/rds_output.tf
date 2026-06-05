output "rds_db_endpoint" {
    value = aws_db_instance.devops_mysql_db.endpoint
}

output "rds_db_identifier" {
    value = aws_db_instance.devops_mysql_db.identifier
}

output "rds_db_port" {
    value = aws_db_instance.devops_mysql_db.port
}