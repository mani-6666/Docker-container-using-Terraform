terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.5.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Building the image
resource "docker_image" "nodejs-demo-app" {
  name = "nodejs-demo-app"
  build {
    context = "."
  }
}

# Create a container
resource "docker_container" "nodejs-demo-app" {
  image = docker_image.nodejs-demo-app.image_id
  name  = "NodejsContainer"
  ports {
    internal = 3000
    external = 80
  }
}



