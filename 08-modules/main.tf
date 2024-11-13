module "test" {
    source ="./sample"
    colours = var.colours
}

variable "colours" {
    default = ["green","yellow"]
  
}