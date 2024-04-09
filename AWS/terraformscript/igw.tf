#Create Internet Gateway

resource "aws_internet_gateway" "pipeline_IGW" {
    vpc_id = aws_vpc.pipeline_VPC.id

    tags = {
        Name = "Pipeline-IGW"
    }
}
