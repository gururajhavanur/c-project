variable "ec2_ami" {
    type = string
    default = "ami-0f8ca728008ff5af4"
}

variable "ec2_type" {
    type = string
    default = "t2.micro"
  
}

variable "sg_name" {        
    type = string
    default = "my_sg"
  
}

variable "key_name" {
    type = string
    default = "my_pem"
  
}

variable "key_path" {
    type = string
    default = "./keys/my_pem"
  
}