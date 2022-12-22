#s3 backend for networking component
terraform {
  backend "s3" {
    bucket = "acsFinalGroup12Dev"          // Bucket where to SAVE Terraform State
    key    = "dev-network/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"                     // Region where bucket is created
  }
}