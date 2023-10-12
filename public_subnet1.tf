data "aws_availability_zones" "available_public" {
  state = "available"
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.app.id
  cidr_block              = "10.0.64.0/18"
  tags                    = local.public_subnet_tags
  map_public_ip_on_launch = true
  availability_zone       = data.aws_availability_zones.available_public.names[1]
}