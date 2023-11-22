resource "aws_internet_gateway" "skills-igw" {
  vpc_id = aws_vpc.skills-vpc.id

  tags = {
    Name = "skills-igw"
  }
}