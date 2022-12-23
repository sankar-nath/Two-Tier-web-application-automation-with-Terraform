#local variable name for project and environment
locals {
  localName = "${var.prefix}-${var.env}"
}

#resource block for auto scaling group
resource "aws_autoscaling_group" "application_asg" {
  name                 = "${local.localName}-asg"
  min_size             = var.min_size
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  health_check_type    = "ELB"
  target_group_arns    = [var.target_group_arn]
  launch_configuration = aws_launch_configuration.server_launch_config.name
  vpc_zone_identifier  = var.private_subnet
  tag {
    key                 = "Name"
    value               = "${local.localName}-vm"
    propagate_at_launch = true
  }
}
