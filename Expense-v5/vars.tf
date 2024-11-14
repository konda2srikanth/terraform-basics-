variable "components" {
  default = {
    mysql = {
      instance_type = "t2.small"
    }
    backend = {
      instance_type = "t2.micro" # each.value
    }
    frontend = { # each.key
      instance_type = "t2.small"
    }
  }
}

variable "pwd" {
  default = "ExpenseApp@1"
}