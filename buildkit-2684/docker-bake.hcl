target "base" {
  dockerfile = "baseapp.Dockerfile"
  args = {
    basefoo = "bar"
  }
}

target "app" {
  contexts = {
    baseapp = "target:base"
  }
}
