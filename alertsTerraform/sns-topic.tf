# Based on https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic
resource "aws_sns_topic" "error_topic" { # "message "
  name = "errorTest"
}

# Based on https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription
resource "aws_sns_topic_subscription" "error_email_subscription" {
  topic_arn = aws_sns_topic.error_topic_test.arn
  protocol  = "email"
  endpoint  = "belindadunu24@gmail.com"
}
