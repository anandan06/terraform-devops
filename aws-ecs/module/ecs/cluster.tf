resource "aws_ecs_cluster" "my_ecs_cluster" {
  name = "my-ecs-cluster"
}

output "cluster_id" {
  value = aws_ecs_cluster.my_ecs_cluster.id
}

