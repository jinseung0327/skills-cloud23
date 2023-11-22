resource "aws_route_table" "skills-rtb-public" {
  vpc_id = aws_vpc.skills-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.skills-igw.id
  }

  tags = {
    Name = "skills-rtb-public"
  }
}

resource "aws_route_table" "skills-rtb-private-a" {
  vpc_id = aws_vpc.skills-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.skills-natgw-a.id
  }

  tags = {
    Name = "skills-rtb-private-a"
  }
}

resource "aws_route_table" "skills-rtb-private-c" {
  vpc_id = aws_vpc.skills-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.skills-natgw-c.id
  }

  tags = {
    Name = "skills-rtb-private-c"
  }
}

resource "aws_route_table" "skills-rtb-protected" {
  vpc_id = aws_vpc.skills-vpc.id

  tags = {
    Name = "skills-rtb-protected"
  }
}

resource "aws_route_table_association" "skills-rtb-public-association-a" {
  subnet_id      = aws_subnet.skills-subnet-public-a.id
  route_table_id = aws_route_table.skills-rtb-public.id
}

resource "aws_route_table_association" "skills-rtb-public-association-c" {
  subnet_id      = aws_subnet.skills-subnet-public-c.id
  route_table_id = aws_route_table.skills-rtb-public.id
}

resource "aws_route_table_association" "skills-rtb-private-a-association" {
  subnet_id      = aws_subnet.skills-subnet-private-a.id
  route_table_id = aws_route_table.skills-rtb-private-a.id
}

resource "aws_route_table_association" "skills-rtb-private-b-association" {
  subnet_id      = aws_subnet.skills-subnet-private-c.id
  route_table_id = aws_route_table.skills-rtb-private-c.id
}

resource "aws_route_table_association" "skills-rtb-protected-association-a" {
  subnet_id = aws_subnet.skills-subnet-protected-a.id
  route_table_id = aws_route_table.skills-rtb-protected.id
}

resource "aws_route_table_association" "skills-rtb-protected-association-c" {
  subnet_id = aws_subnet.skills-subnet-protected-c.id
  route_table_id = aws_route_table.skills-rtb-protected.id
}


