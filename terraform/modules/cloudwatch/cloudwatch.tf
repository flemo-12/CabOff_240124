resource "aws_cloudwatch_event_rule" "every_weekday" {
    name = "every-weekday"
    description = "Sends a every weekday at 5:00am"
    schedule_expression = "cron(0 0 * * 1-5)"      
}

resource "aws_cloudwatch_event_target" "trigger_weather_retrieve_strategy" {
  rule = "${aws_cloudwatch_event_rule.every_weekday.name}"
  target_id = "weather_retrieve_lambda"
  arn = "${var.weather_retrieve_lambda_arn}"
}