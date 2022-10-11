
resource "aws_subnet" "Public_1" {       #Creating the public_subnet#
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-central-1a"

  tags = {
    Name = "Public_1"
  }
}


resource "aws_subnet" "Private_1" {       #Creating the private_subnet#
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.11.0/24"
  map_public_ip_on_launch = false
  availability_zone = "eu-central-1a"

  tags = {
    Name = "Private_1"
  }
}


resource "aws_subnet" "Public_2" {       #Creating the public_subnet#
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-central-1b"
  tags = {
    Name = "Public_2"
  }
}

resource "aws_subnet" "Private_2" {       #Creating the private_subnet#
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.12.0/24"
  map_public_ip_on_launch = false
  availability_zone = "eu-central-1b"
  tags = {
    Name = "Private_2"
  }
}



resource "aws_subnet" "Public_3" {       #Creating the public_subnet#
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.3.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-central-1c"
  tags = {
    Name = "Public_3"
  }
}





resource "aws_subnet" "Private_3" {       #Creating the public_subnet#
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.13.0/24"
  map_public_ip_on_launch = false
  availability_zone = "eu-central-1c"
  tags = {
    Name = "Private_3"
  }
}