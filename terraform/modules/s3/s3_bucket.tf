resource "aws_s3_bucket" "weather_transformed" {
  bucket = "weathertransformedbucket240124"

  tags = {
    Name        = "Weather Transformed Bucket"
  }
}