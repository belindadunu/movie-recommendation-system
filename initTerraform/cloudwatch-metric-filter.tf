# based on https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_metric_filter

resource "aws_cloudwatch_log_metric_filter" "d10_final" {
  name           = "MyAppErrorCount"
  pattern        = ""
  log_group_name = aws_cloudwatch_log_group.d10_final.name

  metric_transformation {
    name      = "EventCount"
    namespace = "AWS/Logs"
    value     = "1"
  }
}


# based on https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group

resource "aws_cloudwatch_log_group" "d10_final" {
  name = "d10-final"

  tags = {
    Environment = "production"
    Application = "final"
  }
}