resource "aws_cloudwatch_dashboard" "default" {
  dashboard_name = local.prefix
  dashboard_body = jsonencode(
    {
      widgets = []
    }
  )
}
