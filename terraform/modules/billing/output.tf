output "widgets" {
  value = {
    title = "Billing"
    items = [
      {
        type = "metric"
        properties = {
          metrics = [
            [
              "AWS/Billing",
              "EstimatedCharges",
              "Currency",
              "USD",
              {
                period = 21600
                stat   = "Maximum"
              },
            ],
          ]
          region = "us-east-1"
          title  = "請求額"
          view   = "singleValue"
        }
      },
      {
        title = "推移"
        type  = "metric"
        width = 3
        properties = {
          yAxis = {
            left = {
              label     = "USD"
              showUnits = false
            }
          }
          metrics = [
            [
              "AWS/Billing",
              "EstimatedCharges",
              "Currency",
              "USD",
              {
                period = 21600
                stat   = "Maximum"
              },
            ],
          ]
          region  = "us-east-1"
          stacked = false
          view    = "timeSeries"
        }
      }
    ]
  }
}
