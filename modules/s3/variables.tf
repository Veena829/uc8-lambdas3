variable "source_bucket_name" {
  description = "Name of the source S3 bucket"
  type        = string
  default     = "source-bucket"
}

variable "processed_bucket_name" {
  description = "Name of the processed S3 bucket"
  type        = string
  default     = "processed-bucket"
}
