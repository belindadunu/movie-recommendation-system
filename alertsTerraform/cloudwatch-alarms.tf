# based on https://registry.terraform.io/modules/clouddrove/cloudwatch-alarms/aws/latest

# Alarm for when CPU utilization is over 70% after a period of 10 minutes
resource "aws_cloudwatch_metric_alarm" "cpu_utilization_high" {
  alarm_name          = "highCPUUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/Logs"
  period              = "600"
  statistic           = "Average"
  threshold           = "70"
  alarm_description   = "Average database CPU utilization over last 10 minutes too high"
  alarm_actions       = [resource.aws_sns_topic.error_topic.arn]

}​
