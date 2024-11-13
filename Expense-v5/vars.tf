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


variable "ami" {
    default = "ami-0fcc78c828f981df2"
}

variable "vpc_security_group_ids" {
    default = ["sg-057338d08bf482782"]
}
