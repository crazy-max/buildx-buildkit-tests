# docker-bake.hcl

target "base" {
  dockerfile = "baseapp.Dockerfile"
  args = {
    basefoo = "bar"
  }
  platforms = [
    "linux/amd64",
    "linux/arm64"
  ]
}

target "app" {
  contexts = {
    baseapp = "target:base"
  }
}
