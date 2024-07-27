resource "aws_ecs_cluster" "my_ecs_cluster" {
  name = var.ecs_cluster_name
}

resource "aws_ecs_service" "my_ecs_service" {
  name            = "my-ecs-service"
  cluster         = aws_ecs_cluster.my_ecs_cluster.id
  task_definition = aws_ecs_task_definition.my_task_definition.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = var.public_subnet_ids
    security_groups = [var.ecs_sg_id]
  }
}

resource "aws_ecs_task_definition" "my_task_definition" {
  family                   = var.task_def_family
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.task_def_cpu
  memory                   = var.task_def_memory
  execution_role_arn       = var.execution_role_arn
  container_definitions    = <<DEFINITION
[
  {
    "name": "${var.container_name}",
    "image": "${var.ecr_repo_url}:latest",
    "memory": ${var.task_def_memory},
    "cpu": ${var.task_def_cpu},
    "essential": true,
    "portMappings": [
      {
        "containerPort": ${var.container_port},
        "hostPort": ${var.container_port}
      }
    ]
  }
]
DEFINITION
}
