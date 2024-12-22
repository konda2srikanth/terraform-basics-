variable "components" {
  default = {
    mysql = {
      instance_type = "t2.micro"
    }
    backend = {
      instance_type = "t2.micro" # each.value
    }
    frontend = { # each.key
      instance_type = "t2.micro"
    }
  }
}
variable "ami" {
  default = "ami-0583d8c7a9c35822c"
  
}

variable "vpc_security_group_ids" {
  default = "sg-057338d08bf482782"
  
}