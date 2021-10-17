module "billing" {
  source        = "./modules/billing"
  sns_topic_arn = aws_sns_topic.default.arn
}

module "qiita_lgtm_ranking" {
  source        = "./modules/qiita_lgtm_ranking"
  sns_topic_arn = aws_sns_topic.default.arn
}

module "lgtm_generator" {
  source        = "./modules/lgtm_generator"
  sns_topic_arn = aws_sns_topic.default.arn
}
