* https://github.com/docker/bake-action/issues/61
* https://github.com/k3d-io/k3d/blob/enhancement/gh-actions/docker-bake.hcl

```console
$ docker buildx bake -f docker-bake.hcl -f binary.hcl -f dind.hcl -f proxy.hcl binary --print
$ docker buildx bake -f docker-bake.hcl -f json-target/binary.json -f json-target/dind.json -f json-target/proxy.json binary --print
$ docker buildx bake -f docker-bake.hcl -f json-groups/binary.json -f json-groups/dind.json -f json-groups/proxy.json binary --print
```
