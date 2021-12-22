terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.70.0" # mention versi dari aws provider terraform
    }
  }
}

provider "aws" {
  region = var.region
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.3.0"

  name                          = var.ec2_name
  associate_public_ip_address   = var.public_ip_addres
  availability_zone             = var.az
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = file("~/.ssh/yusufluai.pem")
  monitoring             = var.monitoring
  vpc_security_group_ids = [var.sg]
  subnet_id              = var.my_subnet

  tags = {
    Name = "${var.instance_name}-ec2-instance"
  }
}