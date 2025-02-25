provider "aws" {
  region = var.region
}

# Generate a random suffix to ensure bucket name uniqueness
resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# Create the S3 bucket (private by default)
resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_prefix}-${random_id.bucket_suffix.hex}"
  versioning {
    enabled = true
  }
}

# (Optional) Enforce bucket ownership controls (disables ACLs)
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.example.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}
