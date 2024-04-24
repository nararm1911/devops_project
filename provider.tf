locals {
  region          = "us-west-1"
  name            = "projet-cluster"
  vpc_cidr        = "10.20.0.0/16"
  azs             = ["us-west-1a", "us-west-1b", "us-west-1c"]
  public_subnets  = ["10.20.10.0/24", "10.20.12.0/24", "10.20.14.0/24"]
  private_subnets = ["10.20.20.0/24", "10.20.22.0/24", "10.20.24.0/24"]
  intra_subnets   = ["10.20.30.0/24", "10.20.32.0/24", "10.20.34.0/24"]
  tags = {
    Example = local.name
  }
}

provider "aws" {
  region = "us-west-1"
}
