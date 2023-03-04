module "S3" {
  source = "./modules/s3"
  s3buckets = var.s3buckets
  kmskey = module.KMS.kms_arn[0]

}

module "KMS" {
  source = "./modules/kms"
  kms = var.kms
}