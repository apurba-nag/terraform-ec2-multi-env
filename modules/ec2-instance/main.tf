# EC2 instance module

resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }

  root_block_device {
    volume_size = 10
    volume_type = "gp2"
  }
}
