# filepath: /workspaces/AssistedProjects/use-case/UC-8-Lambda-S3/modules/lambda/outputs.tf
output "lambda_function_arn" {
  value = aws_lambda_function.image_processor.arn
}
# filepath: /workspaces/AssistedProjects/use-case/UC-8-Lambda-S3/modules/lambda/outputs.tf
output "lambda_permission_id" {
  value = aws_lambda_permission.allow_s3.id
}
