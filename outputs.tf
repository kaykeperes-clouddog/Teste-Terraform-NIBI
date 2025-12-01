output "api_gateway_url" {
  description = "URL do API Gateway"
  value       = module.api_lambda.api_gateway_url
}

output "s3_bucket_name" {
  description = "Nome do bucket S3"
  value       = module.api_lambda.s3_bucket_name
}