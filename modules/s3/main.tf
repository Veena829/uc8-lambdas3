# Define the source bucket
resource "aws_s3_bucket" "source_bucket" {
  bucket = "source-bucket-images1111121"
}

# Define the destination bucket
resource "aws_s3_bucket" "destination_bucket" {
  bucket = "destination-bucket-images11121"
}

# Add Lambda permission to allow S3 to invoke the Lambda function
resource "aws_lambda_permission" "allow_s3" {
  statement_id  = "AllowExecutionFromS3"
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_function_arn
  principal     = "s3.amazonaws.com"
  source_arn    = aws_s3_bucket.source_bucket.arn
}

# Configure S3 bucket notification to invoke Lambda function on object creation
resource "aws_s3_bucket_notification" "source_bucket_notification" {
  bucket = aws_s3_bucket.source_bucket.id

  lambda_function {
    lambda_function_arn = var.lambda_function_arn
    events              = ["s3:ObjectCreated:*"]
  }

  depends_on = [
    aws_lambda_permission.allow_s3
  ]
}

# Output the source bucket name
output "source_bucket_name" {
  value = aws_s3_bucket.source_bucket.bucket
}

# Output the destination bucket name
output "destination_bucket_name" {
  value = aws_s3_bucket.destination_bucket.bucket
}
