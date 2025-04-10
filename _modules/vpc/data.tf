data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "vpc" {
  id = resource.aws_vpc.this.id
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc.id]
  }
  tags = {
    public-aws_subnet = "false"
  }
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.vpc.id]
  }
  tags = {
    public-aws_subnet = "true"
  }
}
