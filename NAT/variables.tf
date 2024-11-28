variable "public_subnet_ids" {
  description = "List of public subnet IDs where NAT Gateways will be created"
  type        = list(string)
}

variable "private_route_table_ids" {
  description = "List of private route table IDs to associate with the NAT Gateway"
  type        = list(string)
}
