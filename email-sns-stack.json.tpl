{
  "AWSTemplateFormatVersion": "2010-09-09",
  "Resources" : {
    "EmailSNSTopic": {
      "Type" : "AWS::SNS::Topic",
      "Properties" : {
        "TopicName" : "${display_name}",
        "DisplayName" : "${display_name}",
        "Subscription": [
          ${subscriptions}
        ]
      }
    }
  },

  "Outputs" : {
    "ARN" : {
      "Description" : "Email SNS Topic ARN",
      "Value" : { "Ref" : "EmailSNSTopic" }
    }
  }
}