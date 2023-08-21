resource "aws_s3_bucket" "kyle2405-cloudtrail-bucket" {
  bucket = "kyle2405-cloudtrail-bucket"
}

resource "aws_s3_bucket_policy" "kyle2405-cloudtrail-bucket" {
  bucket = "kyle2405-cloudtrail-bucket"

  policy = jsonencode({
   "Version": "2012-10-17"
   "Statement": [
    {
      "Sid": "AWSCloudTrailAclCheck"
      "Effect": "Allow"
      "Principal": {
       "Service": "cloudtrail.amazonaws.com"
      },
      "Action": "s3:GetBucketAcl"
      "Resource": "arn:aws:s3:::kyle2405-cloudtrail-bucket"
	
    },
    {
      "Sid": "AWSCloudTrailWrite"
      "Effect": "Allow"
      "Principal": {
       "Service": "cloudtrail.amazonaws.com"
      },
      "Action": "s3:PutObject"
      "Resource": "arn:aws:s3:::kyle2405-cloudtrail-bucket/*"
      "Condition": {
       "StringEquals": {
        "s3:x-amz-acl": "bucket-owner-full-control"
       }
      }
    }
   ]
  })
}