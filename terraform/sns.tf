resource "aws_sns_topic" "default" {
  name = local.project
  tags = {
    Name    = "${local.project}-sns-topic-default"
    Project = local.project
  }
}

resource "aws_sns_topic_subscription" "email" {
  topic_arn = aws_sns_topic.default.arn
  protocol  = "email"
  endpoint  = "kou.pg.0131@gmail.com"
}

resource "aws_sns_topic_subscription" "chatbot" {
  topic_arn = aws_sns_topic.default.arn
  protocol  = "https"
  endpoint  = "https://global.sns-api.chatbot.amazonaws.com"
}
