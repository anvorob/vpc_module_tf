output "subnet_objs" {
  value       = aws_subnet.main[*]
  description = "List of subnet objects"
}

output "vpc_id" {
  value = aws_vpc.id
  description = "VPC ID"
}
