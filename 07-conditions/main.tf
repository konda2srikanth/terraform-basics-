provider "aws" {}

resource "aws_instance" "main" {
  ami           = "ami-0fcc78c828f981df2"
  instance_type = var.env == "dev" ? "t2.micro" : "t2.medium"

  tags = {
    Name = "my-tf-instance"
  }
}

variable "env" {
  default = "stage"
}