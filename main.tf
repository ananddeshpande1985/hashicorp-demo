# NETWORKING #
resource "aws_vpc" "app" {
  cidr_block           = var.aws_cidr_block
  enable_dns_hostnames = true
  tags                 = local.common_tags

}

resource "aws_internet_gateway" "app" {
  vpc_id = aws_vpc.app.id

}

output "ami_name" {
  value = data.aws_ami.ubuntu.name
}
