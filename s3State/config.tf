#S3 bucket configuration

variable "bucketName" {
  type    = list(string)
  default = ["acsFinalGroup12Prod", "acsFinalGroup12Staging", "acsFinalGroup12Dev"]
}

variable "region" {
  type    = string
  default = "us-east-1"
}