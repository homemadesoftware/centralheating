terraform {
  required_version = ">= 1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Local state, applied by hand from a dev machine — never from CI (see
  # AWS-BACKEND-SPEC.md §1, "GitHub Actions"). This project's own state file,
  # never shared with HC's Reference Project's, even though both live in the
  # same AWS account.
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  region = var.aws_region
}
