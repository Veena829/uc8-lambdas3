resource "aws_lambda_function" "image_processor" {
  function_name = var.lambda_function_name
  role          = var.lambda_role_arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.8"
  source_code_hash = filebase64sha256("lambda.zip")
  filename      = "lambda.zip"
  environment {
    variables = {
      SOURCE_BUCKET = var.s3_bucket
      PROCESSED_BUCKET = var.s3_processed_bucket
    }
  }
}

resource "aws_lambda_event_source_mapping" "s3_trigger" {
  event_source_arn  = aws_s3_bucket.source_bucket.arn
  function_name     = aws_lambda_function.image_processor.arn
  starting_position = "LATEST"
}

