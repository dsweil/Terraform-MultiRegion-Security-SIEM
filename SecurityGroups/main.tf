variable "security_group_name" {
  description = "Name of the security group"
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created"
  type        = string
}

variable "ingress_rules" {
  description = "List of ingress rules"
  type = list(object({
    description       = string
    from_port         = number
    to_port           = number
    protocol          = string
    cidr_blocks       = optional(list(string), [])
    ipv6_cidr_blocks  = optional(list(string), [])
    security_groups   = optional(list(string), [])
  }))
  default = []
}

variable "egress_rules" {
  description = "List of egress rules"
  type = list(object({
    description       = string
    from_port         = number
    to_port           = number
    protocol          = string
    cidr_blocks       = optional(list(string), [])
    ipv6_cidr_blocks  = optional(list(string), [])
    security_groups   = optional(list(string), [])
  }))
  default = []
}
