resource "aws_instance" "main" {
  for_each = var.components
  ami           = "ami-0583d8c7a9c35822c"
  instance_type = each.value["instance_type"]
  vpc_security_group_ids=["sg-057338d08bf482782"]

  tags = {
    Name = each.key
  }
}

variable "components" {
  default = {
    frontend = {
      instance_type = "t2.micro"
    }
        backend = {
      instance_type = "t2.micro"
    }
        database = {
      instance_type = "t2.micro"
    }
  
}