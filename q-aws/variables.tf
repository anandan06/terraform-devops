variable "aws_region" {
  description = "AWS region to create resources in"
  default     = "ap-south-1"
}

variable "ecr_repo_name" {
  description = "Name of the ECR repository"
  default     = "my-ecr-repo"
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  default     = "my-ecs-cluster"
}

variable "task_def_family" {
  description = "Family name for the ECS task definition"
  default     = "my-task-def"
}

variable "task_def_cpu" {
  description = "CPU units for the ECS task definition"
  default     = "256"
}

variable "task_def_memory" {
  description = "Memory for the ECS task definition"
  default     = "512"
}

variable "container_name" {
  description = "Name of the container in the task definition"
  default     = "my-container"
}

variable "container_port" {
  description = "Port for the container"
  default     = 80
}

variable "vpc_id" {
  description = "ID of the VPC to create resources in"
  type        = string
  default     = "vpc-0c0fcbc4466e59427"
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs to create resources in"
  type        = list(string)
  default     = ["subnet-00c4eff9699b913f5", "subnet-06bea07f02ef51bd2"]
}

variable "ecs_sg_id" {
  description = "ID of the security group for the ECS service"
  type        = string
  default     = "sg-0dacd95d7355efdb5"
}

variable "db_name" {
  description = "Name of the RDS database"
  default     = "mydb"
}

variable "db_username" {
  description = "Username for the RDS database"
  default     = "myuser"
}

variable "db_instance_class" {
  description = "Instance class for the RDS database"
  default     = "db.t2.micro"
}

variable "db_allocated_storage" {
  description = "Allocated storage for the RDS database (in GB)"
  default     = 20
}

variable "db_subnet_group_name" {
  description = "Name of the RDS subnet group"
  default     = "my-db-subnet-group"
}

variable "rds_sg_id" {
  description = "ID of the security group for the RDS instance"
  type        = string
  default     = "sg-0dacd95d7355efdb5"
}

variable "db_password_secret_name" {
  description = "Name of the Secrets Manager secret for the RDS password"
  default     = "db-password"
}

variable "db_password_length" {
  description = "Length of the randomly generated RDS password"
  default     = 16
}

variable "db_password_special_chars" {
  description = "Special characters to include in the randomly generated RDS password"
  default     = "!#$%&*()-_=+[]{}<>:?"
}
