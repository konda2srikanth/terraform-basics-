resource "null_resource" "name" {
    count = length(var.colours)
}
variable "colours" {}