group "a" {
  targets = ["b", "c"]
}

group "b" {
  targets = ["d"]
}

group "c" {
  targets = ["b"]
}

target "d" {
  context = "."
  dockerfile = "./testdockerfile"
}
