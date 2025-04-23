resource "aws_s3_bucket" "source_bucket" {
  bucket = var.source_bucket_name

  tags = {
    Name = var.source_bucket_name
  }
}

resource "aws_s3_bucket_versioning" "source_versioning" {
  bucket = aws_s3_bucket.source_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "processed_bucket" {
  bucket = var.processed_bucket_name

  tags = {
    Name = var.processed_bucket_name
  }
}

resource "aws_s3_bucket_versioning" "processed_versioning" {
  bucket = aws_s3_bucket.processed_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
