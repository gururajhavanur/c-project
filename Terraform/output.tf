output "ec2_public_ip_address" {
    value = aws_instance.test.public_ip

}

output "ec2_private_ip_address" {
    value = aws_instance.test.private_ip

}

output "ec2_pem" {
    value = aws_instance.test.key_name

}