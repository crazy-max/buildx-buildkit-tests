https://github.com/docker/buildx/issues/1028

## Bake

### Compose definition

```console
$ docker buildx bake -f tests/docker-compose.yml --print
#1 [internal] load local bake definitions
#1 reading tests/docker-compose.yml 98B / 98B done
#1 DONE 0.0s
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
      "context": "dockerfiles/debian9",
      "dockerfile": "Dockerfile"
    }
  }
}
```

```console
$ docker buildx bake -f tests/docker-compose.yml
#0 building with "default" instance using docker driver

#1 [internal] load local bake definitions
#1 reading tests/docker-compose.yml 98B / 98B done
#1 DONE 0.0s
ERROR: unable to prepare context: path "dockerfiles/debian8" not found
```

### HCL definition

```console
$ docker buildx bake -f tests/docker-bake.hcl --print
#1 [internal] load local bake definitions
#1 reading tests/docker-bake.hcl 171B / 171B done
#1 DONE 0.0s
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
#0 building with "default" instance using docker driver

#1 [internal] load local bake definitions
#1 reading tests/docker-bake.hcl 171B / 171B done
#1 DONE 0.0s
ERROR: unable to prepare context: path "dockerfiles/debian8" not found
```

## Compose

### `COMPOSE_NAKE=false`

```console
$ docker compose -f tests/docker-compose.yml config
name: tests
services:
  debian8:
    build:
      context: /home/crazy/buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian8
      dockerfile: Dockerfile
    networks:
      default: null
  debian9:
    build:
      context: /home/crazy/buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian9
      dockerfile: Dockerfile
    networks:
      default: null
networks:
  default:
    name: tests_default
```

```console
$ COMPOSE_BAKE=false docker compose -f tests/docker-compose.yml build
#0 building with "default" instance using docker driver

#1 [debian8 internal] load build definition from Dockerfile
#1 transferring dockerfile: 65B 0.0s done
#1 DONE 0.1s

#2 [debian9 internal] load build definition from Dockerfile
#2 transferring dockerfile: 65B 0.0s done
#2 DONE 0.1s

#3 [debian9 internal] load metadata for docker.io/library/alpine:latest
#3 DONE 0.0s

#4 [debian8 internal] load .dockerignore
#4 transferring context: 2B done
#4 DONE 0.1s

#5 [debian8 1/2] FROM docker.io/library/alpine:latest@sha256:56fa17d2a7e7f168a043a2712e63aed1f8543aeafdcee47c58dcffe38ed51099
#5 resolve docker.io/library/alpine:latest@sha256:56fa17d2a7e7f168a043a2712e63aed1f8543aeafdcee47c58dcffe38ed51099
#5 resolve docker.io/library/alpine:latest@sha256:56fa17d2a7e7f168a043a2712e63aed1f8543aeafdcee47c58dcffe38ed51099 0.0s done
#5 DONE 0.0s

#6 [debian9 internal] load .dockerignore
#6 transferring context: 2B done
#6 DONE 0.1s

#7 [debian8 2/2] RUN echo debian8
#7 CACHED

#8 [debian9 2/2] RUN echo debian9
#8 CACHED

#9 [debian9] exporting to image
#9 exporting layers done
#9 exporting manifest sha256:16180ae3b1ef8dbc568fab9c800aabf699f6fa6df52bafe55dd81aaec9e11818 0.0s done
#9 exporting config sha256:245e240fcb4161e0a7213fbba88bb6bfd9e98aab7e50069c28e5b6ba91137a7c 0.0s done
#9 exporting attestation manifest sha256:d0d24a6d2cf5e1d4401960ecc334e1ce7b6bcd778ec32b619b0b47fa64935a7c 0.1s done
#9 exporting manifest list sha256:46f9f911a6e9262455cb7024705cf69c2aacb3c82110bcd9eb2664e4680b9764
#9 exporting manifest list sha256:46f9f911a6e9262455cb7024705cf69c2aacb3c82110bcd9eb2664e4680b9764 0.0s done
#9 naming to docker.io/library/tests-debian9:latest done
#9 unpacking to docker.io/library/tests-debian9:latest done
#9 DONE 0.2s

#10 [debian8] exporting to image
#10 exporting layers done
#10 exporting manifest sha256:035ab2f1267fb52e4dc4240c2eeeecbcb7ad01c3a7b3a4a89e66cb7274444ab3 0.0s done
#10 exporting config sha256:2a5376d7f38fcc5ed59506af6adf8b9d4bcca437f0ec1ead08f6f84c2abda43d 0.0s done
#10 exporting attestation manifest sha256:a0fde5507c4828b4a6df1af7b5a8fdf17ef060d185487f1dffaa1c3e4dac847b 0.1s done
#10 exporting manifest list sha256:79c01f110041df9eb77c428a9d7d14a316dae2386c6d898507b8361898d43ed5 0.0s done
#10 naming to docker.io/library/tests-debian8:latest done
#10 unpacking to docker.io/library/tests-debian8:latest done
#10 DONE 0.2s

#11 [debian8] resolving provenance for metadata file
#11 DONE 0.0s

#12 [debian9] resolving provenance for metadata file
#12 DONE 0.0s
[+] Building 2/2
 ✔ debian8  Built                                                                                                                                                                                         0.0s 
 ✔ debian9  Built
```

