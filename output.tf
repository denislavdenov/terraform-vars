output "public_ip" {
  value = "${module.servers.public_ip}"
}

output "public_dns" {
  value = "${module.servers.public_dns}"
}
