# Output the source bucket name
output "source_bucket_name" {
  value = aws_s3_bucket.source_bucket.bucket
}

# Output the destination bucket name
output "destination_bucket_name" {
  value = aws_s3_bucket.destination_bucket.bucket
}
