variable "aws_region" {
  description = "AWS регіон для створення серверів"
  default     = "eu-west-1"
}
variable "instance_type" {
  description = "Тип EC2 інстансу"
  default     = "t2.micro"
}

variable "ssh_key_name" {
  description = "Ім'я SSH-ключа у AWS"
  default     = "ubuntu_key"
}

variable "server_count" {
  description = "Кількість серверів"
  default     = 2
}