variable "ami" {}
variable "instance_type" {}

resource "aws_instance" "example" {
  ami           		= "${var.ami}"
  instance_type 		= "${var.instance_type}"
}

output "public_ip"
{
value = "$(aws_instance.example.public_ip)"

}
