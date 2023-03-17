module "create_sg" {
  source = "./modules/create_sg"
  sg_name = var.sg_name 
}

module "create_pem" {
  source = "./modules/create_pem"
  key_name = var.key_name
  key_path = var.key_path

}

module "create_ec2" {
  source = "./modules/create_ec2"
    ami-id = var.ec2_ami
    ec2-type =var.ec2_type
    ec2-pem = module.create_pem.ec2_pem
    ec2-sg_id =module.create_sg.sg_id
} 