### `COMPOSE_NAKE=true`

```console
$ COMPOSE_BAKE=true docker --debug compose -f ./tests/docker-compose.yml build
DEBU[0000] Enabled Docker Desktop integration (experimental) @ unix:///var/run/docker-cli.sock 
DEBU[0000] bake build config:
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
      "context": "/home/crazy/buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian8",
      "dockerfile": "/home/crazy/buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian8/Dockerfile",
      "tags": [
        "tests-debian8"
      ],
      "output": [
        "type=docker,load=true,push=false"
      ]
    },
    "debian9": {
      "context": "/home/crazy/buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian9",
      "dockerfile": "/home/crazy/buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian9/Dockerfile",
      "tags": [
        "tests-debian9"
      ],
      "output": [
        "type=docker,load=true,push=false"
      ]
    }
  }
}
DEBU[0000] Executing bake with args: [bake --file - --progress rawjson --metadata-file /tmp/compose2440924344 --allow fs.read=/home/crazy/buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian9 --allow fs.read=/home/crazy/buildx-buildkit-tests/buildx-1028/tests/dockerfiles/debian8]
[+] Building 1.4s (13/13) FINISHED
 => [internal] load local bake definitions                                                                                                                                                                0.0s
 => => reading from stdin 889B                                                                                                                                                                            0.0s
 => [debian9 internal] load build definition from Dockerfile                                                                                                                                              0.1s
 => => transferring dockerfile: 65B                                                                                                                                                                       0.0s 
 => [debian8 internal] load build definition from Dockerfile                                                                                                                                              0.0s 
 => => transferring dockerfile: 65B                                                                                                                                                                       0.0s 
 => [debian9 internal] load metadata for docker.io/library/alpine:latest                                                                                                                                  0.0s
 => [debian8 internal] load .dockerignore                                                                                                                                                                 0.0s 
 => => transferring context: 2B                                                                                                                                                                           0.0s 
 => [debian9 internal] load .dockerignore                                                                                                                                                                 0.0s 
 => => transferring context: 2B                                                                                                                                                                           0.0s
 => [debian8 1/2] FROM docker.io/library/alpine:latest@sha256:56fa17d2a7e7f168a043a2712e63aed1f8543aeafdcee47c58dcffe38ed51099                                                                            0.0s
 => => resolve docker.io/library/alpine:latest@sha256:56fa17d2a7e7f168a043a2712e63aed1f8543aeafdcee47c58dcffe38ed51099                                                                                    0.0s 
 => CACHED [debian8 2/2] RUN echo debian8                                                                                                                                                                 0.0s 
 => CACHED [debian9 2/2] RUN echo debian9                                                                                                                                                                 0.0s 
 => [debian9] exporting to image                                                                                                                                                                          0.2s 
 => => exporting layers                                                                                                                                                                                   0.0s 
 => => exporting manifest sha256:1562dd9d7741f2d51689f3135fb2161a9426e4a5ed8ac002f9f82e0a4b1abbcc                                                                                                         0.0s 
 => => exporting config sha256:48ab2ff38e33df29dfbda9a14125960410fe792ce9c04e7b12bba4e69a3ea67b                                                                                                           0.0s 
 => => exporting attestation manifest sha256:f9ab99129f9d94c9dd32213d0d34eff7b45dbb0018b59a6db2e477b9af672653                                                                                             0.1s 
 => => exporting manifest list sha256:0e5682a1d01a8deeea4166abd092e1d830c2cc2be8ffdff7c3a632e316fcc27b                                                                                                    0.0s 
 => => naming to docker.io/library/tests-debian9:latest                                                                                                                                                   0.0s 
 => => unpacking to docker.io/library/tests-debian9:latest                                                                                                                                                0.0s 
 => [debian8] exporting to image                                                                                                                                                                          0.2s 
 => => exporting layers                                                                                                                                                                                   0.0s
 => => exporting manifest sha256:17aa0dee5b3e0a1bc9f365e34ead4cf714da7221d3e94da32f3b6676654d3070                                                                                                         0.0s 
 => => exporting config sha256:7547a9d856c69a512bbf106635500e7ecc8bf87a50f5fbfd4c13ec69669b251b                                                                                                           0.0s 
 => => exporting attestation manifest sha256:bfadb05d91b9f06a7bcb7380ebf069c64144f179dc1254e65d38d51ecfea28e5                                                                                             0.1s 
 => => exporting manifest list sha256:4331329bc9cf219b09102b8eb07fdefd110a0d064051b1b023ae7352265ec97a                                                                                                    0.0s 
 => => naming to docker.io/library/tests-debian8:latest                                                                                                                                                   0.0s 
 => => unpacking to docker.io/library/tests-debian8:latest                                                                                                                                                0.0s
 => [debian9] resolving provenance for metadata file                                                                                                                                                      0.0s
 => [debian8] resolving provenance for metadata file                                                                                                                                                      0.0s
```
