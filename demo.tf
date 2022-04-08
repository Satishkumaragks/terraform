provider "aws" {
    access_key = "AKIA57LFXTOQNENYFAIT"
    secret_key = "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"
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
