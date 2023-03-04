output "kms_arn" {
  value = aws_kms_key.mykey.*.arn
}