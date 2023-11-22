resource "aws_eip" "skills-nat-eip" {
  domain = "vpc"
  tags = {
    Name = "-"
  }
}

resource "aws_eip" "skills-nat-eip2" {
  domain = "vpc"
  tags = {
    Name = "-"
  }
}
