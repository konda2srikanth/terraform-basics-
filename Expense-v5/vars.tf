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

variable "pwd" {
  default = "ExpenseApp@1"
}