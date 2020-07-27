output "faros_role_name" {
  description = "Faros role name"
  value       = aws_iam_role.iam-role.name
}

output "faros_role_arn" {
  description = "Faros role arn"
  value       = aws_iam_role.iam-role.arn
}

output "faros_policy_name" {
  description = "Faros policy name"
  value       = aws_iam_policy.iam-policy.name
}

output "faros_policy_arn" {
  description = "Faros policy arn"
  value       = aws_iam_policy.iam-policy.arn
}
