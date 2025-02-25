terraform {
  backend "s3" {
    bucket         = "my-unique-bucket-2a4334ed"  # Must match the bucket created above
    key            = "prod/terraform.tfstate"              # Unique key for this environment
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"               # Must match the lock table created above
    encrypt        = true
  }
}
