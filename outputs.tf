output "lambda_function_name" {
  description = "The name of the Lambda function"
  value       = module.lambda.lambda_function_name
}

output "source_bucket_name" {
  description = "The name of the source S3 bucket"
  value       = module.s3.source_bucket_name
}

output "processed_bucket_name" {
  description = "The name of the processed S3 bucket"
  value       = module.s3.processed_bucket_name
}
