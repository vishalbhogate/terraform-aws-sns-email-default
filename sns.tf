resource "aws_cloudformation_stack" "sns_topic" {
  name          = var.stack_name
  template_body = data.template_file.cloudformation_sns_stack.rendered

  tags = merge(
    {
      "Name" = var.stack_name
    },
  )
}