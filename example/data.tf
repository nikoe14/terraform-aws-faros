data "aws_caller_identity" "current" {}

# IAM Policy 
data "template_file" "faros_custom_policy" {
  template = file("${path.module}/templates/faros-custom-policy.tpl")
}
