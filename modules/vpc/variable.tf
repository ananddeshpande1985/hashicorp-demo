
variable "aws_cidr_block" {
  type        = string
  description = "AWS CIDR Block"
  default     = "10.0.0.0/16"
}

variable "common_tags" {
  type = map(list(string))
}
variable "private_subnet_tags" {
  type = string
}
variable "public_subnet_tags" {
  type = string
}