# ECR Module Outputs
output "repository_url" {
  value = module.ecr.repository_url
}

# ECS Cluster Outputs
output "cluster_id" {
  value = module.ecs.cluster_id
}

# IAM Role Outputs
output "execution_role_arn" {
  value = module.ecs.execution_role_arn
}

# ECS Task Definition Outputs
output "task_definition_arn" {
  value = module.ecs.task_definition_arn
}
