resource "aws_instance" "test1" {
    ami = var.ami-id
    instance_type = var.ec2-type
    count = 3
    tags = {
        Name = "Terraform"
    }
}

resource "aws_s3_bucket" "s3-terraform-bucket" {
     bucket = "terraform-s3-bucket21"
  
}

resource "aws_vpc" "terraform_vpc" {
    cidr_block = "10.0.0.0/28"
    tags = {
         Name = "terraform_vpc"
    }
}