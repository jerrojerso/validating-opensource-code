#Create Security Group
resource "aws_security_group" "pipeline_SG" {
  vpc_id = aws_vpc.pipeline_VPC.id
  description = "Pipeline-SG"

    ingress {
    cidr_blocks = ["0.0.0.0/0"]

    from_port = 22
    to_port = 22
    protocol = "tcp"

    description = "SSH to Instance"
  }

#   ingress {
#     cidr_blocks = ["0.0.0.0/0"]

#     from_port = 80
#     to_port = 80
#     protocol = "tcp"
  
#     description = "HTTP"
#   }

#   ingress {
#     cidr_blocks = ["0.0.0.0/0"]

#     from_port = 443
#     to_port = 443
#     protocol = "tcp"

#     description = "HTTPS"
#   }


  ingress {
    cidr_blocks = ["0.0.0.0/0"]

    from_port = 9000
    to_port = 9000
    protocol = "tcp"

    description = "pipeline"
  }

  tags = {
    Name = "Pipeline-SG"
  }
}