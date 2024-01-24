resource "aws_lambda_function" "weather_retrieve_lambda" {
    function_name = "weather_retrieve_lambda"
    s3_bucket = "cabofftest240124"
    s3_key = "weatherretrievelambda.zip"
    role = aws_iam_role.lambda_role.arn
    handler = "python_app.cabinet_office_lambda.lambda_handler"
    runtime = "python3.12"
}