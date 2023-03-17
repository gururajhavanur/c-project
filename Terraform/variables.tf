variable "ec2-type" {
    type = string
    default = "t2.micro"

}

variable "ami-id" {
    type = string
    default = "ami-0f8ca728008ff5af4"
    
}

variable "key_name" {
    type = string
    default = "my_pem" 
  
}

variable "key_path" {
    type = string
    default = "./keys/my_pem" 
  
}

variable "sg_name" {
    type = string
    default = "my_sg" 
  
}