terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-east-1"
   }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2" 
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "${var.type}"

  tags = {
    Name = "ExampleAppServerInstance-Uri-7"
  }
}
