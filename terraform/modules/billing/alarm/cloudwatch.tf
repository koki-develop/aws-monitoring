resource "aws_cloudwatch_metric_alarm" "default" {
  alarm_name      = "${var.project}-${var.severity}"
  actions_enabled = true

  alarm_actions       = [var.sns_topic_arn]
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  dimensions          = { "Currency" = "USD" }
  evaluation_periods  = 1
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  period              = 21600
  statistic           = "Maximum"
  threshold           = var.threshold
  treat_missing_data  = "notBreaching"

  tags = {
    Name    = "${var.project}-alarm-${var.severity}"
    Project = var.project
  }
}
