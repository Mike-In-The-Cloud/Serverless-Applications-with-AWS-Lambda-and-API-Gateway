# Input variable definitions

variable "aws_region" {
  description = "AWS region for all resources."

  type    = string
  default = "us-east-1"
}


variable "bucket_name"{
  description = "S3 bucket name" 
  type = string
}

variable "s3_key_location"{
  description = "S3 Key"
  type = string
}

variable "file_hash"{
  description = "File hash"
  type = string
}

variable "invoke_arn"{
  description = "ARN for lambda invoke"
  type = string
}

variable "function_name" {
  description = "Lambda function name"
  type = string
}