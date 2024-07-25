variable "ecr_repository_url" {
  description = "URL of the ECR repository"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for ECS service"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for ECS service"
  type        = string
}
