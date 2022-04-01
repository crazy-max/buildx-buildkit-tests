group "default" {
  targets = ["debian8", "debian9"]
}

target "debian8" {
  context = "./dockerfiles/debian8"
}

target "debian9" {
  context = "./dockerfiles/debian8"
}
