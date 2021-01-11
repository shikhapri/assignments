resource "aws_route_table" "public" {
  vpc_id = aws_vpc.dotdash.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dotdash.id
}
  tags = {
    Name = "public"
  }
  }

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.dotdash.id
  tags = {
    Name = "private"
  }
}
