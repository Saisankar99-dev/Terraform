variable "region" {
  description = "AWS region to deploy into"
  default     = "ap-south-1"
}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket name; a random suffix is appended for uniqueness"
  default     = "my-unique-bucket"
}
