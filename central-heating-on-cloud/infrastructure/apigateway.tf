# Two separate REST APIs (not one API with two routes), each with its own
# API key + usage plan, so the write key genuinely cannot call the read
# endpoint and vice versa — a usage plan scopes to a *stage*, not to
# individual methods within it, so sharing one API would mean either key
# could call either route. See AWS-BACKEND-SPEC.md §4 for why this had to be
# REST API (v1), not the newer/simpler HTTP API (v2): only REST API supports
# native API-key + usage-plan auth.

# --- write: status-ingest -------------------------------------------------

resource "aws_api_gateway_rest_api" "write" {
  name = "${var.service_name}-write"
}

resource "aws_api_gateway_resource" "status" {
  rest_api_id = aws_api_gateway_rest_api.write.id
  parent_id   = aws_api_gateway_rest_api.write.root_resource_id
  path_part   = "status"
}

resource "aws_api_gateway_method" "status_post" {
  rest_api_id      = aws_api_gateway_rest_api.write.id
  resource_id      = aws_api_gateway_resource.status.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true
}

resource "aws_api_gateway_integration" "status_post" {
  rest_api_id             = aws_api_gateway_rest_api.write.id
  resource_id             = aws_api_gateway_resource.status.id
  http_method             = aws_api_gateway_method.status_post.http_method
  integration_http_method = "POST" # Lambda proxy integrations are always invoked via POST
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.status_ingest.invoke_arn
}

resource "aws_lambda_permission" "status_post" {
  statement_id  = "AllowWriteApiInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.status_ingest.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.write.execution_arn}/*/*"
}

resource "aws_api_gateway_deployment" "write" {
  rest_api_id = aws_api_gateway_rest_api.write.id

  triggers = {
    redeployment = sha1(jsonencode([
      aws_api_gateway_resource.status.id,
      aws_api_gateway_method.status_post.id,
      aws_api_gateway_integration.status_post.id,
    ]))
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [aws_api_gateway_integration.status_post]
}

resource "aws_api_gateway_stage" "write" {
  rest_api_id   = aws_api_gateway_rest_api.write.id
  deployment_id = aws_api_gateway_deployment.write.id
  stage_name    = "prod"
}

resource "aws_api_gateway_api_key" "write" {
  name = "${var.service_name}-write"
}

resource "aws_api_gateway_usage_plan" "write" {
  name = "${var.service_name}-write"

  api_stages {
    api_id = aws_api_gateway_rest_api.write.id
    stage  = aws_api_gateway_stage.write.stage_name
  }
}

resource "aws_api_gateway_usage_plan_key" "write" {
  key_id        = aws_api_gateway_api_key.write.id
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.write.id
}

# --- read: mint-desired-state-url ------------------------------------------

resource "aws_api_gateway_rest_api" "read" {
  name = "${var.service_name}-read"
}

resource "aws_api_gateway_resource" "desired_state_url" {
  rest_api_id = aws_api_gateway_rest_api.read.id
  parent_id   = aws_api_gateway_rest_api.read.root_resource_id
  path_part   = "desired-state-url"
}

resource "aws_api_gateway_method" "desired_state_url_get" {
  rest_api_id      = aws_api_gateway_rest_api.read.id
  resource_id      = aws_api_gateway_resource.desired_state_url.id
  http_method      = "GET"
  authorization    = "NONE"
  api_key_required = true
}

resource "aws_api_gateway_integration" "desired_state_url_get" {
  rest_api_id             = aws_api_gateway_rest_api.read.id
  resource_id             = aws_api_gateway_resource.desired_state_url.id
  http_method             = aws_api_gateway_method.desired_state_url_get.http_method
  integration_http_method = "POST" # Lambda proxy integrations are always invoked via POST
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.mint_desired_state_url.invoke_arn
}

resource "aws_lambda_permission" "desired_state_url_get" {
  statement_id  = "AllowReadApiInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.mint_desired_state_url.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.read.execution_arn}/*/*"
}

resource "aws_api_gateway_deployment" "read" {
  rest_api_id = aws_api_gateway_rest_api.read.id

  triggers = {
    redeployment = sha1(jsonencode([
      aws_api_gateway_resource.desired_state_url.id,
      aws_api_gateway_method.desired_state_url_get.id,
      aws_api_gateway_integration.desired_state_url_get.id,
    ]))
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [aws_api_gateway_integration.desired_state_url_get]
}

resource "aws_api_gateway_stage" "read" {
  rest_api_id   = aws_api_gateway_rest_api.read.id
  deployment_id = aws_api_gateway_deployment.read.id
  stage_name    = "prod"
}

resource "aws_api_gateway_api_key" "read" {
  name = "${var.service_name}-read"
}

resource "aws_api_gateway_usage_plan" "read" {
  name = "${var.service_name}-read"

  api_stages {
    api_id = aws_api_gateway_rest_api.read.id
    stage  = aws_api_gateway_stage.read.stage_name
  }
}

resource "aws_api_gateway_usage_plan_key" "read" {
  key_id        = aws_api_gateway_api_key.read.id
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.read.id
}
