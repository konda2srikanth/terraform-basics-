variable "fruits" {}

output "apple" {
  value = " Apple - ${var.fruits["apple"]["colour"]} "
}
output "agreen" {
  value = " green - ${var.fruits["apple"]["colour"]} "
}