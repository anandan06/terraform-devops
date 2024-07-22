variable "region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "ap-south-1"
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the ECS service."
  type        = list(string)
  default     = ["subnet-00c4eff9699b913f5","subnet-06bea07f02ef51bd2"]
}

variable "security_group_id" {
  description = "The security group ID for the ECS service."
  type        = string
  default     = "sg-0dacd95d7355efdb5"
}
