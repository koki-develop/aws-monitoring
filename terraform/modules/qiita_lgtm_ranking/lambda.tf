data "aws_lambda_function" "update_daily" {
  function_name = "${local.project}-prod-updateDaily"
}

data "aws_lambda_function" "update_daily_by_tag" {
  function_name = "${local.project}-prod-updateDailyByTag"
}

data "aws_lambda_function" "update_weekly" {
  function_name = "${local.project}-prod-updateWeekly"
}

data "aws_lambda_function" "update_weekly_by_tag" {
  function_name = "${local.project}-prod-updateWeeklyByTag"
}
