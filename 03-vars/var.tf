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
        
    ]
}
output "sample_op" {
    value = var.sample[0] and var.sample[1]
  
}