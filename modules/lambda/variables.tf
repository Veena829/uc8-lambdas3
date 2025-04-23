variable "lambda_function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_role_arn" {
  description = "ARN of the Lambda execution role"
  type        = string
}

variable "s3_bucket" {
  description = "Name of the source S3 bucket"
  type        = string
}

variable "s3_processed_bucket" {
  description = "Name of the processed S3 bucket"
  type        = string
}

