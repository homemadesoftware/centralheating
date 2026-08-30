# Both functions run the same image (built from
# ../CentralHeatingOnCloud.Lambda/Dockerfile) — HANDLER_TYPE picks which
# routes each one serves. See AWS-BACKEND-SPEC.md §1/§4.
#
# TEMPORARILY COMMENTED OUT (2026-08-30): no image has been pushed to ECR
# yet, so `apply` fails trying to create these — which also blocks
# cd-user.tf's policy (scoped to these functions' ARNs) and all of
# apigateway.tf (which is commented out too, for the same reason) from
# ever being created. Apply with these commented out first so the cd-user
# gets real ECR push permissions, push a real image via CI, then uncomment
# and apply again.
/*
resource "aws_lambda_function" "status_ingest" {
  function_name = "${var.service_name}-status-ingest"
  role          = aws_iam_role.status_ingest.arn
  package_type  = "Image"
  image_uri     = var.image_uri
  timeout       = 10
  memory_size   = 256

  environment {
    variables = {
      HANDLER_TYPE          = "status-ingest"
      DESIRED_STATE_BUCKET  = aws_s3_bucket.desired_state.bucket
      STATUS_KEY_PREFIX     = "status/"
    }
  }

  # CI updates the deployed image out-of-band (see variables.tf, image_uri) —
  # don't let `tofu apply` fight that.
  lifecycle {
    ignore_changes = [image_uri]
  }
}
*/

/*
resource "aws_lambda_function" "mint_desired_state_url" {
  function_name = "${var.service_name}-mint-desired-state-url"
  role          = aws_iam_role.mint_desired_state_url.arn
  package_type  = "Image"
  image_uri     = var.image_uri
  timeout       = 10
  memory_size   = 256

  environment {
    variables = {
      HANDLER_TYPE         = "mint-desired-state-url"
      DESIRED_STATE_BUCKET = aws_s3_bucket.desired_state.bucket
      DESIRED_STATE_KEY    = "current.json"
      # Comfortably under the 7-day SigV4 presign cap and the hub's own
      # once-a-day re-mint cadence (AWS-BACKEND-SPEC.md §2).
      PRESIGNED_URL_TTL_SECONDS = "604800"
    }
  }

  lifecycle {
    ignore_changes = [image_uri]
  }
}
*/
