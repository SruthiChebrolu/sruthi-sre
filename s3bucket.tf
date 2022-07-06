resource "aws_s3_bucket" "sruthisaichbucket" {
  bucket = "sresndbucket12"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.sruthisaichbucket.id
  acl    = "private"
}