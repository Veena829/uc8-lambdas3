provider "aws" {
  region = var.aws_region
}

module "iam" {
  source = "./iam"
}

module "lambda" {
  source = "./lambda"
  lambda_function_name = var.lambda_function_name
  lambda_role_arn      = module.iam.lambda_role_arn
  s3_bucket            = module.s3.source_bucket_name
  s3_processed_bucket  = module.s3.processed_bucket_name
}

module "s3" {
  source = "./s3"
  source_bucket_name    = var.source_bucket_name
  processed_bucket_name = var.processed_bucket_name
}
