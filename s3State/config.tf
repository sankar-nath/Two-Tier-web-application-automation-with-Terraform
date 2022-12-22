#S3 bucket configuration

variable "bucketName" {
  type    = list(string)
  default = ["acsfinalgroup12prod", "acsfinalgroup12staging", "acsfinalgroup12dev"]
}

variable "region" {
  type    = string
  default = "us-east-1"
}