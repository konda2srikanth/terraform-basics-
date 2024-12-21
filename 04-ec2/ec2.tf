resource "aws_instance" "main" {
  count = 3
  ami           = "ami-0583d8c7a9c35822c"
  instance_type = "t2.micro"
  vpc_security_group_ids=["sg-057338d08bf482782"]

  tags = {
    Name = "Frontend-${count.index}+1"
  }
}