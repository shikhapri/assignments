resource "aws_security_group" "secgroup" {
   name = "secgroup"
   vpc_id      = aws_vpc.dotdash.id


   dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      from_port = port.value
      to_port   = port.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
}
}
}
