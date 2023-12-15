# based on https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm

resource "aws_cloudwatch_metric_alarm" "d10_final" {
  alarm_name                = "error-in-app"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = 1
  metric_name               = "Error"
  namespace                 = "AWS/Logs"
  period                    = 60
  statistic                 = "Average"
  threshold                 = 1
  alarm_description         = "This metric monitors errors in app"
  insufficient_data_actions = []
}
