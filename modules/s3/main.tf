resource "aws_s3_bucket" "demo" {
  count = length(var.s3buckets)
  bucket = lookup(var.s3buckets[count.index], "bucket_name")
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.kmskey
        sse_algorithm     = "aws:kms"
      }
    }
  }

  tags = {
    Name       = lookup(var.s3buckets[count.index], "name")
  }
}