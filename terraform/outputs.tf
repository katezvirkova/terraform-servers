output "public_ips" {
  description = "Публічні IP серверів"
  value       = aws_instance.server[*].public_ip
}

output "private_ips" {
  description = "Приватні IP серверів"
  value       = aws_instance.server[*].private_ip
}