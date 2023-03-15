resource "aws_instance" "test1" {
    ami = "ami-0f8ca728008ff5af4"
    instance_type = "t2.micro"
    count = 3
    tags = {
        Name = "Terraform"
    }
}