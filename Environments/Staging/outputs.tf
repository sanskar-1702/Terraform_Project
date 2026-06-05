output "vpc_id" {
  description = "my staging vpc id"
  value       = module.vpc.vpc_id
}

output "ec2_public_ip" {
  description = "Public ip of my staging ec2"
  value       = module.ec2_instance.myec2_public_ip
}

output "rds_endpoint" {
  description = "Endpoint of my staging rds"
  value       = module.rds_instance.rds_db_endpoint
}

output "public_subnet_id" {
  description = "My stagiung public subnet id"
  value       = module.networking.public_subnet_id
}

output "db_port" {
  description = "my rds db port"
  value       = module.rds_instance.rds_db_port
}
