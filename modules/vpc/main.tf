# NETWORKING #
resource "aws_vpc" "app" {
  cidr_block           = var.aws_cidr_block
  enable_dns_hostnames = true
  tags                 = var.common_tags

}

resource "aws_internet_gateway" "app" {
  vpc_id = aws_vpc.app.id

}

data "aws_availability_zones" "available_private" {
  state = "available"
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.app.id
  cidr_block        = "10.0.128.0/17"
  tags              = "${var.private_subnet_tags}"
  availability_zone = data.aws_availability_zones.available_private.names[0]
}

data "aws_availability_zones" "available_public" {
  state = "available"
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.app.id
  cidr_block              = "10.0.64.0/18"
  tags                    = "${var.public_subnet_tags}"
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available_public.names[1]
}