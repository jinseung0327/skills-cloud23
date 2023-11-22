resource "aws_subnet" "skills-subnet-public-a" {
  vpc_id = aws_vpc.skills-vpc.id
  cidr_block = "10.100.1.0/24"
  availability_zone = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "skills-subnet-public-a"
  }
}

resource "aws_subnet" "skills-subnet-public-c" {
  vpc_id = aws_vpc.skills-vpc.id
  cidr_block = "10.100.2.0/24"
  availability_zone = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "skills-subnet-public-c"
  }
}

resource "aws_subnet" "skills-subnet-private-a" {
  vpc_id = aws_vpc.skills-vpc.id
  cidr_block = "10.100.3.0/24"
  availability_zone = "ap-northeast-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "skills-subnet-private-a"
  }
}

resource "aws_subnet" "skills-subnet-private-c" {
  vpc_id = aws_vpc.skills-vpc.id
  cidr_block = "10.100.4.0/24"
  availability_zone = "ap-northeast-2c"
  map_public_ip_on_launch = true

  tags = {
    Name = "skills-subnet-private-c"
  }
}

resource "aws_subnet" "skills-subnet-protected-a" {
  vpc_id = aws_vpc.skills-vpc.id
  cidr_block = "10.100.5.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "skills-subnet-protected-a"
  }
}

resource "aws_subnet" "skills-subnet-protected-c" {
  vpc_id = aws_vpc.skills-vpc.id
  cidr_block = "10.100.6.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "skills-subnet-protected-c"
  }
}
