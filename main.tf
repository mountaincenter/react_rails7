provider "aws" {
  region = "ap-northeast-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "app_name" {
  default = "docker-terraform"
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.app_name
  }
}