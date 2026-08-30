variable "aws_region" {
  description = "AWS region for every central-heating-on-cloud resource."
  type        = string
}

variable "service_name" {
  description = "Prefix used to derive every resource name in this project."
  type        = string
  default     = "central-heating-on-cloud"
}

variable "state_encryption_passphrase" {
  description = <<-EOT
    Passphrase for OpenTofu's state encryption (see providers.tf's
    `encryption` block) — what makes it safe to commit terraform.tfstate to
    git. Must be supplied via the TF_VAR_state_encryption_passphrase
    environment variable. Never put the real value in a .tf/.tfvars file or
    commit it anywhere.
  EOT
  type        = string
  sensitive   = true
}

variable "image_uri" {
  description = <<-EOT
    ECR image URI both Lambda functions run. Set here for the first
    `tofu apply` (which needs *some* valid image to create the functions
    with); after that, CI updates the running image out-of-band via
    `aws lambda update-function-code` on every deploy
    (.github/workflows/deploy-central-heating-on-cloud.yml), and
    `lifecycle.ignore_changes` on each aws_lambda_function (lambda.tf) stops
    a later `tofu apply` from reverting it back to this value.
  EOT
  type        = string
}
