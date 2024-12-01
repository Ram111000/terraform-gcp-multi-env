variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "region" {
  description = "The region where the subnet is deployed"
  type        = string
}
