resource "null_resource" "file_copy" {
    connection {
        type = "ssh"
        host = var.ec2_public_ip
        user = "${var.ec2_user}"
        private_key = file(var.ec2_pem)
        agent = false 
    }
    
    provisioner "remote-exec" {
        inline = [
          "sudo yum install -y jenkins java-11-openjdk-devel",
         "sudo yum -y install wget",
         "sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo",
         "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
         "sudo yum upgrade -y",
         "sudo yum install jenkins -y",
         "sudo systemctl start jenkins",
        ]
    }
} 