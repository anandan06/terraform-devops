output "nlb_arn" {
  description = "ARN of the Network Load Balancer"
  value       = aws_lb.nlb.arn
}

output "nlb_dns_name" {
  description = "DNS name of the Network Load Balancer"
  value       = aws_lb.nlb.dns_name
}

output "target_group_8081_arn" {
  description = "ARN of the target group for port 8081"
  value       = aws_lb_target_group.tg_8081.arn
}

output "target_group_8082_arn" {
  description = "ARN of the target group for port 8082"
  value       = aws_lb_target_group.tg_8082.arn
}