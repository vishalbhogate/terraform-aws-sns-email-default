variable "email_addresses" {
  type        = list(string)
  description = "Email address to send notifications to"
  default     = ["vishal.bhogate@brighte.com.au", "swapnil.jain@brighte.com.au"]
}

variable "protocol" {
  default     = "email"
  description = "SNS Protocol to use. email or email-json"
  type        = string
}

variable "display_name" {
  default     = "ecr-scan-image"
  type        = string
  description = "Name shown in confirmation emails"
}

variable "stack_name" {
  type        = string
  default     = "sns-stack"
  description = "Unique Cloudformation stack name that wraps the SNS topic."
}