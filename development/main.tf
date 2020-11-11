module "network" {
  source = "git@github.com:flugel-it/tf-modules-example.git//network?ref=v1.0"

  cidr_block = "10.1.2.0/24"
}

module "compute" {
  source = "git@github.com:flugel-it/tf-modules-example.git//compute?ref=v1.0"

  compute_subnet_id = module.network.subnet_id
  compute_ami_id = "ami-0ff8a91507f77f867"
}
