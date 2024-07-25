output "task_definition_arn" {
  value = aws_ecs_task_definition.my_task_definition.arn
}
output "cluster_id" {
  value = aws_ecs_cluster.my_ecs_cluster.id
}
output "execution_role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}
