resource "aws_lambda_permission" "allow_cloudwatch_to_call_cmo_strategy" {
  statement_id = "AllowExecutionFromCloudWatch"
  action = "lambda:InvokeFunction"
  function_name = "weather_retrieve_lambda"
  principal = "events.amazonaws.com"
  source_arn = aws_cloudwatch_event_rule.every_weekday.arn
}