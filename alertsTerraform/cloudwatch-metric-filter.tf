# based on https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_metric_filter

resource "aws_cloudwatch_log_metric_filter" "d10_final" {
  name           = "MyAppErrorCount"
  pattern        = "{ $.['log.level'] = \"ERROR\" || $.['log.level'] = \"error\" }" # ($) refers to the root of the JSON document being matched - allows you to specify paths and conditions relative to the top level of the JSON structure
  log_group_name = aws_cloudwatch_log_group.d10_final.name

  metric_transformation {
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
