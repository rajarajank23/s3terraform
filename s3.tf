module "role-s3-full-access" {
  source  = "mineiros-io/iam-policy/aws"
  version = "~> 0.5.0"

  name = "S3FullAccess"

  policy_statements = [
    {
      sid = "FullS3Access"

      effect    = "Allow"
      actions   = ["s3:*"]
      resources = ["*"]
    }
  ]
}