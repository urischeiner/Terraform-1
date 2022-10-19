variable "access_key" {}
variable "secret_key" {}
variable "type" {
  type        = string
  description = "AWS Region required by Terraform AWS Provider"
  default     = "t2.micro"
  }
