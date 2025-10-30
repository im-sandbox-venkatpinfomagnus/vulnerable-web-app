# Terraform equivalent - AWS provider configuration with credentials
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAIOSFODNN7EETRERE"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEWETTETETEk"
  # Note: Hardcoded credentials are not recommended for production
  # Use environment variables, AWS profiles, or IAM roles instead
}