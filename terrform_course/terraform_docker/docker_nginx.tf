terraform {
   required_providers {
      docker = {
         source = "kreuzwerker/docker"
         version = "2.21.0"
}
}
}

provider "docker" {}

resource "docker_image" "nginx_image" {
   name = "nginx:latest"
   
}

resource "docker_container" "nginx_container" {
   name = "nginx_container"
   image = docker_image.nginx_image.latest
   ports {
      internal = 80
      external = 80
}
}

output docker_id {
   value =  docker_container.nginx_container.id
}
