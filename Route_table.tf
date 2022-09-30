

#public route table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Gate_way.id
  }

  tags = {
    Name = "public_route_table"
  }
}

#private route table

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.gw_NAT.id
  }
  
  tags = {
    Name = "private_route_table"
  }
}

#route table association for both public and private

resource "aws_route_table_association" "public_rt_association_a" {              #route table association for all the subnets
  subnet_id      = aws_subnet.Public_1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_rt_association_b" {              #route table association for all the subnets
  subnet_id      = aws_subnet.Public_2.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_rt_association_c" {              #route table association for all the subnets
  subnet_id      = aws_subnet.Public_3.id
  route_table_id = aws_route_table.public_route_table.id
}


resource "aws_route_table_association" "private_rt_association_a" {              #route table association for all the subnets
  subnet_id      = aws_subnet.Private_1.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_rt_association_b" {              #route table association for all the subnets
  subnet_id      = aws_subnet.Private_2.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_rt_association_c" {              #route table association for all the subnets
  subnet_id      = aws_subnet.Private_3.id
  route_table_id = aws_route_table.private_route_table.id
}