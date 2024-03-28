# VPC

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = var.enable_dns_hostnames
    enable_dns_support = var.enable_dns_support

    tags = {
      Name = "myvpc"
    }
}

# subnet

resource "aws_subnet" "pub-sub" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = var.map_public_ip_on_launch
    
    tags = {
      Name = "pub-sub"
    }
}

# Security group

resource "aws_security_group" "mysg" {
    vpc_id = aws_vpc.myvpc.id

    # ssh traffic from anywhere
    
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #outbound traffic 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

   

  tags = {
      Name = "mysg"
    }
}