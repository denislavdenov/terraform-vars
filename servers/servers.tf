variable "ami" {}
variable "instance_type" {}
variable "identity" {}
variable "public_key" {}
variable "security_group_id" {}

resource "aws_key_pair" "training" {
  key_name   = "${var.identity}-key"
  public_key = "${var.public_key}"
}

resource "aws_instance" "example" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "${aws_key_pair.training.id}"
  vpc_security_group_ids = ["${var.security_group_id}"]

  connection {
    user        = "ubuntu"
    private_key = "${file("~/.ssh/id_rsa")}"
  }

  provisioner "file" {
    source      = "/Users/denislavdenov/Documents/fromhost"
    destination = "/tmp/fromhost"
  }
}
