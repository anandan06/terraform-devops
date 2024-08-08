variable "nlb_name" {
  description = "Name of the Network Load Balancer"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs to create the NLB in"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}