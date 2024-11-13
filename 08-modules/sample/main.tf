resource "null_resource" "name" {
    count = length(var.colours)
}
variable "colours" {}

output "msg" {
    value = "Welcome To Terraform"
  
}