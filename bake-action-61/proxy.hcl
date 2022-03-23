target "docker-metadata-k3d-proxy" {
  tags = [
    "ghcr.io/k3d-io/k3d-proxy:5.4.0-dev.0",
    "ghcr.io/k3d-io/k3d-proxy:sha-984839e"
  ]
  labels = {
    "org.opencontainers.image.title": "k3d",
    "org.opencontainers.image.description": "Little helper to run CNCF's k3s in Docker",
    "org.opencontainers.image.url": "https://github.com/k3d-io/k3d",
    "org.opencontainers.image.source": "https://github.com/k3d-io/k3d",
    "org.opencontainers.image.version": "5.4.0-dev.0",
    "org.opencontainers.image.created": "2022-03-14T13:36:06.385Z",
    "org.opencontainers.image.revision": "984839e5b4c30f46510f314340f77911099cb3dc",
    "org.opencontainers.image.licenses": "MIT"
  }
  args = {
    "DOCKER_META_IMAGES": "ghcr.io/k3d-io/k3d-proxy",
    "DOCKER_META_VERSION": "5.4.0-dev.0"
  }
}