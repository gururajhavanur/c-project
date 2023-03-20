module "create_sg" {
  source = "./modules/create_sg"
  sg_name = var.root_sg_name 
}

module "create_pem" {
  source = "./modules/create_pem"
  key_name = var.root_key_name
  key_path = var.root_key_path

}

module "create_ec2" {
   source = "github.com/gururajhavanur/terra_modules.git//create_ec2"
    ami-id = var.root.ec2_ami
    ec2-type =var.root.ec2_type
    ec2-pem = module.create_pem.ec2_pem
    ec2_sg_id =module.create_sg.sg_id
  } 

