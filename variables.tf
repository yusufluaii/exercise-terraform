# cara pemanggilan => var.NAMA_VAR / var.region

variable "region" {
  default = "ap-southeast-1"
}

variable "az" {
    default = "ap-southeast-1a"
}

variable "ec2_name" {
    default = "instance-test"
}

variable "public_ip_addres" {
  default = true
}

variable "ami_id" {
  default = "ami-055d15d9cfddf7bd3"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "my_key_name" {
  default = "yusufluai.pem"
}

variable "sg" {
  default = "sg-0650aa412761d8482"
}

variable "my_subnet" {
  default = "subnet-efd75289"
}

variable "instance_name" {
  default = "yusufluai"
}

variable "monitoring" {
    default = true
}