target "default" {
  dockerfile-inline = <<EOT
FROM alpine
RUN uname -a
EOT
}
