output "lambda_bucket_name" {
  description = "Name of the S3 bucket used to store function code."

  value = aws_s3_bucket.lambda_bucket.id
}

output "s3_key"{
  description = "Key "
  value = aws_s3_object.lambda_hello_world.key
}

output "file_hash" {
  description = "File source code hash base64sha256"
  value = data.archive_file.lambda_hello_world.output_base64sha256
  
}