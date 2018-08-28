output "public_ip" {
  value = "${aws_instance.example.public_ip}"
}

output "public_dns" {
  value = "${aws_instance.example.public_dns}"
}
