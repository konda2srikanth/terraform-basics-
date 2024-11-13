resource "aws_instance" "main" {
  for_each =var.components
  ami           = "ami-0fcc78c828f981df2"
  instance_type = each.value["instance_type"]
  vpc_security_group_ids=["sg-057338d08bf482782"]

  tags = {
    Name = each.key
    bu = each.value["bu"]
  }
}

variable "components" {
  default = {
    frontend = { 
      instance_type = "t2.micro"
      bu = "development"
    }
    backend = {
      instance_type = "t2.micro"
      bu = "development"
    }
    mysql = {
      instance_type = "t2.micro"
      bu = "dba"
    }
  }
}


