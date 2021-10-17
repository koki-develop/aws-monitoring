output "widgets" {
  value = {
    title = "LGTM Generator"
    items = [
      {
        type = "metric"
        properties = {
          metrics = [
            [
              "AWS/ApiGateway",
              "Count",
              "ApiName",
              data.aws_api_gateway_rest_api.default.name,
            ],
          ]
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "リクエスト数"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          metrics = [
            [
              "AWS/ApiGateway",
              "Latency",
              "ApiName",
              data.aws_api_gateway_rest_api.default.name,
              {
                color = "#17becf"
              },
            ],
          ]
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Average"
          title   = "レイテンシー"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          metrics = [
            [
              "AWS/ApiGateway",
              "4XXError",
              "ApiName",
              data.aws_api_gateway_rest_api.default.name,
              "Stage",
              "prod",
              {
                color = "#ff7f0e"
              },
            ],
          ]
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "4XX エラー"
          view    = "timeSeries"
        }
      },
      {
        type = "metric"
        properties = {
          annotations = {
            alarms = [
              aws_cloudwatch_metric_alarm.error_5xx.arn
            ]
          }
          period  = 300
          region  = "us-east-1"
          stacked = false
          stat    = "Sum"
          title   = "5XX エラー"
          view    = "timeSeries"
        }
      },
    ]
  }
}
