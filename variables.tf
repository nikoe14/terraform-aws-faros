variable "iam_role_faros_external_id" {
  description = "Faros external AWS account ID"
  type        = string
}

variable "aws_iam_role_name" {
  description = "IAM role name"
  type        = string
  default     = "Faros-AWS-Integration-Role"
}

variable "aws_iam_role_description" {
  description = "IAM role description"
  type        = string
  default     = "Faros AWS Integration Cross-Account Role"
}

variable "aws_iam_role_path" {
  description = "Path of the role"
  type        = string
  default     = "/"
}

variable "aws_iam_policy_name" {
  description = "IAM policy name"
  type        = string
  default     = "Faros-AWS-Integration-Policy"
}

variable "aws_iam_policy_description" {
  description = "IAM policy description"
  type        = string
  default     = "Faros AWS Integration Policy"
}

variable "aws_iam_policy_path" {
  description = "Path of the policy"
  type        = string
  default     = "/"
}

variable "aws_iam_custom_policy" {
  description = "Policy document"
  type        = string
  default     = null
}
