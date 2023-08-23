```console
$ cat <<EOT >> Dockerfile.app
FROM scratch
COPY foo /foo
EOT
$ docker buildx bake https://github.com/crazy-max/buildx-buildkit-tests.git#:buildx-1627
```
