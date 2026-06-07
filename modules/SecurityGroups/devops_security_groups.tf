#security grp for ec2
resource "aws_security_group" "devops_EC2_security_group" {
  name   = "devops_${var.env}_EC2_security_group"
  vpc_id = var.vpc_id

  tags = {
    env  = var.env
    name = "devops_${var.env}_EC2_security_group"
  }
}

#Inbound Rules for ec2
resource "aws_vpc_security_group_ingress_rule" "devops_ec2_inbound_rule" {
  security_group_id = aws_security_group.devops_EC2_security_group.id
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = var.my_ip
}

#outbound rule for ec2 
resource "aws_vpc_security_group_egress_rule" "devops_ec2_outbound_rule" {
  security_group_id = aws_security_group.devops_EC2_security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

#--------------------------------------------------

#Security group for RDS
resource "aws_security_group" "devops_rds_security_group" {
  name   = "devops_${var.env}_rds_security_group"
  vpc_id = var.vpc_id

  tags = {
    env  = var.env
    name = "devops_${var.env}_rds_security_group"
  }

}

#inbound rule for rds
resource "aws_vpc_security_group_ingress_rule" "devops_rds_inbound" {
  security_group_id            = aws_security_group.devops_rds_security_group.id
  ip_protocol                  = "tcp"
  from_port                    = var.db_port
  to_port                      = var.db_port
  referenced_security_group_id = aws_security_group.devops_EC2_security_group.id
}

