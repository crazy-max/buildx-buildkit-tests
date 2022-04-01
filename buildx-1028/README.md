https://github.com/docker/buildx/issues/1028

```console
$ docker buildx bake -f tests/docker-compose.yml --print
{
  "group": {
    "default": {
      "targets": [
        "debian9",
        "debian8"
      ]
    }
  },
  "target": {
    "debian8": {
      "context": "dockerfiles/debian8",
      "dockerfile": "Dockerfile"
    },
    "debian9": {
      "context": "dockerfiles/debian9",
      "dockerfile": "Dockerfile"
    }
  }
}
```

```console
$ docker buildx bake -f tests/docker-compose.yml
WARNING: No output specified for docker-container driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load
error: unable to prepare context: path "dockerfiles/debian9" not found
```

Using HCL:

```console
$ docker buildx bake -f tests/docker-bake.hcl --print
{
  "group": {
    "default": {
      "targets": [
        "debian8",
        "debian9"
      ]
    }
  },
  "target": {
    "debian8": {
      "context": "dockerfiles/debian8",
      "dockerfile": "Dockerfile"
    },
    "debian9": {
      "context": "dockerfiles/debian8",
      "dockerfile": "Dockerfile"
    }
  }
}
```

```console
$ docker buildx bake -f tests/docker-bake.hcl
WARNING: No output specified for docker-container driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load
error: unable to prepare context: path "dockerfiles/debian8" not found
```

Compose build:

```console
$ docker compose -f tests/docker-compose.yml config
name: tests
services:
  debian8:
    build:
      context: /home/.../buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian8
      dockerfile: Dockerfile
    networks:
      default: null
  debian9:
    build:
      context: /home/.../buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian9
      dockerfile: Dockerfile
    networks:
      default: null
networks:
  default:
    name: tests_default
```

```console
$ docker compose -f tests/docker-compose.yml build
Sending build context to Docker daemon     143B
Step 1/2 : FROM alpine
 ---> 76c8fb57b6fc
Step 2/2 : RUN echo debian8
 ---> Running in caae84c97f4a
debian8
Removing intermediate container caae84c97f4a
 ---> f63d9140e836
Successfully built f63d9140e836
Successfully tagged tests_debian8:latest
Sending build context to Docker daemon     143B
Step 1/2 : FROM alpine
 ---> 76c8fb57b6fc
Step 2/2 : RUN echo debian9
 ---> Running in 71b05a51a25b
debian9
Removing intermediate container 71b05a51a25b
 ---> 69365f840aca
Successfully built 69365f840aca
Successfully tagged tests_debian9:latest
```
