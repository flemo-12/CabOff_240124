resource "aws_s3_bucket" "weather_transformed" {
  bucket = "weather_transformed_bucket"

  tags = {
    Name        = "Weather Transformed Bucket"
  }
}