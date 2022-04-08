provider "aws" {
    access_key = ""
    secret_key = ""
    region = "ap-south-1"
}

  resource "aws_vpc" "terraform_vpc" {

      cidr_block = var.cidr_block_vpc
      enable_dns_hostnames = true
      tags = {
          name = "my vpc"
      }
    
  }

  output "vpc_id" {

      value = aws_vpc.terraform_vpc.id
    
  }
