output "api_gateway_url" {
  description = "URL do API Gateway"
  value       = aws_api_gateway_stage.api.invoke_url
}

output "s3_bucket_name" {
  description = "Nome do bucket S3"
  value       = aws_s3_bucket.test_bucket.bucket
}