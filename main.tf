module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source = "./webserver"
  sg = module.vpc.mysg
  sub = module.vpc.pub-sub
}

