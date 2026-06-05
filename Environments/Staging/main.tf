module "vpc" {
  source = "../../modules/VPC"

  vpc_cidr = var.vpc_cidr
  env      = var.env
}

module "networking" {
  source = "../../modules/Subnets"

  env                 = var.env
  vpc_id              = module.vpc.vpc_id
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_az   = var.private_subnet_az
}

module "security_groups" {
  source = "../../modules/SecurityGroups"

  env     = var.env
  vpc_id  = module.vpc.vpc_id
  db_port = var.db_port
  my_ip   = var.my_ip
}

module "ec2_instance" {
  source = "../../modules/Ec2Instance"

  env                   = var.env
  instance_type         = var.instance_type
  ami_for_ec2           = var.ami_for_ec2
  public_subnet_id      = module.networking.public_subnet_id
  ec2_volume_size       = var.ec2_volume_size
  ec2_volume_type       = var.ec2_volume_type
  ec2_security_group_id = [module.security_groups.ec2_security_group_id]

}

module "rds_instance" {
  source = "../../modules/RDS"

  env                   = var.env
  rds_instance_class    = var.rds_instance_class
  my_rds_engine         = var.my_rds_engine
  my_rds_engine_version = var.my_rds_engine_version
  rds_storage           = var.rds_storage
  my_rds_storage_type   = var.my_rds_storage_type
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password
  db_port               = var.db_port
  rds_private_subnet_id = module.networking.private_subnet_id
  rds_security_group_id = [module.security_groups.rds_security_group_id]

}

