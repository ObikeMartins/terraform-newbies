# aws providers 

provider "aws" {
    region = "us-east-1"
    profile = "default"
    }

    # create vpc
    resource "aws_vpc" "newbies_vpc" {
        cidr_block = "10.0.0.0/16"
        tags = {
            Name = "newbies_vpc"
            }
            }

# create instance
resource "aws_instance" "newbies_instance" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    tags = {
        Name = "newbies_instance"
        }
        }

