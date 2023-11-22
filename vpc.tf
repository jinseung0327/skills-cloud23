resource "aws_vpc" "skills-vpc" {
  cidr_block = "10.100.0.0/16"

  tags = {
    Name = "skills-vpc"
  }
}