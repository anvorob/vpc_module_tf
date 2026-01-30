variable "cidr" {
  type = string
  description = "CIDR range for VPC"
  validation {
    condition     = can(cidrnetmask(var.cidr))
    error_message = "The vpc_cidr value must be a valid CIDR block (e.g., 10.0.0.0/16)."
  }
}

variable "name" {
  type = string
  description = "VPC name"
  
}
