# faros-terraform module

This module will create a policy and a cross-account role with AWS Faros' account.

By default Faros provide a read only policy to the following AWS services.
 * ACM
 * ApiGateway
 * EC2
 * ECR
 * ECS
 * IAM
 * KMS
 * Lambda
 * Route 53
 * S3

If you want to overwrite the policy you can do it using aws_iam_custom_policy variable.

## Example

### main.tf
```
module "sample_faros" {
  source = "git::https://github.com/nikoe14/terraform-aws-faros.git"

  iam_role_faros_external_id = data.aws_caller_identity.current.account_id

  # optional (using this you will overwrite Faros default policy)
  aws_iam_custom_policy       = data.template_file.faros_custom_policy.rendered
  
  # naming and descriptions
  aws_iam_role_name          = "faros-role"
  aws_iam_policy_name        = "faros-policy"
  aws_iam_role_description   = "Faros role"
  aws_iam_policy_description = "Faros policy"
}

```

### data.tf
```
data "aws_caller_identity" "current" {}

# IAM Policy (optional for overwriting Faros default policy)
data "template_file" "faros_custom_policy" {
  template = file("${path.module}/templates/faros-custom-policy.tpl")
}
```

## Faros default policy

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "DescribeAction",
      "Effect": "Allow",
      "Action": [
        "acm:Get*",
        "acm:Desc*",
        "acm:List*",
        "apigateway:Get*",
        "apigateway:Desc*",
        "apigateway:List*",
        "ec2:Get*",
        "ec2:Desc*",
        "ec2:List*",
        "api.ecr:Get*",
        "api.ecr:Desc*",
        "api.ecr:List*",
        "ecr:Get*",
        "ecr:Desc*",
        "ecr:List*",
        "ecs:Get*",
        "ecs:Desc*",
        "ecs:List*",
        "iam:Get*",
        "iam:Desc*",
        "iam:List*",
        "kms:Get*",
        "kms:Desc*",
        "kms:List*",
        "lambda:Get*",
        "lambda:Desc*",
        "lambda:List*",
        "route53:Get*",
        "route53:Desc*",
        "route53:List*",
        "s3:Get*",
        "s3:Desc*",
        "s3:List*"
      ],
      "Resource": "*"
    }
  ]
}
```
