provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "customer_data" {
  bucket = "cloudflare-grc-demo-patient-data"

  # VIOLATION 1: No server-side encryption configured
  # Data stored at rest is unencrypted, violates ISO 27001 A.8.24
  # and UK GDPR Article 32 (Security of Processing)

  # VIOLATION 2: No public access block configured
  # Bucket can be made public accidentally, violates ISO 27001 A.8.12
  # and UK GDPR Article 25 (Data Protection by Design)
}
