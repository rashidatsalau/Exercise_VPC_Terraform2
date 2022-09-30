#AWS_EIP
resource "aws_eip" "nat_ip" {
  vpc      = true
}


#public nat gateway

resource "aws_nat_gateway" "gw_NAT" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.Public_1.id

  tags = {
    Name = "gw_NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC. means wait for the internet gateway to be processed before natgateway
  depends_on = [aws_internet_gateway.Gate_way]
}