output "subnet_objs" {
  value       = aws_subnet.main[*]
  description = "List of subnet objects"
}
