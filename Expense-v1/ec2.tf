resource "aws_instance" "web" {
  ami           = "ami-0fcc78c828f981df2"
  instance_type = "t2.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0fcc78c828f981df2"
  instance_type = "t2.micro"

  tags = {
    Name = "mysql"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0fcc78c828f981df2"
  instance_type = "t2.micro"

  tags = {
    Name = "backend"
  }
}