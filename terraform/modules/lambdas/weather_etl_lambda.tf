resource "aws_lambda_function" "weather_etl_lambda" {
    function_name = "weather_etl_lambda"
    s3_bucket = "cabofftest240124"
    s3_key = "weatheretllambda.zip"
    role = aws_iam_role.lambda_role.arn
    handler = "python_app.cabinet_office_lambda.lambda_handler"
    runtime = "python3.12"
}