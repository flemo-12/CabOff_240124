variable "aws_access_key" {
    type = string
    description = "Access key for AWS"
}

variable "aws_secret_key" {
    type = string
    description = "Secret key for AWS"
}

variable "aws_region" {
    type = string
    default = "us-east-2"
}

variable "weather_retrieve_lambda_arn" {
    type = string
    description = "Weather Retrieve Lambda arn"
    default = ""
}

variable "lambda_function_name" {
    type = string
    description = "Lambdas function name"
    default = "cabinet_office_lambda"
}
