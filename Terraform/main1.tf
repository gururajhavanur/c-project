resource "aws_instance" "ec2_instance" {
    ami = "ami-0f8ca728008ff5af4"
    instance_type = "t2.micro"
    tags = {
      "name" = "Terraform"
    }
}

resource "aws_s3_bucket" "s3-bucket-Terraform" {
    bucket = "s3-bucket-terraform-21"
    
  
}

resource "aws_vpc" "terraform_vpc" {
    cidr_block = "10.0.0.0/28"
    instance_tenancy = default
    tags = {
      "name" = "terraform-vpc"
    }
}