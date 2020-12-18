resource "aws_s3_bucket" "dev_bucket" {
  bucket = "bucket-dev"
  tags = {
    Terraform = "true"
    Environment = "prod"
  }
}

resource "aws_s3_bucket" "prod_bucket" {
  bucket = "bucket"
  tags = {
    Terraform = "true"
    Environment = "prod"
  }
}
