resource "aws_s3_bucket" "s3_backend_terraform"{
    bucket = var.bucket_name
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_backend_sse" {
    bucket = aws_s3_bucket.s3_backend_terraform.bucket
}

