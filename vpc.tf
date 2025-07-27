module "labs-vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.0.1"

  name = "labs-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.203.0/24", "10.0.206.0/24", "10.0.206.0/24"]

  single_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Opentofu    = "true"
    Environment = "lab"
    Version     = "1.0.0"
  }
}
