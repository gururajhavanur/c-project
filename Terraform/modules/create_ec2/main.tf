resource "aws_instance" "test1" {
    ami= var.ec2_ami
    instance_type = var.ec2_type
    key_name = var.ec2-pem
    vpc_security_group_ids = [var.ec2_sg_id]
    tags = {
        Name = "Terraform"
    }
}
 