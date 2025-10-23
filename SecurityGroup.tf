
resource "aws_security_group" "dax_sg" {
  vpc_id = aws_vpc.main_vpc.id


  tags = merge(local.common_tags, {
    Name = "SG"
  })
}

resource "aws_security_group_rule" "allow_http_ingress" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.dax_sg.id
  description       = "Allow inbound HTTP traffic"
}

resource "aws_security_group_rule" "allow_https_ingress" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.dax_sg.id
  description       = "Allow inbound HTTPS traffic"
}