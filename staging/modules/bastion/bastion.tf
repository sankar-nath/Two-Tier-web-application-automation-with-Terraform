locals {
  localName = "${var.prefix}-${var.env}"
}

resource "aws_instance" "acs_bastion" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.bastion_subnet_id
  vpc_security_group_ids      = [aws_security_group.bastion_ssh.id]
  associate_public_ip_address = true

 tags = {
      "Name" = "${local.localName}-bastion"
  }

  lifecycle {
    create_before_destroy = true
  }
}