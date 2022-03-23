target "docker-metadata-k3d-dind" {
  tags = [
    "ghcr.io/k3d-io/k3d:5.4.0-dev.0-dind",
    "ghcr.io/k3d-io/k3d:sha-984839e-dind"
  ]
  labels = {
    "org.opencontainers.image.title": "k3d",
    "org.opencontainers.image.description": "Little helper to run CNCF's k3s in Docker",
    "org.opencontainers.image.url": "https://github.com/k3d-io/k3d",
    "org.opencontainers.image.source": "https://github.com/k3d-io/k3d",
    "org.opencontainers.image.version": "5.4.0-dev.0-dind",
    "org.opencontainers.image.created": "2022-03-14T13:36:05.941Z",
    "org.opencontainers.image.revision": "984839e5b4c30f46510f314340f77911099cb3dc",
    "org.opencontainers.image.licenses": "MIT"
  }
  args = {
    "DOCKER_META_IMAGES": "ghcr.io/k3d-io/k3d",
    "DOCKER_META_VERSION": "5.4.0-dev.0-dind"
  }
}