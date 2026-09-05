output "write_api_invoke_url" {
  description = "POST here (with the write API key) to send a status heartbeat."
  value       = "${aws_api_gateway_stage.write.invoke_url}/status"
}

output "read_api_invoke_url" {
  description = "GET here (with the read API key) to mint a presigned desired-state URL."
  value       = "${aws_api_gateway_stage.read.invoke_url}/desired-state-url"
}

output "app_status_latest_url" {
  description = "GET here (with the app API key) for the most recent status, as JSON."
  value       = "${aws_api_gateway_stage.app.invoke_url}/status/latest"
}

output "app_set_desired_state_url" {
  description = "POST here (with the app API key, body = none|on|off) to set the desired state."
  value       = "${aws_api_gateway_stage.app.invoke_url}/desired-state"
}

output "app_web_url" {
  description = "The PWA - no API key needed, it's the unauthenticated static shell."
  value       = aws_api_gateway_stage.app.invoke_url
}

output "write_api_key_id" {
  value = aws_api_gateway_api_key.write.id
}

output "read_api_key_id" {
  value = aws_api_gateway_api_key.read.id
}

output "app_api_key_id" {
  value = aws_api_gateway_api_key.app.id
}

output "write_api_key_value" {
  value     = aws_api_gateway_api_key.write.value
  sensitive = true
}

output "read_api_key_value" {
  value     = aws_api_gateway_api_key.read.value
  sensitive = true
}

output "app_api_key_value" {
  value     = aws_api_gateway_api_key.app.value
  sensitive = true
}

output "status_table_name" {
  value = aws_dynamodb_table.status.name
}

output "desired_state_bucket" {
  value = aws_s3_bucket.desired_state.bucket
}

output "secrets_bucket" {
  value = aws_s3_bucket.secrets.bucket
}

output "ecr_repository_url" {
  value = aws_ecr_repository.lambda.repository_url
}

output "ecr_push_commands" {
  description = "Copy-paste commands for the first manual image push (CI does this automatically afterwards)."
  value       = <<-EOT
    aws ecr get-login-password --region ${var.aws_region} | docker login --username AWS --password-stdin ${aws_ecr_repository.lambda.repository_url}
    docker build -t ${aws_ecr_repository.lambda.repository_url}:latest -f ../CentralHeatingOnCloud.Lambda/Dockerfile ../CentralHeatingOnCloud.Lambda
    docker push ${aws_ecr_repository.lambda.repository_url}:latest
  EOT
}

output "cd_user_access_key_id" {
  description = "Put this in the CENTRAL_HEATING_ON_CLOUD_AWS_ACCESS_KEY_ID GitHub Actions secret."
  value       = aws_iam_access_key.cd.id
}

output "cd_user_access_key_secret" {
  description = "Put this in the CENTRAL_HEATING_ON_CLOUD_AWS_SECRET_ACCESS_KEY GitHub Actions secret."
  value       = aws_iam_access_key.cd.secret
  sensitive   = true
}
