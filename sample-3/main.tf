provider "aws" {
  region  = "us-west-2"
}

module "UriModule1" {
  source = "api.env0.com/bd63324c-0beb-44d4-85ec-a967ecc4e21b/UriModule1/uricompany"
  version = "1.0.0"
  bucket_name = var.mybucket

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
