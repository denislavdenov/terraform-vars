module "servers" {
  source = "servers"

  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
}

output "public_ip" {
  value = "${module.servers.public_ip}"
}

output "public_dns" {
  value = "${module.servers.public_dns}"
}
