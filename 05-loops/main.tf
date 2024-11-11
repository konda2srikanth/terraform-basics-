resource "null_resource" "main" {
    count = 3
}

resource "null_resource" "fruits" {
    count = length(var.fruits)
}

variable "fruits" {
    default = [ "peer" , "grapes"]
}