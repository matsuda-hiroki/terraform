provider "aws" {
  shared_credentials_file = ".aws/credentials"
  region                  = "ap-northeast-1"
  profile                 = "exercise-user"
}

# VPC
resource "aws_vpc" "this" {
  cidr_block           = "10.1.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"

  tags {
    Name = "tf-example-vpc"
  }
}
