# S3 resources
resource "aws_s3_bucket" "s3bucket" {
  bucket        = local.s3_bucket_name
  force_destroy = true
  tags          = local.common_tags
}
resource "aws_s3_object" "s3object" {
    for_each = local.s3_content
    bucket = aws_s3_bucket.s3bucket.bucket
    key =  each.key
    source = "${path.root}/${each.value}"
    depends_on = [ aws_s3_bucket.s3bucket ]
}