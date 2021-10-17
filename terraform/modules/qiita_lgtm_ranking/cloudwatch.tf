resource "aws_cloudwatch_metric_alarm" "daily_errors" {
  alarm_name          = "${local.project}-daily-errors"
  actions_enabled     = true
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 1
  dimensions = {
    "FunctionName" = data.aws_lambda_function.update_daily.function_name
    "Resource"     = data.aws_lambda_function.update_daily.function_name
  }
  evaluation_periods = 1
  metric_name        = "Errors"
  namespace          = "AWS/Lambda"
  period             = 3600
  statistic          = "Sum"
  threshold          = 1
  treat_missing_data = "notBreaching"
  ok_actions         = [var.sns_topic_arn]
  alarm_actions      = [var.sns_topic_arn]

  tags = {
    Name    = "${local.project}-alarm-daily-errors"
    Project = local.project
  }
}

resource "aws_cloudwatch_metric_alarm" "daily_by_tag_errors" {
  alarm_name          = "${local.project}-daily-by-tag-errors"
  actions_enabled     = true
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 1
  dimensions = {
    "FunctionName" = data.aws_lambda_function.update_daily_by_tag.function_name
    "Resource"     = data.aws_lambda_function.update_daily_by_tag.function_name
  }
  evaluation_periods = 1
  metric_name        = "Errors"
  namespace          = "AWS/Lambda"
  period             = 3600
  statistic          = "Sum"
  threshold          = 1
  treat_missing_data = "notBreaching"
  ok_actions         = [var.sns_topic_arn]
  alarm_actions      = [var.sns_topic_arn]

  tags = {
    Name    = "${local.project}-alarm-daily-by-tag-errors"
    Project = local.project
  }
}

resource "aws_cloudwatch_metric_alarm" "weekly_errors" {
  alarm_name          = "${local.project}-weekly-errors"
  actions_enabled     = true
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 1
  dimensions = {
    "FunctionName" = data.aws_lambda_function.update_weekly.function_name
    "Resource"     = data.aws_lambda_function.update_weekly.function_name
  }
  evaluation_periods = 1
  metric_name        = "Errors"
  namespace          = "AWS/Lambda"
  period             = 3600
  statistic          = "Sum"
  threshold          = 1
  treat_missing_data = "notBreaching"
  ok_actions         = [var.sns_topic_arn]
  alarm_actions      = [var.sns_topic_arn]

  tags = {
    Name    = "${local.project}-alarm-weekly-errors"
    Project = local.project
  }
}

resource "aws_cloudwatch_metric_alarm" "weekly_by_tag_errors" {
  alarm_name          = "${local.project}-weekly-by-tag-errors"
  actions_enabled     = true
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 1
  dimensions = {
    "FunctionName" = data.aws_lambda_function.update_weekly_by_tag.function_name
    "Resource"     = data.aws_lambda_function.update_weekly_by_tag.function_name
  }
  evaluation_periods = 1
  metric_name        = "Errors"
  namespace          = "AWS/Lambda"
  period             = 3600
  statistic          = "Sum"
  threshold          = 1
  treat_missing_data = "notBreaching"
  ok_actions         = [var.sns_topic_arn]
  alarm_actions      = [var.sns_topic_arn]

  tags = {
    Name    = "${local.project}-alarm-weekly-by-tag-errors"
    Project = local.project
  }
}
