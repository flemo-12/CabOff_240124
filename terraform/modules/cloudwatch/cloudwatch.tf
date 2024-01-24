resource "aws_cloudwatch_event_rule" "every_week" {
    name = "every-week"
    description = "Sends a trigger every week"
    schedule_expression = "rate(7 days)"      
}

resource "aws_cloudwatch_event_target" "trigger_caboff_strategy" {
  rule = "${aws_cloudwatch_event_rule.every_week.name}"
  target_id = "cabinet_office_lambda"
  arn = "${var.weather_retrieval_lambda_arn}"
}