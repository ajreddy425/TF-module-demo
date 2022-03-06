module "ec2" {
source="./module/ec2"  
ami=var.ami_id
instance_type =var.instance_type
subnet_id= module.networking.subnet_id
}

module "networking" {
    source="./module/networking"
    vpc_cidr = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
  
}