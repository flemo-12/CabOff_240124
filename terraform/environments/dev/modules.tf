module "weather_retrieve" {
    source = "../../modules/lambdas"
} 

module "weather_trigger" {
    source = "../../modules/cloudwatch"
    weather_retrieve_lambda_arn = module.weather_retrieve.weather_retrieve_lambda_arn
    weather_trigger_function_name = "$(var.weather_trigger_function_name}"
    depends_on = [ module.weather_retrieve ]
}

module "weather_landed" {
    source = "../../modules/s3"
}