resource "aws_instance" "dotdash" {
  ami           = "ami-0a4a70bd98c6d6441"
  instance_type = "t2.large"
  vpc_security_group_ids = [aws_security_group.secgroup.id]
  subnet_id = aws_subnet.private.id
  key_name = "dotdash2"

  tags = {
    Name = "dotdash"
  }
}
