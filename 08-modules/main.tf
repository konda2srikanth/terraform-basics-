module "test" {
    source ="./sample"
    colours = var.colours
}

variable "colours" {
    default = ["green","yellow"]
}

output "dev" {
  value = module.test.msg
  
}