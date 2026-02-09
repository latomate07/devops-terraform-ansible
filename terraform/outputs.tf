output "local_url" {
  value = "http://localhost:${var.external_port}"
}

output "external_port" {
  value = var.external_port
}

output "internal_port" {
  value = docker_container.app_container.ports[0].internal
}

output "container_name" {
  value = docker_container.app_container.name
}

output "container_id" {
  value = docker_container.app_container.id
}

output "restart_policy" {
  value = docker_container.app_container.restart
}