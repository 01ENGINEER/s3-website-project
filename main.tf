provider "aws" {
  region = "us-west-2"  # region
}

# Create an S3 Bucket
resource "aws_s3_bucket" "website_bucket" {
  bucket = "test-one-bucket"  # Bucket name 
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

# Website Files
resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.website_bucket.bucket
  key    = "index.html"
  source = "/Users/01Engineer/iam-project/s3-website-project/index.html "  # path to HTML file
  acl    = "public-read"
}

resource "aws_s3_bucket_object" "error" {
  bucket = aws_s3_bucket.website_bucket.bucket
  key    = "error.html"
  source = "/Users/01Engineer/iam-project/s3-website-project/error.html "  # path to error HTML file
  acl    = "public-read"
}
