terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


provider "aws" {
  region  = "us-west-2"
}

// scott
# resource "aws_vpc" "main" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "main"
#   }
# }

# resource "aws_subnet" "main" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "main"
#   }
# }

resource "aws_instance" "CLI-local" {
  instance_type = "t2.micro"
  ami           = "ami-830c94e3"
#   subnet_id = aws_subnet.main.id
  tags = {
    name = "CLI-local"
    extra= var.extra
  }
}

variable "extra" {
    type = string
    default = "I am from the local"
}
