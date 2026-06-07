resource "aws_db_subnet_group" "devops_subnet_ref_rds" {
  name       = "${var.env}_rds_db_subnet_group"
  subnet_ids = var.rds_private_subnet_id

  tags = {
    name = "${var.env}_rds_db_subnet_group"
    env  = var.env
  }
}


resource "aws_db_instance" "devops_mysql_db" {
  instance_class         = var.rds_instance_class
  engine                 = var.my_rds_engine
  engine_version         = var.my_rds_engine_version
  allocated_storage      = var.rds_storage
  storage_type           = var.my_rds_storage_type
  identifier             = "${var.env}-devops-rds"
  db_name                = "${var.env}_${var.db_name}"
  username               = "${var.env}_${var.db_username}"
  password               = var.db_password
  port                   = var.db_port
  skip_final_snapshot    = true
  vpc_security_group_ids = var.rds_security_group_id
  publicly_accessible    = false
  db_subnet_group_name   = aws_db_subnet_group.devops_subnet_ref_rds.name

  tags = {
    name = "devops_${var.env}_mysql_db"
    env  = var.env
  }

}
