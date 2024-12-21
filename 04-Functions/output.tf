variable "fruits" {}

output "apple" {
  value = " Apple - ${var.fruits["apple"][colour]} "
}