variable "s3_bucket_name" {
  type = string
}
variable "common_tags" {
  type = map(list(string))
}
variable "s3_content" {
  type = map()
}