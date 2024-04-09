#Create network interface

resource "aws_network_interface" "pipeline_NIC" {
  subnet_id = aws_subnet.pipeline_subnet.id
  security_groups = [aws_security_group.pipeline_SG.id]

  tags = {
    Name = "Pipeline-NIC"
  }
}
