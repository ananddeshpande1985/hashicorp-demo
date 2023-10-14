module "vpc" {
  source              = "./modules/vpc"
  common_tags         = local.common_tags
  private_subnet_tags = local.private_subnet_tags
  public_subnet_tags  = local.private_subnet_tags

}

module "s3" {
  source         = "./modules/s3"
  s3_bucket_name = local.s3_bucket_name
  s3_content     = local.s3_content
  common_tags    = local.common_tags
}

module "ec2" {
  source             = "./modules/ec2"
  common_tags        = local.common_tags
  name_prefix        = local.name_prefix
  environment_prefix = var.environment_prefix
  service_name       = var.service_name
}
module "iam" {
  source         = "./modules/iam"
  s3_bucket_name = local.s3_bucket_name
}