# Test push protection - Adding a new AWS secret
# NEW_AWS_ACCESS_KEY = "AKIAIOSFODNN7TESTKEY"
# NEW_AWS_SECRET = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYTESTKEY"

# AWS Configuration based on vagrant-config.hcl
# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: BUSL-1.1

# Original content from vagrant-config.hcl:
# aws "credentials" {
#   access_key = "AKIAIOSFODNN7EXAMPLE"
#   secret_access_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
# }

# Terraform equivalent - AWS provider configuration with credentials
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAIOSFODNN7EXAMPLE"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
  # Note: Hardcoded credentials are not recommended for production
  # Use environment variables, AWS profiles, or IAM roles instead
}

# Variables for AWS credentials (better practice)
variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  default     = "AKIAIOSFODNN7EXAMPLE"
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
  default     = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
  sensitive   = true
}

# Alternative provider configuration using variables
provider "aws" {
  alias      = "credentials"
  region     = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}