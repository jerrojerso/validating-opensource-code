#Create Routing Table

resource "aws_default_route_table" "pipeline_routetable" {
  default_route_table_id = aws_vpc.pipeline_VPC.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.pipeline_IGW.id
  }

  tags = {
    Name = "Pipeline-RT"
  }
}
