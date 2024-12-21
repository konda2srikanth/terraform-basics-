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
    default = [
        Name = "mike",
        Content = "DevOps",
        slary = 10000
    ]
  
}

output "mmm" {
    value = " ${var.m["Name"]} and ${var.m["Content"]} and ${var.m["salary"]} "
}

variable "city" {}
output "oxxx" {
    value = var.city
}