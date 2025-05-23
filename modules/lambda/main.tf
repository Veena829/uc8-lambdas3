resource "aws_lambda_function" "image_processor" {
  filename         = "./lambda.zip"
  function_name    = "image_processor"
  role             = var.iam_role_arn
  handler          = "lambda_function.lambda_handler"
  runtime          = "python3.8"
  source_code_hash = filebase64sha256("./lambda.zip")

  environment {
    variables = {
      SOURCE_BUCKET      = var.s3_bucket
      DESTINATION_BUCKET = var.destination_bucket
    }
  }
}

  
resource "aws_lambda_permission" "allow_s3" {
  statement_id  = "AllowExecutionFromS3"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.image_processor.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = "arn:aws:s3:::source-bucket-8055"
}


