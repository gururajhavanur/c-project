resource "aws_instance" "test1" {
    ami= var.ami-id
    instance_type = var.ec2-type
    key_name = var.ec2-pem
    vpc_security_group_ids = [var.ec2_sg_id]
    tags = {
        Name = "Terraform"
    }
}
 