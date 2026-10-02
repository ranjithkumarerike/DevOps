provider "aws" {
  region = "ap-south-1"   # Change to your preferred region
}

resource "aws_instance" "free_tier_ec2" {
  ami           = "ami-0e53db6fd757e38df"   # Amazon Linux 2023 (update to latest in your region)
  instance_type = "t2.micro"                # Free tier eligible

  root_block_device {
    volume_size = 8   # Free tier default
  }

  tags = {
    Name = "Terraform-VM"
  }
}

