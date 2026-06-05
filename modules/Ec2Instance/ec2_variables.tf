variable "env" {
  description = "this is the env for my vpc"
  type = string
}


variable "instance_type" {
    description = "This is the type of my instance"
    type = string
}

variable "ami_for_ec2" {
    description = "This is the ami of my instance"
    type = string
}

variable "ec2_security_group_id" {
    description = "This is the security group id for my ec2 instance"
    type = list(string)
  
}

variable "public_subnet_id" {
    description = "This is the public subnet id for my ec2 instance"
    type = string
}

variable "ec2_volume_size" {
    description = "This is the volume size for my ec2 instance"
    type = number
}

variable "ec2_volume_type" {
    description = "This is the volume type for my ec2 instance"
    type = string
}