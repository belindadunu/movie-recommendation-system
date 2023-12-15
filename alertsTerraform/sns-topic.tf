resource "aws_sns_topic" "error_topic" {
  name = "errorTest"
}

resource "aws_sns_topic_subscription" "error_email_subscription" {
  topic_arn = aws_sns_topic.error_topic_test.arn
  protocol  = "email"
  endpoint  = "belindadunu24@gmail.com"
}
