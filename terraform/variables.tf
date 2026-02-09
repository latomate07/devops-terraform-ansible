variable "image" {
  description = "Docker image to deploy"
  type        = string
  default     = "nginx:alpine"
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "nginx_app"
}

variable "external_port" {
  description = "Port exposed on the host machine"
  type        = number
  default     = 8080
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
