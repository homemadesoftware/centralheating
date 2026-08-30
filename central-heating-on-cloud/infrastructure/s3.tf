# Bucket names must be globally unique across all of AWS — adjust
# service_name (or add a suffix here) if these are already taken.

resource "aws_s3_bucket" "desired_state" {
  bucket = "${var.service_name}-desired-state"
}

resource "aws_s3_bucket_versioning" "desired_state" {
  bucket = aws_s3_bucket.desired_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "desired_state" {
  bucket = aws_s3_bucket.desired_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# For the status-ingest Lambda's secret config (API keys are managed by API
# Gateway itself, not this bucket — see apigateway.tf — but this mirrors HC's
# Reference Project's secrets-in-S3 pattern for anything else that comes up).
resource "aws_s3_bucket" "secrets" {
  bucket = "${var.service_name}-secrets"
}

resource "aws_s3_bucket_public_access_block" "secrets" {
  bucket = aws_s3_bucket.secrets.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
