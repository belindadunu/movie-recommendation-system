# based on https://registry.terraform.io/modules/clouddrove/cloudwatch-alarms/aws/latest
# and https://github.com/lorenzoaiello/terraform-aws-rds-alarms

# over 70%

resource "aws_cloudwatch_metric_alarm" "cpu_utilization_high" {
  alarm_name          = "highCPUUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/Logs"
  period              = "600"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "Average database CPU utilization over last 10 minutes too high"
  alarm_actions       = [resource.aws_sns_topic.error_topic.arn]

}​
