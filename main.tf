provider "aws" {
  region = "eu-west-1a"
  #can add access keys here
}

# launch an aws instance
resource "aws_instance" "app_instance" {
  ami = "ami-0ceeb16a48501187d"
  instance_type = "t2.micro"
  tags{
    Name = "Michael-Terra"
  }
}

#resource vpn

resource "aws_vpc" "michael-vpc1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags {
    Name = "michael-vpc"
  }
}
