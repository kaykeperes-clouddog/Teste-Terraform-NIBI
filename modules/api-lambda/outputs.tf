output "api_gateway_url" {
  description = "URL do API Gateway"
  value       = aws_api_gateway_stage.api.invoke_url
}

output "lambda_function_name" {
  description = "Nome da função Lambda"
  value       = aws_lambda_function.api_lambda.function_name
}