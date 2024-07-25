variable "ecr_repo_name" {
  description = "ECR Repo Name"
  type        = string
  default     = "my-repo"
}

variable "subnet_ids" {
  description = "Subnets for ECS service"
  type        = list(string)
  default     = ["subnet-00c4eff9699b913f5", "subnet-06bea07f02ef51bd2"]
}

variable "security_group_ids" {
  description = "List of security group IDs for ECS service"
  type        = list(string)
  default     = "sg-0dacd95d7355efdb5"
}

variable "allocated_storage" {
  description = "The amount of storage to allocate"
  type        = number
  default     = 10
  sensitive   = true
}

variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "mariadb"
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
  default     = "10.4.25"
}

variable "instance_class" {
  description = "The instance class to use"
  type        = string
  default     = "db.t4g.small"
}

variable "default_tag" {
  type        = string
  description = "A default tag to add to everything"
  default     = "terraform_aws_rds_secrets_manager"
}
