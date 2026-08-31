# Dedicated CI/CD IAM user, scoped to exactly what
# .github/workflows/deploy-central-heating-on-cloud.yml needs — kept
# separate from HC's Reference Project's own CI user even though the AWS
# account is shared (AWS-BACKEND-SPEC.md §5).

resource "aws_iam_user" "cd" {
  name = "${var.service_name}-cd"
}

data "aws_iam_policy_document" "cd" {
  statement {
    sid       = "EcrAuth"
    actions   = ["ecr:GetAuthorizationToken"]
    resources = ["*"] # GetAuthorizationToken doesn't support resource-level scoping
  }

  statement {
    sid = "PushToThisRepoOnly"
    actions = [
      "ecr:BatchCheckLayerAvailability",
      "ecr:BatchGetImage",
      "ecr:InitiateLayerUpload",
      "ecr:UploadLayerPart",
      "ecr:CompleteLayerUpload",
      "ecr:PutImage",
    ]
    resources = [aws_ecr_repository.lambda.arn]
  }

  statement {
    sid = "UpdateThisFunctionOnly"
    actions = [
      "lambda:GetFunction",
      "lambda:UpdateFunctionCode",
    ]
    resources = [aws_lambda_function.command_centre.arn]
  }
}

resource "aws_iam_user_policy" "cd" {
  name   = "${var.service_name}-cd"
  user   = aws_iam_user.cd.name
  policy = data.aws_iam_policy_document.cd.json
}

resource "aws_iam_access_key" "cd" {
  user = aws_iam_user.cd.name
}
