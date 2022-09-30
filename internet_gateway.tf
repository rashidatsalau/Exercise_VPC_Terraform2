

resource "aws_internet_gateway" "Gate_way" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Gate_way"
  }
}