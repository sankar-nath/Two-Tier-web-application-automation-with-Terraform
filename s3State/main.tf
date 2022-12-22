#declaring the global variables 
module "globalVars" {
  source = "../modules/globalVars"
}

resource "aws_s3_bucket" "s3Buckets" {
  for_each      = toset(var.bucketName)
  bucket        = each.key
  force_destroy = true
  tags = module.globalvars.default_tags
}


#Versioning the Buckets
resource "aws_s3_bucket_versioning" "s3BucketVersion" {
  for_each = toset(var.bucketName)
  bucket   = each.key

  versioning_configuration {
    status = "Disabled"
  }
}


#Blocking public access
resource "aws_s3_bucket_public_access_block" "bucketAccessPolicy" {
  for_each = toset(var.bucketName)
  bucket   = each.key

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}