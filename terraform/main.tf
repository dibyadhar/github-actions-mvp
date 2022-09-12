resource "aws_s3_bucket" "b" {
  bucket = "dataplatform-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}