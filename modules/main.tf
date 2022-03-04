module "s3_bucket"{
    source = "./bucket"
}

module "lambda_function"{
    source = "./lambda"
    file_hash = module.s3_bucket.file_hash
    bucket_name = module.s3_bucket.lambda_bucket_name
    s3_key_location = module.s3_bucket.s3_key

}

module "api_gateway"{
    source = "./api_gateway"
    invoke_arn = module.lambda_function.invoke_arn
    function_name = module.lambda_function.function_name
}