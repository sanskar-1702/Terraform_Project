variable "vpc_cidr" {
    type = string
    description = "This is the cidr for my Production VPC"
}

variable "env" {
    type = string
    description = "This is the env for my production"
}

variable "public_subnet_cidr" {
    type = string
    description = "This is the cidr for the public subnet in my Production environment"
}

variable "private_subnet_cidr" {
    type = list(string)
    description = "This is the cidr for the private subnet in my Production environment"
}


variable "private_subnet_az" {
    type = list(string)
    description = "This is the availability zone for the private subnet in my Production environment"

}

variable "db_port" {
    type = number
    description = "This is the port for the database in my Production environment"
}

variable "my_ip" {
    type = string
    description = "This is my IP address for the Production environment"
}

variable "instance_type" {
    type = string
    description = "This is the instance type for my EC2 instance in my Production environment"
}

variable "ec2_volume_size" {
    type = number
    description = "This is the volume size for my EC2 instance in my Production environment"
  
}

variable "ami_for_ec2" {
    type = string
    description = "This is the AMI for my EC2 instance in my Production environment"  
}

variable "ec2_volume_type" {
    type = string
    description = "This is the volume type for my EC2 instance in my Production environment"
  
}

variable "rds_instance_class" {
    type = string
    description = "This is the instance class for my RDS instance in my Production environment"
}

variable "my_rds_engine" {
    type = string
    description = "This is the rds engine for my rds instance in my Production environment"
}

variable "rds_storage" {
    type = number
    description = "This is the storage for my RDS instance in my Production environment"
}

variable "my_rds_storage_type" {
  type = string
  description = "This is the storage type for my RDS instance in my Production environment"
}

variable "my_rds_engine_version" {
    type = string
    description = "This is the rds engine version for my rds instance in my Production environment"
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "db_name" {
  description = "This is the name of my rds database"
  type        = string
}