resource "aws_kms_key" "mykey" {
  count = length(var.kms)
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = lookup(var.kms[count.index], "deletion_days")
}