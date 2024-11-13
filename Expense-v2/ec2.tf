resource "aws_instance" "main" {
  count         = length(var.components)
  ami           = "ami-0fcc78c828f981df2"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-057338d08bf482782"]

  tags = {
    Name = "var.components[count.index]"
  }
}

variable "components" {
  default = ["frontend","backend","mysql"]
}

