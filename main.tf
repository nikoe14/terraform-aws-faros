resource "aws_iam_role" "iam-role" {
  name               = var.aws_iam_role_name
  description        = var.aws_iam_role_description
  path               = var.aws_iam_role_path
  assume_role_policy = data.template_file.iam-role-faros.rendered
}

resource "aws_iam_policy" "iam-policy" {
  name        = var.aws_iam_policy_name
  description = var.aws_iam_policy_description
  path        = var.aws_iam_policy_path
  policy      = var.aws_iam_custom_policy != null ? var.aws_iam_custom_policy : data.template_file.iam-policy-faros.rendered
}

resource "aws_iam_role_policy_attachment" "iam-role-attachment" {
  role       = aws_iam_role.iam-role.name
  policy_arn = aws_iam_policy.iam-policy.arn
}
