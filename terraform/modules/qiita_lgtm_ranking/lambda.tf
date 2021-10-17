data "aws_lambda_function" "update_daily" {
  function_name = "${local.prefix}-prod-updateDaily"
}

data "aws_lambda_function" "update_daily_by_tag" {
  function_name = "${local.prefix}-prod-updateDailyByTag"
}

data "aws_lambda_function" "update_weekly" {
  function_name = "${local.prefix}-prod-updateWeekly"
}

data "aws_lambda_function" "update_weekly_by_tag" {
  function_name = "${local.prefix}-prod-updateWeeklyByTag"
}
