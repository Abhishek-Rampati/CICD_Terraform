# web server configuration

resource "aws_instance" "webserver" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.sub
  security_groups = [var.sg]

  tags = {
    Name = "myserver"
  }
}