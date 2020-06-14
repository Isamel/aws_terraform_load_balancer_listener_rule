resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.alb_listener_rule_depends_on)
    }
}

resource "aws_lb_listener_rule" "alb_listener_rule_rule_terraform" {
    count                = var.alb_listener_rule_count
    depends_on           = [null_resource.depends_on]
    listener_arn         = var.alb_listener_rule_listener_arn
    condition {
        field            = var.alb_listener_rule_condition_field
        values           = var.alb_listener_rule_condition_values
    }
    action {
        type             = var.alb_listener_rule_action_type
        redirect {
            port         = var.alb_listener_rule_action_redirect_port
            protocol     = var.alb_listener_rule_action_redirect_protocol
            status_code  = var.alb_listener_rule_action_redirect_status_code
        }
        target_group_arn = var.alb_listener_rule_action_target_group_arn
    }
}