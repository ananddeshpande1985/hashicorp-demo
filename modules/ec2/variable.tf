variable "service_name" {
  type = string
}

variable "common_tags" {
  type = map(list(string))
}
variable "name_prefix" {
  type = string
}
variable "environment_prefix" {
  type = string
}


data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["137112412989"]

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "image-id"
    values = ["ami-0c42696027a8ede58"]
  }
}
