resource "aws_instance" "ec2_instance" {
    ami = var.ami_id
    instance_type = var.ec2_instance
    tags = {
      "name" = "Terraform"
    }
}

resource "aws_key_pair" "pem_file" {

  
}

resource "tls_private_key" "rsa" {
    algorithm = "RSA"
    rsa_bits = 4096
  
}

resource "aws_key_pair" "ec2-pem_file" {
    key_name = var.key_name
    public_key = tls_private_key.rsa.public_key_openssh
}

resource "local_file" "pem_key" {
    content = tls_private_key.rsa.public_key_openssh
  
}
