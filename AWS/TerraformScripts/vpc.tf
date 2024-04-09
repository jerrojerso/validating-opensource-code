#Create VPC

resource "aws_vpc" "pipeline_VPC" {
    cidr_block = "10.10.0.0/16"

    tags = {
        Name = "Pipeline-VPC"
    }
}
