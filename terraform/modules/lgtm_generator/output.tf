output "widgets" {
  value = [
    {
      height = 6
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
      type  = "metric"
      width = 12
      x     = 0
      y     = 18
    },
    {
      height = 6
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
      type  = "metric"
      width = 12
      x     = 0
      y     = 24
    },
    {
      height = 6
      properties = {
        metrics = [
          [
            "AWS/ApiGateway",
            "5XXError",
            "ApiName",
            data.aws_api_gateway_rest_api.default.name,
            {
              color = "#d62728"
            },
          ],
        ]
        period  = 300
        region  = "us-east-1"
        stacked = false
        stat    = "Sum"
        title   = "5XX エラー"
        view    = "timeSeries"
      }
      type  = "metric"
      width = 12
      x     = 12
      y     = 24
    },
    {
      height = 6
      properties = {
        metrics = [
          [
            "AWS/ApiGateway",
            "レイテンシー",
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
        view    = "timeSeries"
      }
      type  = "metric"
      width = 12
      x     = 12
      y     = 18
    },
  ]
}
