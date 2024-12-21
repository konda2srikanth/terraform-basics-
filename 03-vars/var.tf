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
    value = " ${var.sample[0]} and ${var.sample[1]} "
  
}

variable "m" {
    default = {
        Name = "mike" ,
        Content = "DevOps" ,
        slary = 10000
    }
  
}

output "my" {
    value = var.m
  
}