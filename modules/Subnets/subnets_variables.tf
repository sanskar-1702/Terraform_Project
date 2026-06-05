variable "public_subnet_cidr" {
    description = "CIDR block for our public subnet"
    type = string
  
}

variable "env" {
  description = "this is the env for my vpc"
  type = string
}

variable "vpc_id" {
    description = "This is the vpc id for my devpos subnet"
    type = string
}

variable "private_subnet_cidr" {
    description = "CIDR block for our private subnet"
    type = list(string)
}

variable "private_subnet_az" {
    description = "Availability zone for our private subnet"
    type = list(string)
  
}