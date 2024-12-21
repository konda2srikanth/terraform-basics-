variable "a" {
    default = 10
  
}

output "op" {
    value = var.a
}

variable "sample" {
    default = [
        100,
        "terraform"
        true
    ]
}
output "sample_op" {
    value = var.sample
  
}