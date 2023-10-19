locals {
  lambdas = {
    "HelloWorld" = {
      function_name  = "AWSLambdaHelloWorldTest"
      description    = "Test lambda function"
      handler        = "hello_world.lambda_handler"
      role           = data.aws_iam_role.lab_role.arn
      runtime        = "python3.9"
      create_package = false
      filename       = "./resources/lambda-test/hello_world.zip"
      http_method    = "GET"
      endpoint_path  = "hello"
      source_arn     = "arn:aws:execute-api:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}"
    }
  }
}