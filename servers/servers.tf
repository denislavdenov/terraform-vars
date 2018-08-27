variable "ami" {}
variable "instance_type" {}
variable "identity" {}
variable "public_key" {}


resource "aws_key_pair" "training" {
  key_name   = "${var.identity}-key"
  public_key = "${var.public_key}"
}

resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.training.id}"
}

output "public_ip" {
  value = "${aws_instance.example.public_ip}"
}

output "public_dns" {
  value = "${aws_instance.example.public_dns}"
}
