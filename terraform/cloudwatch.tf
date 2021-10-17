resource "aws_cloudwatch_dashboard" "default" {
  dashboard_name = local.prefix
  dashboard_body = jsonencode(
    {
      widgets = flatten([
        for i, widget in [
          module.billing.widgets,
          module.lgtm_generator.widgets,
          module.qiita_lgtm_ranking.widgets,
        ] :
        concat([
          {
            type = "text"
            properties = {
              markdown = "# ${widget.title}"
            }
            width  = 24
            height = 1
          },
          ], [
          for j, item in widget.items :
          merge(item, {
            width  = 6 * (contains(keys(item), "width") ? item["width"] : 1)
            height = 6,
          })
        ])
      ])
    }
  )
}
