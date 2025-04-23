variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}

variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "source_bucket_name" {
  description = "The name of the source S3 bucket"
  type        = string
   default     = "source-bucket"
}

variable "processed_bucket_name" {
  description = "The name of the processed S3 bucket"
  type        = string
default     = "processed-bucket"
}
