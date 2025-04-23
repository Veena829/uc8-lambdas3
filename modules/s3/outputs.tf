output "source_bucket" {
  value = aws_s3_bucket.source_bucket.bucket
}

output "processed_bucket" {
  value = aws_s3_bucket.processed_bucket.bucket
}

