variable "cidr" {
  type = string
  description = "CIDR range for VPC"
  validation {
    condition     = can(cidrnetmask(var.cidr))
    error_message = "The vpc_cidr value must be a valid CIDR block (e.g., 10.0.0.0/23)."
  }
}

variable "name" {
  type = string
  description = "VPC name"
  
}

variable "subnets" {
  type = map
  description = "List of subnets in the VPC"
  default = tomap({
    int_a = "10.0.0.0/24"
    int_b = "10.0.1.0/24"
  })
}
