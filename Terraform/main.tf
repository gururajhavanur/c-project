resource "aws_instance" "test1" {
    ami = "ami-0f8ca728008ff5af4"
    instance_type = "t2.micro"
    count = 3
    tags = {
        Name = "Terraform"
    }
}

resource "aws_s3_bucket" "s3_terraform_bucket" {
     bucket = "terraform_s3_bucket"
  
}

resource "aws_vpc" "terraform_vpc" {
    cidr_block = "10.0.0.0/28"
    tags = {
         Name = "terraform_vpc"
    }
}