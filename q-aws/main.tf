provider "aws" {
  region = var.aws_region
}

module "ecr" {
  source = "./modules/ecr"

  ecr_repo_name = var.ecr_repo_name
}

module "ecs" {
  source = "./modules/ecs"

  ecs_cluster_name   = var.ecs_cluster_name
  task_def_family    = var.task_def_family
  task_def_cpu       = var.task_def_cpu
  task_def_memory    = var.task_def_memory
  container_name     = var.container_name
  container_port     = var.container_port
  vpc_id             = var.vpc_id
  public_subnet_ids  = var.public_subnet_ids
  ecs_sg_id          = var.ecs_sg_id
  ecr_repo_url       = module.ecr.repository_url
  execution_role_arn = aws_iam_role.ecs_task_execution_role.arn
}

module "rds" {
  source = "./modules/rds"

  db_name                 = var.db_name
  db_username             = var.db_username
  db_instance_class       = var.db_instance_class
  db_allocated_storage    = var.db_allocated_storage
  db_subnet_group_name    = var.db_subnet_group_name
  rds_sg_id               = var.rds_sg_id
  db_password_secret_name = var.db_password_secret_name
  db_password_length      = var.db_password_length
  db_password_special     = var.db_password_special_chars
}

resource "aws_iam_role" "ecs_task_execution_role" {
  name = "ecs_task_execution_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ecs_task_execution_role_policy" {
  role       = aws_iam_role.ecs_task_execution_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}