output "cluster_id" {
  value       = aws_ecs_cluster.my_ecs_cluster.id
  description = "The ID of the ECS cluster"
}

output "service_id" {
  value       = aws_ecs_service.my_ecs_service.id
  description = "The ID of the ECS service"
}

output "task_definition_arn" {
  value       = aws_ecs_task_definition.my_task_definition.arn
  description = "The ARN of the ECS task definition"
}
