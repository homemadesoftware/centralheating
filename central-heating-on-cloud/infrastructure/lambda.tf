# One function running the console-app image — both the status-ingest and
# mint-desired-state-url routes are mapped in the same process (see
# Program.cs/Routes.cs, which map both unconditionally — no HANDLER_TYPE
# switch needed). Split back into separate functions later only if they
# ever need different memory/timeout, or a tighter IAM boundary than
# sharing one role gives them. See AWS-BACKEND-SPEC.md §1/§5.

resource "aws_lambda_function" "command_centre" {
  function_name = "${var.service_name}-command-centre"
  role          = aws_iam_role.command_centre.arn
  package_type  = "Image"
  image_uri     = var.image_uri
  timeout       = 10
  memory_size   = 256

  environment {
    variables = {
      DESIRED_STATE_BUCKET = aws_s3_bucket.desired_state.bucket
      DESIRED_STATE_KEY    = "current.json"
      # Comfortably under the 7-day SigV4 presign cap and the hub's own
      # once-a-day re-mint cadence (AWS-BACKEND-SPEC.md §2).
      PRESIGNED_URL_TTL_SECONDS = "604800"
      STATUS_TABLE_NAME         = aws_dynamodb_table.status.name
    }
  }

  # CI updates the deployed image out-of-band (see variables.tf, image_uri) —
  # don't let `tofu apply` fight that.
  lifecycle {
    ignore_changes = [image_uri]
  }
}
