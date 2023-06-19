terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

 

# Define the provider
provider "aws" {
  region = "ap-south-1"
}

 

# Define the VPC
resource "aws_vpc" "prashant-testvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "prashant-testvpc" 
  }
}

 

 

# Define the subnets
resource "aws_subnet" "sub-ap-south-1a" {
  vpc_id = aws_vpc.prashant-testvpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "sub-ap-south-1a"
  }
}

 

 

#Create Internet gateway
resource "aws_internet_gateway" "prashant-ig01" {
}

 


resource "aws_internet_gateway_attachment" "igattach" {
  internet_gateway_id = aws_internet_gateway.prashant-ig01.id
  vpc_id              = aws_vpc.prashant-testvpc.id
}

 

 

resource "aws_route_table" "routetb01" {
vpc_id              = aws_vpc.prashant-testvpc.id
}

 

resource "aws_route" "route01" {
  route_table_id            = aws_route_table.routetb01.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = aws_internet_gateway.prashant-ig01.id
}
