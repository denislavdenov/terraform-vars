module "servers" {
  source = "servers"

  ami               = "${var.ami}"
  instance_type     = "${var.instance_type}"
  public_key        = "${var.public_key}"
  identity          = "${var.identity}-key"
  security_group_id = "${var.security_group_id}"
}

output "public_ip" {
  value = "${module.servers.public_ip}"
}

output "public_dns" {
  value = "${module.servers.public_dns}"
}
