resource "aws_instance" "pipeline" {
  ami = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"
  key_name = "pipeline_key"

  network_interface {
    network_interface_id = aws_network_interface.pipeline_NIC.id
    device_index = 0
  }

  tags = {
    Name = "Pipeline Tools Host"
  }
}