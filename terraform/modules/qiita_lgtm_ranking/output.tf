output "widgets" {
  value = [
    {
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
        title   = "デイリーランキング - 実行回数"
        view    = "timeSeries"
      }
      type   = "metric"
      width  = 12
      height = 6
      x      = 0
      y      = 0
    },
    {
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
        title   = "デイリーランキング - エラー回数"
        view    = "timeSeries"
      }
      type   = "metric"
      width  = 12
      height = 6
      x      = 12
      y      = 0
    },

    {
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
        title   = "デイリーランキング ( タグ別 ) - 実行回数"
        view    = "timeSeries"
      }
      type   = "metric"
      width  = 12
      height = 6
      x      = 0
      y      = 6
    },
    {
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
        title   = "デイリーランキング ( タグ別 ) - エラー回数"
        view    = "timeSeries"
      }
      type   = "metric"
      width  = 12
      height = 6
      x      = 12
      y      = 6
    },

    {
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
        title   = "週間ランキング - 実行回数"
        view    = "timeSeries"
      }
      type   = "metric"
      width  = 12
      height = 6
      x      = 0
      y      = 12
    },
    {
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
        title   = "週間ランキング - エラー回数"
        view    = "timeSeries"
      }
      type   = "metric"
      width  = 12
      height = 6
      x      = 12
      y      = 12
    },

    {
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
        title   = "週間ランキング ( タグ別 ) - 実行回数"
        view    = "timeSeries"
      }
      type   = "metric"
      width  = 12
      height = 6
      x      = 0
      y      = 18
    },
    {
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
        title   = "週間ランキング ( タグ別 ) - エラー回数"
        view    = "timeSeries"
      }
      type   = "metric"
      width  = 12
      height = 6
      x      = 12
      y      = 18
    },
  ]
}
