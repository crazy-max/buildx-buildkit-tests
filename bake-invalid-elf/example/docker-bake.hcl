target "go" {
  context = ".."
}

target "_commons" {
  contexts = {
    go = "target:go"
  }
}

group "default" {
  targets = ["cross"]
}

target "cross" {
  inherits = ["_commons"]
  platforms = [
    "darwin/amd64",
    "darwin/arm64",
    "linux/amd64",
    "linux/arm/v6",
    "linux/arm/v7",
    "linux/arm64",
    "linux/ppc64le",
    "linux/s390x"
  ]
}
