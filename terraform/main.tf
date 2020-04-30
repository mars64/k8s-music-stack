resource "aws_route53_zone" "k8s_mars64_io" {
  name = "k8s.mars64.io"
}

resource "aws_s3_bucket" "k8s_mars64_io" {
  acl = "private"
  bucket = "k8s.mars64.io"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }
  tags = {
    Name = "k8s.mars64.io"
  }
}
