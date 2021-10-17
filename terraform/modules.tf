module "qiita_lgtm_ranking" {
  source        = "./modules/qiita_lgtm_ranking"
  sns_topic_arn = aws_sns_topic.default.arn
}

module "billing" {
  source        = "./modules/billing"
  sns_topic_arn = aws_sns_topic.default.arn
}