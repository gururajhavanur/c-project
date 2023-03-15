resource "aws_instance" "test1" {
    ami = "ami-0b828c1c5ac3f13ee"
    instance_type = "t2.micro"
    tags = {
        Name = "Terraform"
    }
}