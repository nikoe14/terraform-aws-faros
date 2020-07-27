# IAM Role
data "template_file" "iam-role-faros" {
  template = file("${path.module}/templates/faros-iam-role.tpl")

  vars = {
    faros_account_id  = "878501046559"
    faros_external_id = var.iam_role_faros_external_id
  }
}

# IAM Policy
data "template_file" "iam-policy-faros" {
  template = file("${path.module}/templates/faros-iam-policy.tpl")
}
