data "template_file" "cloudformation_sns_stack" {
  template = file("${path.module}/email-sns-stack.json.tpl")

  vars = {
    display_name = var.display_name
    subscriptions = join(
      ",",
      formatlist(
        "{ \"Endpoint\": \"%s\", \"Protocol\": \"%s\"  }",
        var.email_addresses,
        var.protocol,
      ),
    )
  }
}