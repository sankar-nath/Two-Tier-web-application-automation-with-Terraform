#local variable name for project and environment
locals {
  localName = "${var.prefix}-${var.env}"
}

#resource block to define load balancer
resource "aws_lb" "application_load_balancer" {
  name               = "${local.localName}-LB"
  security_groups    = [aws_security_group.scg_lb.id]
  subnets            = var.public_subnet
  load_balancer_type = "application"
  ip_address_type    = "ipv4"
  internal           = false
  tags = {
    Name = "${local.localName}-LB"
    env  = var.env
  }
}

#listener for load balancer configured for http
resource "aws_lb_listener" "application_load_balancer_listener" {
  load_balancer_arn = aws_lb.application_load_balancer.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.application_target_group.arn
  }
  tags = {
    Name = "${local.localName}-LB-listener"
    env  = var.env
  }
}



