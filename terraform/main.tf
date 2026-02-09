provider "docker" {}

resource "docker_network" "app_network" {
  name = "${var.container_name}_${var.environment}_network"
}

# Volume Docker persistant
resource "docker_volume" "app_volume" {
  name = "${var.container_name}_${var.environment}_data"
}

# Image Docker
resource "docker_image" "app_image" {
  name         = var.image
  keep_locally = true
}

# Container applicatif
resource "docker_container" "app_container" {
  name  = var.container_name
  image = docker_image.app_image.image_id

  restart = "always"

  ports {
    internal = 80
    external = var.external_port
  }

  networks_advanced {
    name = docker_network.app_network.name
  }

  volumes {
    volume_name    = docker_volume.app_volume.name
    container_path = "/usr/share/nginx/html"
  }
}
