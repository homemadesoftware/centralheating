# The hub's write and read paths are two separate REST APIs (not one API
# with two routes), each with its own API key + usage plan, so the write key
# genuinely cannot call the read endpoint and vice versa — a usage plan
# scopes to a *stage*, not to individual methods within it, so sharing one
# API would mean either key could call either route. See
# AWS-BACKEND-SPEC.md §4 for why this had to be REST API (v1), not the
# newer/simpler HTTP API (v2): only REST API supports native API-key +
# usage-plan auth.
#
# The Android app's "app" API (below) deliberately doesn't follow that
# split - see its own comment.

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

resource "aws_api_gateway_api_key" "write" {
  name = "${var.service_name}-write"
}

resource "aws_api_gateway_integration" "status_post" {
  rest_api_id             = aws_api_gateway_rest_api.write.id
  resource_id             = aws_api_gateway_resource.status.id
  http_method             = aws_api_gateway_method.status_post.http_method
  integration_http_method = "POST" # Lambda proxy integrations are always invoked via POST
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.command_centre.invoke_arn
}

resource "aws_lambda_permission" "status_post" {
  statement_id  = "AllowWriteApiInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.command_centre.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.write.execution_arn}/*/*"
}

resource "aws_api_gateway_deployment" "write" {
  rest_api_id = aws_api_gateway_rest_api.write.id

  # Includes .uri, not just .id — an integration's id doesn't change when
  # only its target (uri) does, so a plain id-only hash misses exactly the
  # case that matters most: repointing this API at a different Lambda
  # function. Learned the hard way (2026-08-31): the prod stage kept
  # serving a deployment from before the Lambda consolidation, silently
  # invoking a function ARN that no longer existed.
  triggers = {
    redeployment = sha1(jsonencode([
      aws_api_gateway_resource.status.id,
      aws_api_gateway_method.status_post.id,
      aws_api_gateway_integration.status_post.id,
      aws_api_gateway_integration.status_post.uri,
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

resource "aws_api_gateway_api_key" "read" {
  name = "${var.service_name}-read"
}

resource "aws_api_gateway_integration" "desired_state_url_get" {
  rest_api_id             = aws_api_gateway_rest_api.read.id
  resource_id             = aws_api_gateway_resource.desired_state_url.id
  http_method             = aws_api_gateway_method.desired_state_url_get.http_method
  integration_http_method = "POST" # Lambda proxy integrations are always invoked via POST
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.command_centre.invoke_arn
}

resource "aws_lambda_permission" "desired_state_url_get" {
  statement_id  = "AllowReadApiInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.command_centre.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.read.execution_arn}/*/*"
}

resource "aws_api_gateway_deployment" "read" {
  rest_api_id = aws_api_gateway_rest_api.read.id

  # See the write-side deployment above for why .uri is included, not just .id.
  triggers = {
    redeployment = sha1(jsonencode([
      aws_api_gateway_resource.desired_state_url.id,
      aws_api_gateway_method.desired_state_url_get.id,
      aws_api_gateway_integration.desired_state_url_get.id,
      aws_api_gateway_integration.desired_state_url_get.uri,
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

# --- app: latest-status + set-desired-state (future Android app) ----------
#
# One shared API/key for both routes, unlike the write/read split above -
# there's a single trusted client (the phone, signed into one account) doing
# both reads and writes here, so the extra isolation a second key would buy
# isn't worth a second API Gateway resource for it. Same command_centre
# Lambda image as everything else - see AWS-BACKEND-SPEC.md.

resource "aws_api_gateway_rest_api" "app" {
  name = "${var.service_name}-app"
}

resource "aws_api_gateway_resource" "status_latest" {
  rest_api_id = aws_api_gateway_rest_api.app.id
  parent_id   = aws_api_gateway_rest_api.app.root_resource_id
  path_part   = "status"
}

resource "aws_api_gateway_resource" "status_latest_child" {
  rest_api_id = aws_api_gateway_rest_api.app.id
  parent_id   = aws_api_gateway_resource.status_latest.id
  path_part   = "latest"
}

resource "aws_api_gateway_method" "status_latest_get" {
  rest_api_id      = aws_api_gateway_rest_api.app.id
  resource_id      = aws_api_gateway_resource.status_latest_child.id
  http_method      = "GET"
  authorization    = "NONE"
  api_key_required = true
}

resource "aws_api_gateway_integration" "status_latest_get" {
  rest_api_id             = aws_api_gateway_rest_api.app.id
  resource_id             = aws_api_gateway_resource.status_latest_child.id
  http_method             = aws_api_gateway_method.status_latest_get.http_method
  integration_http_method = "POST" # Lambda proxy integrations are always invoked via POST
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.command_centre.invoke_arn
}

resource "aws_api_gateway_resource" "desired_state" {
  rest_api_id = aws_api_gateway_rest_api.app.id
  parent_id   = aws_api_gateway_rest_api.app.root_resource_id
  path_part   = "desired-state"
}

resource "aws_api_gateway_method" "desired_state_post" {
  rest_api_id      = aws_api_gateway_rest_api.app.id
  resource_id      = aws_api_gateway_resource.desired_state.id
  http_method      = "POST"
  authorization    = "NONE"
  api_key_required = true
}

resource "aws_api_gateway_integration" "desired_state_post" {
  rest_api_id             = aws_api_gateway_rest_api.app.id
  resource_id             = aws_api_gateway_resource.desired_state.id
  http_method             = aws_api_gateway_method.desired_state_post.http_method
  integration_http_method = "POST" # Lambda proxy integrations are always invoked via POST
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.command_centre.invoke_arn
}

resource "aws_api_gateway_api_key" "app" {
  name = "${var.service_name}-app"
}

resource "aws_lambda_permission" "app" {
  statement_id  = "AllowAppApiInvoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.command_centre.function_name
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.app.execution_arn}/*/*"
}

resource "aws_api_gateway_deployment" "app" {
  rest_api_id = aws_api_gateway_rest_api.app.id

  # See the write-side deployment above for why .uri is included, not just .id.
  triggers = {
    redeployment = sha1(jsonencode([
      aws_api_gateway_resource.status_latest_child.id,
      aws_api_gateway_method.status_latest_get.id,
      aws_api_gateway_integration.status_latest_get.id,
      aws_api_gateway_integration.status_latest_get.uri,
      aws_api_gateway_resource.desired_state.id,
      aws_api_gateway_method.desired_state_post.id,
      aws_api_gateway_integration.desired_state_post.id,
      aws_api_gateway_integration.desired_state_post.uri,
      aws_api_gateway_method.web_root_get.id,
      aws_api_gateway_integration.web_root_get.id,
      aws_api_gateway_integration.web_root_get.uri,
      aws_api_gateway_resource.web_proxy.id,
      aws_api_gateway_method.web_proxy_any.id,
      aws_api_gateway_integration.web_proxy_any.id,
      aws_api_gateway_integration.web_proxy_any.uri,
    ]))
  }

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [
    aws_api_gateway_integration.status_latest_get,
    aws_api_gateway_integration.desired_state_post,
    aws_api_gateway_integration.web_root_get,
    aws_api_gateway_integration.web_proxy_any,
  ]
}

resource "aws_api_gateway_stage" "app" {
  rest_api_id   = aws_api_gateway_rest_api.app.id
  deployment_id = aws_api_gateway_deployment.app.id
  stage_name    = "prod"
}

resource "aws_api_gateway_usage_plan" "app" {
  name = "${var.service_name}-app"

  api_stages {
    api_id = aws_api_gateway_rest_api.app.id
    stage  = aws_api_gateway_stage.app.stage_name
  }
}

resource "aws_api_gateway_usage_plan_key" "app" {
  key_id        = aws_api_gateway_api_key.app.id
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.app.id
}

# --- web: static PWA shell, unauthenticated --------------------------------
#
# index.html/manifest.json/sw.js/icons are fetched by the browser directly -
# there's no way to attach an x-api-key header to a page navigation, only to
# the page's own later fetch() calls against status/latest and desired-state
# above - so these need their own unauthenticated routes. They still share
# this REST API and the same command_centre Lambda, which serves them via
# ASP.NET Core static-file middleware against wwwroot (see Program.cs). A
# {proxy+} catch-all plus an explicit root method covers every static path
# without declaring each filename here; API Gateway always resolves an
# explicit literal resource (status/latest, desired-state) ahead of the
# greedy proxy at the same level, so the two coexist without collision.

resource "aws_api_gateway_method" "web_root_get" {
  rest_api_id      = aws_api_gateway_rest_api.app.id
  resource_id      = aws_api_gateway_rest_api.app.root_resource_id
  http_method      = "GET"
  authorization    = "NONE"
  api_key_required = false
}

resource "aws_api_gateway_integration" "web_root_get" {
  rest_api_id             = aws_api_gateway_rest_api.app.id
  resource_id             = aws_api_gateway_rest_api.app.root_resource_id
  http_method             = aws_api_gateway_method.web_root_get.http_method
  integration_http_method = "POST" # Lambda proxy integrations are always invoked via POST
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.command_centre.invoke_arn
}

resource "aws_api_gateway_resource" "web_proxy" {
  rest_api_id = aws_api_gateway_rest_api.app.id
  parent_id   = aws_api_gateway_rest_api.app.root_resource_id
  path_part   = "{proxy+}"
}

resource "aws_api_gateway_method" "web_proxy_any" {
  rest_api_id      = aws_api_gateway_rest_api.app.id
  resource_id      = aws_api_gateway_resource.web_proxy.id
  http_method      = "ANY"
  authorization    = "NONE"
  api_key_required = false
}

resource "aws_api_gateway_integration" "web_proxy_any" {
  rest_api_id             = aws_api_gateway_rest_api.app.id
  resource_id             = aws_api_gateway_resource.web_proxy.id
  http_method             = aws_api_gateway_method.web_proxy_any.http_method
  integration_http_method = "POST" # Lambda proxy integrations are always invoked via POST
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.command_centre.invoke_arn
}
