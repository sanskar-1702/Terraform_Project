variable "env" {
  description = "Environment for our rds"
  type        = string
}

variable "db_name" {
  description = "This is the name of my rds database"
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

variable "rds_private_subnet_id" {
  description = "my rds private subnet id"
  type        = list(string)

}

variable "rds_security_group_id" {
  description = "Security group id for my rds"
  type        = list(string)
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "db_port" {
  type = number
}

variable "rds_instance_class" {
  description = "The instance class for my rds"
  type        = string
}