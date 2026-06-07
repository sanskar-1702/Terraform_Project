variable "env" {
  description = "this is the env for my vpc"
  type        = string
}

variable "vpc_id" {
  description = "This is the vpc id for my devops security grp"
  type        = string
}

variable "db_port" {
  description = "value of database port"
  type        = number
}

variable "my_ip" {
  description = "My Ip address for ec2 inbound"
  type        = string
}