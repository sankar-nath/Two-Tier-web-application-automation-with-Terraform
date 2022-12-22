# when and how to increase number of ec2 instances
resource "aws_autoscaling_policy" "asg_scaleup_policy" {
  name                   = "${local.localName}-asg-scalup-policy"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = aws_autoscaling_group.application_asg.name
}

