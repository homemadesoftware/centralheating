data "aws_iam_policy_document" "lambda_assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

# --- status-ingest ------------------------------------------------------

resource "aws_iam_role" "status_ingest" {
  name               = "${var.service_name}-status-ingest"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role.json
}

resource "aws_iam_role_policy_attachment" "status_ingest_basic_execution" {
  role       = aws_iam_role.status_ingest.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# Scoped to a "status/" prefix, distinct from the desired-state object itself
# — this role has no access to desired-state/current.json.
data "aws_iam_policy_document" "status_ingest_inline" {
  statement {
    sid       = "WriteLastKnownStatus"
    actions   = ["s3:PutObject"]
    resources = ["${aws_s3_bucket.desired_state.arn}/status/*"]
  }
}

resource "aws_iam_role_policy" "status_ingest_inline" {
  name   = "${var.service_name}-status-ingest"
  role   = aws_iam_role.status_ingest.id
  policy = data.aws_iam_policy_document.status_ingest_inline.json
}

# --- mint-desired-state-url ----------------------------------------------

resource "aws_iam_role" "mint_desired_state_url" {
  name               = "${var.service_name}-mint-desired-state-url"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume_role.json
}

resource "aws_iam_role_policy_attachment" "mint_desired_state_url_basic_execution" {
  role       = aws_iam_role.mint_desired_state_url.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

# GetObject here isn't for the mint call itself (presigning is a local,
# offline signature computation) — it's what lets the *presigned URL*
# actually work when the hub later uses it, since S3 checks the signing
# identity's permissions at request time, not at presign time.
data "aws_iam_policy_document" "mint_desired_state_url_inline" {
  statement {
    sid       = "PresignDesiredStateRead"
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.desired_state.arn}/current.json"]
  }
}

resource "aws_iam_role_policy" "mint_desired_state_url_inline" {
  name   = "${var.service_name}-mint-desired-state-url"
  role   = aws_iam_role.mint_desired_state_url.id
  policy = data.aws_iam_policy_document.mint_desired_state_url_inline.json
}
