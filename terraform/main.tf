resource "aws_instance" "server" {
  count         = var.server_count
  ami           = "ami-015aa2dc85c210de9"
  instance_type = var.instance_type
  key_name      = var.ssh_key_name

  vpc_security_group_ids = [aws_security_group.firewall.id]

  tags = {
    Name = "server-${count.index + 1}"
  }
}