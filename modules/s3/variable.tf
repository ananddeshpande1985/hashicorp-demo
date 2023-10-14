variable "s3_bucket_name" {
  type = string
}
variable "common_tags" {
  type = map(string)
}
variable "s3_content" {
  type = map(string)
}