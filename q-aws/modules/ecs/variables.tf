variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
}

variable "task_def_family" {
  description = "Family name for the ECS task definition"
  type        = string
}

variable "task_def_cpu" {
  description = "CPU units for the ECS task definition"
  type        = string
}

variable "task_def_memory" {
  description = "Memory for the ECS task definition"
  type        = string
}

variable "container_name" {
  description = "Name of the container in the task definition"
  type        = string
}

variable "container_port" {
  description = "Port for the container"
  type        = number
}

variable "vpc_id" {
  description = "ID of the VPC to create resources in"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs to create resources in"
  type        = list(string)
}

variable "ecs_sg_id" {
  description = "ID of the security group for the ECS service"
  type        = string
}

variable "ecr_repo_url" {
  description = "The URL of the ECR repository"
  type        = string
}

variable "execution_role_arn" {
  description = "The ARN of the ECS task execution role"
  type        = string
}
