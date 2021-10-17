data "aws_api_gateway_rest_api" "default" {
  name = "${local.project}-prod"
}
