locals {

  common_tags = {
    company  = "${var.company}-addition"
    mode     = "temp"
    business = "temp"
  }

  name_prefix = "anand"
  # environment_prefix = "dev"

  private_subnet_tags = {
    type = "private"
  }
  public_subnet_tags = {
    type = "public"
  }
  s3_bucket_name = "${var.environment_prefix}-demobucket-${random_integer.s3.result}"
  s3_content = {
    file1 = "file1.txt"
    file2 = "file2.txt"
  }

}


resource "random_integer" "s3" {
  min = 10000
  max = 99999

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
