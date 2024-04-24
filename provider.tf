locals {
  region          = "us-west-1"
  name            = "projet-cluster"
  vpc_cidr        = "10.20.0.0/16"
  azs             = ["us-west-1b", "us-west-1c"]
  public_subnets  = ["10.20.10.0/24", "10.20.20.0/24"]
  private_subnets = ["10.20.30.0/24", "10.20.40.0/24"]
  intra_subnets   = ["10.20.50.0/24", "10.20.60.0/24"]
  tags = {
    Example = local.name
  }
}

provider "aws" {
  region = "us-west-1"
}
