group "default" {
   targets = [for i in range(1, 75): "tgt-${i}"]
}

target "_common" {
  output = ["type=cacheonly"]
}

target "tgt-1" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-2" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-3" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-4" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-5" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-6" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-7" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-8" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-9" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-10" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-11" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-12" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-13" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-14" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-15" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-16" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-17" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-18" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-19" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-20" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
    FOO = "bar"
  }
}

target "tgt-21" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-22" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-23" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-24" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-25" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-26" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-27" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-28" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-29" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-30" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-31" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-32" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-33" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-34" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-35" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-36" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-37" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-38" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-39" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-40" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-41" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-42" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-43" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-44" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-45" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-46" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-47" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-48" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-49" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-50" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-51" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-52" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-53" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-54" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-55" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-56" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-57" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-58" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-59" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-60" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-61" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-62" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-63" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-64" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-65" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-66" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-67" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-68" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-69" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-70" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-71" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-72" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-73" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-74" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}

target "tgt-75" {
  inherits = ["_common"]
  args = {
    HELLO = uuidv4()
  }
}
