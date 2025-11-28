output "api_gateway_url" {
  description = "URL do API Gateway"
  value       = module.api_lambda.api_gateway_url
}

output "lambda_function_name" {
  description = "Nome da função Lambda"
  value       = module.api_lambda.lambda_function_name
}