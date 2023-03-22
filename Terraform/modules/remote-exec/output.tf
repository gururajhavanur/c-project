output "jenkins_url" {
    value = "http://${aws_instance.my_ec2_instance.public_ip}:8080"
  
}

output "jenkins_admin_password" {
  value = "${aws_instance.my_ec2_instance.private_ip}:8080/administratorPassword"
}