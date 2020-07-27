module "sample_faros" {
  source = "git::https://github.com/faros-ai/terraform-aws-faros.git"

  iam_role_faros_external_id = data.aws_caller_identity.current.account_id

# Optional (using this you will overwrite Faros default policy)

  # aws_iam_custom_policy       = data.template_file.faros_custom_policy.rendered
  
# Naming and descriptions

  #  aws_iam_role_name          = "Faros-AWS-Integration-Role"
  #  aws_iam_policy_name        = "Faros-AWS-Integration-Policy"
  #  aws_iam_role_description   = "Faros AWS Integration Cross-Account Role"
  #  aws_iam_policy_description = "Faros AWS Integration Policy"
}
