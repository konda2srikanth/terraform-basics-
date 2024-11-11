resource "aws_instance" "frontend" {
  ami           = "ami-0fcc78c828f981df2"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-057338d08bf482782"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-0fcc78c828f981df2"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-057338d08bf482782"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-0fcc78c828f981df2"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-057338d08bf482782"]
  tags = {
    Name = "backend"
  }
}