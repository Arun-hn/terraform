resource "aws_vpc" "main" {
  cidr_block = "192.168.0.0/16"

  # Required for EKS, Enable/disable DNS support in the VPC
  enable_dns_support = true

  # Required for EKS, Enable/disable DNS hostnames in the VPC
  enable_dns_hostnames = true

  # Requests an Amazon-provided IPv6 CIDR block with a /56 bit
  assign_generated_ipv6_cidr_block = false

  #A map of tags to assign to the resource.

  tags = {
    Name = "Main"
  }

}