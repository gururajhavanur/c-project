output "ec2_public_ip_address" {
    value = aws_instance.test1.public_ip

}

output "ec2_private_ip_address" {
    value = aws_instance.test1.private_ip

} 