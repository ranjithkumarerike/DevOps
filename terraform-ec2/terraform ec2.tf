resource "aws_instance" "my_ec2" {
  ami           = "ami-0e53db6fd757e38df"   # Amazon Linux 2023 (update to latest)
  instance_type = "t2.micro"                # Free tier eligible
  key_name      = "terraform-key"           # Pre-created SSH key in AWS

  root_block_device {
    volume_size = 20
  }

  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  tags = {
    Name = "Terraform-EC2"
  }
}
