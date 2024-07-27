output "ecr_repository_url" {
  value       = module.ecr.repository_url
  description = "The URL of the ECR repository"
}

output "ecs_cluster_id" {
  value       = module.ecs.cluster_id
  description = "The ID of the ECS cluster"
}

output "ecs_service_id" {
  value       = module.ecs.service_id
  description = "The ID of the ECS service"
}

output "ecs_task_definition_arn" {
  value       = module.ecs.task_definition_arn
  description = "The ARN of the ECS task definition"
}

output "rds_endpoint" {
  value       = module.rds.rds_endpoint
  description = "The endpoint of the RDS instance"
}

output "secrets_manager_secret_arn" {
  value       = module.rds.secrets_manager_secret_arn
  description = "The ARN of the Secrets Manager secret for the RDS password"
}

output "execution_role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}