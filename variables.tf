variable "region" {
  description = "The AWS region to deploy resources"
  default     = "us-west-1"
}

variable "s3_bucket" {
  description = "The name of the source S3 bucket"
  type        = string
  default     = "source-bucket-8055"
}

variable "destination_bucket" {
  description = "The name of the destination S3 bucket"
  type        = string
  default     = "destination-bucket-8055"
}
