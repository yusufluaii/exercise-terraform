module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.3.0"

  name                          = var.ec2_name
  associate_public_ip_address   = var.public_ip_addres
  availability_zone             = var.az
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.my_key_name
  monitoring             = var.monitoring
  vpc_security_group_ids = [var.sg]
  subnet_id              = var.my_subnet

  tags = {
    Name = "${var.instance_name}-ec2-instance"
  }
}