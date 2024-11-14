data "aws_route53_zone" "main"{
    name = "expense.internal"
    private_zone = true
}

data "aws_security_group" "main" {
    filter {
      name = "group-name"
      values = "default"
    }
  id = var.vpc_security_group_ids
}

output "sqid" {
  value = data.aws_security_group.main
}