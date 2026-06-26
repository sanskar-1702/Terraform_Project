#key pair for ec2
resource "aws_key_pair" "devops_ec2_key" {
  key_name   = "devops_${var.env}_ec2_key"
  public_key = file("${path.module}/devops_ec2_key.pub")

  tags = {
      environment = "${var.env}"
      name        = "devops-${var.env}-ec2-key"
  }
}

resource "aws_instance" "devops_ec2" {
  key_name                    = aws_key_pair.devops_ec2_key.key_name
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = var.ec2_security_group_id
  instance_type               = var.instance_type
  ami                         = var.ami_for_ec2
  associate_public_ip_address = true

  root_block_device {
    volume_size           = var.ec2_volume_size
    volume_type           = var.ec2_volume_type
    delete_on_termination = true
  }


  tags = {
    name        = "Devops-${var.env}-instance"
    environment = "${var.env}"
  }
}