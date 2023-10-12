

data "aws_availability_zones" "available_private" {
  state = "available"
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.app.id
  cidr_block        = "10.0.128.0/17"
  tags              = local.private_subnet_tags
  availability_zone = data.aws_availability_zones.available_private.names[0]
}