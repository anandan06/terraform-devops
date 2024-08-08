resource "aws_lb" "nlb" {
  name               = var.nlb_name
  internal           = false
  load_balancer_type = "network"
  subnets            = var.public_subnet_ids

  enable_deletion_protection = false

  tags = {
    Name = var.nlb_name
  }
}

resource "aws_lb_listener" "listener_8081" {
  load_balancer_arn = aws_lb.nlb.arn
  port              = "8081"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg_8081.arn
  }
}

resource "aws_lb_listener" "listener_8082" {
  load_balancer_arn = aws_lb.nlb.arn
  port              = "8082"
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg_8082.arn
  }
}

resource "aws_lb_target_group" "tg_8081" {
  name        = "${var.nlb_name}-tg-8081"
  port        = 8081
  protocol    = "TCP"
  target_type = "ip"
  vpc_id      = var.vpc_id

  health_check {
    enabled             = true
    healthy_threshold   = 3
    unhealthy_threshold = 3
    interval            = 30
    protocol            = "TCP"
  }
}

resource "aws_lb_target_group" "tg_8082" {
  name        = "${var.nlb_name}-tg-8082"
  port        = 8082
  protocol    = "TCP"
  target_type = "ip"
  vpc_id      = var.vpc_id

  health_check {
    enabled             = true
    healthy_threshold   = 3
    unhealthy_threshold = 3
    interval            = 30
    protocol            = "TCP"
  }
}