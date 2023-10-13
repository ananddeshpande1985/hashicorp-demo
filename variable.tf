# variable "aws_access_key" {
#   type        = string
#   description = "AWS Access Key"
#   sensitive   = true
# }

# variable "aws_secret_key" {
#   type        = string
#   description = "AWS secret Key"
#   sensitive   = true
# }

variable "aws_region" {
  type        = string
  description = "AWS Access Key"
  default     = "ap-south-1"

}

variable "aws_cidr_block" {
  type        = string
  description = "AWS CIDR Block"
  default     = "10.0.0.0/16"
}


variable "company" {
  type        = string
  description = " this is a tag value for  tag  company"
  default     = "unisys"
}

variable "bucket_name_prefix" {
  type        = string
  description = "prefix for bucket name"
  default     = "mys3bucket -${environment_prefix}"

}

variable "service_name" {
  type    = string
  default = "nginx"
}

variable "environment_prefix" {
  type = string

}