variable "db_name" {
  description = "Name of the RDS database"
  type        = string
}

variable "db_username" {
  description = "Username for the RDS database"
  type        = string
}

variable "db_instance_class" {
  description = "Instance class for the RDS database"
  type        = string
}

variable "db_allocated_storage" {
  description = "Allocated storage for the RDS database (in GB)"
  type        = number
}

variable "db_subnet_group_name" {
  description = "Name of the RDS subnet group"
  type        = string
}

variable "rds_sg_id" {
  description = "ID of the security group for the RDS instance"
  type        = string
}

variable "db_password_secret_name" {
  description = "Name of the Secrets Manager secret for the RDS password"
  type        = string
}

variable "db_password_length" {
  description = "Length of the randomly generated RDS password"
  type        = number
}

variable "db_password_special" {
  description = "Special characters to include in the randomly generated RDS password"
  type        = string
}
