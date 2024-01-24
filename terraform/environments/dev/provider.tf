terraform {
    backend "s3" {
        bucket = "tf-backend-caboff"
        key = "states/caboff"
        region = "us-east-2"
    }
}
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
    default_tags {
        tags = {
            Name = "create-by-terraform-demo-need-tag"
        }
    }
}

