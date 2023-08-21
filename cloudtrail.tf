resource "aws_cloudtrail" "my-cloudtrail" {
  name                       = "my-cloudtrail"
  s3_bucket_name             = "kyle2405-cloudtrail-bucket"
  enable_log_file_validation = true

}