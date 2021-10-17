output "widgets" {
  value = {
    title = "Qiita LGTM Ranking"
    items = [
      {
        type = "metric"
        properties = {
          metrics = [
            [
              "AWS/Lambda",
              "Invocations",
              "FunctionName",
              data.aws_lambda_function.update_daily.function_name,
            ],
          ]
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "デイリー - 実行"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          metrics = [
            [
              "AWS/Lambda",
              "Invocations",
              "FunctionName",
              data.aws_lambda_function.update_daily_by_tag.function_name,
            ],
          ]
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "デイリー ( タグ別 ) - 実行"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          metrics = [
            [
              "AWS/Lambda",
              "Invocations",
              "FunctionName",
              data.aws_lambda_function.update_weekly.function_name,
            ],
          ]
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "週間 - 実行"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          metrics = [
            [
              "AWS/Lambda",
              "Invocations",
              "FunctionName",
              data.aws_lambda_function.update_weekly_by_tag.function_name,
            ],
          ]
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "週間 ( タグ別 ) - 実行"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          annotations = {
            alarms = [
              aws_cloudwatch_metric_alarm.daily_errors.arn
            ]
          }
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "デイリー - エラー"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          annotations = {
            alarms = [
              aws_cloudwatch_metric_alarm.daily_by_tag_errors.arn
            ]
          }
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "デイリー ( タグ別 ) - エラー"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          annotations = {
            alarms = [
              aws_cloudwatch_metric_alarm.weekly_errors.arn
            ]
          }
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "週間 - エラー"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          annotations = {
            alarms = [
              aws_cloudwatch_metric_alarm.weekly_by_tag_errors.arn
            ]
          }
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "週間 ( タグ別 ) - エラー"
          view    = "timeSeries"
        }
      },
    ]
  }
}
