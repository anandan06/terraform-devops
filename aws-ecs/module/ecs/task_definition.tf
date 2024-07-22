resource "aws_ecs_task_definition" "my_task_definition" {
  family                = "my-task-family"
  network_mode          = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                   = "256"
  memory                = "512"
  execution_role_arn    = aws_iam_role.ecs_task_execution_role.arn
  container_definitions = <<DEFINITION
[
  {
    "name": "my-container",
<<<<<<< HEAD
    "image": "${aws_ecr_repository.my_ecr_repo.repository_url}:latest",
=======
    "image": "${module.ecr.repository_url}:latest",
>>>>>>> 43a15ad9196efed8cdc1c28cc33e7be3f9a77f00
    "memory": 512,
    "cpu": 256,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ]
  }
]
DEFINITION
}
<<<<<<< HEAD

output "task_definition_arn" {
  value = aws_ecs_task_definition.my_task_definition.arn
}
=======
>>>>>>> 43a15ad9196efed8cdc1c28cc33e7be3f9a77f00
