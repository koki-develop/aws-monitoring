resource "aws_cloudwatch_metric_alarm" "error_5xx" {
  alarm_name          = "${local.prefix}-api-5xx"
  actions_enabled     = true
  alarm_actions       = [var.sns_topic_arn]
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 1
  dimensions = {
    "ApiName" = "${local.prefix}-prod"
  }
  evaluation_periods = 1
  metric_name        = "5XXError"
  namespace          = "AWS/ApiGateway"
  period             = 300
  statistic          = "Sum"
  threshold          = 1
  treat_missing_data = "notBreaching"
}
