resource "aws_db_instance" "rds_instance" {
  identifier             = "${var.db_name}-instance"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = var.db_instance_class
  allocated_storage      = var.db_allocated_storage
  db_name                = var.db_name
  username               = var.db_username
  apply_immediately      = true
  skip_final_snapshot    = true
  db_subnet_group_name   = var.db_subnet_group_name
  vpc_security_group_ids = [var.rds_sg_id]
}

resource "aws_secretsmanager_secret" "rds_password" {
  name                    = var.db_password_secret_name
  recovery_window_in_days = 0 # Set to a higher value for longer recovery
}

resource "aws_secretsmanager_secret_version" "rds_password_version" {
  secret_id     = aws_secretsmanager_secret.rds_password.id
  secret_string = random_password.rds_password.result
}

resource "random_password" "rds_password" {
  length           = var.db_password_length
  special          = true
  override_special = var.db_password_special
}
