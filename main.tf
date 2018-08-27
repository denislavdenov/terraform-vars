module "servers" {
  source = "servers"

  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
}

output "public_ip" {
  value = "${module.servers.public_ip}"
}
