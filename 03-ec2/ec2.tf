resource "aws_instance" "frontend" {
  ami           = "ami-0583d8c7a9c35822c"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-057338d08bf482782"]

  tags = {
    Name = "Frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-0583d8c7a9c35822c"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-057338d08bf482782"]
  tags = {
    Name = "Backend"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-0583d8c7a9c35822c"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-057338d08bf482782"]
  tags = {
    Name = "Database"
  }
}