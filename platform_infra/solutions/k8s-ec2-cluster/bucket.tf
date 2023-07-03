module "aws_s3_bucket" {
  source = "../../modules/s3_bucket_k8s"
  environment = var.environment
  tags = local.tags
}
