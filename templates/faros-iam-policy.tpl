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
