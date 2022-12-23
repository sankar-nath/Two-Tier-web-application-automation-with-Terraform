#s3 backend for networking component
terraform {
  backend "s3" {
    bucket = "acsfinalgroup12prod"            // Bucket where to SAVE Terraform State
    key    = "dev-network/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"
  }
}