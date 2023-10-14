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

variable "company" {
  type        = string
  description = " this is a tag value for  tag  company"
  default     = "unisys"
}

variable "service_name" {
  type    = string
  default = "nginx"
}

variable "environment_prefix" {
  type = string

}
