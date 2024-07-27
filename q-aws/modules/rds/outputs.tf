output "rds_endpoint" {
  value       = aws_db_instance.rds_instance.endpoint
  description = "The endpoint of the RDS instance"
}

output "secrets_manager_secret_arn" {
  value       = aws_secretsmanager_secret.rds_password.arn
  description = "The ARN of the Secrets Manager secret for the RDS password"
}
