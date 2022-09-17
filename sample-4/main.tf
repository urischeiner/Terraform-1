terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
 backend "local" {
    path = "relative/path/to/terraform.tfstate"
 }
 
// backend "s3" {
//    bucket     = "tf-uri-bucket"
//    key        = "us-west-2/drone.tfstate"
//    region     = "us-west-2"
//  }  
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2" 
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "${var.type}"

  tags = {
    Name = "ExampleAppServerInstance-Uri-10"
  }
}
