#Root

module "vpc" {
  source = "./vpc"
  vpc_cidr = "10.0.0.0/16"
  ext_ip = "0.0.0.0/0"
  pb_cidr = "10.0.1.0/24"
}

module "ec2" {
  source = "./web"
  sn = module.vpc.pb_sn                 # the word module.vpc.pb_sn is used to reference the public subnet ID created in the VPC module
  sg = module.vpc.sg
}