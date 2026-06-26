variable "vpc_cidr" {
  description = "Cider for my VPC"
  type        = string
}

variable "env" {
  description = "this is the env for my vpc"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR for the private subnet"
  type        = list(string)
}

variable "db_port" {
  description = "value of database port"
  type        = number
}

variable "my_ip" {
  description = "My Ip address for ec2 inbound"
  type        = string
}

variable "instance_type" {
  description = "This is the type of my instance"
  type        = string
}

variable "ami_for_ec2" {
  description = "This is the ami of my instance"
  type        = string
}

variable "ec2_volume_size" {
  description = "This is the volume size for my ec2 instance"
  type        = number
}

variable "ec2_volume_type" {
  description = "This is the volume type for my ec2 instance"
  type        = string
}

variable "rds_instance_class" {
  description = "The instance class for my rds"
  type        = string
}

variable "my_rds_engine" {
  description = "Engine type for my RDS"
  type        = string
}

variable "my_rds_engine_version" {
  description = "My rds engine version"
  type        = string
}

variable "rds_storage" {
  description = "My rds Allocated Storage"
  type        = number
}

variable "my_rds_storage_type" {
  description = "My rds storage type"
  type        = string
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

variable "private_subnet_az" {
  description = "Availability zone for our private subnet"
  type        = list(string)
}

variable "public_subnet_az" {
  description = "This is the value of public subnet AZ"
  type        = string
}