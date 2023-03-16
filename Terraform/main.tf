resource "aws_instance" "test1" {
    ami = "ami-0f8ca728008ff5af4"
    instance_type = "t2.micro"
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