module "app" {
  for_each = var.components

  source                 = "./app"
  ami                    = var.ami
  instance_type          = each.value["instance_type"]
  name                   = each.key
  vpc_security_group_ids = var.vpc_security_group_ids
  # vpc_security_group_ids = [data.aws_security_group.main.id]
  zone_id                = var.zone_id
  # pwd                    = var.pwd
}


