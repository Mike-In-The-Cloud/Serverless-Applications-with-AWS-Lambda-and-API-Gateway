output "base_url" {
  description = "Base URL for API Gateway stage."

  value = module.api_gateway.base_url
}

output "function_name" {
  description = "Name of the Lambda function."

  value = module.lambda_function.function_name
}

output "invoke_arn"{
    description = "ARN for invoke lambda function"
    value = module.lambda_function.invoke_arn
}