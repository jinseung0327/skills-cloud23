resource "aws_nat_gateway" "skills-natgw-a" {
  allocation_id = aws_eip.skills-nat-eip.id
  subnet_id = aws_subnet.skills-subnet-public-a.id
  
  tags = {
    Name = "skills-natgw-a"
  }
}

resource "aws_nat_gateway" "skills-natgw-c" {
  allocation_id = aws_eip.skills-nat-eip2.id
  subnet_id = aws_subnet.skills-subnet-public-c.id
  
  tags = {
    Name = "skills-natgw-c"
  }
}