provider aws {
    region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr[0]
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"

  tags = {
    Name = "subnet1"
  }
}


resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr[1]
  map_public_ip_on_launch = true
  availability_zone = "us-east-2b"

  tags = {
    Name = "subnet2"
  }
}


resource "aws_subnet" "main3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr[2]
   map_public_ip_on_launch = true
  availability_zone = "us-east-2c"

  tags = {
    Name = "subnet3"
  }
}