data "aws_iam_policy_document" "lambda_assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "command_centre" {
  name               = "${var.service_name}-command-centre"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role.json
}

resource "aws_iam_role_policy_attachment" "command_centre_basic_execution" {
  role       = aws_iam_role.command_centre.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# Union of what both routes need — status-ingest (writes to the status
# table) and mint-desired-state-url (reads the desired-state object so its
# presigned URL is actually usable) run in the same function/role now that
# there's no differing memory/timeout need to justify splitting them. See
# AWS-BACKEND-SPEC.md §5.
data "aws_iam_policy_document" "command_centre_inline" {
  statement {
    sid       = "WriteStatusHistory"
    actions   = ["dynamodb:PutItem"]
    resources = [aws_dynamodb_table.status.arn]
  }

  # GetObject here isn't for the mint call itself (presigning is a local,
  # offline signature computation) — it's what lets the *presigned URL*
  # actually work when the hub later uses it, since S3 checks the signing
  # identity's permissions at request time, not at presign time.
  statement {
    sid       = "PresignDesiredStateRead"
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.desired_state.arn}/current.json"]
  }
}

resource "aws_iam_role_policy" "command_centre_inline" {
  name   = "${var.service_name}-command-centre"
  role   = aws_iam_role.command_centre.id
  policy = data.aws_iam_policy_document.command_centre_inline.json
}
