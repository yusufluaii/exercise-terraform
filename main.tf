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