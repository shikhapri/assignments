resource "aws_internet_gateway" "dotdash" {
   vpc_id = aws_vpc.dotdash.id

}
