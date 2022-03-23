target "docker-metadata-k3d" {}
target "docker-metadata-k3d-dind" {}
target "docker-metadata-k3d-proxy" {}

target "binary" {
  inherits = ["docker-metadata-k3d"]
  dockerfile = "Dockerfile"
  context = "."
  target = "binary"
}

target "dind" {
  inherits = ["docker-metadata-k3d-dind"]
  dockerfile = "Dockerfile"
  context = "."
  target = "dind"
}

target "proxy" {
  inherits = ["docker-metadata-k3d-proxy"]
  dockerfile = "Dockerfile"
  context = "."
  target = "proxy"
}
