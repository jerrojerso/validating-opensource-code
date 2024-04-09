#Create Subnet

resource "aws_subnet" "pipeline_subnet" {
  vpc_id = aws_vpc.pipeline_VPC.id
  cidr_block = "10.10.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Pipeline-Subnet"
  }
}
