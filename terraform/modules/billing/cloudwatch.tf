module "alarm_low" {
  source        = "./alarm"
  prefix        = local.prefix
  sns_topic_arn = var.sns_topic_arn
  severity      = "low"
  threshold     = 5
}

module "alarm_high" {
  source        = "./alarm"
  prefix        = local.prefix
  sns_topic_arn = var.sns_topic_arn
  severity      = "high"
  threshold     = 10
}

module "alarm_critical" {
  source        = "./alarm"
  prefix        = local.prefix
  sns_topic_arn = var.sns_topic_arn
  severity      = "critical"
  threshold     = 50
}
