resource "aws_instance" "web" {
  ami           = "ami-0583d8c7a9c35822c"
  instance_type = "t2.micro"

  tags = {
    Name = "my-tf-instance"
  }
}