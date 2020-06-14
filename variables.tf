variable "alb_listener_rule_count" {
    type        = bool
    description = "alb listener rule count."
}

variable "alb_listener_rule_depends_on" {
    type        = list(string)
    description = "alb listener rule depends on"
}

variable "alb_listener_rule_listener_arn" {
    type        = string
    description = "alb listener rule listener arn."
}

variable "alb_listener_rule_condition_field" {
    type        = string
    description = "alb listener rule condition field."
}

variable "alb_listener_rule_condition_values" {
    type        = list(string)
    description = "alb listener rule condition values."
}

variable "alb_listener_rule_action_type" {
    type        = string
    description = "alb listener rule action type."
}

variable "alb_listener_rule_action_redirect_port" {
    type        = number
    description = "alb listener rule action redirect port."
}

variable "alb_listener_rule_action_redirect_protocol" {
    type        = string
    description = "alb listener rule action redirect protocol."
}

variable "alb_listener_rule_action_redirect_status_code" {
    type        = string
    description = "alb listener rule action redirect status code."
}

variable "alb_listener_rule_action_target_group_arn" {
    type        = string
    description = "alb listener rule action target group arn."
}