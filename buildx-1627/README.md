```console
$ echo "FROM scratch\nCOPY foo /foo" > Dockerfile.app
$ docker buildx bake https://github.com/crazy-max/buildx-buildkit-tests.git#:buildx-1627
```
